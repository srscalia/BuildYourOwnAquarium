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
    @options = ["Neon Tetra", "Tiger Barb", "Glo Fish Tetra", "Swordtail", "Cory Catfish", "Gourami", "Molly", "Ram Cichlid", "Magikarp", "Gyarados"]
    @aquarium = Aquarium.all.last
  end

  def create
    @school = School.create(school_params)
    redirect_to new_equipment_path
  end

  def edit
    @options = ["Neon Tetra", "Tiger Barb", "Glo Fish Tetra", "Swordtail", "Cory Catfish", "Gourami", "Molly", "Ram Cichlid", "Magikarp", "Gyarados"]
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
    @facts = {"Neon Tetra"=> "Neon Tetra are peaceful, non-aggressive fish that make fantastic
      additions to a community tank. They can grow up to 2.5 inches long; however, the average
       size is around 1.5 inches, with females being slightly shorter. The ideal water
       conditions for Neon Tetras are as follows: water temperature should be between 70°F to 81°F;
       pH level below 7.0 and above 6.0, maintaining soft water (<10 dGH).
       They aren’t fussy eaters and enjoy all different types of food including
       pellets, flakes, frozen and live food.",
       "Tiger Barb" => "The Tiger Barb is silver/gold with black stripes and orange accented
       fins. They are a very lively, playful fish that thrive in schools. They prefer
       a well-planted tank of at least 30 gallons with soft, slightly acidic water. Rocks
       and driftwood can be added to the aquarium, but leave plenty of space for swimming.
       They are very active fish that may pester or even nip the fins of larger, slower moving
       fish. The ideal water conditions for Tiger Barbs are as follows: water temperature
       should be between 74°F to 79°F, and a PH of 6.0 to 7.0. Tiger Barbs are omnivorous,
       and will consume processed foods such as flakes and crisps, as well as live foods.",
       "Glo Fish Tetra" => "Glo Fish Tetras come in a variety of colors including red,
       green, yellow, purple, pink and blue. They are peaceful fish that should be kept
       in a school of five or more.  The ideal water conditions for Glo Fish Tetras are
       as follows: water temperature should be between 72°F to 78°F, and a PH of 6.0 to 7.5.
       Glo Fish are omnivorous and can be fed various types of food including flakes,
       small pellets and frozen food (daphnia, brine shrimp, and worms).",
       "Swordtail" => "1",
      "Cory Catfish" => "2",
      "Gourami"=> "3",
      "Molly"=> "3",
      "Ram Cichlid"=> "3",
      "Magikarp"=> "3",
      "Gyarados" => "3"}
    @school.facts1 = @facts[@school.species1]
    @school.facts2 = @facts[@school.species2]
    @school.facts3 = @facts[@school.species3]
    @school.save
  end

end
