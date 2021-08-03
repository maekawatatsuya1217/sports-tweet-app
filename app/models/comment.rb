class Comment < ApplicationRecord

    balongs_to :user
    belongs_to :tweet
    
end
