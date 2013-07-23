class PasswordMailer < ActionMailer::Base
  # Set the default "from" line for these emails
  default from: "no-reply@birchis.org"

  # Create the password reset email and pass it
  def reset_email(user)
    @user = user
    
    mail to: @user.email, subject: "Change your BIRCHIS credentials"
  end
end
