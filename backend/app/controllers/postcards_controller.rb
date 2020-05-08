class PostcardsController < ActionController::API
    def index
        allCards = Postcard.all
        postcards = {postcards: allCards}
        render json: postcards, except: [:created_at, :updated_at]
    end

    def show
        postcard = Postcard.find(params[:id])
        render json: postcard, except: [:created_at, :updated_at]
    end


    private

    def postcard_params 
        params.require(:postcard).permit(:user_text, :font, :image, :destination_id, :user_id)
    end
end
