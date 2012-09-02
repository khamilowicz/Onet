require 'spec_helper'

describe "comments/new" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :title => "MyString",
      :content => "MyText",
      :article_id => 1
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comments_path, :method => "post" do
      assert_select "input#comment_title", :name => "comment[title]"
      assert_select "textarea#comment_content", :name => "comment[content]"
      assert_select "input#comment_article_id", :name => "comment[article_id]"
    end
  end
end
