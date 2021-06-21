class Player

attr_accessor :lives
attr_reader :name

def initialize (name)
  @name = name
  @lives = 3
end

def to_s
  "#{@name}: #{@lives}/3"
end

end