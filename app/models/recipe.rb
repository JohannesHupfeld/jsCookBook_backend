class Recipe < ApplicationRecord
  belongs_to :category

  validates :name, :instructions, :ingredients, presence: :true
end
