require 'spec_helper'

describe "comments/edit" do
  before(:each) do
    @comment = FactoryGirl.create(:comment)
    #@comment = assign(:comment, stub_model(Comment,
      #:title => "MyString",
      #:content => "MyText",
      #:article_id => 1
    #))
  end

  #it "renders the edit comment form" do
    #render  @comment
    ##get edit_comment_path(@comment)

    ## Run the generator again with the --webrat flag if you want to use webrat matchers
    #assert_select "form", :action => comments_path(@comment), :method => "post" do
      #assert_select "input#comment_title", :name => "comment[title]"
      #assert_select "textarea#comment_content", :name => "comment[content]"
      #assert_select "input#comment_article_id", :name => "comment[article_id]"
    #end
  #end
end
