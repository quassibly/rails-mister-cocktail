class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  mount_uploader :photo, PhotoUploader

  validates :name, uniqueness: { case_sensitive: false }, presence: true
end
