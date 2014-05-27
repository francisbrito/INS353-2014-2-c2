class Player
	attr_reader :name, :position
	def initialize(name, position)
		@name = name
		@position = position
	end
	def to_s
		return @name + " - " + @position.to_s
	end
end
