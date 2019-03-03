class Cocktail < ApplicationRecord
  has_many :doses
  has_many :ingredients, through: :doses, :dependent => :destroy
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  mount_uploader :photo, PhotoUploader
end
