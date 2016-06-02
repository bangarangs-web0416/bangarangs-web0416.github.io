class Author < ActiveRecord::Base
  has_many :posts
  has_many :comments, as: :guest

  validates :name, presence: true
  validates :status, presence: true
end
