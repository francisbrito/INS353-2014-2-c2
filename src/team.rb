class Team
	attr_accessor :name
	attr_reader :player_count
	def initialize(name)
		@name = name
		@player_count = 0
		@players = []
	end
	def add_player(name, position)
		@player_count = @player_count + 1
		
		p = Player.new name, position

		if !can_add_player p
			RaiseError TypeError "Cannot add player at that position."
		end

		@players.push(p)
	end
	def remove_player(name)
		# NOTE: No, I didn't copy it, it's just that `Array#delete_if` is the most obvious way to achieve this.
		@players.delete_if {|p| p.name == name}

		@player_count = @player_count - 1
	end
	private
	def can_add_player(player)
		!@players.any? {|p| p.name == player.name && p.position == player.position}
	end
end
