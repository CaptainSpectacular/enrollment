require 'rails_helper'

describe 'on every page' do
  describe 'there is a nav bar' do
    scenario 'on the index page' do
      visit students_path

      expect(page).to have_link('New Student')
      expect(page).to have_link('Home')
    end

    scenario 'on the show page' do
      Student.create(name: 'Anakin Skywalker')
      visit student_path(Student.last)

      expect(page).to have_link('New Student')
      expect(page).to have_link('Home')
    end

    scenario 'on the new page' do
      visit new_student_path

      expect(page).to have_link('New Student')
      expect(page).to have_link('Home')
    end
  end

  scenario 'the nav bar works' do
    visit students_path

    click_on 'New Student'

    expect(current_path).to eq(new_student_path)

    click_on 'Home'

    expect(current_path).to eq(students_path)
  end
end