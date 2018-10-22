class EquipmentController < ApplicationController
  before_action :find_equipment, only: [:show, :edit, :update]

  def index
    @equipment = Equipment.all
  end

  def show
  end

  def equipment
    @equipments = Equipment.all.map do |eq|
      eq.item
    end
    render :new
  end

  def select_equipment
  Equipment.all.find_by(item: params[:item])
    redirect_to decors_path
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
