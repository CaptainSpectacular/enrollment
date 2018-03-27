require 'rails_helper'

describe 'user visits' do
  describe 'new address' do
    scenario 'they can make a new address' do
      student = Student.create(name: 'Anakin Skywalker')
      visit "/students/#{student.id}/addresses/new"

      fill_in 'address[description]', with: 'Sandy village'
      fill_in 'address[street]', with: 'Sandy lane'
      fill_in 'address[city]', with: 'Tatooine'
      fill_in 'address[state]', with: 'TA'
      fill_in 'address[zip]', with: '90287'
      click_on 'Create Address'

      expect(current_path).to eq(student_path(student))
      expect(student.addresses).to include(Address.last)
    end
  end
end
