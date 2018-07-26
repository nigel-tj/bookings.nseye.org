source 'https://rubygems.org'
gem 'rails'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
group :development, :test do
  gem 'byebug'
end
group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
end
gem 'thin'
gem 'slim-rails'
gem 'bootstrap-sass'
gem 'font-awesome-sass'
gem 'simple_form'
gem 'high_voltage'
gem 'devise'
gem 'pundit'
group :development do
  gem 'guard-bundler'
  gem 'guard-minitest'
  gem 'guard-livereload'
  gem 'rack-livereload'
  gem 'libnotify'
  gem 'better_errors'
  gem 'binding_of_caller', platforms: :mri_21
  gem 'quiet_assets'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rails_layout'
  gem 'rails_best_practices'
  gem 'rails_apps_pages'
end

group :production do
  gem 'rails_12factor'
end
# the poltegerist testing gem 
group :test do
  gem "connection_pool"
  gem "launchy"
  gem 'minitest-reporters'
  gem 'minitest-rails-capybara'
  gem 'faker'  
  gem "mocha"
  gem "poltergeist"
  gem "shoulda-context"
  gem "shoulda-matchers", ">= 3.0.1"
  gem 'sqlite3' 
  gem 'minitest-rails'
end

# the booking gems 
gem 'acts_as_bookable'
gem 'stripe'

# the file uploader gem 
gem 'dragonfly'
group :production do
  gem 'rack-cache', :require => 'rack/cache'
end

# The geocoder file driving the google places and uber integration 
gem 'geocoder'
# The google_place gem 
gem 'google_places'

# The uber api gem 
gem 'uber-ruby', require: 'uber'

gem 'rmagick'
#gem 'mysql2'
gem 'mysql2', '~> 0.3.18'