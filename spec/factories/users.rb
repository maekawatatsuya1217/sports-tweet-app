FactoryBot.define do
  factory :user do
    name                  {'名前'}
    email                 {Faker::Internet.free_email}
    password              {'1a' + Faker::Internet.password(min_length: 6)}
    favorite_sport        {'スポーツ名'}
  end
end
