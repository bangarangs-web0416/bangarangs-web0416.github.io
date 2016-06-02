require "rails_helper"

RSpec.describe Author, type: :model do
  it "has a name." do
    spock = Author.create(status: "Admin")
    expect(spock.valid?).to be_falsy
  end

  it "with status of admin can create posts." do
    spock = Author.new(name: "Spock", status: "Admin")
    allow(spock).to receive(:save)

    first_post = spock.posts.build(
      title: "How to live long and prosper", content: "Be like me."
    )

    expect(spock.posts.first).to eq(first_post)
  end

  it "has a status." do
    spock = Author.create(name: "Spock", status: "Admin")
    expect(spock.status).to be_truthy
  end
end
