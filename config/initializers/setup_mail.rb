# config/initializers/setup_mail.rb


if ["development", "test", "staging"].include?(Rails.env.to_s)
  ActionMailer::Base.raise_delivery_errors = true

  ActionMailer::Base.smtp_settings = {
    :address              => "mail.transparencia.gob.gt",
    :port                 => 25,
    :domain               => "transparencia.gob.gt",
    :user_name            => "ow@transparencia.gob.gt",
    :password             => "0penW0lf2013",
    :authentication       => "plain",
    #:enable_starttls_auto => true
  }

  require "development_mail_interceptor"
  ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor)

end

if Rails.env == "test"
 ActionMailer::Base.delivery_method = :test
end
