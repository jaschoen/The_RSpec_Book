require 'spec_helper'
module Codebreaker
	describe Marker do 
		describe "#exact_match_count" do 
			context "with no matches" do 
				it "returns 0" do 
					marker = Marker.new('1234', '5555')
					expect(marker.exact_match_count).to eql(0)
				end
			end

			context "with 1 match" do 
				it "returns 1" do 
					marker = Marker.new('1234', '1555')
					expect(marker.exact_match_count).to eql(1)
				end
			end

			context "with 1 exact match and 1 number match" do
				it "returns 1" do 
					marker = Marker.new('1234', '1455')
					expect(marker.exact_match_count).to eql(1)
				end
			end
		end

		describe "#number_match_count" do 
			context "with no matches" do 
				it 'returns 0' do 
					marker = Marker.new('1234', '5555')
					expect(marker.number_match_count).to eql(0)
				end
			end

			context "with 1 number match" do
				it "returns 1" do 
					marker = Marker.new('1234', '5155')
					expect(marker.number_match_count).to eql(1)
				end
			end

			context "With 1 exact match" do 
				it "returns 0" do 
					marker = Marker.new('1234', '1555')
					expect(marker.number_match_count).to eql(0)
				end
			end

			context "with 1 exact match and 1 number match" do 
				it "returns 1" do 
					marker = Marker.new('1234', '1355')
					expect(marker.number_match_count).to eql(1)
				end
			end

		end




	end
end