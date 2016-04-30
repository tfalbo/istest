class CoursesController < ApplicationController
  
  def index
    @courses = Course.all
  end

  def new
  	@course = Course.new
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

  private
  	def course_params
      params.require(:course).permit(:name, :description, :status)
    end

end
