require 'faker'

FactoryBot.define do
  factory :article do
    title { Faker::Lorem.sentence }
    body  { Faker::Lorem.paragraph }
    association :user, factory: :user
  end
end
