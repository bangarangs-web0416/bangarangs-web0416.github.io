require "rails_helper"

RSpec.describe PostTag, type: :model do
  before :each do
    @spock = Author.new(id: 1, name: "Spock", status: "Admin")
    allow(@spock).to receive(:save)

    @first_post = Post.new(id: 1, title: "How to live long and prosper",
      content: "Be like me.", author: @spock)
    allow(@first_post).to receive(:save)

    @first_tag = Tag.new(id: 1, name: "Star Trek")
    allow(@first_tag).to receive(:save)
  end

  it "belongs to post." do
    post_tag = PostTag.create(post: @first_post)
    expect(post_tag.valid?).to be_falsy
  end

  it "belongs to tag." do
    post_tag = PostTag.create(tag: @first_tag)
    expect(post_tag.valid?).to be_falsy
  end

  it "can connect a tag with its post." do
    post_tag = PostTag.create(tag: @first_tag, post: @first_post)
    expect(post_tag.valid?).to be_truthy
  end
end
