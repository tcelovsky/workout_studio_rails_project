class WorkoutClassesController < ApplicationController
    before_action :set_workout_class, only: [:show, :edit, :update, :destroy]

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
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_workout_class
        @workout_class = WorkoutClass.find(params[:id])
      end
  
      # White list params.
      def workout_class_params
        params.require(:workout_class).permit(:name, :date, :time, :instructor_id, :workout_studio_id, :student_id)
      end
end