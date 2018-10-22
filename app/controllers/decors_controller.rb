class DecorsController < ApplicationController
  before_action :find_decor, only: [:show, :edit, :update]

  def index
    @decors = Decor.all
  end

  def show
  end

  def new
    @styles = ["MOD", "hipster"]
  end

  def create
    redirect_to aquaria_path
  end

  def edit

  end

  def update
    @decor.update(decor_params)
  end

  private

  def decor_params
    params.require(:decor).permit(:style, :cost, :facts)
  end

  def find_decor
    @decor = Decor.find_by(id: params[:id])
  end
end
