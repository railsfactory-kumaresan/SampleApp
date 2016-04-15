class RegisterusersController < ApplicationController
  
  def new
    @registeruser = RegisterUser.new 
  end

  def create

    @registeruser = RegisterUser.new(registeruser_params)
    
    if@registeruser.save
      UserMailer.send_signup_email(@registeruser).deliver
      redirect_to new_registeruser_path
    else
      render :"new"
    end

  end

  private 
  def registeruser_params
    params.require(:registeruser).permit(:name,:email)
  end

end
