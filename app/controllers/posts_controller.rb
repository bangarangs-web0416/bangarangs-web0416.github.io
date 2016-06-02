class PostsController < ApplicationController
  def index
    @posts = Post.all
    @most_recent_post = Post.last
    @tags = Tag.all
  end
end
