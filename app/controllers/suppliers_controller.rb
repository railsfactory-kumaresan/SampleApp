class SuppliersController < ApplicationController

	def index 
	  @suppliers = Supplier.all
	end 

	def new 
		@supplier = Supplier.new
	end

	def create
		@supplier = Supplier.new(supplier_params)
		if @supplier.save
		   redirect_to @supplier
		else
			render :new
		end   	
	end

	def show
		@account  = Account.new
		@supplier = Supplier.find(params[:id])
  end
	
	private
	def supplier_params
		params.require(:supplier).permit(:name)
	end

end
