class UsersController < ActionController::API

    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at]
    end

    def show
        user = User.find(params[:id])
        render json: user, except: [:created_at, :updated_at]
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user, except: [:created_at, :updated_at]
    end

    def create
        user = user.create(user_params)
        if user.valid?
            render json: user, except: [:created_at, :updated_at], status: :accepted
        else
            render json: { errors: user.errors.full_messages }, status: :not_acceptable
        end
    end

    def delete
        user = User.find(params[:id])
        render json: user, except: [:created_at, :updated_at]
        user.delete
    end

    private

    def user_params 
        params.require(:user).permit!
    end
end
