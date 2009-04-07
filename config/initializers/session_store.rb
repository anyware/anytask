# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_anytask_session',
  :secret      => 'b0fafe62be52f4e31600c97058791aa67beb4b8d936d02a74d0baad303cee8a27f39db31b29bd0c224599f0927692321b069defa901b1a2b1957265714e3d4f0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
