require 'rails_helper'

describe 'visit the student show page' do
  describe 'sees' do
    scenario 'all the courses the student is taking' do
      student = Student.create(name: 'Anakin Skywalker')
      course = student.courses.create(name: 'Jedi Academy')

      visit student_path(student)

      expect(page).to have_content(course.name)
    end
  end
end