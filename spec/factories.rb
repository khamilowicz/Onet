FactoryGirl.define do 
  factory :article do
    title 'Breaking news!'
    content Lorem::Base::new('paragraphs', 2) 

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
