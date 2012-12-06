def color(color,opt="white")
  if opt == "red"
    print "\033[1;31;40m#{color}\033[m"
  elsif opt == "yellow"
    print "\033[1;33;40m#{color}\033[m"
  elsif opt == "green"
    print "\033[1;32;40m#{color}\033[m"
  elsif opt == "blue"
    print "\033[1;36;40m#{color}\033[m"
  elsif opt =="white"
    print "\033[1;37;40m#{color}\033[m"
  end
end


def prompt(stuff)
    print "[\033[1;36;40m #{stuff} \033[m] \n"
end

def status(player)
    print "["
    color("#{player.name}:")
    color("#{player.ptype}")
    color("[HP@#{player.hp}","red")
    color("/MP@#{player.mp}]","blue")
    color("[Gold:#{player.money}]","yellow")
    color("[Attack:#{player.attack}]","red")
    color("[Defense:#{player.defense}]","blue")
    print "]\n"
end

