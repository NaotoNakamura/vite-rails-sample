require 'rails_helper'

RSpec.describe "sessions", type: :request do
  describe "GET /posts" do
    it '投稿一覧画面の表示ができること' do
      get posts_path
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /posts" do
    it '投稿ができること' do
      user = FactoryBot.create(:user)
      sign_in user
      post posts_path, params: { post: { body: 'test' } }
      expect(response).to redirect_to root_path
    end
  end
end
