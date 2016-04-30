class StudentsController < ApplicationController
	
  def index
    @students = Student.all
  end

  def new
  	@student = Student.new
  end

  def show
    @student = Student.find(params[:id])
    @courses = @student.courses
  end

 def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to '/students'
    else
      render 'new'
		end
	end

  private
  	def student_params
      params.require(:student).permit(:name, :register_number, :status)
    end
end
