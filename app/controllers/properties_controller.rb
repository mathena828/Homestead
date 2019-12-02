class PropertiesController < ApplicationController
	before_action :find_property, only: [:show,:edit,:update,:destroy]
	def all
		@records = Property.joins(:landlord, :applicants).select("landlords.landlord_name, properties.property_address, applicants.applicant_name, applicants.applicant_ssn").where("landlords.id = properties.landlord_id AND properties.id=applicants.property_id")
	end
	def index
		@property = Property.all.order("created_at DESC")
	end
	def show
	end
	def new
		@property = Property.new
	end
	def create
		@property = Property.new(property_params)
		if @property.save
			redirect_to @property, notice: "Successfully Created New Property"
		else
			render 'new'
		end
	end
	def edit
	end
	def update
		if @property.update(property_params)
			redirect_to @property
		else
			render 'edit'
		end
	end
	def destroy
		@property.destroy
		redirect_to root_path, notice: "Successfully Deleted Property"
	end

	private 
	def find_property
		@property = Property.find(params[:id])
	end
	def property_params
		params.require(:property).permit(:property_address, :description, :monthly_rent, :image, :landlord_id)
	end
end
