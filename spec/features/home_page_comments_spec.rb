require 'rails_helper'

RSpec.describe "Home page coments", type: :feature do

  describe "Each front page post has a comments section" do
    it "has a create comment form" do
      visit '/'
      expect(page.has_css?('form')).to be_truthy
    end
   end
 end
