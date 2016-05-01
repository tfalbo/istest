class StudentsController < ApplicationController
	
  def index
    @students = Student.all
  end

  def new
  	@student = Student.new
  end

  def edit 
 		@student = Student.find(params[:id]) 
 		@courses = @student.courses
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


  def update 
  	@student = Student.find(params[:id]) 
  	if @student.update_attributes(student_params) 
    	redirect_to(:action => 'show', :id => @student.id) 
  	else 
    	render 'edit' 
  	end 
  end


  private
  	def student_params
      params.require(:student).permit(:name, :register_number, :status, :course_ids => [] )
    end
end
