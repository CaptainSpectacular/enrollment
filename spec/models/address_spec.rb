require 'rails_helper'

describe Address do
  describe 'validations' do
    it 'must have a city' do
      address = Address.create(description: 'Sand everywhere',
                               street: 'Sandy Drive',
                               state: 'TA',
                               zip: 90543)

      expect(address).to_not be_valid
    end

    it 'must have a zip' do

      address = Address.create(description: 'Sand everywhere',
                               street: 'Sandy Drive',
                               state: 'TA',
                               city: 'Tatooine')

      expect(address).to_not be_valid
    end

    it 'must have a street' do
      address = Address.create(description: 'Sand everywhere',
                               state: 'TA',
                               city: 'Tatooine',
                               zip: 90543)

      expect(address).to_not be_valid
    end

    it 'must have a state' do
      address = Address.create(description: 'Sand everywhere',
                               city: 'Tatooine',
                               street: 'Sandy Drive',
                               zip: 90543)

      expect(address).to_not be_valid
    end

    it 'is valid with all attributes' do
      address = Address.create(description: 'Sand everywhere',
                               street: 'Sandy Drive',
                               city: 'Tatooine',
                               state: 'TA',
                               zip: 90543)

      expect(address).to be_valid
    end
  end

  describe 'associations' do
    it 'belongs to student' do
      student = Student.create(name: 'Anakin Skywalker')
      address = student.addresses.create(description: 'Sand everywhere',
                                         street: 'Sandy Drive',
                                         city: 'Tatooine',
                                         state: 'TA',
                                         zip: 90543)

      expect(address).to respond_to(:student)
      expect(address.student).to eq(student)
    end
  end
end
