class SchoolsController < ApplicationController
  before_action :find_school, only: [:edit, :update]

  def index
    @schools = School.all
  end

  def show
  end

  def new
    @school = School.new
    @options = ["Bob", "Peter", "Billy"]
    @aquarium = Aquarium.all.last
  end

  def create
    @facts = {"Bob"=> "yooooooooo", "Peter" => "hey", "Billy" => "waddup"}
    @school = School.create(fish_params)
    @school.facts1 = @facts[@school.species1]
    @school.facts2 = @facts[@school.species2]
    @school.facts3 = @facts[@school.species3]
    @school.save
    redirect_to new_equipment_path
  end

  def edit
    @options = ["Bob", "Peter", "Billy"]
    @aquarium = Aquarium.all.last
  end

  def update
    @facts = {"Bob"=> "yooooooooo", "Peter" => "hey", "Billy" => "waddup"}
    @school.species = params[:species]
    @school.facts = @facts[@school.species]
    @school.save
    redirect_to aquarium_path(@school.aquarium_id)
  end

  private

  def fish_params
    params.require(:school).permit(:species1, :species2, :species3, :aquarium_id)
  end

  def find_school
    @school = School.find_by(id: params[:id])
  end
end
