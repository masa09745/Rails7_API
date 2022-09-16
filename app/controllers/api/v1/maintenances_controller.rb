class Api::V1::MaintenancesController < ApplicationController
  def index
    @maintenances = Maintenance.all
    render json: @maintenances
  end

  def create
    @maintenance = Maintenance.new(maintenance_params)
    if @maintenance.save
      render json: { status: 'created' , data: maintenance}
    else
      render json: { status: 'error', data: maintenance.errors}
    end
  end

  private

  def maintenance_params
    params.require(:maintenance).permit(:title, :description, :ATA, :maintenance_message, :priority, :completed, :ship_id, :user_id)
  end
end
