if Rails.env === 'production'
  # TODO: Fix Domain
  Rails.application.config.session_store :cookie_store, key: '_spa_app_api', domain: 'vercel.app', expire_after: 20.years
else
  Rails.application.config.session_store :cookie_store, key: '_spa_app_api'
end
