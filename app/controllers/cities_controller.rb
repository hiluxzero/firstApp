class CitiesController < ApplicationController

	before_filter :authorize
	before_action :authorize, only: [:index, :show]

	def index
		@cities = City.all
	end
	def new 
		@city = City.new
	end
	def show
		@city = City.find(params[:id])
	end
	def create
		@city = City.new(city_params)
		if  @city.save
			redirect_to cities_path
		else
			redirect_to action: "new"
		end
	end
	def edit
		@city = City.find(params[:id])
	end
	def update
		@city = City.find(params[:id])
		if  @city.update_attributes(city_params)
			redirect_to action: "index"
		else	
			render 'edit'
		end	
	end
	def destroy
		@city = City.find(params[:id])
		if (@city != nil) then
			if City.destroy(params[:id])
				redirect_to cities_path
			else		
				redirect_to cities_path
			end
		else
			redirect_to cities_path
		end
	end
	private
	def city_params
		params.require(:city).permit(:name,:country_id)
	end
end
