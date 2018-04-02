OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '963732938905-17f87ptadejr5jmk073nka2d5dleurjs.apps.googleusercontent.com', '5pL_9AiG4F_FWhO60tBC5I7w', { skip_jwt: true, access_type: 'offline', approval_prompt: 'auto', hd: 'g.hmc.edu' } 
end

