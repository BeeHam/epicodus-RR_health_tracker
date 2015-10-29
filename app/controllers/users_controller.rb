class UsersController < ApplicationController
  def show

    @user = current_user

    if params[:food_sort]
      @foods = @user.foods.order(params[:food_sort] + " " + params[:food_direction])
    else
      @foods = @user.foods.order('food_name')
    end

    if params[:exer_sort]
      @exercises = @user.exercises.order(params[:exer_sort] + " " + params[:exer_direction])
    else
      @exercises = @user.exercises.order('exercise_name')
    end

  end
end
