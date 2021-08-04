class Tweet < ApplicationRecord

    has_one_attached :image

    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :category
    
    with_options presence: true do
        validates :title
        validates :catch_copy
        validates :article
        validates :image
    end

    belongs_to :user
    has_many :comments, dependent: :destroy
    
end
