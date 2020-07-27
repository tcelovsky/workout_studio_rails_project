class SessionsController < ApplicationController
    def new_student
    end

    def new_instructor
        render :layout => "admin" 
    end

    def create
        if params[:student]
            @user = Student.find_or_create_by(email: auth['email']) do |u|    
                u.name = auth['info']['name'] 
                u.email = auth['info']['email']
                session[:student_id] = @student.id
                redirect_to student_path(@student.id)
            end
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
                redirect_to admin_show_instructor_path(@instructor.id)
            else
                flash[:message] = "Invalid email or password."
                redirect_to admin_login_path
            end
        end
    end
    
    def destroy
        session.clear
        redirect_to root_path
    end

    private
	def auth
		request.env['omniauth.auth']
	end
end
