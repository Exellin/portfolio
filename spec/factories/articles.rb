require 'faker'

FactoryGirl.define do
  factory :article do |f|
    f.title { Faker::Lorem.sentence }
    f.body  { Faker::Lorem.paragraph }
  end
end
