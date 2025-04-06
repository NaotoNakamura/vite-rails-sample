RSpec.shared_context 'userでログイン' do
  def login_user
    FactoryBot.create(:user, name: 'mockuser', email: 'example@example.com')
    get "/auth/google_oauth2"
    follow_redirect!
  end
end
