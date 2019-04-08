class SchoolClassesController < ApplicationController
  before_action :get_school_class, only: [:show, :edit, :update]

  def new
  end

  def create
    meh = SchoolClass.create(school_classes_params)
    redirect_to school_class_path(meh)
  end

  def index
    @school_classes = SchoolClass.all
  end

  def show
    # @school_class = SchoolClass.find(params[:id])
  end

  def edit
    # @school_class = SchoolClass.find(params[:id])
  end

  def update
    # sc = SchoolClass.find(params[:id])
    @school_class.update(school_classes_params)
    redirect_to school_class_path(@school_class)
  end

  private

  def get_school_class
    @school_class = SchoolClass.find(params[:id])
  end

  def school_classes_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
