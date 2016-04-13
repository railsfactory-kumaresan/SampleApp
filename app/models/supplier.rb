class Supplier <ActiveRecord::Base
  has_one :account
  validates :name,:presence => {:message => "can't be blank"}
end	
