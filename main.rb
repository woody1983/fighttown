def prompt(stuff)
    print "[\033[1;36;40m #{stuff} \033[m] \n"
end

def status(player)
    print "[\033[1;37;40m #{player.name}:#{player.ptype} Level:#{player.level[0]} \033[m] \n"
end

class Player
  attr_accessor :name, :ptype, :level
  def initialize(name,ptype)
    @name = name.capitalize
    @ptype= choose_type(ptype)
    @exp = 100
    @level = @exp.divmod(100)
  end

  def choose_type(ptype)
    if ptype == "1"
      @ptype = "[\033[1;31;40m Wildman \033[m]"
    elsif ptype == "2"
      @ptype = "[\033[1;36;40m Wizard \033[m]"
    else
      @ptype = "[\033[1;32;40m Archer \033[m]"
    end
  end

end

print "Hi Young man, tell me [\033[1;36;40m Your name \033[m]? \n"
your_name = gets.chomp()

print <<PARAGRAPH
Are Wildman? [\033[1;31;40m Type(1) \033[m]? 
Wizard? [\033[1;31;40m Type(2) \033[m]? 
Archer? [\033[1;31;40m Type(3) \033[m]?"
PARAGRAPH
your_type = gets.chomp()

new_player = Player.new(your_name,your_type)

status(new_player)
