class StudentsController < ApplicationController

    def show
        @students = Student.find(params[:id])
        @dojo = Dojo.find(params[:dojo_id])

    end

    def new
        @dojo = Dojo.find(params[:dojo_id])
        @dojos = Dojo.all
    end
    
    def update
        dojo = Dojo.find(params[:dojo_id])
        student = Student.find(params[:id])
        student.fname = studentParams[:fname]
        student.lname = studentParams[:lname]
        student.email = studentParams[:email]
        student.save 
        redirect_to "/dojos/#{dojo.id}/students/#{student.id}"
    end

    def create
        @student = Student.create(studentParams)
        @dojo = Dojo.find(params[:dojo_id])
        redirect_to "/dojos/#{studentParams[:dojo_id]}"
    end

    def edit
        @student =Student.find(params[:id])
        @dojos = Dojo.all
        @dojo = Dojo.find(params[:dojo_id])
    end

    def destroy
        dojo = Dojo.find(params[:dojo_id])
        student = Student.find(params[:id])
        student.destroy
        redirect_to "/dojos/#{dojo[:dojo_id]}"
    end


    def studentParams
        params.require(:student).permit(:fname,:lname,:email,:dojo_id)
    end

end
