class ExercisesController < ApplicationController

  def new
    @user = current_user
    @exercise = @user.exercises.new
  end

  def create
    @user = current_user
    @exercise = @user.exercises.new(exercise_params)
    if @exercise.save
      redirect_to users_path
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
      redirect_to users_path
    else
      render :edit
    end
  end

  # def destroy
  # end


end
