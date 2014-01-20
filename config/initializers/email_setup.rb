ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "http://serene-coast-6714.herokuapp.com/",
  :user_name            => "seikowsky@googlemail.com",
  :password             => "aufgehts1",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"
