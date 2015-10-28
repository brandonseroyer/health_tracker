class ExercisesController < ApplicationController
  before_action :find_exercise, except: [:new, :create, :index]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @exercises = Exercise.all.order(created_at: :desc)

  end

  def show
    @exercise = Exercise.find(params[:id])

    render :show
  end

  def new
    @exercise = Exercise.new

  end

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      redirect_to  exercises_path
    else
      render :new
    end
  end

  def edit
    @exercise = Exercise.find(params[:id])
    render :edit
  end

  def update
    @exercise = Exercise.find(params[:id])

    if @exercise.update(exercise_params)
      redirect_to exercise_path(@exercise)
    else
      render :edit
    end
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy
    redirect_to exercises_path
  end

  private
  def exercise_params
    params.require(:exercise).permit(:activity, :calories, :user_id)
  end

  def find_exercise
    @exercise = Exercise.find(params[:id])
  end
end
