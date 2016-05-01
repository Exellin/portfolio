require 'faker'

FactoryGirl.define do
  factory :article do
    title { Faker::Lorem.sentence }
    body  { Faker::Lorem.paragraph }
    user_id { Faker::Number.digit }
  end
end
