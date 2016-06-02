class AddGuestIdToComment < ActiveRecord::Migration
  def change
    add_column :comments, :guest_id, :integer
  end
end
