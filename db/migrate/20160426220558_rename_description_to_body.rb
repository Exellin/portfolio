class RenameDescriptionToBody < ActiveRecord::Migration[4.2]
  def change
    rename_column :articles, :description, :body
  end
end
