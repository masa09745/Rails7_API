class Api::V1::MaintenancesController < ApplicationController
  def index
    @maintenances = Maintenance.order(updated_at: :DESC)
    render json: @maintenances
  end

  def create
    maintenance = Maintenance.new(maintenance_params)
    if maintenance.save
      render json: { status: 'created' , data: maintenance}
    else
      render json: { status: 'error', data: maintenance.errors}
    end
  end

  def destroy
    maintenance = Maintenance.find(params[:id])
    maintenance.destroy
  end

  private

  def maintenance_params
    params.permit(:title, :description, :ata, :maintenance_message, :priority, :completed, :ship_id, :user_id)
  end
end
