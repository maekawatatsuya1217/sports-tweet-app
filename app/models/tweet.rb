class Tweet < ApplicationRecord
    with_options presence: true do
        validates :title
        validates :catch_copy
        validates :article
        validates :image
    end

    belongs_to :user
    
end
