class StudentsController < ApplicationController
    
    def show
        @student = Student.find(params[:id])
    end
    
    def new
        @student = Student.new
    end

    def edit
    
    end
    
    def create
        @student = Student.new(student_params)
        @student.save
        redirect_to student_path(@student)
    end

    def update
    end

    private

    def student_params
      # (params.require(:post).permit(:title, :description)
        params.require(:student).permit!
    end

end