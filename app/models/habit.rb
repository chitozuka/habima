class Habit < ApplicationRecord
  validates :name, length: { minimum: 1, maximum: 256 }
end
