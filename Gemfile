source 'https://rubygems.org'
ruby '2.1.2'
gem 'rails', '4.1.5'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'spring',        group: :development
gem 'bootstrap-sass'
gem 'haml-rails'
gem 'pg'
gem 'simple_form'
gem "jquery-ui-rails"
group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_21]
  gem 'html2haml'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'guard-bundler' #bundle on gemfile changed
  gem 'guard-rails' #run rails on config changes
  gem 'guard-livereload', require: false #reload browser on assets change, to correct work need to install live reload plug for browser
end
group :development, :test do
  gem 'pry-rails'
  gem 'pry-rescue'
end

group :production do
  gem 'rails_12factor'
end

gem 'greensock-rails'