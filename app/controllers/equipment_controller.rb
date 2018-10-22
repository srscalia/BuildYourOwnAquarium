class EquipmentController < ApplicationController
  before_action :find_equipment, only: [:show, :edit, :update]

  def index
    @equipment = Equipment.all
  end

  def show
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.create(equipment_params)
  end

  def edit

  end

  def update
    @equipment.update(equipment_params)
  end

  private

  def equipment_params
    params.require(:equipment).permit(:item, :cost, :facts)
  end

  def find_equipment
    @equipment = Equipment.find_by(id: params[:id])
  end

end
