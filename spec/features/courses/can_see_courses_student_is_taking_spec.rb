require 'rails_helper'

describe 'visit the student show page' do
  describe 'sees' do
    scenario 'all the courses the student is taking' do
      student = Student.create(name: 'Anakin Skywalker', student_courses_id: 1)
      course = Course.create(name: 'Jedi Academy', student_courses_id: 1)
      binding.pry
    end
  end
end