class CreateBlogTable < ActiveRecord::Migration
  def change
    create_table :blog do |t|
      t.string :author
      t.string :title
    end
  end
end
