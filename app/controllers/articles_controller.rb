class ArticlesController < ApplicationController
  require 'articles_helper.rb'
  before_filter :authenticate_editor!, except: [:show, :index]
  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.order(:popularity).reverse

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @articles }
    end
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @article = Article.find(params[:id])
    @articletitle = Article.all
    @article.popularity += 1
    @article.save

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @article }
    end
  end

  # GET /articles/new
  # GET /articles/new.json
  def new
    @article = Article.new
    @categories = Category.all


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @article }
    end
  end

  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(params[:article])
    @article .popularity = 0;
    @article.categories << Category.find_by_name(params[:categories]) unless params[:categories] == 'Create category'
    @article.categories << Category.find_or_create_by_name(params[:new_category_name]) unless params[:new_category_name].nil?

    @article.editor = current_editor

    unless params[:article][:image_path].nil?
      file_io = params[:article][:image_path]
      File.open(Rails.root.join('public', 'images', file_io.original_filename), 'wb') do |file|
        file.write(file_io.read)
      end
      @article.image_path = '/images/' + file_io.original_filename
    end

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render json: @article, status: :created, location: @article }
      else
        format.html { render action: "new" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /articles/1
  # PUT /articles/1.json
  def update
    @article = Article.find(params[:id])

    respond_to do |format|
      if @article.update_attributes(params[:article])
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    respond_to do |format|
      format.html { redirect_to articles_url }
      format.json { head :no_content }
    end
  end

  private
  def signed?
    redirect_to new_editor_session_path unless editor_signed_in?
  end

end
