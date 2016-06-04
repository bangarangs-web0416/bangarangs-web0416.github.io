class CommentSorter
  attr_accessor :ascending_comments, :comments

  def initialize(comments)
    @comments = comments
  end

  def ascending
    @comments.sort_by do |comment|
      comment.created_at
    end.reverse
  end
end
