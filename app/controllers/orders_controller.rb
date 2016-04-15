class OrdersController < ApplicationController
	
	def index
    	@orders = Order.where(customer_id: params[:customer_id])
  end	

	
	def create

     @order = Order.new(order_params)
	  if @order.save
	  	redirect_to customers_path
	  else
        render "new"
	  end

    end

	private
	def order_params
		params.require(:order).permit(:order_date,:order_name,:customer_id)
	end	
end
