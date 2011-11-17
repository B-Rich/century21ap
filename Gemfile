source 'http://rubygems.org'

gem 'activeadmin'
gem 'draper', '> 0.8.1'
gem 'haml-rails'
gem 'mysql2'
gem 'paperclip'
gem 'rails', '3.1.1'
gem 'therubyracer'
gem 'thin'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

###########################################################################
# This gem was moved out of :assets because it was causing the thin server to fail when in production mode
gem 'sass-rails',   '~> 3.1.4'
############################################################################

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Deploy with Capistrano
gem 'capistrano'

# To use debugger
gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
