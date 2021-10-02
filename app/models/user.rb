class User < ApplicationRecord
    has_many :posts
    has_many :references, through: posts
    end
