require 'rails_helper'

describe 'user visits' do
  describe 'student creation ' do
    scenario 'they can make a student' do
      visit new_student_path

      fill_in 'student[name]', with: 'Anakin Skywalker'
      click_on 'Create Student'

      expect(current_path).to eq(students_path)
      expect(page).to have_content('Anakin Skywalker')
    end
  end
end