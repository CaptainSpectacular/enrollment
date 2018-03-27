require 'rails_helper'

describe 'user visits' do
  describe 'the index page' do
    scenario 'they can delete a student' do
      student = Student.create(name: 'Anakin Skywalker')

      visit students_path
      click_on 'Delete'

      expect(current_path).to eq(students_path)
      expect(page).to_not have_content(student.name)
    end
  end
end