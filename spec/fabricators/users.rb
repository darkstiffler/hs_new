require 'ffaker'

Fabricator(:user) do
  email                  { Faker::Internet.email }
  password               { "123" }
  password_confirmation  { "123" }
end