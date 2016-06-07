class CreateProjectsAndTags < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :website_url
      t.string :github_url
      t.string :title
      t.text :description
    end
    create_table :tags do |t|
      t.string :name
      t.integer :project_id
    end
  end
end