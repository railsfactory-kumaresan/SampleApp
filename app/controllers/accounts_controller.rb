class AccountsController < ApplicationController

	def index
		@accounts = Account.where(supplier_id: params[:supplier_id])
	end

	def create
    @account = Account.new(account_params)
	  if @account.save
	  	redirect_to suppliers_path
	  else
        render "new"
	  end

  end

  private
	def account_params
		params.require(:account).permit(:account_number,:supplier_id,:name)
	end

end
