class SchoolsController < ApplicationController
  before_action :find_school, only: [:edit, :update]
  after_action :school_facts, only: [:create, :update]

  def index
    @schools = School.all
  end

  def show
  end

  def new
    @school = School.new
    @options = ["Neon Tetra", "Tiger Barb", "Glo Fish"]
    @aquarium = Aquarium.all.last
  end

  def create
    @school = School.create(school_params)
    redirect_to new_equipment_path
  end

  def edit
    @options = ["Neon Tetra", "Tiger Barb", "Glo Fish"]
    @aquarium = Aquarium.all.last
  end

  def update
    @school.update(school_params)
    redirect_to aquarium_path(@school)
  end

  private

  def school_params
    params.require(:school).permit(:species1, :species2, :species3, :aquarium_id)
  end

  def find_school
    @school = School.find_by(id: params[:id])
  end

  def school_facts
    @facts = {"Neon Tetra"=> "yooooooooo", "Tiger Barb" => "hey", "Glo Fish" => "waddup"}
    @school.facts1 = @facts[@school.species1]
    @school.facts2 = @facts[@school.species2]
    @school.facts3 = @facts[@school.species3]
    @school.save
  end

end
