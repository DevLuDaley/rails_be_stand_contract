# Rails.application.config.action_dispatch.cookies_serializer = :hybrid
#config/initializers/session_store.rb
# if Rails.env === 'production' 
#     Rails.application.config.session_store :cookie_store, key: '_name-of-your-app', domain: 'name-of-you-app-json-api'
#   else
#     Rails.application.config.session_store :cookie_store, key: '_name-of-your-app'
#   end

if Rails.env === 'production' 
    # Rails.application.config.session_store :cookie_store, key: '_rails_be_stand_contract', domain: 'http://localhost:3000/api/v1/contracts'
    Rails.application.config.session_store :cookie_store, key: '_rails_be_stand_contract', domain: 'http://localhost:3000/'
    # http://127.0.0.1:3000/
    # 'http://localhost:3000/api/v1/contracts'
  else
    Rails.application.config.session_store :cookie_store, key: '_rails_be_stand_contract'

end