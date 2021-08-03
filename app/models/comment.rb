class Comment < ApplicationRecord

    validates :text, presence: true

    balongs_to :user
    belongs_to :tweet
    
end
