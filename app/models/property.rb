class Property < ApplicationRecord
	belongs_to :landlord
	has_many :applicants, dependent: :destroy
	validates :property_address, :monthly_rent, presence: true
	validates :property_address, uniqueness: {case_sensitive: false}
	validates :monthly_rent, numericality: {greater_than_or_equal_to: 0}
	has_attached_file :image, styles: { medium: "300x300#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
