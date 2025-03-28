FactoryBot.define do
  factory :post do
    body { 'これは投稿文です。' }
    user
  end
end
