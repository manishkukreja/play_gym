ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "help.playgym",
  :password             => "playgym_2013",
  :authentication       => "plain",
  :enable_starttls_auto => true
}