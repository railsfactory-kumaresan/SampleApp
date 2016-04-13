class Order < ActiveRecord::Base
  belongs_to :customer
  validate :custom_validation

  def custom_validation
  	errors.add(:order_name,"you must enter order_name") if order_name.blank?
  end
  	
end