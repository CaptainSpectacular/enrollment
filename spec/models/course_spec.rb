require 'rails_helper'

describe Course do
  describe 'validations' do
    it 'must have a name' do
      course = Course.new()

      expect(course).to_not be_valid
    end

    it 'is valid with all attributes' do
      course = Course.new(name: 'Jedi Academy')

      expect(course).to be_valid
    end
  end
end
