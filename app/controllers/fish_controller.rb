class FishController < ApplicationController
  before_action :find_fish, only: [:show, :edit, :update]

  def index
    @fishies = Fish.all
  end

  def show
  end

  def fishies
    @fishes = Fish.all.map do |fish|
      fish.species
    end
    render :new
  end

  def select_fish
    Fish.all.find_by(species: params[:species])
    #push this into an array that we have made from our session
    #will be pulled into the index page
    redirect_to equipment_path
  end

  def edit

  end

  def update
    @fish.update(fish_params)
  end

  private

  def fish_params
    params.require(:fish).permit(:species, :cost, :facts)
  end

  def find_fish
    @fish = Fish.find_by(id: params[:id])
  end
end
