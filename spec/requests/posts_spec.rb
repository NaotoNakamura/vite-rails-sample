require 'rails_helper'
require 'support/authentication_contexts'

RSpec.describe "sessions", type: :request do
  describe "GET /posts" do
    it '投稿一覧画面の表示ができること' do
      get posts_path
      expect(response).to have_http_status(200)
    end

    context 'ログインしていない場合' do
      it '投稿フォームが表示されないこと' do
        get posts_path
        expect(response.body).not_to include '<form'
        expect(response.body).not_to include 'Add Post'
      end
    end

    context 'ログインしている場合' do
      include_context 'userでログイン'

      it '投稿フォームが表示されること' do
        login_user
        get posts_path
        expect(response.body).to include '<form'
        expect(response.body).to include 'Add Post'
      end
    end
  end

  describe "POST /posts" do
    context 'ログインしていない場合' do
      it '投稿ができないこと' do
        post posts_path, params: { post: { body: 'これはテストの投稿です。' } }
        follow_redirect!
        expect(response.body).not_to include 'これはテストの投稿です。'
      end
    end

    context 'ログインしている場合' do
      include_context 'userでログイン'

      it '投稿ができること' do
        login_user
        post posts_path, params: { post: { body: 'これはテストの投稿です。' } }
        follow_redirect!
        expect(response.body).to include 'これはテストの投稿です。'
      end
    end
  end
end
