class UsersController < ApplicationController
  def new
    @users = User.new 
    puts "#{@users}"
  end

  def create
  	@users = User.new(user_params)
  	
  	if @users.save
  	   flash[:notice] = "signup succesfully"
       flash[:color]= "valid"
  	else
  	   flash[:notice] = "wrong inforamtion"
  	   flas[:color] = "invalid"
  	end
    render "new"  
  end 
  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end	
end
