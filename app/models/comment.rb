class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :guest, foreign_key: :guest_id, class_name: "Author"

  validates :content, presence: true
  validates :post_id, presence: true
  validates :guest_id, presence: true
end
