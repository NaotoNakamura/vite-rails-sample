require 'rails_helper'

RSpec.describe "sessions", type: :request do
  describe "GET /auth/google_oauth2" do
    context '会員登録済みの場合' do
      before do
        FactoryBot.create(:user, name: 'mockuser', email: 'example@example.com')
        get "/auth/google_oauth2"
        follow_redirect!
      end

      it 'ログインできること' do
        follow_redirect!
        expect(response.body).to include 'mockuser'
      end
    end

    context '新規会員の場合' do
      before do
        get "/auth/google_oauth2"
        follow_redirect!
      end

      it '新規登録できること' do
        follow_redirect!
        expect(response.body).to include 'mockuser'
      end
    end
  end
end
