class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :photo, presence: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  mount_uploader :photo, PhotoUploader
end
