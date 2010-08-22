# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_file_upload_session',
  :secret      => 'afb6d42bfc97204471a429858d1702ddd3a7ed7fd2a06dc7426783dbe09812a6fa3b036b713f39c2c42b272823a8fa4590b786de4a085e381ef3c94c6d3c556f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
