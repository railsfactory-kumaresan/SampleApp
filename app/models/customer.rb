class Customer < ActiveRecord::Base
	has_many :orders
	validate :custom_validation

	def custom_validation
		errors.add(:name, "You must enter name") if name.blank?
		
	end
end