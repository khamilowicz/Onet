require 'spec_helper'
require "integration_test_helper"

describe "articles/show" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :title => "Title",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end

  it 'shows "back" link' do
    render
    rendered.should have_link 'Back'
  end

end
