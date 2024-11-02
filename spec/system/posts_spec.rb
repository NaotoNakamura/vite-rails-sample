require 'rails_helper'

RSpec.describe "Posts", type: :system do
  describe "User can create a new user" do
    specify do
      visit posts_path

      expect(page).to have_text("All Posts")
    end
  end
end
