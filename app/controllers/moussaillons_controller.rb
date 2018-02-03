class MoussaillonsController < ApplicationController

  def welcome
    @moussaillon =  params[:name]
  end

  def home
  end

end
