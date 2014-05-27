require 'spec_helper'
require_relative '../src/team.rb'

describe Team do
	describe 'Team#name' do
		it "Should return team's name." do
			t = Team.new 'Devils'
			
			expect(t.name).to eql 'Devils'
		end
	end
end
