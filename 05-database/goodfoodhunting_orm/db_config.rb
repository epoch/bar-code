require 'active_record'

options = {
  adapter: 'postgresql',
  database: 'goodfoodhunting',
  username: 'daniel' # you dont need this
}

ActiveRecord::Base.establish_connection(options)