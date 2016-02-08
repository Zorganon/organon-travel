class MyDevise::RegistrationsController < Devise::RegistrationsController
    def create
      super
      if @user.save
        UserMailer.signup_form(@user).deliver_now
      end
    end
end