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
    @options = ["Neon Tetra", "Tiger Barb", "Glo Fish Tetra", "Swordtail", "Cory Catfish", "Dwarf Gourami", "Molly", "Ram Cichlid", "Magikarp", "Gyarados"]
    @aquarium = Aquarium.all.last
  end

  def create
    @school = School.create(school_params)
    redirect_to new_equipment_path
  end

  def edit
    @options = ["Neon Tetra", "Tiger Barb", "Glo Fish Tetra", "Swordtail", "Cory Catfish", "Dwarf Gourami", "Molly", "Ram Cichlid", "Magikarp", "Gyarados"]
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
       "Swordtail" => "Swordtail fish are a peaceful and active species. They are
       very social and enjoy good company, especially when housed with other swordtails
       or similar passive species. Swordtails can make great companions with platies,
       mollies, and angelfish. They are sturdy tropical fish that can tolerate a wide
       range of water temperatures. They should do fine in any water temperature between
         65- 82⁰Fahrenheit and a PH of 7.0 to 8.4. Swordtails will accept a wide variety
         of foods including quality flake food or live food such as worms.",
      "Cory Catfish" => "Cory Catfish are are very popular freshwater fish that come
      in many different colors and sizes. Cory Catfish are very social creatures,
      especially with others of their kind. While Cory Cats can survive alone, they
      seem much happier in a group of two or more. Depending on the specific type,
      Cory Catfish can range from about 1 inch to about 2.5 inches in length. A Cory
      Catfish is a bottom dweller, so it’s a good idea to keep at least 2 inches of
      aquarium gravel or substrate on the tank bottom. They should be kept in water
      that is between 72- 78⁰ Fahrenheit and a PH of 7.0 to 7.8. Their diet includes
      basic food types including fish flakes, pellets and bottom feeder tablets.",
      "Dwarf Gourami"=> "The dwarf gourami is a peaceful and shy fish. If you have
      a pair of them, the two fish will swim together.  Dwarf gouramis are considered
      labyrinth fish, which means they breathe straight from the air with a lung-like
      labyrinth organ and need to have access to the water’s surface. They can come in
      both bright blue and bright orange varieties.They should be kept in water that
      is between 72- 82⁰ Fahrenheit and a PH of 6.0 to 7.5. Gouramis will eat flake
      food, freeze-dried food, frozen foods, and vegetable tablets.",
      "Molly"=> "Mollies are rarely aggressive towards other fish. They do great
      with any of the common tropical fish. There are numerous types of mollies,
      but the most common types held in aquariums are short finned mollies. The
      recommended temperature range for Mollies is 75-80° F since they are native
      to tropical parts of the world. The pH should be between 7 and 8, and using
      driftwood in the aquarium is therefore not recommended since driftwood is
      known to lower the pH value. Feeding mollies is extremely easy. Feeding
      them flake food in the amount of what they eat completely in 5 minutes
      will satisfy their dietary needs.",
      "Ram Cichlid"=> "The ram cichlid is a species of freshwater fish originally
       from the Orinoco River basin of  Venezuela and Colombia.  The ram cichlid
       is popular in the tropical freshwater community aquarium. While most
       cichlids are not well suited for a community tank, if a male and female
       pair of this specific type are placed in a community tank, they generally
       will do well. There are a variety of types including golden, electric
         blue, and long-finned. The recommended temperature range for Rams is
         75-81° F and a PH of 6.5 - 7.5.  Rams will eat a variety of flakes
         as well as live and frozen food.",
      "Magikarp"=> "Magikarp is a medium-sized fish Pokémon with large, heavy
      reddish-orange scales. It is unable to swim against even slow-moving
      currents. It is virtually worthless in terms of both power and speed and
      is the most weak and pathetic Pokémon in the world. Their primary diet
      should be made of berries of the Oran, Sitrus, or Razz variety. Magikarps
      have strong immune systems so they can live in water that ranges from
      anywhere between 15-200° F with a PH of 1 to 20.",
      "Gyarados" => "Gyarados is a fish-ish creature that can both fly and swim.
       Its scientific name is pokemonius atrociosis. They  generally should be
       kept in their own fish tank, with a size of at least 50,000 gallons.
       Although these creatures do not make great tank mates with other fish,
         Wikipedia states that they may be able to be kept in the same tank as
         common gold fish. Ancient lore states that a Gyarados is capable of
         destroying entire cities when enraged, so it is good practice to feed
         them often and keep them happy. It is worth noting that the legality
         of keeping a Gyarados as a pet varies from state to state."}
    @school.facts1 = @facts[@school.species1]
    @school.facts2 = @facts[@school.species2]
    @school.facts3 = @facts[@school.species3]
    @school.save
  end

end
