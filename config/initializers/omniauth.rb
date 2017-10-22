Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV["FACEBOOK_APP_ID"], ENV["FACEBOOK_APP_SECRET"],
  client_options: {
    site: 'https://graph.facebook.com/v2.10',  # this is the example API version
    authorize_url: "https://www.facebook.com/v2.10/dialog/oauth"
  }
  provider :google_oauth2, "GOOGLE_CLIENT_ID", "GOOGLE_CLIENT_SECRET"
end
