require "rails_helper"

RSpec.describe Comment, type: :model do
  before :each do
    @spock = Author.new(id: 1, name: "Spock", status: "Admin")
    allow(@spock).to receive(:save)

    @first_post = Post.new(id: 1, title: "How to live long and prosper",
      content: "Be like me.", author: @spock)
    allow(@first_post).to receive(:save)

    @kirk = Author.new(id: 2, name: "Kirk", status: "Guest")
    allow(@kirk).to receive(:save)
  end

  it "has content." do
    first_comment = Comment.new(author: @spock, post: @first_post)
    expect(first_comment.save).to be_falsy
  end

  it "belongs to a post." do
    first_comment = Comment.new(content: "I agree, Spock.")
    expect(first_comment.save).to be_falsy
  end

  it "belongs to an author" do
    first_comment = Comment.new(author: @kirk, content: "I agree, Spock.",
      post: @first_post)
    expect(first_comment.save).to be_truthy
  end
end
