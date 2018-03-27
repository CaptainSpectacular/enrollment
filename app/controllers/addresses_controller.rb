class AddressesController < ApplicationController
  before_action :set_student, only: %i[new create]

  def new
    render locals: { student: @student,
                     address: Address.new }
  end

  def create
    @student.addresses.create(address_params)

    redirect_to student_path(params[:student_id])
  end

  private

  def set_student
    @student = Student.find(params[:student_id])
  end

  def address_params
    params.require(:address).permit(:description, :city, :state, :zip, :street)
  end
end