class User < ApplicationRecord
    has_many :postcards
    has_many :destinations, through: :postcards

    # has_secure_password
end
