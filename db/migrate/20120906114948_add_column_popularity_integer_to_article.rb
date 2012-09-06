class AddColumnPopularityIntegerToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :popularity, :integer
  end
end
