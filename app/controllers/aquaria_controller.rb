class AquariaController < ApplicationController

  before_action :find_aquarium, only: [:update]

  

  def new
    @aquarium = Aquarium.new
    @tanks = [10, 55]
  end

  def show
    @aquarium = Aquarium.all.last
  end

  def create
    @aquarium = Aquarium.create(aquarium_params)
    redirect_to new_school_path
  end

  def edit
    @aquarium = Aquarium.all.last
    @tanks = [10, 55]
  end

  def update
   @aquarium.update(aquarium_params)
   redirect_to aquarium_path(@aquarium)
 end

  private

  def aquarium_params
    params.require(:aquarium).permit(:gallons)
  end

  def find_aquarium
    @aquarium = Aquarium.find_by(id: params[:id])
  end

end
