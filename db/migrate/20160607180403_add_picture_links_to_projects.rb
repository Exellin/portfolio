class AddPictureLinksToProjects < ActiveRecord::Migration[4.2]
  def change
    add_column :projects, :picture_link, :string
  end
end
