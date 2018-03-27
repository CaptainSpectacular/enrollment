require 'rails_helper'

describe 'user visits' do
  describe 'the edit page' do
    scenario 'they can edit a student' do
      student = Student.create(name: 'Anakin Skywalker')

      visit edit_student_path(student)

      fill_in 'student[name]', with: 'Darth Vader'
      click_on 'Update Student'

      expect(current_path).to eq(student_path(student))
      expect(page).to have_content('Darth Vader')
    end
  end
end