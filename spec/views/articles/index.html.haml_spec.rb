require 'spec_helper'

describe "articles/index" do
  before(:each) do
    @article2 = FactoryGirl.create(:article)
    @article = FactoryGirl.create(:article)
    #assign(:articles, [
      #stub_model(Article,
        #:title => "Title",
        #:content => "MyText"
      #),
      #stub_model(Article,
        #:title => "Title",
        #:content => "MyText"
      #)
    #])
  end

  it "renders a list of articles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
