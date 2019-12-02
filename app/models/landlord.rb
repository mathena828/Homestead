class Landlord < ApplicationRecord
	has_many :properties, dependent: :destroy
	validates :landlord_name, :landlord_phone_number, presence: true
	validates :landlord_phone_number, format: { with: /\d{3}-\d{3}-\d{4}/, message: "Phone number must be in the xxx-xxx-xxxx format." }
end
