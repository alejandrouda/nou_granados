class Meal < ApplicationRecord
  belongs_to :menu
  has_one_attached :photo
end
