class UsersController < ActionController::API
    skip_before_action :authorized, only: [:index, :new, :create]
    
    def index
    @users = User.all
    render json: @users, except: [:created_at, :updated_at]
    end

    def show
        @user = User.find(session[:user_id])
        render json: @user, except: [:created_at, :updated_at]
        #to block other users to access other user's showpage
    end

    def new
      @user = User.new
      render json: @user, except: [:created_at, :updated_at]
    end

    def create
        @user = User.create(user_strong_params)
        session[:user_id] = @user.id
        render json: @user, except: [:updated_at, :created_at]
        # redirect_to @user
    end

    def destroy
     @user = User.find(params[:id])
     @user.destroy

    #  redirect_to new_user_path
    end

    private

    def user_params 
        params.require(:user).permit(:name)
    end
end
