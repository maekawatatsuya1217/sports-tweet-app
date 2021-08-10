class Category < ActiveHash::Base
    self.data = [
        { id: 1, name: '--'},
        { id: 2, name: '格闘技'},
        { id: 3, name: '弓道' },
        { id: 4, name: 'ゴルフ' },
        { id: 5, name: 'サッカー' },
        { id: 6, name: '自転車競技' },
        { id: 7, name: '柔道' },
        { id: 8, name: '水泳' },
        { id: 9, name: '雪上スポーツ' },
        { id: 10, name: '体操' },
        { id: 11, name: '卓球'},
        { id: 12, name: 'テニス'},
        { id: 13, name: '卓球'},
        { id: 14, name: 'バスケットボール'},
        { id: 15, name: 'バドミントン'},
        { id: 16, name: 'バレーボール'},
        { id: 17, name: 'フットボール'},
        { id: 18, name: '野球'},
        { id: 19, name: 'ラグビー'},
        { id: 20, name: '陸上競技'},
        { id: 21, name: 'その他'}
    ]

    include ActiveHash::Associations
    has_many :tweets
end