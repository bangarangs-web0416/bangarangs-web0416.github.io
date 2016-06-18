require 'rails_helper'

RSpec.describe "Home page coments", type: :feature do

  describe "Each front page post has a comments section" do
    before :each do
      visit '/'
    end

    it "has a create comment form." do
      expect(page.has_css?('form')).to be_truthy
    end

    it "has a comment section." do
      post = Post.last
      selector = "div[post_id_#{post.id}]"
      expect(page.has_css?(selector)).to be_truthy
    end

    it "that belongs to the post on display." do
      post = Post.last
      comment_section_id = page.find("div#comments")["post_id_" + post.id.to_s]
      expect(comment_section_id).to be_truthy
    end
  end
end
