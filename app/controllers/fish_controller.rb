class FishController < ApplicationController
  before_action :find_fish, only: [:edit, :update]

  def index
    @fishies = Fish.all
  end

  def show
  end

  def new
    @fish = Fish.new
    @options = ["Bob", "Peter", "Billy"]
    @aquarium = Aquarium.all.last
  end

  def create
    @facts = {"Bob"=> "yooooooooo", "Peter" => "hey", "Billy" => "waddup"}
    @fish = Fish.create(fish_params)
    @fish.facts = @facts[@fish.species]
    @fish.save
    redirect_to new_equipment_path
  end

  def edit
    @options = ["Bob", "Peter", "Billy"]
    @aquarium = Aquarium.all.last
  end

  def update
    @fish.update(fish_params)
    redirect_to aquarium_path(@fish.aquarium_id)
  end

  private

  def fish_params
    params.require(:fish).permit(:species, :aquarium_id)
  end

  def find_fish
    @fish = Fish.find_by(id: params[:id])
  end
end
