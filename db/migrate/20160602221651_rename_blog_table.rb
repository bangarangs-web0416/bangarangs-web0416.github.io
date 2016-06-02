class RenameBlogTable < ActiveRecord::Migration
  def change
    rename_table :blog, :blogs
  end
end
