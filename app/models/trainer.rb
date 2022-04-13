class Trainer < ApplicationRecord
  has_many :athletes, dependent: :destroy

  validates :name, :years_of_experience, presence: true
  validates :name, length: { minimum: 3 }
  validates :years_of_experience, numericality: { greater_than: 0, less_than: 150 }
end
