class StudentsController < ApplicationController
  before_action :set_student, only: %i[show]
  def index
    render locals: { students: Student.all }
  end

  def show
    render locals: { student: @student}
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end
end
