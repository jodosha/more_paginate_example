# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_more_paginate_example_session',
  :secret      => 'a0a72b2fdfe3c5151969311bac9133e81617210d5e9a0a4ed1a8143cceb9c33ca4c32e0aa7bcdff8586b73655bd8b839ce5a27ad303d6ccbe5102e0ca5615971'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
