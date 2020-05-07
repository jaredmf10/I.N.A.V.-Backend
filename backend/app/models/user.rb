class User < ApplicationRecord
    has_many :postcards
    has_many :destinations, through: :postcards
    has_secure_password

    # validates :name, uniqueness: { case_sensitive: false }
    # validates :name, length: {minimum: 2}
    # validates :password, uniqueness: { case_sensitive: false }
    # validates :password, length: {minimum: 2}
end
