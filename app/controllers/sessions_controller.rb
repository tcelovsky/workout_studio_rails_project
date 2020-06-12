class SessionsController < ApplicationController
    # GET /login
    def new
        @student = Student.find_by(params[:email])
    end

    # POST /login
    def create
        @student = Student.find_by(params[:email])
        if params[:email].present? && params[:password].present?
            @student.authenticate
            session[:id] = @student.id  
            redirect_to student_path(@student)
        else redirect_to '/login'
        end
    end
    
    # POST /logout
    def destroy
        session.delete :id
    end
end
