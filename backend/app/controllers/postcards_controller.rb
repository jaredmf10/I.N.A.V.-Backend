class PostcardsController < ActionController::API
    def index
        postcards = Postcard.all
        render json: postcards, except: [:created_at, :updated_at]
    end

    def show
        postcard = Postcard.find(params[:id])
        render json: postcard, except: [:created_at, :updated_at]
    end

    def update
        postcard = Postcard.find(params[:id])
        postcard.update(postcard_params)
        render json: postcard, except: [:created_at, :updated_at]
    end

    def create
        postcard = postcard.create(postcard_params)
        render json: postcard, except: [:created_at, :updated_at]
    end

    def delete
        postcard = Postcard.find(params[:id])
        render json: postcard, except: [:created_at, :updated_at]
        postcard.delete
    end

    private

    def postcard_params 
        params.require(:postcard).permit!
    end
end
