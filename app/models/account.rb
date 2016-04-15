class Account <ActiveRecord::Base
	belongs_to :supplier
	validates:account_number,presence:true,length: { in: 6..20 },uniqueness: true
	
end	