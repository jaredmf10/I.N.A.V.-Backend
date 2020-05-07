class DestinationsController < ActionController::API
    def index
        continents = {
            "North America": {
                "countries":{
                    "USA": Destination.select{|d| d.country == "USA"},
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
                    "Australia": Destination.select{|d| d.country == "Australia"},
                    "New Zealand": Destination.select{|d| d.country == "New Zealand"}
                }   
            }
        }
        
        render json: continents, except: [:created_at, :updated_at]
    end

    # def countries
    #     countryNames = Destination.select(:country).distinct
    #     countries = {countries: countryNames.map{|cty| {name:cty.country, cities: Destination.where(country:cty.country)}}}
    #     render json: countries, except: [:created_at, :updated_at]
    # end

    def cities
        cityList = Destination.select(:name)
        cities = {cities: cityList.map{ |obj| {name: obj.name, city: Destination.where(name:obj.name)}} }
        render json: cities, except: [:created_at, :updated_at]
    end

    def show
        destination = Destination.find(params[:id])
        render json: destination, except: [:created_at, :updated_at]
    end
end