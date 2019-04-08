class StudentsController < ApplicationController
  before_action :get_student, only: [:show, :edit, :update]

  def new
  end

  def create
    bleh = Student.create(student_params)
    redirect_to student_path(bleh)
  end

  def index
    @students = Student.all
  end

  def show
    # @student = Student.find(params[:id])
  end

  def edit
    # @student = Student.find(params[:id])
  end

  def update
    # student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private

  def get_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
