Rails.application.config.session_store :redis_session_store,
  key: '_moxie_session',
  serializer: :json,
  domain: :all,
  redis: {
    expire_after: 1.week,
    key_prefix: 'moxie:session:',
    url: ENV['REDIS_SESSIONS_URL']
}