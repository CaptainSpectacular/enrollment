require 'rails_helper'

describe 'user visits' do
  describe 'student show page' do
    scenario 'it has all their addresses' do
      student = Student.create(name: 'Anakin Skywalker')
      address = student.addresses.create(description: 'Sand everywhere',
                                         street: 'Sandy Drive',
                                         city: 'Tatooine',
                                         state: 'TA',
                                         zip: 90543)

      visit student_path(student)

      expect(page).to have_content(address.street)
      expect(page).to have_content(address.city)
      expect(page).to have_content(address.state)
      expect(page).to have_content(address.zip)
      expect(page).to have_content(address.description)
    end
  end
end