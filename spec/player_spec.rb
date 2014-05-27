require 'spec_helper'
require_relative '../src/player.rb'

describe Player do
	describe '#name' do
		it "Should return a player's name." do
			p = Player.new 'Angie', 0

			expect(p.name).to eql 'Angie'
		end
	end
	describe '#position' do
		it "Should return a player's position." do
			p = Player.new 'Angie', 0

			expect(p.position).to eql 0
		end
	end
end
