class HomeController < ApplicationController
  def index
    @posts = Post.all
    @most_recent_post = Post.last
    
  end
end
