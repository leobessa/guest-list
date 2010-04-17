# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_guest-list_session',
  :secret      => '2ced681c57fd5d13eb4fb753c99f4a3ee713a46db24e31b1a302fc31443ab5faa7294341fa8df539ee99dccb58528e27d1f0f26bba56a462dc73c38ea930b25a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
