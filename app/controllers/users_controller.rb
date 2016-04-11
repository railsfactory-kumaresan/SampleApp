class UsersController < ApplicationController
  def new
    @users = User.new 
    puts "#{@users}"
  end

  def create
  	@users = User.new(params[:users])
  	
  	if @users.save
  	   flash[:notice] = "signup succesfully"
  	else
  	   flash[:notice] = "wrong inforamtion"
  	   render "new"	
  	end
  end
   	
end
