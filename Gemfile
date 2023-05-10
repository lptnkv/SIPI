source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'rails', '~> 6.1.7'
gem 'puma', '~> 5.0'
gem 'webpacker', '~> 5.0'
gem 'image_processing', '~> 1.2'
gem 'devise'
gem 'devise-i18n'
gem 'rails-i18n'
gem 'net-smtp', require: false
gem 'net-imap', require: false
gem 'net-pop', require: false
gem 'carrierwave'
gem 'rmagick'
gem 'fog-aws'
gem 'mailjet'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3', '~> 1.4'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
end

group :production do
  gem 'pg'
end
