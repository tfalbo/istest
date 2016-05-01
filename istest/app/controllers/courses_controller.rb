class CoursesController < ApplicationController
  
  def index
    @courses = Course.all
  end

  def new
  	@course = Course.new
  end

  def edit 
    @course = Course.find(params[:id]) 
    @students = @course.students
  end

  def show
    @course = Course.find(params[:id])
    @students = @course.students
  end

 def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to '/courses'
    else
      render 'new'
		end
	end

  def update 
    @course = Course.find(params[:id]) 
    if @course.update_attributes(course_params) 
      redirect_to(:action => 'show', :id => @course.id) 
    else 
      render 'edit' 
    end 
  end

  private
  	def course_params
      params.require(:course).permit(:name, :description, :status)
    end

end
