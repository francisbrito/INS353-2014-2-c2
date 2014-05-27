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
end
