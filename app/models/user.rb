class User < ApplicationRecord
    belongs_to :customer
    has_one :information
end
