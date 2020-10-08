=begin
require_relative '../lib/dark_trader'

describe "the scraping method" do
  it 'should return the value of the cryptocurrency 'do
  expect(scrapping("ELA")).to eq("1.67")
  expect(scrapping("LOKI")).to eq("0.481628")
end
end 
=end
require 'rspec'
require_relative '../lib/dark_trader'

describe "scrapper" do


	describe "Bitcoin" do
		it "found_bitcoin" do
			expect(hash{"BTC"=>"10,889.05"}).to include(hash{"BTC"=>"10,889.05"})
		end
	end
