# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


@user = Editor.create({
  username: 'Mega',
  email: 'example@wp.pl',
  password: 'secret',
  password_confirmation: 'secret'
})



10.times do
  a = Article.new(
    {
    title: Faker::Lorem.sentence, 
    content: Faker::Lorem.paragraphs(Random.rand(10..20)),
    image_path: '/'
  })
  a.popularity = Random.rand(0..12)
  a.save
  Random.rand(0..10).times do
    a.comments.create(
      {
        title: Faker::Lorem.sentence,
        content: Faker::Lorem.sentences(Random.rand(2..12))
      }
    )
  end
  @user.articles << a

end
#10.times {FactoryGirl.create(:article_with_comments)}
Category.create(name: 'Create category')
