class UserMailer < ApplicationMailer
  default from: "OrganonTravel@gmail.com"
    
  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
      :to => 'dan.the.hudson@gmail.com',
      :subject => "A new contact from #{name}")
  end
  
  def signup_form(user)
    @user = user
    mail(:to => user.email,
      :from => 'OrganonTravel@gmail.com',
      :subject => 'Welcome to Organon Travel',
      :template_path => 'user_mailer',
      :template_name => 'signup_form.html')
  end
end

