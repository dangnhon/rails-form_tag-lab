class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new 
    @student = Student.new
    # in the new.html.erb form file, the user inputted data will be stored in params[:student][:first_name] hash and 
    # also a params[:student][:last_name]. This is how you can access and use it as arguments. 
  end 

  def create 
    @new_student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    # can redirect with 2 differents way: 

    #1. redirect_to student_path(@new_student) 
    #
    # The above one basically returns you to the show page erb 
    #
    #2. or do it smartly like below
    redirect_to @new_student
  end 

end
