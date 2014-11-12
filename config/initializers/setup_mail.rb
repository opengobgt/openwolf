# config/initializers/setup_mail.rb


if ["development", "test", "staging", "production"].include?(Rails.env.to_s)
  ActionMailer::Base.raise_delivery_errors = true

  ActionMailer::Base.smtp_settings = {
    :address              => "smtp.mandrillapp.com",
    :port                 => 587,
    :domain               => "transparencia.gob.gt",
    :user_name            => "egob@transparencia.gob.gt",
    :password             => "leMxsgwpBEE7B1sgxmJcsQ",
    :authentication       => "login",
    :enable_starttls_auto => true
  }

  require "development_mail_interceptor"
  ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor)

end

if Rails.env == "test"
 ActionMailer::Base.delivery_method = :test
end
