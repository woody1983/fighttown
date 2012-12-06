class Player
  attr_reader :name, :ptype, :level, :hp, :mp, :money, :attack,:defense
  def initialize(name,ptype)
    @name = name.capitalize
    choose_type(ptype)
    @exp = 100
    @level = @exp.divmod(100)
    @money = 10
    @bag = {"meat" => 5,"apple" => 10}
    equip = {"equip"=>10,"weapon"=>5}
    @attack = @hp+equip["weapon"].to_i
    @defense = @hp+equip["equip"].to_i
  end

  def choose_type(ptype)
    if ptype == "1"
      @ptype = "[\033[1;31;40m Wildman \033[m]"
      @hp = 120
      @mp = 70
    elsif ptype == "2"
      @ptype = "[\033[1;36;40m Wizard \033[m]"
      @hp = 100
      @mp = 120
    else
      @ptype = "[\033[1;32;40m Archer \033[m]"
      @hp = 110
      @mp = 100
    end
  end

end

