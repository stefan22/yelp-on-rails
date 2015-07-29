class SevenelevensController < ApplicationController
  def index
    @sevenelevens = Seveneleven.all
  end

end
