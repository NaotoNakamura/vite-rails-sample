require 'rails_helper'

RSpec.describe "sessions", type: :request do
  describe "GET /users/sign_up" do
    it '新規登録画面の表示ができること' do
      get new_user_registration_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /users/sign_up" do
    it 'ログイン画面の表示ができること' do
      get new_user_session_path
      expect(response).to have_http_status(200)
    end
  end
end
