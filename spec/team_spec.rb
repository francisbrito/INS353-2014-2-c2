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
	describe 'Team#add_player' do
		it "Should throw an error if player is already added." do
			t = Team.new 'Devils'

			t.add_player 'Angie', 0

			expect {t.add_player 'Angie', 0}.to raise_error
		end
	end
	describe 'Team#remove_player' do
		it "Should remove a player from the team." do
			t = Team.new 'Devils'

			t.add_player 'Angie', 0

			t.remove_player 'Angie'

			expect(t.player_count).to eql 0
		end
		it "Should throw if team is empty." do
			t = Team.new 'Devils'

			t.remove_player 'Angie'
		end
	end
	describe 'Team#print_players' do
		it "Should print a table of users" do
			t = Team.new 'Devils'

			t.add_player 'Angie', 0
			t.add_player 'Becky', 1

			# TODO: Assert this.	
		end
	end
end
