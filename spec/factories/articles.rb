require 'faker'

FactoryGirl.define do
  factory :article do |f|
    f.title { Faker::Lorem.sentence }
    f.description  {Faker::Lorem.paragraph }
  end
end