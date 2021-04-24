class CreateArticleTopics < ActiveRecord::Migration[4.2]
  def change
    create_table :article_topics do |t|
      t.references :topic, index: true, foreign_key: true
      t.references :article, index: true, foreign_key: true
    end
  end
end
