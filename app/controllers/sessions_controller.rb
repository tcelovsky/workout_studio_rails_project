class SessionsController < ApplicationController
    def new
    end

    def create
        @student = Student.find_by(email: params[:student][:email])
        if params[:student][:email].present? && params[:student][:password].present?
            @student.authenticate(params[:student][:password])
            session[:student_id] = @student.id  
            redirect_to student_path(@student)
        else redirect_to login_path
        end
    end
    
    def destroy
        session.delete :student_id
    end
end
