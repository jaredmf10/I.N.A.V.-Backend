class Postcard < ApplicationRecord
    belongs_to :user
    belongs_to :destination
    # has_one_attached :image
end
