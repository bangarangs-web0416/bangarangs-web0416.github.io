require "rails_helper"

RSpec.describe Post, type: :model do
  before :each do
    @spock = Author.new(name: "Spock", status: "Admin")
    allow( @spock ).to receive(:save)

    @kirk = Author.new(name: "Kirk", status: "Guest")
    allow( @kirk ).to receive(:save)
  end

  it "belongs to author." do
    new_post = Post.create(title: "How to live long and prosper", content: "Be like me.", author: @spock)
    expect(new_post.author).to eq(@spock)
  end

  it "has content." do
    new_post = Post.create(title: "How to live long and prosper", author: @spock)
    expect(new_post.valid?).to be_falsy
  end

  it "can only be created by an author with a status of admin." do
    new_post = Post.new(title: "How to live long and prosper", author: @kirk)
    expect(new_post.valid?).to be_falsy
  end
end
