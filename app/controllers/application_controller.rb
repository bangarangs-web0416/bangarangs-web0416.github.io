class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :blog, :most_recent_poste

  def blog
    blog = Blog.first
    BlogDecorator.new(blog)
  end

  def most_recent_post
    Post.last
  end
end
