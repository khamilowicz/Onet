class AddImageToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :image_path, :string
  end
end
