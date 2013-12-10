require 'rspec'
require_relative 'wordtracker.rb'

describe WordTracker do

  it 'counts the frequency of each word in a sentence' do
    expect(WordTracker.new('Toy boat toy boat toy boat').frequency).to eql({"toy" => 3, "boat" => 3})    
  end

  it 'returns a hash' do
    expect(WordTracker.new('This that and the other and also some other stuff').frequency).to be_an_instance_of(Hash)
  end

  it 'counts letters regardless of capitalization' do
    expect(WordTracker.new('Toy Boat tOy bOat toY boAt').frequency).to eql({"toy" => 3, "boat" => 3})
  end

  it "doesn't count punctuation" do
    expect(WordTracker.new('Toy boat? Toy boat! Toy boat?!?!').frequency).to eql({"toy" => 3, "boat" => 3})
  end
end