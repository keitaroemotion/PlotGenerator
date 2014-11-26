# -- test section --

require './fabula.rb'

# add character
Fabula.read_input(["char", "add", "paul"])
Fabula.read_input(["char", "add", "john"])
Fabula.read_input(["char", "add", "mary"])
# delete character
Fabula.read_input(["char", "delete", "paul"])
Fabula.overwrite_id "maxim"
Fabula.overwrite_id "hawk"
Fabula.read_input(["ki", "add", "john loves mary"])
Fabula.add_tag "john loves mary"
