# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pulu_session',
  :secret      => '0c86ccbf3300b6e9e68640247f7375ad48b918c56b26a0d335180c14db704f2cf2b0a1c9d3c71ee6cb325d029977e6976ea514608aedb5d9fe9b61d1dd188beb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
