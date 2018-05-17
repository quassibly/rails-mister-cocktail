class Ingredient < ApplicationRecord
  has_many :cocktails, through: :doses
  has_many :doses

  validates :name, uniqueness: { case_sensitive: false }, presence: :true
end
