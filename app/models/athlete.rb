class Athlete < ApplicationRecord
  belongs_to :trainer

  validates :name, :previous_coaching, :age, presence: true
  validates :name, length: { minimum: 3 }
  validates :age, numericality: { greater_than: 0, less_than: 150 }
end
