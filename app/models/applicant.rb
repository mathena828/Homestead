class Applicant < ApplicationRecord
  belongs_to :property
  validates :applicant_ssn, :applicant_name, :applicant_phone_number, :applicant_email, :applicant_birthdate, presence: true
  validates :applicant_ssn, format: { with: /\d{3}-\d{2}-\d{4}/, message: "Social Security number must be in the xxx-xx-xxxx format." }
  validates :applicant_phone_number, format: { with: /\d{3}-\d{3}-\d{4}/, message: "Phone number must be in the xxx-xxx-xxxx format." }
  validates :applicant_email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
