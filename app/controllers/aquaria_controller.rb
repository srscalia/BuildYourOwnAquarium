class AquariaController < ApplicationController

  before_action :find_aquarium, only: [:show, :edit, :update]


  def show
  end

  def aquaria
    @tanks = [10, 55]
    render :new
  end

  def select_aquarium
    params[:Gallons]
    #cookies
    redirect_to :fishies
  end

  def edit
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
