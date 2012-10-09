ActionMailer::Base.smtp_settings = {
	:address => "smtp.gmail.com",
	:port => 587,
	:domain => "ec9.com.br",
	:user_name => "maicon.oliveira@ec9.com.br",
	:password => "maicon120219",
	:authentication => "plain",
	:enable_starttls_auto => true
}