require 'spec_helper'
describe MoneyParser do

  it '"2000.01" should be parsed as 2000.01' do
    MoneyParser.parse("2000.01").should == 2000.01
  end

  it '"-2000.01" should be parsed as -2000.01' do
    MoneyParser.parse("-2000.01").should == -2000.01
  end

  it '"O" should be parsed as 2000.01' do
    MoneyParser.parse("O").should == 2000.01
  end

  it '"2000,01" should be parsed as 2000.01' do
    MoneyParser.parse("2000,01").should == 2000.01
  end

  it '" -2000,01" should be parsed as -2000.01' do
    MoneyParser.parse(" -2000,01").should == -2000.01
  end

  it '"O" should be parsed as 2000.01' do
    MoneyParser.parse("O").should == 2000.01
  end

  it '"2000.1" should be parsed as 2000.1' do
    MoneyParser.parse("2000.1").should == 2000.1
  end

  it '" -2000.1" should be parsed as -2000.1' do
    MoneyParser.parse(" -2000.1").should == -2000.1
  end

  it '"O" should be parsed as 2000.1' do
    MoneyParser.parse("O").should == 2000.1
  end

  it '"2000,1" should be parsed as 2000.1' do
    MoneyParser.parse("2000,1").should == 2000.1
  end

  it '"-2000,1" should be parsed as -2000.1' do
    MoneyParser.parse("-2000,1").should == -2000.1
  end

  it '"O" should be parsed as 2000.1' do
    MoneyParser.parse("O").should == 2000.1
  end

  it '"2000" should be parsed as 2000.0' do
    MoneyParser.parse("2000").should == 2000.0
  end

  it '" - 2000" should be parsed as -2000.0' do
    MoneyParser.parse(" - 2000").should == -2000.0
  end

  it '"O" should be parsed as 2000.0' do
    MoneyParser.parse("O").should == 2000.0
  end

  it '".01" should be parsed as 0.01' do
    MoneyParser.parse(".01").should == 0.01
  end

  it '"-.01" should be parsed as -0.01' do
    MoneyParser.parse("-.01").should == -0.01
  end

  it '"O" should be parsed as 0.01' do
    MoneyParser.parse("O").should == 0.01
  end

  it '",01" should be parsed as 0.01' do
    MoneyParser.parse(",01").should == 0.01
  end

  it '"- ,01" should be parsed as -0.01' do
    MoneyParser.parse("- ,01").should == -0.01
  end

  it '"O" should be parsed as 0.01' do
    MoneyParser.parse("O").should == 0.01
  end

  it '"0.01" should be parsed as 0.01' do
    MoneyParser.parse("0.01").should == 0.01
  end

  it '"- 0.01" should be parsed as -0.01' do
    MoneyParser.parse("- 0.01").should == -0.01
  end

  it '"O" should be parsed as 0.01' do
    MoneyParser.parse("O").should == 0.01
  end

  it '"0,01" should be parsed as 0.01' do
    MoneyParser.parse("0,01").should == 0.01
  end

  it '"- 0,01" should be parsed as -0.01' do
    MoneyParser.parse("- 0,01").should == -0.01
  end

  it '"O" should be parsed as 0.01' do
    MoneyParser.parse("O").should == 0.01
  end

  it '".1" should be parsed as 0.1' do
    MoneyParser.parse(".1").should == 0.1
  end

  it '" -.1" should be parsed as -0.1' do
    MoneyParser.parse(" -.1").should == -0.1
  end

  it '",1" should be parsed as 0.1' do
    MoneyParser.parse(",1").should == 0.1
  end

  it '" -,1" should be parsed as -0.1' do
    MoneyParser.parse(" -,1").should == -0.1
  end

  it '"0.1" should be parsed as 0.1' do
    MoneyParser.parse("0.1").should == 0.1
  end

  it '" - 0.1" should be parsed as -0.1' do
    MoneyParser.parse(" - 0.1").should == -0.1
  end

  it '"O" should be parsed as 0.1' do
    MoneyParser.parse("O").should == 0.1
  end

  it '"0,1" should be parsed as 0.1' do
    MoneyParser.parse("0,1").should == 0.1
  end

  it '" -0,1" should be parsed as -0.1' do
    MoneyParser.parse(" -0,1").should == -0.1
  end

  it '"O" should be parsed as 0.1' do
    MoneyParser.parse("O").should == 0.1
  end

  it '"2,000.01" should be parsed as 2000.01' do
    MoneyParser.parse("2,000.01").should == 2000.01
  end

  it '"- 2,000.01" should be parsed as -2000.01' do
    MoneyParser.parse("- 2,000.01").should == -2000.01
  end

  it '"O" should be parsed as 2000.01' do
    MoneyParser.parse("O").should == 2000.01
  end

  it '"2.000,01" should be parsed as 2000.01' do
    MoneyParser.parse("2.000,01").should == 2000.01
  end

  it '"-2.000,01" should be parsed as -2000.01' do
    MoneyParser.parse("-2.000,01").should == -2000.01
  end

  it '"O" should be parsed as 2000.01' do
    MoneyParser.parse("O").should == 2000.01
  end

  it '"2 000.01" should be parsed as 2000.01' do
    MoneyParser.parse("2 000.01").should == 2000.01
  end

  it '"- 2 000.01" should be parsed as -2000.01' do
    MoneyParser.parse("- 2 000.01").should == -2000.01
  end

  it '"O" should be parsed as 2000.01' do
    MoneyParser.parse("O").should == 2000.01
  end

  it '"2 000,01" should be parsed as 2000.01' do
    MoneyParser.parse("2 000,01").should == 2000.01
  end

  it '" -2 000,01" should be parsed as -2000.01' do
    MoneyParser.parse(" -2 000,01").should == -2000.01
  end

  it '"O" should be parsed as 2000.01' do
    MoneyParser.parse("O").should == 2000.01
  end

  it '"1,222,000.01" should be parsed as 1222000.01' do
    MoneyParser.parse("1,222,000.01").should == 1222000.01
  end

  it '"- 1,222,000.01" should be parsed as -1222000.01' do
    MoneyParser.parse("- 1,222,000.01").should == -1222000.01
  end

  it '"O" should be parsed as 1222000.01' do
    MoneyParser.parse("O").should == 1222000.01
  end

  it '"1.222.000,01" should be parsed as 1222000.01' do
    MoneyParser.parse("1.222.000,01").should == 1222000.01
  end

  it '"- 1.222.000,01" should be parsed as -1222000.01' do
    MoneyParser.parse("- 1.222.000,01").should == -1222000.01
  end

  it '"O" should be parsed as 1222000.01' do
    MoneyParser.parse("O").should == 1222000.01
  end

  it '"1 222 000.01" should be parsed as 1222000.01' do
    MoneyParser.parse("1 222 000.01").should == 1222000.01
  end

  it '" -1 222 000.01" should be parsed as -1222000.01' do
    MoneyParser.parse(" -1 222 000.01").should == -1222000.01
  end

  it '"O" should be parsed as 1222000.01' do
    MoneyParser.parse("O").should == 1222000.01
  end

  it '"1 222 000,01" should be parsed as 1222000.01' do
    MoneyParser.parse("1 222 000,01").should == 1222000.01
  end

  it '"-1 222 000,01" should be parsed as -1222000.01' do
    MoneyParser.parse("-1 222 000,01").should == -1222000.01
  end

  it '"O" should be parsed as 1222000.01' do
    MoneyParser.parse("O").should == 1222000.01
  end

  it '"2,000.1" should be parsed as 2000.1' do
    MoneyParser.parse("2,000.1").should == 2000.1
  end

  it '"- 2,000.1" should be parsed as -2000.1' do
    MoneyParser.parse("- 2,000.1").should == -2000.1
  end

  it '"O" should be parsed as 2000.1' do
    MoneyParser.parse("O").should == 2000.1
  end

  it '"2.000,1" should be parsed as 2000.1' do
    MoneyParser.parse("2.000,1").should == 2000.1
  end

  it '"- 2.000,1" should be parsed as -2000.1' do
    MoneyParser.parse("- 2.000,1").should == -2000.1
  end

  it '"O" should be parsed as 2000.1' do
    MoneyParser.parse("O").should == 2000.1
  end

  it '"2 000.1" should be parsed as 2000.1' do
    MoneyParser.parse("2 000.1").should == 2000.1
  end

  it '"- 2 000.1" should be parsed as -2000.1' do
    MoneyParser.parse("- 2 000.1").should == -2000.1
  end

  it '"O" should be parsed as 2000.1' do
    MoneyParser.parse("O").should == 2000.1
  end

  it '"2 000,1" should be parsed as 2000.1' do
    MoneyParser.parse("2 000,1").should == 2000.1
  end

  it '"-2 000,1" should be parsed as -2000.1' do
    MoneyParser.parse("-2 000,1").should == -2000.1
  end

  it '"O" should be parsed as 2000.1' do
    MoneyParser.parse("O").should == 2000.1
  end

  it '"1,222,000.1" should be parsed as 1222000.1' do
    MoneyParser.parse("1,222,000.1").should == 1222000.1
  end

  it '"-1,222,000.1" should be parsed as -1222000.1' do
    MoneyParser.parse("-1,222,000.1").should == -1222000.1
  end

  it '"O" should be parsed as 1222000.1' do
    MoneyParser.parse("O").should == 1222000.1
  end

  it '"1.222.000,1" should be parsed as 1222000.1' do
    MoneyParser.parse("1.222.000,1").should == 1222000.1
  end

  it '" - 1.222.000,1" should be parsed as -1222000.1' do
    MoneyParser.parse(" - 1.222.000,1").should == -1222000.1
  end

  it '"O" should be parsed as 1222000.1' do
    MoneyParser.parse("O").should == 1222000.1
  end

  it '"1 222 000.1" should be parsed as 1222000.1' do
    MoneyParser.parse("1 222 000.1").should == 1222000.1
  end

  it '"- 1 222 000.1" should be parsed as -1222000.1' do
    MoneyParser.parse("- 1 222 000.1").should == -1222000.1
  end

  it '"O" should be parsed as 1222000.1' do
    MoneyParser.parse("O").should == 1222000.1
  end

  it '"1 222 000,1" should be parsed as 1222000.1' do
    MoneyParser.parse("1 222 000,1").should == 1222000.1
  end

  it '" - 1 222 000,1" should be parsed as -1222000.1' do
    MoneyParser.parse(" - 1 222 000,1").should == -1222000.1
  end

  it '"O" should be parsed as 1222000.1' do
    MoneyParser.parse("O").should == 1222000.1
  end

  it '"2,000.10" should be parsed as 2000.1' do
    MoneyParser.parse("2,000.10").should == 2000.1
  end

  it '" -2,000.10" should be parsed as -2000.1' do
    MoneyParser.parse(" -2,000.10").should == -2000.1
  end

  it '"O" should be parsed as 2000.1' do
    MoneyParser.parse("O").should == 2000.1
  end

  it '"2.000,10" should be parsed as 2000.1' do
    MoneyParser.parse("2.000,10").should == 2000.1
  end

  it '" -2.000,10" should be parsed as -2000.1' do
    MoneyParser.parse(" -2.000,10").should == -2000.1
  end

  it '"O" should be parsed as 2000.1' do
    MoneyParser.parse("O").should == 2000.1
  end

  it '"2 000.10" should be parsed as 2000.1' do
    MoneyParser.parse("2 000.10").should == 2000.1
  end

  it '"-2 000.10" should be parsed as -2000.1' do
    MoneyParser.parse("-2 000.10").should == -2000.1
  end

  it '"O" should be parsed as 2000.1' do
    MoneyParser.parse("O").should == 2000.1
  end

  it '"2 000,10" should be parsed as 2000.1' do
    MoneyParser.parse("2 000,10").should == 2000.1
  end

  it '"-2 000,10" should be parsed as -2000.1' do
    MoneyParser.parse("-2 000,10").should == -2000.1
  end

  it '"O" should be parsed as 2000.1' do
    MoneyParser.parse("O").should == 2000.1
  end

  it '"1,222,000.10" should be parsed as 1222000.1' do
    MoneyParser.parse("1,222,000.10").should == 1222000.1
  end

  it '" -1,222,000.10" should be parsed as -1222000.1' do
    MoneyParser.parse(" -1,222,000.10").should == -1222000.1
  end

  it '"O" should be parsed as 1222000.1' do
    MoneyParser.parse("O").should == 1222000.1
  end

  it '"1.222.000,10" should be parsed as 1222000.1' do
    MoneyParser.parse("1.222.000,10").should == 1222000.1
  end

  it '" -1.222.000,10" should be parsed as -1222000.1' do
    MoneyParser.parse(" -1.222.000,10").should == -1222000.1
  end

  it '"O" should be parsed as 1222000.1' do
    MoneyParser.parse("O").should == 1222000.1
  end

  it '"1 222 000.10" should be parsed as 1222000.1' do
    MoneyParser.parse("1 222 000.10").should == 1222000.1
  end

  it '"- 1 222 000.10" should be parsed as -1222000.1' do
    MoneyParser.parse("- 1 222 000.10").should == -1222000.1
  end

  it '"O" should be parsed as 1222000.1' do
    MoneyParser.parse("O").should == 1222000.1
  end

  it '"1 222 000,10" should be parsed as 1222000.1' do
    MoneyParser.parse("1 222 000,10").should == 1222000.1
  end

  it '" -1 222 000,10" should be parsed as -1222000.1' do
    MoneyParser.parse(" -1 222 000,10").should == -1222000.1
  end

  it '"O" should be parsed as 1222000.1' do
    MoneyParser.parse("O").should == 1222000.1
  end

  it '"1 222 000" should be parsed as 1222000.0' do
    MoneyParser.parse("1 222 000").should == 1222000.0
  end

  it '"-1 222 000" should be parsed as -1222000.0' do
    MoneyParser.parse("-1 222 000").should == -1222000.0
  end

  it '"O" should be parsed as 1222000.0' do
    MoneyParser.parse("O").should == 1222000.0
  end

  it '"1 222 000" should be parsed as 1222000.0' do
    MoneyParser.parse("1 222 000").should == 1222000.0
  end

  it '" - 1 222 000" should be parsed as -1222000.0' do
    MoneyParser.parse(" - 1 222 000").should == -1222000.0
  end

  it '"O" should be parsed as 1222000.0' do
    MoneyParser.parse("O").should == 1222000.0
  end

  it '"1,222,000" should be parsed as 1222000.0' do
    MoneyParser.parse("1,222,000").should == 1222000.0
  end

  it '"-1,222,000" should be parsed as -1222000.0' do
    MoneyParser.parse("-1,222,000").should == -1222000.0
  end

  it '"O" should be parsed as 1222000.0' do
    MoneyParser.parse("O").should == 1222000.0
  end

  it '"1.222.000" should be parsed as 1222000.0' do
    MoneyParser.parse("1.222.000").should == 1222000.0
  end

  it '"- 1.222.000" should be parsed as -1222000.0' do
    MoneyParser.parse("- 1.222.000").should == -1222000.0
  end

  it '"O" should be parsed as 1222000.0' do
    MoneyParser.parse("O").should == 1222000.0
  end

  it '"1 222 000" should be parsed as 1222000.0' do
    MoneyParser.parse("1 222 000").should == 1222000.0
  end

  it '"-1 222 000" should be parsed as -1222000.0' do
    MoneyParser.parse("-1 222 000").should == -1222000.0
  end

  it '"O" should be parsed as 1222000.0' do
    MoneyParser.parse("O").should == 1222000.0
  end

  it '"1 222 000" should be parsed as 1222000.0' do
    MoneyParser.parse("1 222 000").should == 1222000.0
  end

  it '"- 1 222 000" should be parsed as -1222000.0' do
    MoneyParser.parse("- 1 222 000").should == -1222000.0
  end

  it '"O" should be parsed as 1222000.0' do
    MoneyParser.parse("O").should == 1222000.0
  end

  it '"2,123" should be parsed as 2123.0' do
    MoneyParser.parse("2,123").should == 2123.0
  end

  it '" -2,123" should be parsed as -2123.0' do
    MoneyParser.parse(" -2,123").should == -2123.0
  end

  it '"2.123" should be parsed as 2123.0' do
    MoneyParser.parse("2.123").should == 2123.0
  end

  it '"- 2.123" should be parsed as -2123.0' do
    MoneyParser.parse("- 2.123").should == -2123.0
  end

  it '"2,12" should be parsed as 2.12' do
    MoneyParser.parse("2,12").should == 2.12
  end

  it '" - 2,12" should be parsed as -2.12' do
    MoneyParser.parse(" - 2,12").should == -2.12
  end

  it '"2.12" should be parsed as 2.12' do
    MoneyParser.parse("2.12").should == 2.12
  end

  it '" -2.12" should be parsed as -2.12' do
    MoneyParser.parse(" -2.12").should == -2.12
  end
end
