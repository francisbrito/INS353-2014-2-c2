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

		if !can_add_player p
			RaiseError TypeError "Cannot add player at that position."
		end

		@players.push(p)
	end
	def remove_player(name)
	end
	private
	def can_add_player(player)
		!@players.any? {|p| p.name == player.name && p.position == player.position}
	end
end
