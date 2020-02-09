class ApplicantsController < ApplicationController
	before_action :find_property
	def create
		@applicant = @property.applicants.create(applicant_params)
		  if @applicant.save
		    redirect_to property_path(@property), notice: 'Successfully Submitted New Application.'
		  else
		  	flash[:error] = "The application could not be submitted. Please verify that none of the input 
		  	fields are blank. The social security number must be in the xxx-xx-xxxx format and the phone 
		  	number must be in the xxx-xxx-xxxx format."
		    redirect_to property_path(@property)
		  end
	end
	def edit
 	   @applicant = @property.applicants.find(params[:id])
	end
	def update
		@applicant = @property.applicants.find(params[:id])
		if @applicant.update(applicant_params)
			redirect_to property_path(@property)
		else
			render 'edit'
		end
	end
	def destroy
		@applicant = @property.applicants.find(params[:id])
		@applicant.destroy
		redirect_to property_path(@property)
	end

	private
	def applicant_params
		params[:applicant].permit(:applicant_ssn,:applicant_name,:applicant_phone_number,:applicant_birthdate,:applicant_email)
	end
	def find_property
		@property=Property.find(params[:property_id])
	end
end
