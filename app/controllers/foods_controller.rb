class FoodsController < ApplicationController
  before_action :find_food, except: [:new, :create, :index]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @foods = Food.all.order(created_at: :desc)

  end

  def show
    @food = Food.find(params[:id])

    render :show
  end

  def new
    @food = Food.new

  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to  foods_path
    else
      render :new
    end
  end

  def edit
    @food = Food.find(params[:id])
    render :edit
  end

  def update
    @food = Food.find(params[:id])

    if @food.update(food_params)
      redirect_to food_path(@food)
    else
      render :edit
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path
  end

  private
  def food_params
    params.require(:food).permit(:name, :calories, :user_id)
  end

  def find_food
    @food = Food.find(params[:id])
  end
end