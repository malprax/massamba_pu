# Be sure to restart your server when you modify this file.
#cookie_store, key: '_massamba_pu_session'
MassambaPu::Application.config.session_store ActionDispatch::Session::CacheStore, :expire_after => 30.minutes
