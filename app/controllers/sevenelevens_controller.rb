class SevenelevensController < ApplicationController
  def index
    @sevenelevens = Seveneleven.all
  end

  def new
    @seveneleven = Seveneleven.new
  end

  def create
    @seveneleven = Seveneleven.create(seven_params)
    redirect_to '/sevenelevens'
  end

  def seven_params
    params.require(:seveneleven).permit(:name)
  end

  def show
    @seveneleven = Seveneleven.find(params[:id])
  end

  def edit
      @seveneleven = Seveneleven.find(params[:id])
  end

  def update
    @seveneleven = Seveneleven.find(params[:id])
    @seveneleven.update(seven_params)
    redirect_to '/sevenelevens'
  end

  def destroy
    @seveneleven = Seveneleven.find(params[:id])
    @seveneleven.destroy
    flash[:notice] = 'Seveneleven deleted successfully'
    redirect_to '/sevenelevens'
  end


end
