require_relative 'head'
class Phonograph
include Debug
attr_reader :name
def initialize(name)
@name = name
end
end
class EightTrack
include Debug
attr_reader :name
def initialize(name)
@name = name
end
end
ph = Phonograph.new("West End Blues")
et = EightTrack.new("Surrealistic Pillow")
ph.who_am_i?
et.who_am_i?