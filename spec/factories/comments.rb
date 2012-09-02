# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    title Lorem::Base::new('words', 4)
    content Lorem::Base::new('words', 100)
    article
  end
  
end
