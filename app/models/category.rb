class Category < ApplicationRecord
    has_many :activities
    validates :title, presence: true
    validates :title, uniqueness: true
end
