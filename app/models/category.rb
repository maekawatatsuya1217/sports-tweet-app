class Category < ActiveHash::Base
    self.data = [
        { id: 1, name: '--'},
        { id: 2, name: 'サッカー'},
        { id: 3, name: '野球' },
        { id: 4, name: 'テニス' },
        { id: 5, name: 'バドミントン' },
        { id: 6, name: 'ゴルフ' },
        { id: 7, name: '陸上競技' },
        { id: 8, name: '水泳' },
        { id: 9, name: '体操' },
        { id: 10, name: '武道・格闘技' },
        { id: 11, name: '雪上スポーツ'},
        { id: 12, name: '自転車競技'},
        { id: 13, name: 'その他'}
    ]

    include ActiveHash::Associations
    has_many :tweets
end