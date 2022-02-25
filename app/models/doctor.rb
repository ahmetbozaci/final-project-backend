class Doctor < ApplicationRecord
  belongs_to :user
  validates :name, :location, :specification, :picture, :description, presence: true
  validates :price, numericality: { greater_than: 0 }
end