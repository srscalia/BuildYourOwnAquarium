class DecorsController < ApplicationController
  before_action :find_decor, only: [:show, :edit, :update]

  def index
  end

  def show
  end

  def decors
    @styles = Decor.all.map do |style|
      style.style
    end
    render :new
  end

  def select_decor
    Decor.all.find_by(style: params[:style])
    #push this into an array that we have made from our session
    #will be pulled into the index page
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
