Devise.setup do |config|
  # Using rails-api, tell devise to not use ActionDispatch::Flash
  # middleware b/c rails-api does not include it.
  Devise::OmniauthCallbacksController.class_eval do # reopen the class
    include ActionController::Helpers
    include ActionController::Flash
  end

  config.navigational_formats = [:json]
  config.mailer_sender = "karan@gmail.com"
  config.omniauth :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'], callback_url: "https://evening-savannah-35894.herokuapp.com/users/auth/facebook/callback", scope: 'email', info_fields: 'email'
  config.omniauth :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'], callback_url: "https://evening-savannah-35894.herokuapp.com/auth/google_oauth2/callback"
    # config.secret_key = '86f5e054f11e423d7ad19e58171baeed17176adb9d6287e92459cf4ef5f0fc0a63e20320600957025c8bf49132c6dedb6e02a3f71e6eb6df7d844c4bfcab3bb2'
end
