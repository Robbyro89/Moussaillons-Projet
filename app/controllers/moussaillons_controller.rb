class MoussaillonsController < ApplicationController

  def index
    @moussaillons = Moussaillon.all
  end

  def show
    @moussaillon = Moussaillon.find(params[:id])
  end

  def edit
    @moussaillon = Moussaillon.find(params[:id])
  end

  def update
    @moussaillon = Moussaillon.find(params[:id])
    @moussaillon.update(moussaillon_params)
    redirect_to moussaillon_path
  end

  def new
    @moussaillon = Moussaillon.new
  end

  def create
    moussaillon = Moussaillon.create(moussaillon_params)
    redirect_to moussaillon_path(moussaillon.id)
  end

  def destroy
    @moussaillon = Moussaillon.find(params[:id])
    @moussaillon.destroy
    redirect_to moussaillons_path
  end

  private
  def moussaillon_params
    params.require(:moussaillon).permit(:pseudo, :email, :biographie)
  end

end
