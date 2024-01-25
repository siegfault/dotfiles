gem_group :development, :test do
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
end

gem_group :development do
  gem 'annotate'
end

run "sed -i \"s/^ruby .*/ruby File.read('.ruby-version').strip/\" Gemfile"
run 'sed -i "s/, \"~> [^\"]*\"//" Gemfile'

after_bundle do
  run 'rails generate rspec:install'

  run 'mkdir spec/support'

  file 'spec/support/factory_bot.rb', <<~FILE
    # frozen_string_literal: true

    RSpec.configure do |config|
      config.include FactoryBot::Syntax::Methods
    end
  FILE
end
