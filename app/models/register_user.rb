class RegisterUser < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :name, :presence =>true, :uniqueness => true, :length => {:in => 3..20 }
  validates :email , :presence => true, :uniqueness => true ,:format => EMAIL_REGEX

  #after_save :send_confirmation

  private

  def send_confirmation
    UserMailer.send_signup_email(self).deliver
  end  
end
