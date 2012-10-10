SiteEc9::Application.configure do
  if !Rails.env.test?
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.raise_delivery_errors = false
    config.action_mailer.smtp_settings = { :address => 'smtp.gmail.com',
                                           :port => 587,
                                           :user_name => 'sender@ec9.com.br',
                                           :password => '#senderec9@',
                                           :authentication => 'plain',
                                           :enable_starttls_auto => true }
  end
end