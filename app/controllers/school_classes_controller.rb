class SchoolClassesController < ApplicationController
  def index
    @all_classes = SchoolClass.all
  end

  def new
    @sc = SchoolClass.new
  end

  def create
    @sc = SchoolClass.create(params.require(:school_class).permit(:title,:room_number))
    redirect_to school_class_path(@sc)
  end

  def edit
    @sc = SchoolClass.find(params[:id])
  end

  def show
    @sc = SchoolClass.find(params[:id])
  end

  def update
    @sc = SchoolClass.find(params[:id])
    @sc.update(params.require(:school_class).permit(:title,:room_number))
    redirect_to school_class_path(@sc)
  end
end
