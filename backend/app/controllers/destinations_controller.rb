class DestinationsController < ActionController::API
    def index
        continents = {
            "North America": {
                "countries":{
                    "America": Destination.select{|d| d.country == "America"},
                    "Canada": Destination.select{|d| d.country == "Canada"},
                    "Mexico": Destination.select{|d| d.country == "Mexico"},
                }
            } ,
            "Europe": {
                "countries":{
                    "England": Destination.select{|d| d.country == "England"},
                    "France": Destination.select{|d| d.country == "Canada"},
                    "Italy": Destination.select{|d| d.country == "Italy"}
                }
            },
            "Asia": {
                "countries":{
                    "Japan": Destination.select{|d| d.country == "Japan"},
                    "China": Destination.select{|d| d.country == "China"},
                    "India": Destination.select{|d| d.country == "India"}
                }   
            },
            "South America": {
                "countries":{
                    "Brazil": Destination.select{|d| d.country == "Brazil"},
                    "Peru": Destination.select{|d| d.country == "Peru"},
                    "Argentina": Destination.select{|d| d.country == "Argentina"}
                }
            },
            "Africa": {
                "countries":{
                    "Tanzania": Destination.select{|d| d.country == "Tanzania"},
                    "Egypt": Destination.select{|d| d.country == "Egypt"},
                    "South Africa": Destination.select{|d| d.country == "South Africa"}
                }
            },
            "Oceania": {
                "countries":{
                    "Austrailia": Destination.select{|d| d.country == "Austrailia"},
                    "New Zealand": Destination.select{|d| d.country == "New Zealand"}
                }   
            }
        }
        render json: continents, except: [:created_at, :updated_at]
    end

    def show
        destination = Destination.find(params[:id])
        render json: destination, except: [:created_at, :updated_at]
    end
end
