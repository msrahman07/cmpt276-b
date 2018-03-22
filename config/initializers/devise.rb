Devise.setup do |config| #Replace example.com with your own domain name
   config.mailer_sender = 'mailer@example.com'
   require 'devise/orm/active_record'
   config.case_insensitive_keys = [ :email ]
   config.strip_whitespace_keys = [ :email ]
   config.skip_session_storage = [:http_auth]
   config.stretches = Rails.env.test? ? 1 : 10
   config.reconfirmable = true
   config.expire_all_remember_me_on_sign_out = true
   config.password_length = 8..128
   config.reset_password_within = 6.hours
   config.sign_out_via = :delete
   config.sign_out_via = :get
   

   #Add your ID and secret here #ID first, secret second
   config.omniauth :facebook, "423999538041493", "2434ab05bc2cecf16e0b29ee13713eff", scope: 'public_profile,email', info_fields: 'email,name'
end
