require 'spec_helper'
require_relative '../src/team.rb'

describe Team do
	describe 'Team#name' do
		it "Should return team's name." do
			t = Team.new 'Devils'
			
			expect(t.name).to eql 'Devils'
		end
		it "Should allow team's name to be set." do
			t = Team.new 'Devils'

			t.name = 'Angels'

			expect(t.name).to eql 'Angels'
		end
	end
	describe 'Team#add_player' do
		it "Should add a player to the team" do
			t = Team.new 'Devils'

			t.add_player 'Angie', 0

			expect(t.player_count).to eql 1

			t.add_player 'Becky', 1

			expect(t.player_count).to eql 2
		end
	end
end
