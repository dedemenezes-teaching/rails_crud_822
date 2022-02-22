class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show edit update destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant) # tells the browser to make a GET request to restaurants_path
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy

    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    # :restaurant as in the name of the model, in singular and downcase!
    params.require(:restaurant).permit(:name, :address, :rating)
  end

  # params is
  # {
  #   "authenticity_token"=>"bxcW90KfIHKH4f2KuIRkjnr63Xf1dRMAFL7kK+3xKRkXkxs9FdE8stlCMidaRdYdxN/DOcojnXKCAoM7Xw35hA==",
  #   "restaurant"=>{
  #     "name"=>"Gula Gula",
  #     "address"=>"Ipanema",
  #     "admin"=>"true",
  #     "rating"=>"5"
  # }

  # params.require(:restaurant)
  # {
  #   "name"=>"Gula Gula",
  #   "address"=>"Ipanema",
  #   "admin"=>"true",
  #   "rating"=>"5"
  # }

  # params.require(:restaurant).permit(:name, :address, :rating)
  # {
  #   "name"=>"Gula Gula",
  #   "address"=>"Ipanema",
  #   "rating"=>"9"
  # }
end
