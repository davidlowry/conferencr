# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_conferencr_session',
  :secret      => '18f66a73dbfbf7acbe35ff28ec941d72a5a26a388a997a883d65ded7576dc3da84f4bbf6e411d7794d3906f77570b4a1c521f87207fb6693ce9f23bc8c6a094c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
