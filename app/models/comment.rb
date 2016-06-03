class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :author

  validates :content, presence: true
  validates :post_id, presence: true
  validates :author_id, presence: true
end
