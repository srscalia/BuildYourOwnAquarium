class AquariaController < ApplicationController

  before_action :find_aquarium, only: [:edit, :update]


  def show
    @aquarium = Aquarium.all.last
  end

  def new
    @aquarium = Aquarium.new
    @tanks = [10, 55]
  end

  def create
    @aquarium = Aquarium.create(aquarium_params)
    redirect_to new_fish_path
  end

  def update

  end

  private

  def aquarium_params
    params.require(:aquarium).permit(:gallons)
  end

  def find_aquarium
    @aquarium = Aquarium.find_by(id: params[:id])
  end

end
