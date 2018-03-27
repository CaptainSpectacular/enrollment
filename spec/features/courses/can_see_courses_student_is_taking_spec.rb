require 'rails_helper'

describe 'visit the student show page' do
  describe 'sees' do
    scenario 'all the courses the student is taking' do
      student = Student.create(name: 'Anakin Skywalker')
      course = Course.create(name: 'Jedi Academy')
    end
  end
end