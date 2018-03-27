class Student < ApplicationRecord
  validates :name, presence: true
  has_many :addresses
  has_many :student_courses
  has_many :courses, through: :student_courses
end
