class Api::V1::ShipsController < ApplicationController

  def index
    ships = Ship.all
    render json: ships
  end

  def show
    ship = Ship.includes(:maintenances).find(params[:id])
    render json: ship.to_json(include: :maintenances)
  end
  
end
