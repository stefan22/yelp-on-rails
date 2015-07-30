class SevenelevensController < ApplicationController
  def index
    @sevenelevens = Seveneleven.all
  end

  def new

  end

  def create
    Seveneleven.create(seven_params)
    redirect_to '/sevenelevens'
  end

  def seven_params
    params.require(:seveneleven).permit(:name)
  end

end
