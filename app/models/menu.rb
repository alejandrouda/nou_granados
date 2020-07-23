class Menu < ApplicationRecord
    has_many :meals, dependent: :destroy
    has_many :drinks, dependent: :destroy
    has_one_attached :photo
end
