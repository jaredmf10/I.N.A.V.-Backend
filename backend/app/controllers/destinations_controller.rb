class DestinationsController < ActionController::API
    def index
        destinations = Destination.all
        render json: destinations, except: [:created_at, :updated_at]
    end

    def show
        destination = Destination.find(params[:id])
        render json: destination, except: [:created_at, :updated_at]
    end
end
