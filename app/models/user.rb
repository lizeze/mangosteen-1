class User < ApplicationRecord
    validates :email, presence: true, length: { minimum: 9 }
end
