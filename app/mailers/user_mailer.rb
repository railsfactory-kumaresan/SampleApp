class UserMailer < ActionMailer::Base
  
  default from: "amansharma2k12@gmail.com"
  
  def send_signup_email(user)
    @user = user
    attachments.inline['rails.png'] = File.read("#{Rails.root}/app/assets/images/rails.png")
    mail(to: @user.email, subject: 'Welcome to My Site')
  end

end
