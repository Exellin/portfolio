class RenameDescriptionToBody < ActiveRecord::Migration
  def change
    rename_column :articles, :description, :body
  end
end
