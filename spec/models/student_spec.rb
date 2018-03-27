require 'rails_helper'

describe Student do
  describe 'attribute validations' do
    it 'must have a name' do
      student = Student.create()

      expect(student).to_not be_valid
    end

    it 'can be created with all necessary attributes' do
      student = Student.create(name: 'Anakin Skywalker')

      expect(student).to be_valid
      expect(student).to respond_to(:name)
    end
  end

  describe 'associations' do
    it 'has many addresses' do
      student = Student.create(name: 'Anakin Skywalker')

      expect(student).to respond_to(:addresses)
    end
  end
end