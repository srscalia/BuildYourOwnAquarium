class DecorsController < ApplicationController
  before_action :find_decor, only: [:show, :edit, :update]

  def index
    @decors = Decor.all
  end

  def show
  end

  def new
    @decor = Decor.new
  end

  def create
    @decor = Decor.create(decor_params)
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

end
