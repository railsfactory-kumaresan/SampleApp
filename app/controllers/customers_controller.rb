class CustomersController < ApplicationController
	
	def index 
		@customers = Customer.all
	end 

	def new
		@customer = Customer.new
	end

	def create
        @customer = Customer.new(customer_params)
		if @customer.save
			redirect_to @customer
		else
		  render :new		
		end	
	end

	def show
		@order = Order.new
		@customer = Customer.find(params[:id])
	end

	private 
	def customer_params
		params.require(:customer).permit(:name)
	end		

end
