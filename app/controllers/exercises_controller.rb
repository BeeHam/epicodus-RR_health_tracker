class ExercisesController < ApplicationController

  def new
    @user = current_user
    @exercise = @user.exercises.new
  end

  def create
    @user = current_user
    @exercise = @user.exercises.new(exercise_params)
    if @exercise.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = current_user
    @exercise = @user.exercises.find(params[:id])
    render :edit
  end

  def update
    @user = current_user
    @exercise = @user.exercises.find(params[:id])
    if @exercise.update(exercise_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = current_user
    @exercise = @user.exercises.find(params[:id])
    @exercise.destroy
    redirect_to user_path(@user)
  end

  private
  def exercise_params
    params.require(:exercise).permit(:exercise_name, :calories_burned)
  end
end
