class CoursesController < ApplicationController
  def show
    render locals: { course: Course.find(params[:id]) }
  end
end