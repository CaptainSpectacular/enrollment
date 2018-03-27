class StudentsController < ApplicationController
  before_action :set_student, only: %i[show update edit]
  def index
    render locals: { students: Student.all }
  end

  def show
    render locals: { student: @student}
  end

  def new
    render locals: { student: Student.new }
  end

  def create
    Student.create(student_params)

    redirect_to students_path
  end

  def edit
    render locals: { student: @student }
  end

  def update
    @student.update(student_params)

    redirect_to student_path(@student)
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name)
  end
end
