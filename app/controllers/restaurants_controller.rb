class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new

  end

  def create
    Restaurant.create(params[:restaurant])
    redirect '/restaurants'
  end

end
