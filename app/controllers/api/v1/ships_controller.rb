class Api::V1::ShipsController < ApplicationController

  def index
    @ships = Ship.all
    render json: @ships
  end

  def show
    @ship = Ship.includes(:schedules).find(params[:id])
    @schedules = @ship.schedules
    render json: @schedules
  end
end
