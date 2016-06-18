class AddSloganToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :slogan, :string
  end
end
