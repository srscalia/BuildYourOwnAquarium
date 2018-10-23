class EquipmentController < ApplicationController
  before_action :find_equipment, only: [:show, :edit, :update]

  def index
    @equipment = Equipment.all
  end

  def show
  end

  def new
    @equipment = Equipment.new
    @options = ["therm", "filter", "heater"]
    @aquarium = Aquarium.all.last
  end

  def create
    @facts = {"therm"=> "really cool bro", "filter" => "yeah this is awesome", "heater" => "keep fishies warm"}
    @equipment = Equipment.create(equipment_params)
    @equipment.facts = @facts[@equipment.item]
    @equipment.save
    redirect_to new_decor_path
  end

  def edit

  end

  def update
    @equipment.update(equipment_params)
  end

  private

  def equipment_params
    params.require(:equipment).permit(:item, :aquarium_id)
  end

  def find_equipment
    @equipment = Equipment.find_by(id: params[:id])
  end

end
