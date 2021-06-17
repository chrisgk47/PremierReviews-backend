if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: 'premier-reviews-api', domain: 'premier-reviews-client'
  else
    Rails.application.config.session_store :cookie_store, key: 'premier-reviews-api' 
  end
