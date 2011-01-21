# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_authlogic_fbconnect_session',
  :secret      => '123718475caaa709fa8fadc13457c31d80e3f00f849feb2075ca57cc3bc7c4c7a535e7bc865faf3f513c4aa994366cf3f53726c672611a65189bdd96711bdc3f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
