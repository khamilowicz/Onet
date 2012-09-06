
FactoryGirl.define do 
  factory :article do
    title Faker::Lorem.sentence
    content Faker::Lorem.paragraphs 5
    image_path '/'
    popularity 0

    factory :article_with_comments do
      ignore do
        comments_count 5
      end

      after(:create) do |article, evaluator|
        FactoryGirl.create_list(:comment, evaluator.comments_count, article: article)
      end
    end
  end
end
