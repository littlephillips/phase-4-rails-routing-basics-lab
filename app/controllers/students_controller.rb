class StudentsController < ApplicationController

    def index
        students = Student.all 
        render json: students
    end

    def grade 
        students = Student.order("grade DESC")
        render json:students
    end

    def highest_grade
        students = Student.order("grade DESC").first
        render json: students
    end  

end
