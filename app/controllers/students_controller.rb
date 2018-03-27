class StudentsController < ApplicationController
  def index
    render locals: { students: Student.all }
  end
end
