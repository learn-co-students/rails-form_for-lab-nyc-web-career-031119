class SchoolClassesController < ApplicationController
  before_action :this_class, only: [:edit, :show, :update]

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(class_params)
    redirect_to @school_class
  end

  def index
    @school_classes = SchoolClass.all
  end

  def show
  end

  def edit
  end

  def update
    @school_class.update(class_params)
    redirect_to @school_class
  end

  private

  def this_class
    @school_class = SchoolClass.find(params[:id])
  end

  def class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
