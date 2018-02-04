class MoussaillonsController < ApplicationController

  def index
    @moussaillons = Moussaillon.all
  end

  def create
    @moussaillon = Moussaillon.new(moussaillon_params)
    @moussaillon.save
    redirect_to @moussaillon
  end

  def show
    @moussaillon = Moussaillon.find(params[:id])
  end

  def edit
    @moussaillon = Moussaillon.find(params[:id])
  end

  def update
    @moussaillon = Moussaillon.find(params[:id])
    if @moussaillon.update(moussaillon_params)
      redirect_to @moussaillon
    else
      render 'edit'
    end
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
