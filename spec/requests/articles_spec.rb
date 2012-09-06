require 'spec_helper'

describe "Articles" do
  describe "GET /articles" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get articles_path
      response.status.should be(200)
    end
  end

  describe 'show Ariticle' do
    before(:each) do
      @article = FactoryGirl.create(:article_with_comments)
    end
    it 'should show field Author' do
      visit article_path(@article)
      page.should have_content('Author')
    end

    it 'should have field Comments' do
      visit article_path(@article)
      page.should have_content('Comments')
    end

    it 'should have content of comments' do
      @article = FactoryGirl.create(:article_with_comments)
      visit article_path(@article)
      page.should have_content(@article.comments.last.title)
      page.should have_content(@article.comments.last.content)
      page.should have_content(@article.comments.first.title)
      page.should have_content(@article.comments.first.content)
    end
  end
end
