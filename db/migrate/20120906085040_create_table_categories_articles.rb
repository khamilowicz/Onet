class CreateTableCategoriesArticles < ActiveRecord::Migration
  def up
    create_table :articles_categories do |t|
      t.integer :article_id
      t.integer :category_id
    end
  end

  def down
    drop_table :categories_articles
  end
end
