class StudentsController < ApplicationController
  before_action :this_student, only: [:show, :edit, :update]

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    redirect_to @student
  end

  def show
  end

  def edit
  end

  def update
    @student.update(student_params)
    redirect_to @student
  end

  private

  def this_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:last_name, :first_name)
  end
end
