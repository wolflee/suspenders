require 'factory_girl'
include FactoryGirl::Syntax::Methods

namespace :dev do
  desc 'Seed data for development environment'
  task prime: 'db:setup' do
    require File.expand_path('spec/factories.rb')
  end
end
