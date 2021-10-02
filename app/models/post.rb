class Post < ApplicationRecord
    belongs_to :users
    has_many :references
end
