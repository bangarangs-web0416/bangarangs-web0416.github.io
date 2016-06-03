class Post < ActiveRecord::Base
  has_many :post_tags
  has_many :tags, through: :post_tags
  has_many :comments
  belongs_to :author

  validates :content, presence: true
  validates :author, presence: true

  include ActiveModel::Validations
  validates_with AuthorStatusValidator, fields: [ :author ]

  def ascending_comments
    CommentSorter.new(comments).ascending
  end
end
