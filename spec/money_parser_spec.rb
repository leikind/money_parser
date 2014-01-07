require 'spec_helper'
describe MoneyParser do

  it '"2000.01" should be parsed as 2000.01' do
    MoneyParser.parse("2000.01").should == 2000.01
  end

  it '"- 2000.01" should be parsed as -2000.01' do
    MoneyParser.parse("- 2000.01").should == -2000.01
  end

  it '"20o0.01" should be parsed as 2000.01' do
    MoneyParser.parse("20o0.01").should == 2000.01
  end

  it '"2000,01" should be parsed as 2000.01' do
    MoneyParser.parse("2000,01").should == 2000.01
  end

  it '" -2000,01" should be parsed as -2000.01' do
    MoneyParser.parse(" -2000,01").should == -2000.01
  end

  it '"20o0,01" should be parsed as 2000.01' do
    MoneyParser.parse("20o0,01").should == 2000.01
  end

  it '"2000.1" should be parsed as 2000.1' do
    MoneyParser.parse("2000.1").should == 2000.1
  end

  it '" - 2000.1" should be parsed as -2000.1' do
    MoneyParser.parse(" - 2000.1").should == -2000.1
  end

  it '"20o0.1" should be parsed as 2000.1' do
    MoneyParser.parse("20o0.1").should == 2000.1
  end

  it '"2000,1" should be parsed as 2000.1' do
    MoneyParser.parse("2000,1").should == 2000.1
  end

  it '" - 2000,1" should be parsed as -2000.1' do
    MoneyParser.parse(" - 2000,1").should == -2000.1
  end

  it '"20o0,1" should be parsed as 2000.1' do
    MoneyParser.parse("20o0,1").should == 2000.1
  end

  it '"2000" should be parsed as 2000.0' do
    MoneyParser.parse("2000").should == 2000.0
  end

  it '"-2000" should be parsed as -2000.0' do
    MoneyParser.parse("-2000").should == -2000.0
  end

  it '"2o00" should be parsed as 2000.0' do
    MoneyParser.parse("2o00").should == 2000.0
  end

  it '".01" should be parsed as 0.01' do
    MoneyParser.parse(".01").should == 0.01
  end

  it '"- .01" should be parsed as -0.01' do
    MoneyParser.parse("- .01").should == -0.01
  end

  it '".o1" should be parsed as 0.01' do
    MoneyParser.parse(".o1").should == 0.01
  end

  it '",01" should be parsed as 0.01' do
    MoneyParser.parse(",01").should == 0.01
  end

  it '"-,01" should be parsed as -0.01' do
    MoneyParser.parse("-,01").should == -0.01
  end

  it '",o1" should be parsed as 0.01' do
    MoneyParser.parse(",o1").should == 0.01
  end

  it '"0.01" should be parsed as 0.01' do
    MoneyParser.parse("0.01").should == 0.01
  end

  it '" -0.01" should be parsed as -0.01' do
    MoneyParser.parse(" -0.01").should == -0.01
  end

  it '"o.01" should be parsed as 0.01' do
    MoneyParser.parse("o.01").should == 0.01
  end

  it '"0,01" should be parsed as 0.01' do
    MoneyParser.parse("0,01").should == 0.01
  end

  it '" -0,01" should be parsed as -0.01' do
    MoneyParser.parse(" -0,01").should == -0.01
  end

  it '"o,01" should be parsed as 0.01' do
    MoneyParser.parse("o,01").should == 0.01
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

  it '"- ,1" should be parsed as -0.1' do
    MoneyParser.parse("- ,1").should == -0.1
  end

  it '"0.1" should be parsed as 0.1' do
    MoneyParser.parse("0.1").should == 0.1
  end

  it '"- 0.1" should be parsed as -0.1' do
    MoneyParser.parse("- 0.1").should == -0.1
  end

  it '"o.1" should be parsed as 0.1' do
    MoneyParser.parse("o.1").should == 0.1
  end

  it '"0,1" should be parsed as 0.1' do
    MoneyParser.parse("0,1").should == 0.1
  end

  it '" - 0,1" should be parsed as -0.1' do
    MoneyParser.parse(" - 0,1").should == -0.1
  end

  it '"o,1" should be parsed as 0.1' do
    MoneyParser.parse("o,1").should == 0.1
  end

  it '"2,000.01" should be parsed as 2000.01' do
    MoneyParser.parse("2,000.01").should == 2000.01
  end

  it '"-2,000.01" should be parsed as -2000.01' do
    MoneyParser.parse("-2,000.01").should == -2000.01
  end

  it '"2,000.o1" should be parsed as 2000.01' do
    MoneyParser.parse("2,000.o1").should == 2000.01
  end

  it '"2.000,01" should be parsed as 2000.01' do
    MoneyParser.parse("2.000,01").should == 2000.01
  end

  it '"- 2.000,01" should be parsed as -2000.01' do
    MoneyParser.parse("- 2.000,01").should == -2000.01
  end

  it '"2.0o0,01" should be parsed as 2000.01' do
    MoneyParser.parse("2.0o0,01").should == 2000.01
  end

  it '"2 000.01" should be parsed as 2000.01' do
    MoneyParser.parse("2 000.01").should == 2000.01
  end

  it '" -2 000.01" should be parsed as -2000.01' do
    MoneyParser.parse(" -2 000.01").should == -2000.01
  end

  it '"2 0o0.01" should be parsed as 2000.01' do
    MoneyParser.parse("2 0o0.01").should == 2000.01
  end

  it '"2 000,01" should be parsed as 2000.01' do
    MoneyParser.parse("2 000,01").should == 2000.01
  end

  it '" -2 000,01" should be parsed as -2000.01' do
    MoneyParser.parse(" -2 000,01").should == -2000.01
  end

  it '"2 000,o1" should be parsed as 2000.01' do
    MoneyParser.parse("2 000,o1").should == 2000.01
  end

  it '"1,222,000.01" should be parsed as 1222000.01' do
    MoneyParser.parse("1,222,000.01").should == 1222000.01
  end

  it '"- 1,222,000.01" should be parsed as -1222000.01' do
    MoneyParser.parse("- 1,222,000.01").should == -1222000.01
  end

  it '"1,222,00o.01" should be parsed as 1222000.01' do
    MoneyParser.parse("1,222,00o.01").should == 1222000.01
  end

  it '"1.222.000,01" should be parsed as 1222000.01' do
    MoneyParser.parse("1.222.000,01").should == 1222000.01
  end

  it '"-1.222.000,01" should be parsed as -1222000.01' do
    MoneyParser.parse("-1.222.000,01").should == -1222000.01
  end

  it '"1.222.000,o1" should be parsed as 1222000.01' do
    MoneyParser.parse("1.222.000,o1").should == 1222000.01
  end

  it '"1 222 000.01" should be parsed as 1222000.01' do
    MoneyParser.parse("1 222 000.01").should == 1222000.01
  end

  it '"- 1 222 000.01" should be parsed as -1222000.01' do
    MoneyParser.parse("- 1 222 000.01").should == -1222000.01
  end

  it '"1 222 000.o1" should be parsed as 1222000.01' do
    MoneyParser.parse("1 222 000.o1").should == 1222000.01
  end

  it '"1 222 000,01" should be parsed as 1222000.01' do
    MoneyParser.parse("1 222 000,01").should == 1222000.01
  end

  it '"- 1 222 000,01" should be parsed as -1222000.01' do
    MoneyParser.parse("- 1 222 000,01").should == -1222000.01
  end

  it '"1 222 000,o1" should be parsed as 1222000.01' do
    MoneyParser.parse("1 222 000,o1").should == 1222000.01
  end

  it '"2,000.1" should be parsed as 2000.1' do
    MoneyParser.parse("2,000.1").should == 2000.1
  end

  it '" - 2,000.1" should be parsed as -2000.1' do
    MoneyParser.parse(" - 2,000.1").should == -2000.1
  end

  it '"2,0o0.1" should be parsed as 2000.1' do
    MoneyParser.parse("2,0o0.1").should == 2000.1
  end

  it '"2.000,1" should be parsed as 2000.1' do
    MoneyParser.parse("2.000,1").should == 2000.1
  end

  it '" - 2.000,1" should be parsed as -2000.1' do
    MoneyParser.parse(" - 2.000,1").should == -2000.1
  end

  it '"2.0o0,1" should be parsed as 2000.1' do
    MoneyParser.parse("2.0o0,1").should == 2000.1
  end

  it '"2 000.1" should be parsed as 2000.1' do
    MoneyParser.parse("2 000.1").should == 2000.1
  end

  it '"-2 000.1" should be parsed as -2000.1' do
    MoneyParser.parse("-2 000.1").should == -2000.1
  end

  it '"2 o00.1" should be parsed as 2000.1' do
    MoneyParser.parse("2 o00.1").should == 2000.1
  end

  it '"2 000,1" should be parsed as 2000.1' do
    MoneyParser.parse("2 000,1").should == 2000.1
  end

  it '"-2 000,1" should be parsed as -2000.1' do
    MoneyParser.parse("-2 000,1").should == -2000.1
  end

  it '"2 00o,1" should be parsed as 2000.1' do
    MoneyParser.parse("2 00o,1").should == 2000.1
  end

  it '"1,222,000.1" should be parsed as 1222000.1' do
    MoneyParser.parse("1,222,000.1").should == 1222000.1
  end

  it '" - 1,222,000.1" should be parsed as -1222000.1' do
    MoneyParser.parse(" - 1,222,000.1").should == -1222000.1
  end

  it '"1,222,o00.1" should be parsed as 1222000.1' do
    MoneyParser.parse("1,222,o00.1").should == 1222000.1
  end

  it '"1.222.000,1" should be parsed as 1222000.1' do
    MoneyParser.parse("1.222.000,1").should == 1222000.1
  end

  it '" -1.222.000,1" should be parsed as -1222000.1' do
    MoneyParser.parse(" -1.222.000,1").should == -1222000.1
  end

  it '"1.222.o00,1" should be parsed as 1222000.1' do
    MoneyParser.parse("1.222.o00,1").should == 1222000.1
  end

  it '"1 222 000.1" should be parsed as 1222000.1' do
    MoneyParser.parse("1 222 000.1").should == 1222000.1
  end

  it '" -1 222 000.1" should be parsed as -1222000.1' do
    MoneyParser.parse(" -1 222 000.1").should == -1222000.1
  end

  it '"1 222 0o0.1" should be parsed as 1222000.1' do
    MoneyParser.parse("1 222 0o0.1").should == 1222000.1
  end

  it '"1 222 000,1" should be parsed as 1222000.1' do
    MoneyParser.parse("1 222 000,1").should == 1222000.1
  end

  it '"-1 222 000,1" should be parsed as -1222000.1' do
    MoneyParser.parse("-1 222 000,1").should == -1222000.1
  end

  it '"1 222 o00,1" should be parsed as 1222000.1' do
    MoneyParser.parse("1 222 o00,1").should == 1222000.1
  end

  it '"2,000.10" should be parsed as 2000.1' do
    MoneyParser.parse("2,000.10").should == 2000.1
  end

  it '" - 2,000.10" should be parsed as -2000.1' do
    MoneyParser.parse(" - 2,000.10").should == -2000.1
  end

  it '"2,000.1o" should be parsed as 2000.1' do
    MoneyParser.parse("2,000.1o").should == 2000.1
  end

  it '"2.000,10" should be parsed as 2000.1' do
    MoneyParser.parse("2.000,10").should == 2000.1
  end

  it '" - 2.000,10" should be parsed as -2000.1' do
    MoneyParser.parse(" - 2.000,10").should == -2000.1
  end

  it '"2.0o0,10" should be parsed as 2000.1' do
    MoneyParser.parse("2.0o0,10").should == 2000.1
  end

  it '"2 000.10" should be parsed as 2000.1' do
    MoneyParser.parse("2 000.10").should == 2000.1
  end

  it '" - 2 000.10" should be parsed as -2000.1' do
    MoneyParser.parse(" - 2 000.10").should == -2000.1
  end

  it '"2 00o.10" should be parsed as 2000.1' do
    MoneyParser.parse("2 00o.10").should == 2000.1
  end

  it '"2 000,10" should be parsed as 2000.1' do
    MoneyParser.parse("2 000,10").should == 2000.1
  end

  it '" - 2 000,10" should be parsed as -2000.1' do
    MoneyParser.parse(" - 2 000,10").should == -2000.1
  end

  it '"2 000,1o" should be parsed as 2000.1' do
    MoneyParser.parse("2 000,1o").should == 2000.1
  end

  it '"1,222,000.10" should be parsed as 1222000.1' do
    MoneyParser.parse("1,222,000.10").should == 1222000.1
  end

  it '"- 1,222,000.10" should be parsed as -1222000.1' do
    MoneyParser.parse("- 1,222,000.10").should == -1222000.1
  end

  it '"1,222,0o0.10" should be parsed as 1222000.1' do
    MoneyParser.parse("1,222,0o0.10").should == 1222000.1
  end

  it '"1.222.000,10" should be parsed as 1222000.1' do
    MoneyParser.parse("1.222.000,10").should == 1222000.1
  end

  it '" -1.222.000,10" should be parsed as -1222000.1' do
    MoneyParser.parse(" -1.222.000,10").should == -1222000.1
  end

  it '"1.222.0o0,10" should be parsed as 1222000.1' do
    MoneyParser.parse("1.222.0o0,10").should == 1222000.1
  end

  it '"1 222 000.10" should be parsed as 1222000.1' do
    MoneyParser.parse("1 222 000.10").should == 1222000.1
  end

  it '"- 1 222 000.10" should be parsed as -1222000.1' do
    MoneyParser.parse("- 1 222 000.10").should == -1222000.1
  end

  it '"1 222 000.1o" should be parsed as 1222000.1' do
    MoneyParser.parse("1 222 000.1o").should == 1222000.1
  end

  it '"1 222 000,10" should be parsed as 1222000.1' do
    MoneyParser.parse("1 222 000,10").should == 1222000.1
  end

  it '" - 1 222 000,10" should be parsed as -1222000.1' do
    MoneyParser.parse(" - 1 222 000,10").should == -1222000.1
  end

  it '"1 222 0o0,10" should be parsed as 1222000.1' do
    MoneyParser.parse("1 222 0o0,10").should == 1222000.1
  end

  it '"1 222 000" should be parsed as 1222000.0' do
    MoneyParser.parse("1 222 000").should == 1222000.0
  end

  it '" -1 222 000" should be parsed as -1222000.0' do
    MoneyParser.parse(" -1 222 000").should == -1222000.0
  end

  it '"1 222 00o" should be parsed as 1222000.0' do
    MoneyParser.parse("1 222 00o").should == 1222000.0
  end

  it '"1 222 000" should be parsed as 1222000.0' do
    MoneyParser.parse("1 222 000").should == 1222000.0
  end

  it '" - 1 222 000" should be parsed as -1222000.0' do
    MoneyParser.parse(" - 1 222 000").should == -1222000.0
  end

  it '"1 222 o00" should be parsed as 1222000.0' do
    MoneyParser.parse("1 222 o00").should == 1222000.0
  end

  it '"1,222,000" should be parsed as 1222000.0' do
    MoneyParser.parse("1,222,000").should == 1222000.0
  end

  it '"-1,222,000" should be parsed as -1222000.0' do
    MoneyParser.parse("-1,222,000").should == -1222000.0
  end

  it '"1,222,0o0" should be parsed as 1222000.0' do
    MoneyParser.parse("1,222,0o0").should == 1222000.0
  end

  it '"1.222.000" should be parsed as 1222000.0' do
    MoneyParser.parse("1.222.000").should == 1222000.0
  end

  it '"- 1.222.000" should be parsed as -1222000.0' do
    MoneyParser.parse("- 1.222.000").should == -1222000.0
  end

  it '"1.222.0o0" should be parsed as 1222000.0' do
    MoneyParser.parse("1.222.0o0").should == 1222000.0
  end

  it '"1 222 000" should be parsed as 1222000.0' do
    MoneyParser.parse("1 222 000").should == 1222000.0
  end

  it '"- 1 222 000" should be parsed as -1222000.0' do
    MoneyParser.parse("- 1 222 000").should == -1222000.0
  end

  it '"1 222 00o" should be parsed as 1222000.0' do
    MoneyParser.parse("1 222 00o").should == 1222000.0
  end

  it '"1 222 000" should be parsed as 1222000.0' do
    MoneyParser.parse("1 222 000").should == 1222000.0
  end

  it '" -1 222 000" should be parsed as -1222000.0' do
    MoneyParser.parse(" -1 222 000").should == -1222000.0
  end

  it '"1 222 00o" should be parsed as 1222000.0' do
    MoneyParser.parse("1 222 00o").should == 1222000.0
  end

  it '"2,123" should be parsed as 2123.0' do
    MoneyParser.parse("2,123").should == 2123.0
  end

  it '"-2,123" should be parsed as -2123.0' do
    MoneyParser.parse("-2,123").should == -2123.0
  end

  it '"2.123" should be parsed as 2123.0' do
    MoneyParser.parse("2.123").should == 2123.0
  end

  it '"-2.123" should be parsed as -2123.0' do
    MoneyParser.parse("-2.123").should == -2123.0
  end

  it '"2,12" should be parsed as 2.12' do
    MoneyParser.parse("2,12").should == 2.12
  end

  it '" -2,12" should be parsed as -2.12' do
    MoneyParser.parse(" -2,12").should == -2.12
  end

  it '"" should be parsed as nil' do
    MoneyParser.parse("").should == nil
  end

  it '"1" should be parsed as 1.0' do
    MoneyParser.parse("1").should == 1.0
  end

  it '" -1" should be parsed as -1.0' do
    MoneyParser.parse(" -1").should == -1.0
  end

  it '" " should be parsed as nil' do
    MoneyParser.parse(" ").should == nil
  end

  it '"hello" should be parsed as nil' do
    MoneyParser.parse("hello").should == nil
  end
end
