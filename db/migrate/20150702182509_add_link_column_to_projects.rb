class AddLinkColumnToProjects < ActiveRecord::Migration
  def change
     add_column :projects, :link, :string
  end
end
