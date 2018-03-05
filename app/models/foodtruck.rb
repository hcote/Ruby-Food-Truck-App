class Foodtruck < ApplicationRecord
  validates :name, presence: true
  validates :foodtype, inclusion: %w(pizza veggie mexican asian)
 validates :latitude, numericality: {greater_than_or_equal_to: -1000, less_than_or_equal_to: 1000}
  validates :longitude, numericality: {greater_than_or_equal_to: -1000, less_than_or_equal_to: 1000}
  belongs_to :user

end
