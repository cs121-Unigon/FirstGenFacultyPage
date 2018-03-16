OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '963732938905-17f87ptadejr5jmk073nka2d5dleurjs.apps.googleusercontent.com', '5pL_9AiG4F_FWhO60tBC5I7w', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}, skip_jwt: true}
end

