class UsersController < ApplicationController

  def show
    @user = current_user
    @foods = @user.foods.order(params[:food_sort])
    @exercises = @user.exercises.order(params[:exer_sort])
  end



end
