class Menu < ApplicationRecord
    has_many :meals
    has_one_attached :photo
end
