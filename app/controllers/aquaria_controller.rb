class AquariaController < ApplicationController

  before_action :find_aquarium, only: [:update]

  def index
      @aquaria = Aquarium.all
      @fish_urls = ["https://i.imgur.com/KYqnjHh.png",
      "https://www.aqueon.com/-/media/images/aqueon-na/us/assets/care-sheets/tigerbarborsumatrabarbfish_600x400%20png.png?h=400&la=en&w=600&hash=209E3AC3907BBC855E4F98576BC3DB2326E5673B",
      "https://png2.kisspng.com/sh/9ff6c4054d98a0376063b08a79d8f43b/L0KzQYm3VME6N5p5j5H0aYP2gLBuTfdwdJVrgeVxLXH0hbL5igVue15shNHvaYPrPcXslQJiNZD3edDwZT3qfLFATcVibGo1fNRsNnS1QLe6TsIxQWIASKk7MUW1RIKAVMI3QGU5T5D5bne=/kisspng-goldfish-aquariums-glofish-tetra-orange-glow-5ad90dbc6d20f3.209190721524174268447.png",
      "https://i.imgur.com/V8iLmgd.png",
      "https://i.imgur.com/LRGNULI.png",
      "https://i.imgur.com/FNjPmM2.png",
      "https://i.imgur.com/0LAKanv.png",
      "https://i.imgur.com/r7CW4Vz.png",
      "https://i.imgur.com/yg7A7R9.png",
      "https://png2.kisspng.com/sh/63aefe613530b195ca1fea92cc8223a8/L0KzQYm3WMEyN5ZwkJH0aYP2gLBuTgBwc550hp9DLXHxdH7CTfd6aaNmfNH8LYDye772jr1od15yedlya3H1gH70igMuNWZnTtgCZki4dIa8V8k2Nmo1Sqg8MEC6QYa6VMA0O2gAT6oCM0mxgLBu/kisspng-pokmon-x-and-y-gyarados-pokmon-go-magikarp-mis--5b6f7f85d55795.9026300715340337978739.png"
    ]
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
