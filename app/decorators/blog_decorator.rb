class BlogDecorator < SimpleDelegator
  def author_name
    author.name
  end

  def author_description
    author.description
  end
end
