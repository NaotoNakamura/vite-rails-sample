FactoryBot.define do
  factory :user do
    name { 'テスト' }
    email { 'example@example.com' }
    password { 'password' }
    password_confirmation { "password" }
  end
end
