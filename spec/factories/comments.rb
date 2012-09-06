# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    title Faker::Lorem.sentence
    content  Faker::Lorem.sentences 4
    article
  end
  
end
