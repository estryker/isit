# Load the rails application
require File.expand_path('../application', __FILE__)

config.action_mailer.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address  => "smtp.mandrillapp.com",
  :port  => 25,
  :user_name  => "app11204151@heroku.com",
  :password  => "nqUDN-wSNJ55eMtPL7CC5Q",
  :authentication  => :login
}
# Initialize the rails application
Istherea::Application.initialize!
