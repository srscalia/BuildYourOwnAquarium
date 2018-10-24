class DecorsController < ApplicationController
  before_action :find_decor, only: [:show, :edit, :update]

  def index

  end

  def show

  end

  def new
    @decor = Decor.new
    @options = ["Natural", "Spongebob", "Hipster"]
    @aquarium = Aquarium.all.last
  end

  def create
    @decor = Decor.create(decor_params)
    redirect_to aquarium_path(@decor)
  end

  def edit
    @options = ["Natural", "Spongebob", "Hipster"]
    @aquarium = Aquarium.all.last
  end

  def update
    @decor.update(decor_params)
    redirect_to aquarium_path(@decor)
  end

  private

  def decor_params
    params.require(:decor).permit(:style, :aquarium_id)
  end

  def find_decor
    @decor = Decor.find_by(id: params[:id])
  end

end
