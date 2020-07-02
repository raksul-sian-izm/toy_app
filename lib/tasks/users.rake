# frozen_string_literal: true

require 'faker'

namespace :users do
  task :create do
    100_000.times do
      User.create!(name: Faker::Name.unique.name, email: Faker::Internet.unique.email)
    end
  end
end
