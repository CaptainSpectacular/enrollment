class Address < ApplicationRecord
  validates :city, presence: true
  validates :state, presence: true
  validates :street, presence: true
  validates :zip, presence: true
  belongs_to :student, optional: true
end
