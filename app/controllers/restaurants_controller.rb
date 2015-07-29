class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new

  end

  def create
    raise 'create is the params returned from the form submission'
  end

end
