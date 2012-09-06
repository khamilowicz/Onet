require 'spec_helper'


describe CommentsController do

  before(:each) do
    @article = FactoryGirl.create(:article)
    @comment = FactoryGirl.create(:comment)
  end

  describe "index page" do
    it "should have comments of article" do
      visit article_path @article
      page.should have_content @article.comments.first
      page.should have_content @article.comments.last
    end
  end
  
  #describe "GET index" do
    #it "assigns all comments as @comments" do
      #visit @article
      #page.should have_content @article.comments.first
    #end
  #end

  #describe "GET show" do
    #it "assigns the requested comment as @comment" do
      #get :show, {:id => comment.to_param}, valid_session
      #assigns(:comment).should eq(comment)
    #end
  #end

  #describe "GET new" do
    #it "assigns a new comment as @comment" do
      #get :new, {}, valid_session
      #assigns(:comment).should be_a_new(Comment)
    #end
  #end

  #describe "GET edit" do
    #it "assigns the requested comment as @comment" do
      #get :edit, {:id => comment.to_param}, valid_session
      #assigns(:comment).should eq(comment)
    #end
  #end

  #describe "POST create" do
    #describe "with valid params" do
      #it "creates a new Comment" do
        #expect {
          #post :create, {:comment => valid_attributes}, valid_session
        #}.to change(Comment, :count).by(1)
      #end

      #it "assigns a newly created comment as @comment" do
        #post :create, {:comment => valid_attributes}, valid_session
        #assigns(:comment).should be_a(Comment)
        #assigns(:comment).should be_persisted
      #end

      #it "redirects to the created comment" do
        #post :create, {:comment => valid_attributes}, valid_session
        #response.should redirect_to(Comment.last)
      #end
    #end

    #describe "with invalid params" do
      #it "assigns a newly created but unsaved comment as @comment" do
        ## Trigger the behavior that occurs when invalid params are submitted
        #Comment.any_instance.stub(:save).and_return(false)
        #post :create, {:comment => {}}, valid_session
        #assigns(:comment).should be_a_new(Comment)
      #end

      #it "re-renders the 'new' template" do
        ## Trigger the behavior that occurs when invalid params are submitted
        #Comment.any_instance.stub(:save).and_return(false)
        #post :create, {:comment => {}}, valid_session
        #response.should render_template("new")
      #end
    #end
  #end

  #describe "PUT update" do
    #describe "with valid params" do
      #it "updates the requested comment" do
        #Comment.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        #put :update, {:id => comment.to_param, :comment => {'these' => 'params'}}, valid_session
      #end

      #it "assigns the requested comment as @comment" do
        #put :update, {:id => comment.to_param, :comment => valid_attributes}, valid_session
        #assigns(:comment).should eq(comment)
      #end

      #it "redirects to the comment" do
        #put :update, {:id => comment.to_param, :comment => valid_attributes}, valid_session
        #response.should redirect_to(comment)
      #end
    #end

    #describe "with invalid params" do
      #it "assigns the comment as @comment" do
        ## Trigger the behavior that occurs when invalid params are submitted
        #Comment.any_instance.stub(:save).and_return(false)
        #put :update, {:id => comment.to_param, :comment => {}}, valid_session
        #assigns(:comment).should eq(comment)
      #end

      #it "re-renders the 'edit' template" do
        #Comment.any_instance.stub(:save).and_return(false)
        #put :update, {:id => comment.to_param, :comment => {}}, valid_session
        #response.should render_template("edit")
      #end
    #end
  #end

  #describe "DELETE destroy" do
    #it "destroys the requested comment" do
      #expect {
        #delete :destroy, {:id => comment.to_param}, valid_session
      #}.to change(Comment, :count).by(-1)
    #end

    #it "redirects to the comments list" do
      #delete :destroy, {:id => comment.to_param}, valid_session
      #response.should redirect_to(comments_url)
    #end
  #end

end
