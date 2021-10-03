class User < ApplicationRecord
    belongs_to :customer
    has_many :information
end
