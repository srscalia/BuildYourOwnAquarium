class EquipmentController < ApplicationController
  before_action :find_equipment, only: [:show, :edit, :update]
  after_action :equip_facts, only: [:create, :update]

  def index
    @equipment = Equipment.all
  end

  def show

  end

  def new
    @equipment = Equipment.new
    @options = ["Thermometer", "Filtration System", "Heater", "Fan", "Food", "Net"]
    @aquarium = Aquarium.all.last
  end

  def create
    @equipment = Equipment.create(equipment_params)
    redirect_to new_decor_path
  end

  def edit
    @options = ["Thermometer", "Filtration System", "Heater", "Fan", "Food", "Net"]
    @aquarium = Aquarium.all.last
  end

  def update
    @equipment.update(equipment_params)
    redirect_to aquarium_path(@equipment)
  end

  private

  def equipment_params
    params.require(:equipment).permit(:item1, :item2, :item3, :aquarium_id)
  end

  def find_equipment
    @equipment = Equipment.find_by(id: params[:id])
  end

  def equip_facts
      @facts = {"Thermometer"=> "Accurate and easy to read temperature measurement
        for fresh or saltwater. Stainless steel thermometer rests on aquarium rim.
          Safety zone indicator for instant monitoring of safe temperatures for most tropical fish.",
          "Filtration System" => "keeps water clean",
          "Heater" => "keep fishies warm",
          "Fan" => "creates current",
          "Food" => "Keepfeeds fishies",
          "Net" => "Helpful for picking up dead fishies or other objects"}
      @equipment.facts1 = @facts[@equipment.item1]
      @equipment.facts2 = @facts[@equipment.item2]
      @equipment.facts3 = @facts[@equipment.item3]
      @equipment.save
  end

end
