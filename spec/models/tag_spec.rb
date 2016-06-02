require "rails_helper"

RSpec.describe Tag, type: :model do
  before :each do
    @spock = Author.new(id: 1, name: "Spock", status: "Admin")
    allow(@spock).to receive(:save)

    @first_post = Post.new(id: 1, title: "How to live long and prosper",
      content: "Be like me.", author: @spock)
    allow(@first_post).to receive(:save)

    @second_post = Post.new(id: 2,
      title: "My Logic",
      content: "The needs of the many outweigh the needs of the few.",
      author: @spock)
    allow(@first_post).to receive(:save)
  end

  it "has a name." do
    first_tag = Tag.new
    expect(first_tag.save).to be_falsy
  end

  it "can belong to several posts." do
    first_tag = Tag.create(name: "Star Trek")
    @first_post.tags << first_tag
    @first_post.save

    @second_post.tags << first_tag

    expect(@second_post.save!).to be_truthy
  end
end
