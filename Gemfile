source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails"
gem "rails", "4.1.0"

gem "sass-rails", "~> 4.0.3"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.0.0"
gem "jquery-rails"

# Assets and templates
gem "slim-rails"
gem "bootstrap-sass", "~> 3.0.0"
gem "font-awesome-rails", "~> 4.0.3.1"
gem "bourbon"

# Forms
gem "simple_form"
gem "rdiscount"

# Server
gem "pg"
gem "devise"

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem "turbolinks"

group :development, :test do
  # Deployment
  gem "hipchat", "~> 1.1.0", require: false

  # Server
  gem "thin", "~> 1.6.1"

  # Testing
  gem "rspec-rails"
  gem "factory_girl_rails"
  gem "simplecov", require: false
  gem "timecop"

  # Utilities
  gem "spring", "~> 1.1.2"
  gem "spring-commands-rspec", "~> 1.0.1"
  gem "letter_opener", "~> 1.1.2"
  gem "pry-rails", "~> 0.3.2"
  gem "pry-nav", "~> 0.2.3"
  gem "pry-debugger"
  gem "better_errors", "~> 1.1.0"
  gem "binding_of_caller", "~> 0.7.2"
end

group :production do
  gem "unicorn", "~> 4.7.0"
end
