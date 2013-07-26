class PasswordMailer < ActionMailer::Base
  # Set the default "from" line for these emails
  default from: "no-reply@egsd.com"

  # Create the password reset email and pass it
  def reset_email(user)
    @user = user
    
    mail to: @user.email, subject: "You changed your account password! Is this true?"
    main to: @user.email, body: "You changed your password!"
  end
end
