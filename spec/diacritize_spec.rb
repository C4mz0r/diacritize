require 'spec_helper'

describe Diacritize do
  it 'has a version number' do
    expect(Diacritize::VERSION).not_to be nil
  end

  it 'does not convert characters that do not have a diacritized counterpart' do
    expect(Diacritize::diacritize("qwrtpsdfghjklzxvbm")).to eq("qwrtpsdfghjklzxvbm")
  end

  # Note:  Need to figure out how to test this...  When running the test it just gives the output of ?????????
  # instead of the translated characters
  #it 'replaces characters with diacritical ones' do
  #  	expect(Diacritize::diacritize("aceinouyACDEINOUY")).to eq("<diacritize version here>")
  #end
end
