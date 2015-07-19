# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['app25957121@heroku.com'],
  :password       => ENV['ufl5vt544811'],
  :domain         => 'heroku.com',
  :enable_starttls_auto => true
}


require 'mail'

Mail.defaults do
  delivery_method :smtp, {
    :address => 'smtp.sendgrid.net',
    :port => '587',
    :domain => 'heroku.com',
    :user_name => ENV['app25957121@heroku.com'],
    :password => ENV['ufl5vt544811'],
    :authentication => :plain,
    :enable_starttls_auto => true
  }
end



# Mail.deliver do
#   to '17antonio.ortiz@gmail.com'
#   from '17antonio.ortiz@gmail.com'
#   subject 'testing send mail'
#   body 'Sending email with Ruby through SendGrid!'
# end
# enviro