require 'faker'

FactoryGirl.define do
  factory :user do
    surname     { Faker::Name.last_name }   #Использование Faker
    name        { Faker::Name.first_name }
    secondname  { Faker::Name.last_name }
  end
end