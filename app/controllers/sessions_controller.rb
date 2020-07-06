class SessionsController < ApplicationController
    def new_student
    end

    def new_instructor
    end

    def create
        if params[:student]
            @student = Student.find_by(email: params[:student][:email])
            if @student && @student.authenticate(params[:student][:password])
                session[:student_id] = @student.id  
                redirect_to student_path(@student.id)
            else 
                flash[:message] = "Invalid email or password."
                redirect_to login_path
            end
        elsif params[:instructor]
            @instructor = Instructor.find_by(email: params[:instructor][:email])
            if @instructor && @instructor.authenticate(params[:instructor][:password])
                session[:instructor_id] = @instructor.id
                redirect_to instructor_path(@instructor.id)
            else
                flash[:message] = "Invalid email or password."
                redirect_to login_path
            end
        end
    end
    
    def destroy
        session.clear
        redirect_to root_path
    end
end
