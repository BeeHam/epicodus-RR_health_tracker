class FoodsController < ApplicationController
  def new
    @user = current_user
    @food = @user.foods.new
  end

  def create
    @user = current_user
    @food = @user.foods.new(food_params)
    if @food.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = current_user
    @food = @user.foods.find(params[:id])
    render :edit
  end

  def update
    @user = current_user
    @food = @user.foods.find(params[:id])
    if @food.update(food_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = current_user
    @food = @user.foods.find(params[:id])
    @food.destroy
    redirect_to user_path(@user)
  end

  private
  def food_params
    params.require(:food).permit(:food_name, :calories)
  end
end
