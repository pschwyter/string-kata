#Advanced developers: Uncomment the following understand more about the RSpec "focus" filter
#require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

require 'string_calculator'

# The top of your testing block
# More examples of tests can be found here: https://github.com/rspec/rspec-expectations
RSpec.describe StringCalculator, "#add" do

  it "returns 0 for empty string" do
    expect(StringCalculator.add("")).to eq(0)
  end
  # more tests go here

  it "returns 5 when the string is '5'" do
  	expect(StringCalculator.add('5')).to eq(5)
  end

  it "returns 0 when the string is '0'" do
  	expect(StringCalculator.add('0')).to eq(0)
  end

  it "returns 3 when the string is '1,2'" do
  	expect(StringCalculator.add('1,2')).to eq(3)
  end

  it "returns 16 when the string is '7,9'" do
  	expect(StringCalculator.add('7,9')).to eq(16)
  end
  # requirement 4
  it "returns 57 when the string is '12,45'" do
  	expect(StringCalculator.add('12,45')).to eq(57)
  end

  it "returns 201 when the string is '42,159'" do
  	expect(StringCalculator.add('42,159')).to eq(201)
  end  
  # requirement 5
  it "returns 4002 when the string is '1558,2,2442'" do
  	expect(StringCalculator.add('1558,2,2442')).to eq(4002)
  end 

  it "returns 161 when the string is '15,22,45,79'" do
  	expect(StringCalculator.add('15,22,45,79')).to eq(161)
  end 
  # requirement 6
  it "returns 6 when the string is '1\n2,3'" do
  	expect(StringCalculator.add("1\n2,3")).to eq(6)
  end 
  # requirement 7
  it "returns 7 when the string is '//;\n2;5'" do
  	expect(StringCalculator.add("//;\n2;5")).to eq(7)
  end 
  # requirement 8
  it "throws exception when the string contains a negative number" do
  	expect{StringCalculator.add("-1")}.to raise_error
  end 

  it "does not throw exception when the string contains a negative number even if dash is the delimiter" do
  	expect{StringCalculator.add("//-\n2-1")}.to_not raise_error
  end 

  # requirement 9
  it "throws simple exception when the string contains a single negative number" do
  	expect{StringCalculator.add("2,-1")}.to raise_error("Cannot handle negative numbers.")
  end   

  it "throws compound exception when the string contains multiple negative numbers" do
  	expect{StringCalculator.add("-15,-3")}.to raise_error("Cannot handle negative numbers [-15,-3].")
  end 

  it "throws compound exception when the string contains multiple negative numbers and some positives" do
  	expect{StringCalculator.add("-15,5,-22,13")}.to raise_error("Cannot handle negative numbers [-15,-22].")
  end 

  # requirement 10
end
















