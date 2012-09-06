# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#10.times do
  #a = Article.new(
    #{
    #title: Faker::Lorem.sentence, 
    #content: Faker::Lorem.paragraphs(Random.rand(10..20)),
    #image_path: '/'
  #})
  #a.popularity = Random.rand(0..12)
  #a.save
  #Random.rand(0..10).times do
    #a.comments.create(
      #{
        #title: Faker::Lorem.sentence,
        #content: Faker::Lorem.sentences(Random.rand(2..12))
      #}
    #)
  #end

#end
10.times do
  a = Article.new(
    {
    title: Faker::Lorem.sentence, 
    content: Faker::Lorem.paragraphs(5),
    image_path: '/'
  })
  a.popularity = 5
  a.save
  10.times do
    a.comments.create(
      {
        title: Faker::Lorem.sentence,
        content: Faker::Lorem.sentences(5)
      }
    )
  end

end
#10.times {FactoryGirl.create(:article_with_comments)}
Category.create(name: 'Create category')
