# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_booker2_session',
  :secret      => '0dfa279026b270aadf4012066090773af42cfde739df5b7d9127495e48f01666b01d695b837cfdd4e5ccfb38fa87faff2d1316c210b066a1a19eee8821aa1b55'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
