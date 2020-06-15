class SessionsController < ApplicationController
    def new
    end

    def create
        @student = Student.find_by(email: params[:student][:email])
        if @student && @student.authenticate(params[:student][:password])
            session[:student_id] = @student.id  
            redirect_to student_path(@student.id)
        else 
            flash[:message] = "Invalid email or password."
            redirect_to login_path
        end
    end
    
    def destroy
        session.clear
        redirect_to root_path
    end
end
