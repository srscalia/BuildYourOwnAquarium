class AquariaController < ApplicationController

  before_action :find_aquarium, only: [:show, :edit, :update]

  def index
    @aquaria = Aquarium.all
  end

  def show
  end

  def new
    @aquarium = Aquarium.new
  end

  def create
    @aquarium = Aquarium.create(aquarium_params)
    redirect_to aquarium_path(@aquarium)
  end

  def edit

  end

  def update
    @aquarium.update(aquarium_params)
  end

  private

  def aquarium_params
    params.require(:aquarium).permit(:gallons)
  end

  def find_aquarium
    @aquarium = Aquarium.find_by(id: params[:id])
  end

end
