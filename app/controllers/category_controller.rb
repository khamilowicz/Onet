class CategoryController < ApplicationController
  
  def show
    @articles = Article.joins(:categories).where(categories: {id: params[:category]})

    respond_to do |format|
      format.html { render 'categories/show' }
    end

    
  end
  def create
  end

  def destroy
  end
end
