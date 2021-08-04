FactoryBot.define do
  factory :tweet do
    title       {'スポーツ'}
    catch_copy  {'キャッチコピー'}
    article     {'ツイート本文'}
    category_id { 2 }

    association :user

    after(:build) do |tweet|
      tweet.image.attach(io: File.open('app/assets/images/shea.png'), filename: 'shea.png')
    end
  end
end
