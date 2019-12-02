class LandlordsController < ApplicationController
	before_action :find_landlord, only: [:show,:edit,:update,:destroy]

	def index
		@landlord = Landlord.all.order('landlord_name ASC')
	end
	def show
	end
	def new
		@landlord = Landlord.new
	end
	def create
		@landlord = Landlord.new(landlord_params)
		if @landlord.save
			redirect_to @landlord, notice: "Successfully Created New Landlord"
		else
			render 'new'
		end
	end
	def edit
	end
	def update
		if @landlord.update(landlord_params)
			redirect_to @landlord
		else
			render 'edit'
		end
	end
	def destroy
		@landlord.destroy
		redirect_to landlords_path, notice: "Successfully Deleted Landlord"
	end

	private 
	def find_landlord
		@landlord = Landlord.find(params[:id])
	end
	def landlord_params
		params.require(:landlord).permit(:landlord_name, :landlord_phone_number)
	end
end
