source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.1"

gem "active_model_serializers"
gem 'bcrypt', '~> 3.1.7'
gem "rails", "~> 5.2.3"
gem "mysql2"
gem "puma", "~> 3.11"
gem "jwt"
gem "figaro"
gem "grape"
gem "bootsnap", ">= 1.1.0", require: false
gem 'simple_command'
gem "will_paginate", "~>3.1.0"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "faker"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
