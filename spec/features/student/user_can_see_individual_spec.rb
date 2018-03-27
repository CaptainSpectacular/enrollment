require 'rails_helper'

describe 'user visits' do
  describe 'the show page' do
    scenario 'they see one student' do
      student = Student.create(name: 'Anakin Skywalker')

      visit student_path(student)

      expect(page).to have_content(student.name)
    end
  end
end