class WorkoutClassesController < ApplicationController
    before_action :set_workout_class, only: [:show, :edit, :update, :destroy, :signup]

    # GET /workout_classes
    def index
      @workout_classes = WorkoutClass.all
    end
  
    # GET /workout_classes/1
    def show
    end
  
    # GET /workout_classes/new
    def new
      @workout_class = WorkoutClass.new
    end
  
    # GET /workout_classes/1/edit
    def edit
    end
  
    # POST /workout_classes
    def create
      @workout_class = WorkoutClass.new(workout_class_params)
      @workout_class.save
      redirect_to workout_class_path(@workout_class)

    end
  
    # PATCH/PUT /workout_classes/1
    def update
    end
  
    # DELETE /workout_classes/1
    def destroy
      @workout_class.destroy

    end

    def signup
      if session[:student_id]
      @workout_class.student_id = session[:student_id]
      redirect_to student_path(@workout_class.student_id)
      else 
        flash[:message] = "Please log in."
        redirect_to login_path
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_workout_class
        @workout_class = WorkoutClass.find_by(id: params[:id])
      end
  
      # White list params.
      def workout_class_params
        params.require(:workout_class).permit(:name, :date, :time, :description, :instructor_id, :student_id)
      end
end