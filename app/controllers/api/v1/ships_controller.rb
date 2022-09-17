class Api::V1::ShipsController < ApplicationController

  def index
    @ships = Ship.all
    render json: @ships
  end

  def schedules
    @ship = Ship.includes(:schedules).find(params[:id])
    @schedules = @ship.schedules
    render json: @schedules
  end

  def maintenances
    @ship = Ship.includes(:maintenances).find(params[:id])
    @maintenances = @ship.maintenances.order(updated_at: :DESC)
    render json: @maintenances
  end
end
