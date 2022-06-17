class Api::V1::ShipsController < ApplicationController

  def index
    @ships = Ship.all
    render json: @ships
  end
end
