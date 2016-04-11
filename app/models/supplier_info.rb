class SupplierInfo < ActiveRecord::Base
	  
	  validates :registration_no ,length:{is:6}, format: { with: /\A[a-zA-Z]+\z/,
      message: "only allows letters" }
      validates_uniqueness_of  :name 
      validate 	:custom_validation

      def custom_validation
      	errors.add(:name,"You must Enter name") if name.blank?
      	errors.add(:name,"Name length should not be greater than 5 characters") if !name.blank? && name.length > 5
      	errors.add(:password,"You must Enter password") if password.blank?
      end 
end
