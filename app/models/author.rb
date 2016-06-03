class Author < ActiveRecord::Base
  has_one :blog
  has_many :posts
  has_many :comments

  validates :name, presence: true
  validates :status, presence: true

  accepts_nested_attributes_for :comments
end
