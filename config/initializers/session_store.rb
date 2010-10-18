# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Excel_session',
  :secret      => '793cd95aaa5e6922241bd3c2100c5c872db4ff9e951a60b92626015a2e403274810da28d82015e5615a438fee7434244bf457eb0de48f4c9e4e7c8bec63e98d5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
