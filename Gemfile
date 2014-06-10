source 'https://rubygems.org'
ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.4'

# Use sqlite3 as the database for Active Record
gem 'pg' 

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

#quiet assets
 gem 'quiet_assets'  
 
#user_authentication
gem 'devise'

#upgrade from rails3
# gem 'protected_attributes'
# gem 'rails-observers'
# gem 'actionpack-page_caching'
# gem 'actionpack-action_caching'
# gem 'activerecord-deprecated_finders'
# gem 'builder'
# gem 'minitest'
# gem 'tzinfo'

#twitter_bootstrap
gem 'therubyracer', platforms: :ruby
gem 'less-rails' #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem 'twitter-bootstrap-rails'

#user_authority
gem 'cancan'

#localserver
gem 'puma'

#cloudfolder
gem 'paperclip', :git => "git://github.com/thoughtbot/paperclip.git"
gem 'paperclip-dropbox'
gem 'dropbox'
# gem 'cocaine'
# gem 'dropbox-sdk'

#securityform
gem 'honeypot-captcha'

# location, maps, route
gem 'gmaps4rails', ">=2.0"
gem 'geocoder'

#organization chart
gem 'google_visualr', "~> 2.3.0"

# upload file
gem 'carrierwave'
gem 'fog'
gem 'mini_magick'
gem 'rmagick'    
gem 'unf' 

#editor
gem 'ckeditor'

#to highlights words in views
gem 'coderay'

#notifier
gem 'uniform_notifier'

# Periodically check your error monitoring tool, if you see some part of ckeditor try to load unexisting non-digest asset - if so just add it in the ckeditor rake task.
gem 'non-stupid-digest-assets', '~> 1.0.4'

#to-add_sortable position in columns
gem 'acts_as_list'

#cache
gem 'memcachier'
gem 'dalli'


#enable all platform features
group :production do
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
  gem 'rails_12factor'
end

