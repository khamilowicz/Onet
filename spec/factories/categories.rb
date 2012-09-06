# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category, :class => 'Categories' do
    name "MyString"
    article_id 1
  end
end
