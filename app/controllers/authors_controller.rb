class AuthorsController < ApplicationController
  def create
    author = Author.find_or_create_by(author_params)
    author.comments.new(comment_params)
    author.save

    @post = Post.find(params[:comment][:post_id])

    respond_to do |format|
      format.js
    end
  end

  private

  def author_params
    params.require(:author).permit(:name)
  end

  def comment_params
    params.require(:comment).permit(:post_id, :content)
  end
end
