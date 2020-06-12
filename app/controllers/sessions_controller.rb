class SessionsController < ApplicationController
    def new
        @student = Student.find_by(params[:email])
    end

    def create
        # @student = Student.find_by(params[:email])
        if params[:email].present? && params[:password].present?
            session[:id] = params[:id]  
            redirect_to student_path(@student)
        else redirect_to '/login'
        end
    end
    
    def destroy
        session.delete :id
    end
end
