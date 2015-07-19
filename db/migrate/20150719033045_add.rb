class Add < ActiveRecord::Migration
  def change
    add_column :projects, :url, :string
    add_column :projects, :image, :string

  end
end
