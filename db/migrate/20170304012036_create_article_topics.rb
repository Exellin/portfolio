class CreateArticleTopics < ActiveRecord::Migration
  def change
    create_table :article_topics do |t|
      t.references :topic, index: true, foreign_key: true
      t.references :article, index: true, foreign_key: true
    end
  end
end
