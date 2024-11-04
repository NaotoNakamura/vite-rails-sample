require 'rails_helper'

RSpec.describe "sessions", type: :system do
  describe "会員登録画面" do
    context 'フォームにユーザー情報を入力して登録した場合' do
      before do
        visit new_user_registration_path
        fill_in "user_name", with: 'テスト'
        fill_in "user_email", with: 'example@example.com'
        fill_in "user_password", with: 'password'
        fill_in "user_password_confirmation", with: 'password'
        click_button 'Sign up'
      end

      it '登録後にログイン状態になること' do
        expect(page).to have_text("ログアウト")
      end
    end
  end

  describe "ログイン画面" do
    context 'フォームにユーザー情報を入力して登録した場合' do
      before do
        FactoryBot.create(:user)
        visit new_user_session_path
        fill_in "user_email", with: 'example@example.com'
        fill_in "user_password", with: 'password'
        click_button 'Log in'
      end

      it 'ログイン後にログイン状態になること' do
        expect(page).to have_text("ログアウト")
      end
    end
  end
end
