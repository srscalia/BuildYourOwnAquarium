class AquariaController < ApplicationController

  before_action :find_aquarium, only: [:update]

  def index
      @aquaria = Aquarium.all
  end

  def new
    @aquarium = Aquarium.new
    @tanks = [10, 55]
  end

  def show
    @aquarium = Aquarium.all.last
  end

  def create
    @aquarium = Aquarium.create(aquarium_params)
    redirect_to new_school_path
  end

  def edit
    @aquarium = Aquarium.all.last
    @tanks = [10, 55]
  end

  def update
   @aquarium.update(aquarium_params)
   redirect_to aquarium_path(@aquarium)
 end

 private

  def aquarium_params
    params.require(:aquarium).permit(:creator, :gallons)
  end

  def find_aquarium
    @aquarium = Aquarium.find_by(id: params[:id])
  end

  @fish_images = ["Neon Tetra", "Tiger Barb", "Glo Fish Tetra", "Swordtail", "Cory Catfish", "Dwarf Gourami", "Molly", "Ram Cichlid", "Magikarp", "Gyarados"]

  @fish_urls = ["https://lh3.googleusercontent.com/psBqrj-YKQsh4O_DvpShA4nbwECXQMC3rgSOJexKaqsyoDnzjiYWAs6HLNb6DRI4CVm7zmqHGZ_EoLUXBpkircQ5yrv2uos1vwmg-M1wFBLMzXPQCExBjrhBbu77QLSrB-RSe3Nemsuj31-SA75oQrzmZ84ZwEevAl5S4pOXQGyTHVO66Tv0ys0L11bMi2Cx-CBYyq9Sat7x629brk7gVAILSMH9sI2M3sQlAJo6BGDXSBT_hPM6f785F2do-tTSRXuNLDyWDd-EPEWsfEZG-1DNCTtq18Z6tU4moQif3NJzE4Ye2Y22z0aIxbGQqhq-Jdc7pM1KIHLHqK0W5aBn_P6nfdmyJaCYCdxcK5JIOFZkza6-jweV257Guyo2NbU128zz0gxf4REKF82edHKRb8Brmukrof-EK0lxEycsUQfewYgwFQO27T41DlVskOYZJgvanFZAAzMcVSAy3AG1ftlU92aYyqiYfVtEWszdwZzG9WD2Mu6qly9TDfHMDoyC6U3uJg9yHJ-d-bCkplOu_AUjimGAZQMJNmbcURA03Y2FRPcz8DopLB_BBj1T4lulBEf36lueEe3oUiVs4UyemVHH7GokGDueefxSN4q3riJNh6NyshRqtL3F7QbkcYZ5KlTIR7SjbHx9UufIx-ToL6w=s250-no"]

end
