require 'rails_helper'

describe 'visit the show page' do
  describe 'can see' do
    scenario 'all of the students in the course' do
      course = Course.create(name: 'Jedi Academy')
      student1 = course.students.create(name: 'Anakin Skywalker')
      student2 = course.students.create(name: 'Ben Kenobi')

      visit course_path(course)

      expect(page).to have_content(student1.name)
      expect(page).to have_content(student2.name)
    end
  end
end