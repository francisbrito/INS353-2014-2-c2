class Team
	attr_accessor :name
	attr_reader :player_count
	def initialize(name)
		@name = name
		@player_count = 0
	end
	def add_player(name, position)
		@player_count = @player_count + 1
		@players ||= []
		
		p = Player.new name, position
		@players.insert(position, p)
	end
end
