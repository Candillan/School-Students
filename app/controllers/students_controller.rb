class StudentsController < ApplicationController
  
  def show
    @student = Student.find(params[:id])
  end

  def new
    @schools = School.all
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    byebug
    redirect_to "/schools/#{@student.school.id}"
  end

  def edit
    @schools = School.all
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to school_path(@student.school)
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to school_path(@student.school)
  end

  def searched
    @students = Student.search(params[:search])
  end

  private

  def student_params
    params.require(:student).permit(:name, :age, :school_id, :search)
  end
end
