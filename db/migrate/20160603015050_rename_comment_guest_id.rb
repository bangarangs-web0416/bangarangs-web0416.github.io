class RenameCommentGuestId < ActiveRecord::Migration
  def change
    rename_column :comments, :guest_id, :author_id
  end
end
