class FishController < ApplicationController
  before_action :find_fish, only: [:show, :edit, :update]

  def index
    @fishies = Fish.all
  end

  def show
  end

  def new
    @fish = Fish.new
  end

  def create
    @fish = Fish.create(fish_params)

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
