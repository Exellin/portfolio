class AddPictureLinksToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :picture_link, :string
  end
end
