class DecorsController < ApplicationController
  before_action :find_decor, only: [:show, :edit, :update]

  def index
  end

  def show
  end

  def new
    @decor = Decor.new
    @options = ["Mod", "country", "hipster"]
    @aquarium = Aquarium.all.last
  end

  def create
    @facts = {"Mod"=> "soo mod", "country" => "yehawww", "hipster" => "fake news"}
    @decor = Decor.create(decor_params)
    @decor.facts = @facts[@decor.style]
    @decor.save
    redirect_to aquarium_path(@decor.aquarium_id)
  end

  def edit

  end

  def update
    @decor.update(decor_params)
  end

  private

  def decor_params
    params.require(:decor).permit(:style, :aquarium_id)
  end

  def find_decor
    @decor = Decor.find_by(id: params[:id])
  end
end
