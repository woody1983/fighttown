$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))  

require "lib/view"
require "lib/Player"

print "Hi Young man, tell me [\033[1;36;40m Your name \033[m]? \n >>>"
your_name = gets.chomp()

print <<PARAGRAPH
Are you Wildman? [\033[1;31;40m Type(1) \033[m]? 
Wizard? [\033[1;36;40m Type(2) \033[m]? 
Archer? [\033[1;32;40m Type(3) \033[m]?
>>> 
PARAGRAPH
your_type = gets.chomp()

new_player = Player.new(your_name,your_type)

status(new_player)

while true

stuff = gets.chomp()
action = stuff.downcase.split()

print "#{action[0]},#{action[1]} \n"

break if action[0] == "go"

end
