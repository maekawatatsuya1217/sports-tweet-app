require 'rails_helper'

RSpec.describe Tweet, type: :model do
  before do
    @tweet = FactoryBot.build(:tweet)
  end

  describe '新規投稿' do
    context '新規投稿ができる時' do
     it '正しい情報が入力された時は投稿できる' do
       expect(@tweet).to be_valid
     end
    end
    context '新規投稿ができないとき' do
      it 'titleが空だと投稿できない' do
        @tweet.title = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("タイトルを入力してください")
      end
      it 'catch_copyが空だと投稿できない' do
        @tweet.catch_copy = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("キャッチコピーを入力してください")
      end
      it 'articleが空だと投稿できない' do
        @tweet.article = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("ツイートを入力してください")
      end
      it 'categoryが空だと投稿できない' do
        @tweet.category_id = 1
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("カテゴリーを選択してください")
      end
      it 'imageが空だと投稿できない' do
        @tweet.image = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("画像を入力してください")
      end
    end
  end
end
