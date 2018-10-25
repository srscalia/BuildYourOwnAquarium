class EquipmentController < ApplicationController
  before_action :find_equipment, only: [:show, :edit, :update]
  after_action :equip_facts, only: [:create, :update]

  def new
    @equipment = Equipment.new
    @options = ["Thermometer", "Filtration System", "Heater", "Circulation Pump"]
    @aquarium = Aquarium.all.last
  end

  def create
    @equipment = Equipment.create(equipment_params)
    redirect_to new_decor_path
  end

  def edit
    @options = ["Thermometer", "Filtration System", "Heater", "Circulation Pump"]
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
      @facts = {
        "Thermometer"=> "Thermometers come in a variety of types
        including stick on (LCD), floating/standing, and digital. LCD
        thermometers are the least expensive, but also the least accurate.
        Floating thermometers are relatively cheap but can be prone to breaking
        due to most being made of glass. Digital thermometers are the most
        accurate by far but can be expensive and require batteries.",
        "Filtration System" => "Their are many factors that you should consider
        before purchasing a filter for your fish tank. These factors include
        water flow (gallons per hour), how quiet when running, type (external
          canister or mounted), and price.  Regarding water flow, the larger
          the fish tank, the more  gallons of water per hour a filter will
          need to circulate. It is worth noting that some filters can be very
          noisy.  However, one can find virtually silent filters, but they
          will cost much more. Lastly, if you want to take aquarium filtration
          to the next level, external canister filters are of the highest
          quality and are relatively easy to maintain.",
        "Heater" => "Choosing the type of heater to use in your
        aquarium isn’t difficult as long as you know the differences between
        the varieties of heaters. There are four basic types of aquarium
        heaters; immersible heaters, submersible heaters, substrate heaters
        and filter heaters. The main factor that differentiates the four
        types is where the heater should be placed in the tank. Regardless
        of the type, heaters come in various sizes (usually measured via wattage).
        The larger the fish tank, the larger the heater should be. To elaborate,
        a 5 - 10 gallon tank should use a 25 - 75 watt heater, while a
        40 - 50 gallon tank should use a 100 - 400 watt heater.",
        "Circulation Pump" => "Their are many factors that you should consider
        before purchasing a filter for your fish tank. These factors include
        water flow (gallons per hour), how quiet when running, type (external
          canister or mounted), and price.  Regarding water flow, the larger
          the fish tank, the more  gallons of water per hour a filter will
          need to circulate. It is worth noting that some filters can be
          very noisy.  However, one can find virtually silent filters, but
          they will cost much more. Lastly, if you want to take aquarium
          filtration to the next level, external canister filters are of the
          highest quality and are relatively easy to maintain."}
      @equipment.facts1 = @facts[@equipment.item1]
      @equipment.facts2 = @facts[@equipment.item2]
      @equipment.facts3 = @facts[@equipment.item3]
      @equipment.save
  end

end
