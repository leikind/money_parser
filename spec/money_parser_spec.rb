require 'spec_helper'
describe MoneyParser do


  it 'nil should be parsed as nil ' do
    MoneyParser.parse(nil).should == nil
  end


  it '"," should be parsed as nil ' do
    MoneyParser.parse(",").should == nil
  end


  it '"$," should be parsed as nil (with a dollar sign)' do
    MoneyParser.parse("$,").should == nil
  end


  it '"€," should be parsed as nil (with a euro sign)' do
    MoneyParser.parse("€,").should == nil
  end


  it '"£," should be parsed as nil (with a pound sign)' do
    MoneyParser.parse("£,").should == nil
  end


  it '"₤," should be parsed as nil (with a pound sign)' do
    MoneyParser.parse("₤,").should == nil
  end


  it '",," should be parsed as nil ' do
    MoneyParser.parse(",,").should == nil
  end


  it '"$,," should be parsed as nil (with a dollar sign)' do
    MoneyParser.parse("$,,").should == nil
  end


  it '"€,," should be parsed as nil (with a euro sign)' do
    MoneyParser.parse("€,,").should == nil
  end


  it '"£,," should be parsed as nil (with a pound sign)' do
    MoneyParser.parse("£,,").should == nil
  end


  it '"₤,," should be parsed as nil (with a pound sign)' do
    MoneyParser.parse("₤,,").should == nil
  end


  it '"." should be parsed as nil ' do
    MoneyParser.parse(".").should == nil
  end


  it '"$." should be parsed as nil (with a dollar sign)' do
    MoneyParser.parse("$.").should == nil
  end


  it '"€." should be parsed as nil (with a euro sign)' do
    MoneyParser.parse("€.").should == nil
  end


  it '"£." should be parsed as nil (with a pound sign)' do
    MoneyParser.parse("£.").should == nil
  end


  it '"₤." should be parsed as nil (with a pound sign)' do
    MoneyParser.parse("₤.").should == nil
  end


  it '".." should be parsed as nil ' do
    MoneyParser.parse("..").should == nil
  end


  it '"$.." should be parsed as nil (with a dollar sign)' do
    MoneyParser.parse("$..").should == nil
  end


  it '"€.." should be parsed as nil (with a euro sign)' do
    MoneyParser.parse("€..").should == nil
  end


  it '"£.." should be parsed as nil (with a pound sign)' do
    MoneyParser.parse("£..").should == nil
  end


  it '"₤.." should be parsed as nil (with a pound sign)' do
    MoneyParser.parse("₤..").should == nil
  end


  it '"2000.01" should be parsed as 2000.01 ' do
    MoneyParser.parse("2000.01").should == BigDecimal("2000.01")
  end


  it '"-2000.01" should be parsed as -2000.01 (negative amount)' do
    MoneyParser.parse("-2000.01").should == BigDecimal("-2000.01")
  end


  it '"20o0.01" should be parsed as 2000.01 (with O instead of 0)' do
    MoneyParser.parse("20o0.01").should == BigDecimal("2000.01")
  end


  it '"$2000.01" should be parsed as 2000.01 (with a dollar sign)' do
    MoneyParser.parse("$2000.01").should == BigDecimal("2000.01")
  end


  it '"€2000.01" should be parsed as 2000.01 (with a euro sign)' do
    MoneyParser.parse("€2000.01").should == BigDecimal("2000.01")
  end


  it '"£2000.01" should be parsed as 2000.01 (with a pound sign)' do
    MoneyParser.parse("£2000.01").should == BigDecimal("2000.01")
  end


  it '"₤2000.01" should be parsed as 2000.01 (with a pound sign)' do
    MoneyParser.parse("₤2000.01").should == BigDecimal("2000.01")
  end


  it '"2000,01" should be parsed as 2000.01 ' do
    MoneyParser.parse("2000,01").should == BigDecimal("2000.01")
  end


  it '"-2000,01" should be parsed as -2000.01 (negative amount)' do
    MoneyParser.parse("-2000,01").should == BigDecimal("-2000.01")
  end


  it '"2000,o1" should be parsed as 2000.01 (with O instead of 0)' do
    MoneyParser.parse("2000,o1").should == BigDecimal("2000.01")
  end


  it '"$2000,01" should be parsed as 2000.01 (with a dollar sign)' do
    MoneyParser.parse("$2000,01").should == BigDecimal("2000.01")
  end


  it '"€2000,01" should be parsed as 2000.01 (with a euro sign)' do
    MoneyParser.parse("€2000,01").should == BigDecimal("2000.01")
  end


  it '"£2000,01" should be parsed as 2000.01 (with a pound sign)' do
    MoneyParser.parse("£2000,01").should == BigDecimal("2000.01")
  end


  it '"₤2000,01" should be parsed as 2000.01 (with a pound sign)' do
    MoneyParser.parse("₤2000,01").should == BigDecimal("2000.01")
  end


  it '"2000.1" should be parsed as 2000.1 ' do
    MoneyParser.parse("2000.1").should == BigDecimal("2000.1")
  end


  it '"-2000.1" should be parsed as -2000.1 (negative amount)' do
    MoneyParser.parse("-2000.1").should == BigDecimal("-2000.1")
  end


  it '"20o0.1" should be parsed as 2000.1 (with O instead of 0)' do
    MoneyParser.parse("20o0.1").should == BigDecimal("2000.1")
  end


  it '"$2000.1" should be parsed as 2000.1 (with a dollar sign)' do
    MoneyParser.parse("$2000.1").should == BigDecimal("2000.1")
  end


  it '"€2000.1" should be parsed as 2000.1 (with a euro sign)' do
    MoneyParser.parse("€2000.1").should == BigDecimal("2000.1")
  end


  it '"£2000.1" should be parsed as 2000.1 (with a pound sign)' do
    MoneyParser.parse("£2000.1").should == BigDecimal("2000.1")
  end


  it '"₤2000.1" should be parsed as 2000.1 (with a pound sign)' do
    MoneyParser.parse("₤2000.1").should == BigDecimal("2000.1")
  end


  it '"2000,1" should be parsed as 2000.1 ' do
    MoneyParser.parse("2000,1").should == BigDecimal("2000.1")
  end


  it '" -2000,1" should be parsed as -2000.1 (negative amount)' do
    MoneyParser.parse(" -2000,1").should == BigDecimal("-2000.1")
  end


  it '"2o00,1" should be parsed as 2000.1 (with O instead of 0)' do
    MoneyParser.parse("2o00,1").should == BigDecimal("2000.1")
  end


  it '"$2000,1" should be parsed as 2000.1 (with a dollar sign)' do
    MoneyParser.parse("$2000,1").should == BigDecimal("2000.1")
  end


  it '"€2000,1" should be parsed as 2000.1 (with a euro sign)' do
    MoneyParser.parse("€2000,1").should == BigDecimal("2000.1")
  end


  it '"£2000,1" should be parsed as 2000.1 (with a pound sign)' do
    MoneyParser.parse("£2000,1").should == BigDecimal("2000.1")
  end


  it '"₤2000,1" should be parsed as 2000.1 (with a pound sign)' do
    MoneyParser.parse("₤2000,1").should == BigDecimal("2000.1")
  end


  it '"2000" should be parsed as 2000.0 ' do
    MoneyParser.parse("2000").should == BigDecimal("2000.0")
  end


  it '" - 2000" should be parsed as -2000.0 (negative amount)' do
    MoneyParser.parse(" - 2000").should == BigDecimal("-2000.0")
  end


  it '"2o00" should be parsed as 2000.0 (with O instead of 0)' do
    MoneyParser.parse("2o00").should == BigDecimal("2000.0")
  end


  it '"$2000" should be parsed as 2000.0 (with a dollar sign)' do
    MoneyParser.parse("$2000").should == BigDecimal("2000.0")
  end


  it '"€2000" should be parsed as 2000.0 (with a euro sign)' do
    MoneyParser.parse("€2000").should == BigDecimal("2000.0")
  end


  it '"£2000" should be parsed as 2000.0 (with a pound sign)' do
    MoneyParser.parse("£2000").should == BigDecimal("2000.0")
  end


  it '"₤2000" should be parsed as 2000.0 (with a pound sign)' do
    MoneyParser.parse("₤2000").should == BigDecimal("2000.0")
  end


  it '".01" should be parsed as 0.01 ' do
    MoneyParser.parse(".01").should == BigDecimal("0.01")
  end


  it '"-.01" should be parsed as -0.01 (negative amount)' do
    MoneyParser.parse("-.01").should == BigDecimal("-0.01")
  end


  it '".o1" should be parsed as 0.01 (with O instead of 0)' do
    MoneyParser.parse(".o1").should == BigDecimal("0.01")
  end


  it '"$.01" should be parsed as 0.01 (with a dollar sign)' do
    MoneyParser.parse("$.01").should == BigDecimal("0.01")
  end


  it '"€.01" should be parsed as 0.01 (with a euro sign)' do
    MoneyParser.parse("€.01").should == BigDecimal("0.01")
  end


  it '"£.01" should be parsed as 0.01 (with a pound sign)' do
    MoneyParser.parse("£.01").should == BigDecimal("0.01")
  end


  it '"₤.01" should be parsed as 0.01 (with a pound sign)' do
    MoneyParser.parse("₤.01").should == BigDecimal("0.01")
  end


  it '",01" should be parsed as 0.01 ' do
    MoneyParser.parse(",01").should == BigDecimal("0.01")
  end


  it '" -,01" should be parsed as -0.01 (negative amount)' do
    MoneyParser.parse(" -,01").should == BigDecimal("-0.01")
  end


  it '",o1" should be parsed as 0.01 (with O instead of 0)' do
    MoneyParser.parse(",o1").should == BigDecimal("0.01")
  end


  it '"$,01" should be parsed as 0.01 (with a dollar sign)' do
    MoneyParser.parse("$,01").should == BigDecimal("0.01")
  end


  it '"€,01" should be parsed as 0.01 (with a euro sign)' do
    MoneyParser.parse("€,01").should == BigDecimal("0.01")
  end


  it '"£,01" should be parsed as 0.01 (with a pound sign)' do
    MoneyParser.parse("£,01").should == BigDecimal("0.01")
  end


  it '"₤,01" should be parsed as 0.01 (with a pound sign)' do
    MoneyParser.parse("₤,01").should == BigDecimal("0.01")
  end


  it '"0.01" should be parsed as 0.01 ' do
    MoneyParser.parse("0.01").should == BigDecimal("0.01")
  end


  it '" -0.01" should be parsed as -0.01 (negative amount)' do
    MoneyParser.parse(" -0.01").should == BigDecimal("-0.01")
  end


  it '"o.01" should be parsed as 0.01 (with O instead of 0)' do
    MoneyParser.parse("o.01").should == BigDecimal("0.01")
  end


  it '"$0.01" should be parsed as 0.01 (with a dollar sign)' do
    MoneyParser.parse("$0.01").should == BigDecimal("0.01")
  end


  it '"€0.01" should be parsed as 0.01 (with a euro sign)' do
    MoneyParser.parse("€0.01").should == BigDecimal("0.01")
  end


  it '"£0.01" should be parsed as 0.01 (with a pound sign)' do
    MoneyParser.parse("£0.01").should == BigDecimal("0.01")
  end


  it '"₤0.01" should be parsed as 0.01 (with a pound sign)' do
    MoneyParser.parse("₤0.01").should == BigDecimal("0.01")
  end


  it '"0,01" should be parsed as 0.01 ' do
    MoneyParser.parse("0,01").should == BigDecimal("0.01")
  end


  it '" - 0,01" should be parsed as -0.01 (negative amount)' do
    MoneyParser.parse(" - 0,01").should == BigDecimal("-0.01")
  end


  it '"o,01" should be parsed as 0.01 (with O instead of 0)' do
    MoneyParser.parse("o,01").should == BigDecimal("0.01")
  end


  it '"$0,01" should be parsed as 0.01 (with a dollar sign)' do
    MoneyParser.parse("$0,01").should == BigDecimal("0.01")
  end


  it '"€0,01" should be parsed as 0.01 (with a euro sign)' do
    MoneyParser.parse("€0,01").should == BigDecimal("0.01")
  end


  it '"£0,01" should be parsed as 0.01 (with a pound sign)' do
    MoneyParser.parse("£0,01").should == BigDecimal("0.01")
  end


  it '"₤0,01" should be parsed as 0.01 (with a pound sign)' do
    MoneyParser.parse("₤0,01").should == BigDecimal("0.01")
  end


  it '".1" should be parsed as 0.1 ' do
    MoneyParser.parse(".1").should == BigDecimal("0.1")
  end


  it '" - .1" should be parsed as -0.1 (negative amount)' do
    MoneyParser.parse(" - .1").should == BigDecimal("-0.1")
  end


  it '"$.1" should be parsed as 0.1 (with a dollar sign)' do
    MoneyParser.parse("$.1").should == BigDecimal("0.1")
  end


  it '"€.1" should be parsed as 0.1 (with a euro sign)' do
    MoneyParser.parse("€.1").should == BigDecimal("0.1")
  end


  it '"£.1" should be parsed as 0.1 (with a pound sign)' do
    MoneyParser.parse("£.1").should == BigDecimal("0.1")
  end


  it '"₤.1" should be parsed as 0.1 (with a pound sign)' do
    MoneyParser.parse("₤.1").should == BigDecimal("0.1")
  end


  it '",1" should be parsed as 0.1 ' do
    MoneyParser.parse(",1").should == BigDecimal("0.1")
  end


  it '"- ,1" should be parsed as -0.1 (negative amount)' do
    MoneyParser.parse("- ,1").should == BigDecimal("-0.1")
  end


  it '"$,1" should be parsed as 0.1 (with a dollar sign)' do
    MoneyParser.parse("$,1").should == BigDecimal("0.1")
  end


  it '"€,1" should be parsed as 0.1 (with a euro sign)' do
    MoneyParser.parse("€,1").should == BigDecimal("0.1")
  end


  it '"£,1" should be parsed as 0.1 (with a pound sign)' do
    MoneyParser.parse("£,1").should == BigDecimal("0.1")
  end


  it '"₤,1" should be parsed as 0.1 (with a pound sign)' do
    MoneyParser.parse("₤,1").should == BigDecimal("0.1")
  end


  it '"0.1" should be parsed as 0.1 ' do
    MoneyParser.parse("0.1").should == BigDecimal("0.1")
  end


  it '" - 0.1" should be parsed as -0.1 (negative amount)' do
    MoneyParser.parse(" - 0.1").should == BigDecimal("-0.1")
  end


  it '"o.1" should be parsed as 0.1 (with O instead of 0)' do
    MoneyParser.parse("o.1").should == BigDecimal("0.1")
  end


  it '"$0.1" should be parsed as 0.1 (with a dollar sign)' do
    MoneyParser.parse("$0.1").should == BigDecimal("0.1")
  end


  it '"€0.1" should be parsed as 0.1 (with a euro sign)' do
    MoneyParser.parse("€0.1").should == BigDecimal("0.1")
  end


  it '"£0.1" should be parsed as 0.1 (with a pound sign)' do
    MoneyParser.parse("£0.1").should == BigDecimal("0.1")
  end


  it '"₤0.1" should be parsed as 0.1 (with a pound sign)' do
    MoneyParser.parse("₤0.1").should == BigDecimal("0.1")
  end


  it '"0,1" should be parsed as 0.1 ' do
    MoneyParser.parse("0,1").should == BigDecimal("0.1")
  end


  it '"- 0,1" should be parsed as -0.1 (negative amount)' do
    MoneyParser.parse("- 0,1").should == BigDecimal("-0.1")
  end


  it '"o,1" should be parsed as 0.1 (with O instead of 0)' do
    MoneyParser.parse("o,1").should == BigDecimal("0.1")
  end


  it '"$0,1" should be parsed as 0.1 (with a dollar sign)' do
    MoneyParser.parse("$0,1").should == BigDecimal("0.1")
  end


  it '"€0,1" should be parsed as 0.1 (with a euro sign)' do
    MoneyParser.parse("€0,1").should == BigDecimal("0.1")
  end


  it '"£0,1" should be parsed as 0.1 (with a pound sign)' do
    MoneyParser.parse("£0,1").should == BigDecimal("0.1")
  end


  it '"₤0,1" should be parsed as 0.1 (with a pound sign)' do
    MoneyParser.parse("₤0,1").should == BigDecimal("0.1")
  end


  it '"2,000.01" should be parsed as 2000.01 ' do
    MoneyParser.parse("2,000.01").should == BigDecimal("2000.01")
  end


  it '"-2,000.01" should be parsed as -2000.01 (negative amount)' do
    MoneyParser.parse("-2,000.01").should == BigDecimal("-2000.01")
  end


  it '"2,0o0.01" should be parsed as 2000.01 (with O instead of 0)' do
    MoneyParser.parse("2,0o0.01").should == BigDecimal("2000.01")
  end


  it '"$2,000.01" should be parsed as 2000.01 (with a dollar sign)' do
    MoneyParser.parse("$2,000.01").should == BigDecimal("2000.01")
  end


  it '"€2,000.01" should be parsed as 2000.01 (with a euro sign)' do
    MoneyParser.parse("€2,000.01").should == BigDecimal("2000.01")
  end


  it '"£2,000.01" should be parsed as 2000.01 (with a pound sign)' do
    MoneyParser.parse("£2,000.01").should == BigDecimal("2000.01")
  end


  it '"₤2,000.01" should be parsed as 2000.01 (with a pound sign)' do
    MoneyParser.parse("₤2,000.01").should == BigDecimal("2000.01")
  end


  it '"2.000,01" should be parsed as 2000.01 ' do
    MoneyParser.parse("2.000,01").should == BigDecimal("2000.01")
  end


  it '"-2.000,01" should be parsed as -2000.01 (negative amount)' do
    MoneyParser.parse("-2.000,01").should == BigDecimal("-2000.01")
  end


  it '"2.o00,01" should be parsed as 2000.01 (with O instead of 0)' do
    MoneyParser.parse("2.o00,01").should == BigDecimal("2000.01")
  end


  it '"$2.000,01" should be parsed as 2000.01 (with a dollar sign)' do
    MoneyParser.parse("$2.000,01").should == BigDecimal("2000.01")
  end


  it '"€2.000,01" should be parsed as 2000.01 (with a euro sign)' do
    MoneyParser.parse("€2.000,01").should == BigDecimal("2000.01")
  end


  it '"£2.000,01" should be parsed as 2000.01 (with a pound sign)' do
    MoneyParser.parse("£2.000,01").should == BigDecimal("2000.01")
  end


  it '"₤2.000,01" should be parsed as 2000.01 (with a pound sign)' do
    MoneyParser.parse("₤2.000,01").should == BigDecimal("2000.01")
  end


  it '"2 000.01" should be parsed as 2000.01 ' do
    MoneyParser.parse("2 000.01").should == BigDecimal("2000.01")
  end


  it '"- 2 000.01" should be parsed as -2000.01 (negative amount)' do
    MoneyParser.parse("- 2 000.01").should == BigDecimal("-2000.01")
  end


  it '"2 000.o1" should be parsed as 2000.01 (with O instead of 0)' do
    MoneyParser.parse("2 000.o1").should == BigDecimal("2000.01")
  end


  it '"$2 000.01" should be parsed as 2000.01 (with a dollar sign)' do
    MoneyParser.parse("$2 000.01").should == BigDecimal("2000.01")
  end


  it '"€2 000.01" should be parsed as 2000.01 (with a euro sign)' do
    MoneyParser.parse("€2 000.01").should == BigDecimal("2000.01")
  end


  it '"£2 000.01" should be parsed as 2000.01 (with a pound sign)' do
    MoneyParser.parse("£2 000.01").should == BigDecimal("2000.01")
  end


  it '"₤2 000.01" should be parsed as 2000.01 (with a pound sign)' do
    MoneyParser.parse("₤2 000.01").should == BigDecimal("2000.01")
  end


  it '"2 000,01" should be parsed as 2000.01 ' do
    MoneyParser.parse("2 000,01").should == BigDecimal("2000.01")
  end


  it '"- 2 000,01" should be parsed as -2000.01 (negative amount)' do
    MoneyParser.parse("- 2 000,01").should == BigDecimal("-2000.01")
  end


  it '"2 000,o1" should be parsed as 2000.01 (with O instead of 0)' do
    MoneyParser.parse("2 000,o1").should == BigDecimal("2000.01")
  end


  it '"$2 000,01" should be parsed as 2000.01 (with a dollar sign)' do
    MoneyParser.parse("$2 000,01").should == BigDecimal("2000.01")
  end


  it '"€2 000,01" should be parsed as 2000.01 (with a euro sign)' do
    MoneyParser.parse("€2 000,01").should == BigDecimal("2000.01")
  end


  it '"£2 000,01" should be parsed as 2000.01 (with a pound sign)' do
    MoneyParser.parse("£2 000,01").should == BigDecimal("2000.01")
  end


  it '"₤2 000,01" should be parsed as 2000.01 (with a pound sign)' do
    MoneyParser.parse("₤2 000,01").should == BigDecimal("2000.01")
  end


  it '"1,222,000.01" should be parsed as 1222000.01 ' do
    MoneyParser.parse("1,222,000.01").should == BigDecimal("1222000.01")
  end


  it '"-1,222,000.01" should be parsed as -1222000.01 (negative amount)' do
    MoneyParser.parse("-1,222,000.01").should == BigDecimal("-1222000.01")
  end


  it '"1,222,o00.01" should be parsed as 1222000.01 (with O instead of 0)' do
    MoneyParser.parse("1,222,o00.01").should == BigDecimal("1222000.01")
  end


  it '"$1,222,000.01" should be parsed as 1222000.01 (with a dollar sign)' do
    MoneyParser.parse("$1,222,000.01").should == BigDecimal("1222000.01")
  end


  it '"€1,222,000.01" should be parsed as 1222000.01 (with a euro sign)' do
    MoneyParser.parse("€1,222,000.01").should == BigDecimal("1222000.01")
  end


  it '"£1,222,000.01" should be parsed as 1222000.01 (with a pound sign)' do
    MoneyParser.parse("£1,222,000.01").should == BigDecimal("1222000.01")
  end


  it '"₤1,222,000.01" should be parsed as 1222000.01 (with a pound sign)' do
    MoneyParser.parse("₤1,222,000.01").should == BigDecimal("1222000.01")
  end


  it '"1.222.000,01" should be parsed as 1222000.01 ' do
    MoneyParser.parse("1.222.000,01").should == BigDecimal("1222000.01")
  end


  it '"-1.222.000,01" should be parsed as -1222000.01 (negative amount)' do
    MoneyParser.parse("-1.222.000,01").should == BigDecimal("-1222000.01")
  end


  it '"1.222.0o0,01" should be parsed as 1222000.01 (with O instead of 0)' do
    MoneyParser.parse("1.222.0o0,01").should == BigDecimal("1222000.01")
  end


  it '"$1.222.000,01" should be parsed as 1222000.01 (with a dollar sign)' do
    MoneyParser.parse("$1.222.000,01").should == BigDecimal("1222000.01")
  end


  it '"€1.222.000,01" should be parsed as 1222000.01 (with a euro sign)' do
    MoneyParser.parse("€1.222.000,01").should == BigDecimal("1222000.01")
  end


  it '"£1.222.000,01" should be parsed as 1222000.01 (with a pound sign)' do
    MoneyParser.parse("£1.222.000,01").should == BigDecimal("1222000.01")
  end


  it '"₤1.222.000,01" should be parsed as 1222000.01 (with a pound sign)' do
    MoneyParser.parse("₤1.222.000,01").should == BigDecimal("1222000.01")
  end


  it '"1 222 000.01" should be parsed as 1222000.01 ' do
    MoneyParser.parse("1 222 000.01").should == BigDecimal("1222000.01")
  end


  it '" -1 222 000.01" should be parsed as -1222000.01 (negative amount)' do
    MoneyParser.parse(" -1 222 000.01").should == BigDecimal("-1222000.01")
  end


  it '"1 222 0o0.01" should be parsed as 1222000.01 (with O instead of 0)' do
    MoneyParser.parse("1 222 0o0.01").should == BigDecimal("1222000.01")
  end


  it '"$1 222 000.01" should be parsed as 1222000.01 (with a dollar sign)' do
    MoneyParser.parse("$1 222 000.01").should == BigDecimal("1222000.01")
  end


  it '"€1 222 000.01" should be parsed as 1222000.01 (with a euro sign)' do
    MoneyParser.parse("€1 222 000.01").should == BigDecimal("1222000.01")
  end


  it '"£1 222 000.01" should be parsed as 1222000.01 (with a pound sign)' do
    MoneyParser.parse("£1 222 000.01").should == BigDecimal("1222000.01")
  end


  it '"₤1 222 000.01" should be parsed as 1222000.01 (with a pound sign)' do
    MoneyParser.parse("₤1 222 000.01").should == BigDecimal("1222000.01")
  end


  it '"1 222 000,01" should be parsed as 1222000.01 ' do
    MoneyParser.parse("1 222 000,01").should == BigDecimal("1222000.01")
  end


  it '" - 1 222 000,01" should be parsed as -1222000.01 (negative amount)' do
    MoneyParser.parse(" - 1 222 000,01").should == BigDecimal("-1222000.01")
  end


  it '"1 222 0o0,01" should be parsed as 1222000.01 (with O instead of 0)' do
    MoneyParser.parse("1 222 0o0,01").should == BigDecimal("1222000.01")
  end


  it '"$1 222 000,01" should be parsed as 1222000.01 (with a dollar sign)' do
    MoneyParser.parse("$1 222 000,01").should == BigDecimal("1222000.01")
  end


  it '"€1 222 000,01" should be parsed as 1222000.01 (with a euro sign)' do
    MoneyParser.parse("€1 222 000,01").should == BigDecimal("1222000.01")
  end


  it '"£1 222 000,01" should be parsed as 1222000.01 (with a pound sign)' do
    MoneyParser.parse("£1 222 000,01").should == BigDecimal("1222000.01")
  end


  it '"₤1 222 000,01" should be parsed as 1222000.01 (with a pound sign)' do
    MoneyParser.parse("₤1 222 000,01").should == BigDecimal("1222000.01")
  end


  it '"2,000.1" should be parsed as 2000.1 ' do
    MoneyParser.parse("2,000.1").should == BigDecimal("2000.1")
  end


  it '"- 2,000.1" should be parsed as -2000.1 (negative amount)' do
    MoneyParser.parse("- 2,000.1").should == BigDecimal("-2000.1")
  end


  it '"2,0o0.1" should be parsed as 2000.1 (with O instead of 0)' do
    MoneyParser.parse("2,0o0.1").should == BigDecimal("2000.1")
  end


  it '"$2,000.1" should be parsed as 2000.1 (with a dollar sign)' do
    MoneyParser.parse("$2,000.1").should == BigDecimal("2000.1")
  end


  it '"€2,000.1" should be parsed as 2000.1 (with a euro sign)' do
    MoneyParser.parse("€2,000.1").should == BigDecimal("2000.1")
  end


  it '"£2,000.1" should be parsed as 2000.1 (with a pound sign)' do
    MoneyParser.parse("£2,000.1").should == BigDecimal("2000.1")
  end


  it '"₤2,000.1" should be parsed as 2000.1 (with a pound sign)' do
    MoneyParser.parse("₤2,000.1").should == BigDecimal("2000.1")
  end


  it '"2.000,1" should be parsed as 2000.1 ' do
    MoneyParser.parse("2.000,1").should == BigDecimal("2000.1")
  end


  it '" -2.000,1" should be parsed as -2000.1 (negative amount)' do
    MoneyParser.parse(" -2.000,1").should == BigDecimal("-2000.1")
  end


  it '"2.00o,1" should be parsed as 2000.1 (with O instead of 0)' do
    MoneyParser.parse("2.00o,1").should == BigDecimal("2000.1")
  end


  it '"$2.000,1" should be parsed as 2000.1 (with a dollar sign)' do
    MoneyParser.parse("$2.000,1").should == BigDecimal("2000.1")
  end


  it '"€2.000,1" should be parsed as 2000.1 (with a euro sign)' do
    MoneyParser.parse("€2.000,1").should == BigDecimal("2000.1")
  end


  it '"£2.000,1" should be parsed as 2000.1 (with a pound sign)' do
    MoneyParser.parse("£2.000,1").should == BigDecimal("2000.1")
  end


  it '"₤2.000,1" should be parsed as 2000.1 (with a pound sign)' do
    MoneyParser.parse("₤2.000,1").should == BigDecimal("2000.1")
  end


  it '"2 000.1" should be parsed as 2000.1 ' do
    MoneyParser.parse("2 000.1").should == BigDecimal("2000.1")
  end


  it '" -2 000.1" should be parsed as -2000.1 (negative amount)' do
    MoneyParser.parse(" -2 000.1").should == BigDecimal("-2000.1")
  end


  it '"2 0o0.1" should be parsed as 2000.1 (with O instead of 0)' do
    MoneyParser.parse("2 0o0.1").should == BigDecimal("2000.1")
  end


  it '"$2 000.1" should be parsed as 2000.1 (with a dollar sign)' do
    MoneyParser.parse("$2 000.1").should == BigDecimal("2000.1")
  end


  it '"€2 000.1" should be parsed as 2000.1 (with a euro sign)' do
    MoneyParser.parse("€2 000.1").should == BigDecimal("2000.1")
  end


  it '"£2 000.1" should be parsed as 2000.1 (with a pound sign)' do
    MoneyParser.parse("£2 000.1").should == BigDecimal("2000.1")
  end


  it '"₤2 000.1" should be parsed as 2000.1 (with a pound sign)' do
    MoneyParser.parse("₤2 000.1").should == BigDecimal("2000.1")
  end


  it '"2 000,1" should be parsed as 2000.1 ' do
    MoneyParser.parse("2 000,1").should == BigDecimal("2000.1")
  end


  it '"-2 000,1" should be parsed as -2000.1 (negative amount)' do
    MoneyParser.parse("-2 000,1").should == BigDecimal("-2000.1")
  end


  it '"2 o00,1" should be parsed as 2000.1 (with O instead of 0)' do
    MoneyParser.parse("2 o00,1").should == BigDecimal("2000.1")
  end


  it '"$2 000,1" should be parsed as 2000.1 (with a dollar sign)' do
    MoneyParser.parse("$2 000,1").should == BigDecimal("2000.1")
  end


  it '"€2 000,1" should be parsed as 2000.1 (with a euro sign)' do
    MoneyParser.parse("€2 000,1").should == BigDecimal("2000.1")
  end


  it '"£2 000,1" should be parsed as 2000.1 (with a pound sign)' do
    MoneyParser.parse("£2 000,1").should == BigDecimal("2000.1")
  end


  it '"₤2 000,1" should be parsed as 2000.1 (with a pound sign)' do
    MoneyParser.parse("₤2 000,1").should == BigDecimal("2000.1")
  end


  it '"1,222,000.1" should be parsed as 1222000.1 ' do
    MoneyParser.parse("1,222,000.1").should == BigDecimal("1222000.1")
  end


  it '"-1,222,000.1" should be parsed as -1222000.1 (negative amount)' do
    MoneyParser.parse("-1,222,000.1").should == BigDecimal("-1222000.1")
  end


  it '"1,222,0o0.1" should be parsed as 1222000.1 (with O instead of 0)' do
    MoneyParser.parse("1,222,0o0.1").should == BigDecimal("1222000.1")
  end


  it '"$1,222,000.1" should be parsed as 1222000.1 (with a dollar sign)' do
    MoneyParser.parse("$1,222,000.1").should == BigDecimal("1222000.1")
  end


  it '"€1,222,000.1" should be parsed as 1222000.1 (with a euro sign)' do
    MoneyParser.parse("€1,222,000.1").should == BigDecimal("1222000.1")
  end


  it '"£1,222,000.1" should be parsed as 1222000.1 (with a pound sign)' do
    MoneyParser.parse("£1,222,000.1").should == BigDecimal("1222000.1")
  end


  it '"₤1,222,000.1" should be parsed as 1222000.1 (with a pound sign)' do
    MoneyParser.parse("₤1,222,000.1").should == BigDecimal("1222000.1")
  end


  it '"1.222.000,1" should be parsed as 1222000.1 ' do
    MoneyParser.parse("1.222.000,1").should == BigDecimal("1222000.1")
  end


  it '"- 1.222.000,1" should be parsed as -1222000.1 (negative amount)' do
    MoneyParser.parse("- 1.222.000,1").should == BigDecimal("-1222000.1")
  end


  it '"1.222.00o,1" should be parsed as 1222000.1 (with O instead of 0)' do
    MoneyParser.parse("1.222.00o,1").should == BigDecimal("1222000.1")
  end


  it '"$1.222.000,1" should be parsed as 1222000.1 (with a dollar sign)' do
    MoneyParser.parse("$1.222.000,1").should == BigDecimal("1222000.1")
  end


  it '"€1.222.000,1" should be parsed as 1222000.1 (with a euro sign)' do
    MoneyParser.parse("€1.222.000,1").should == BigDecimal("1222000.1")
  end


  it '"£1.222.000,1" should be parsed as 1222000.1 (with a pound sign)' do
    MoneyParser.parse("£1.222.000,1").should == BigDecimal("1222000.1")
  end


  it '"₤1.222.000,1" should be parsed as 1222000.1 (with a pound sign)' do
    MoneyParser.parse("₤1.222.000,1").should == BigDecimal("1222000.1")
  end


  it '"1 222 000.1" should be parsed as 1222000.1 ' do
    MoneyParser.parse("1 222 000.1").should == BigDecimal("1222000.1")
  end


  it '" - 1 222 000.1" should be parsed as -1222000.1 (negative amount)' do
    MoneyParser.parse(" - 1 222 000.1").should == BigDecimal("-1222000.1")
  end


  it '"1 222 0o0.1" should be parsed as 1222000.1 (with O instead of 0)' do
    MoneyParser.parse("1 222 0o0.1").should == BigDecimal("1222000.1")
  end


  it '"$1 222 000.1" should be parsed as 1222000.1 (with a dollar sign)' do
    MoneyParser.parse("$1 222 000.1").should == BigDecimal("1222000.1")
  end


  it '"€1 222 000.1" should be parsed as 1222000.1 (with a euro sign)' do
    MoneyParser.parse("€1 222 000.1").should == BigDecimal("1222000.1")
  end


  it '"£1 222 000.1" should be parsed as 1222000.1 (with a pound sign)' do
    MoneyParser.parse("£1 222 000.1").should == BigDecimal("1222000.1")
  end


  it '"₤1 222 000.1" should be parsed as 1222000.1 (with a pound sign)' do
    MoneyParser.parse("₤1 222 000.1").should == BigDecimal("1222000.1")
  end


  it '"1 222 000,1" should be parsed as 1222000.1 ' do
    MoneyParser.parse("1 222 000,1").should == BigDecimal("1222000.1")
  end


  it '" -1 222 000,1" should be parsed as -1222000.1 (negative amount)' do
    MoneyParser.parse(" -1 222 000,1").should == BigDecimal("-1222000.1")
  end


  it '"1 222 00o,1" should be parsed as 1222000.1 (with O instead of 0)' do
    MoneyParser.parse("1 222 00o,1").should == BigDecimal("1222000.1")
  end


  it '"$1 222 000,1" should be parsed as 1222000.1 (with a dollar sign)' do
    MoneyParser.parse("$1 222 000,1").should == BigDecimal("1222000.1")
  end


  it '"€1 222 000,1" should be parsed as 1222000.1 (with a euro sign)' do
    MoneyParser.parse("€1 222 000,1").should == BigDecimal("1222000.1")
  end


  it '"£1 222 000,1" should be parsed as 1222000.1 (with a pound sign)' do
    MoneyParser.parse("£1 222 000,1").should == BigDecimal("1222000.1")
  end


  it '"₤1 222 000,1" should be parsed as 1222000.1 (with a pound sign)' do
    MoneyParser.parse("₤1 222 000,1").should == BigDecimal("1222000.1")
  end


  it '"2,000.10" should be parsed as 2000.1 ' do
    MoneyParser.parse("2,000.10").should == BigDecimal("2000.1")
  end


  it '" -2,000.10" should be parsed as -2000.1 (negative amount)' do
    MoneyParser.parse(" -2,000.10").should == BigDecimal("-2000.1")
  end


  it '"2,0o0.10" should be parsed as 2000.1 (with O instead of 0)' do
    MoneyParser.parse("2,0o0.10").should == BigDecimal("2000.1")
  end


  it '"$2,000.10" should be parsed as 2000.1 (with a dollar sign)' do
    MoneyParser.parse("$2,000.10").should == BigDecimal("2000.1")
  end


  it '"€2,000.10" should be parsed as 2000.1 (with a euro sign)' do
    MoneyParser.parse("€2,000.10").should == BigDecimal("2000.1")
  end


  it '"£2,000.10" should be parsed as 2000.1 (with a pound sign)' do
    MoneyParser.parse("£2,000.10").should == BigDecimal("2000.1")
  end


  it '"₤2,000.10" should be parsed as 2000.1 (with a pound sign)' do
    MoneyParser.parse("₤2,000.10").should == BigDecimal("2000.1")
  end


  it '"2.000,10" should be parsed as 2000.1 ' do
    MoneyParser.parse("2.000,10").should == BigDecimal("2000.1")
  end


  it '" - 2.000,10" should be parsed as -2000.1 (negative amount)' do
    MoneyParser.parse(" - 2.000,10").should == BigDecimal("-2000.1")
  end


  it '"2.00o,10" should be parsed as 2000.1 (with O instead of 0)' do
    MoneyParser.parse("2.00o,10").should == BigDecimal("2000.1")
  end


  it '"$2.000,10" should be parsed as 2000.1 (with a dollar sign)' do
    MoneyParser.parse("$2.000,10").should == BigDecimal("2000.1")
  end


  it '"€2.000,10" should be parsed as 2000.1 (with a euro sign)' do
    MoneyParser.parse("€2.000,10").should == BigDecimal("2000.1")
  end


  it '"£2.000,10" should be parsed as 2000.1 (with a pound sign)' do
    MoneyParser.parse("£2.000,10").should == BigDecimal("2000.1")
  end


  it '"₤2.000,10" should be parsed as 2000.1 (with a pound sign)' do
    MoneyParser.parse("₤2.000,10").should == BigDecimal("2000.1")
  end


  it '"2 000.10" should be parsed as 2000.1 ' do
    MoneyParser.parse("2 000.10").should == BigDecimal("2000.1")
  end


  it '" -2 000.10" should be parsed as -2000.1 (negative amount)' do
    MoneyParser.parse(" -2 000.10").should == BigDecimal("-2000.1")
  end


  it '"2 o00.10" should be parsed as 2000.1 (with O instead of 0)' do
    MoneyParser.parse("2 o00.10").should == BigDecimal("2000.1")
  end


  it '"$2 000.10" should be parsed as 2000.1 (with a dollar sign)' do
    MoneyParser.parse("$2 000.10").should == BigDecimal("2000.1")
  end


  it '"€2 000.10" should be parsed as 2000.1 (with a euro sign)' do
    MoneyParser.parse("€2 000.10").should == BigDecimal("2000.1")
  end


  it '"£2 000.10" should be parsed as 2000.1 (with a pound sign)' do
    MoneyParser.parse("£2 000.10").should == BigDecimal("2000.1")
  end


  it '"₤2 000.10" should be parsed as 2000.1 (with a pound sign)' do
    MoneyParser.parse("₤2 000.10").should == BigDecimal("2000.1")
  end


  it '"2 000,10" should be parsed as 2000.1 ' do
    MoneyParser.parse("2 000,10").should == BigDecimal("2000.1")
  end


  it '" - 2 000,10" should be parsed as -2000.1 (negative amount)' do
    MoneyParser.parse(" - 2 000,10").should == BigDecimal("-2000.1")
  end


  it '"2 00o,10" should be parsed as 2000.1 (with O instead of 0)' do
    MoneyParser.parse("2 00o,10").should == BigDecimal("2000.1")
  end


  it '"$2 000,10" should be parsed as 2000.1 (with a dollar sign)' do
    MoneyParser.parse("$2 000,10").should == BigDecimal("2000.1")
  end


  it '"€2 000,10" should be parsed as 2000.1 (with a euro sign)' do
    MoneyParser.parse("€2 000,10").should == BigDecimal("2000.1")
  end


  it '"£2 000,10" should be parsed as 2000.1 (with a pound sign)' do
    MoneyParser.parse("£2 000,10").should == BigDecimal("2000.1")
  end


  it '"₤2 000,10" should be parsed as 2000.1 (with a pound sign)' do
    MoneyParser.parse("₤2 000,10").should == BigDecimal("2000.1")
  end


  it '"1,222,000.10" should be parsed as 1222000.1 ' do
    MoneyParser.parse("1,222,000.10").should == BigDecimal("1222000.1")
  end


  it '" -1,222,000.10" should be parsed as -1222000.1 (negative amount)' do
    MoneyParser.parse(" -1,222,000.10").should == BigDecimal("-1222000.1")
  end


  it '"1,222,00o.10" should be parsed as 1222000.1 (with O instead of 0)' do
    MoneyParser.parse("1,222,00o.10").should == BigDecimal("1222000.1")
  end


  it '"$1,222,000.10" should be parsed as 1222000.1 (with a dollar sign)' do
    MoneyParser.parse("$1,222,000.10").should == BigDecimal("1222000.1")
  end


  it '"€1,222,000.10" should be parsed as 1222000.1 (with a euro sign)' do
    MoneyParser.parse("€1,222,000.10").should == BigDecimal("1222000.1")
  end


  it '"£1,222,000.10" should be parsed as 1222000.1 (with a pound sign)' do
    MoneyParser.parse("£1,222,000.10").should == BigDecimal("1222000.1")
  end


  it '"₤1,222,000.10" should be parsed as 1222000.1 (with a pound sign)' do
    MoneyParser.parse("₤1,222,000.10").should == BigDecimal("1222000.1")
  end


  it '"1.222.000,10" should be parsed as 1222000.1 ' do
    MoneyParser.parse("1.222.000,10").should == BigDecimal("1222000.1")
  end


  it '" - 1.222.000,10" should be parsed as -1222000.1 (negative amount)' do
    MoneyParser.parse(" - 1.222.000,10").should == BigDecimal("-1222000.1")
  end


  it '"1.222.o00,10" should be parsed as 1222000.1 (with O instead of 0)' do
    MoneyParser.parse("1.222.o00,10").should == BigDecimal("1222000.1")
  end


  it '"$1.222.000,10" should be parsed as 1222000.1 (with a dollar sign)' do
    MoneyParser.parse("$1.222.000,10").should == BigDecimal("1222000.1")
  end


  it '"€1.222.000,10" should be parsed as 1222000.1 (with a euro sign)' do
    MoneyParser.parse("€1.222.000,10").should == BigDecimal("1222000.1")
  end


  it '"£1.222.000,10" should be parsed as 1222000.1 (with a pound sign)' do
    MoneyParser.parse("£1.222.000,10").should == BigDecimal("1222000.1")
  end


  it '"₤1.222.000,10" should be parsed as 1222000.1 (with a pound sign)' do
    MoneyParser.parse("₤1.222.000,10").should == BigDecimal("1222000.1")
  end


  it '"1 222 000.10" should be parsed as 1222000.1 ' do
    MoneyParser.parse("1 222 000.10").should == BigDecimal("1222000.1")
  end


  it '"- 1 222 000.10" should be parsed as -1222000.1 (negative amount)' do
    MoneyParser.parse("- 1 222 000.10").should == BigDecimal("-1222000.1")
  end


  it '"1 222 o00.10" should be parsed as 1222000.1 (with O instead of 0)' do
    MoneyParser.parse("1 222 o00.10").should == BigDecimal("1222000.1")
  end


  it '"$1 222 000.10" should be parsed as 1222000.1 (with a dollar sign)' do
    MoneyParser.parse("$1 222 000.10").should == BigDecimal("1222000.1")
  end


  it '"€1 222 000.10" should be parsed as 1222000.1 (with a euro sign)' do
    MoneyParser.parse("€1 222 000.10").should == BigDecimal("1222000.1")
  end


  it '"£1 222 000.10" should be parsed as 1222000.1 (with a pound sign)' do
    MoneyParser.parse("£1 222 000.10").should == BigDecimal("1222000.1")
  end


  it '"₤1 222 000.10" should be parsed as 1222000.1 (with a pound sign)' do
    MoneyParser.parse("₤1 222 000.10").should == BigDecimal("1222000.1")
  end


  it '"1 222 000,10" should be parsed as 1222000.1 ' do
    MoneyParser.parse("1 222 000,10").should == BigDecimal("1222000.1")
  end


  it '"-1 222 000,10" should be parsed as -1222000.1 (negative amount)' do
    MoneyParser.parse("-1 222 000,10").should == BigDecimal("-1222000.1")
  end


  it '"1 222 o00,10" should be parsed as 1222000.1 (with O instead of 0)' do
    MoneyParser.parse("1 222 o00,10").should == BigDecimal("1222000.1")
  end


  it '"$1 222 000,10" should be parsed as 1222000.1 (with a dollar sign)' do
    MoneyParser.parse("$1 222 000,10").should == BigDecimal("1222000.1")
  end


  it '"€1 222 000,10" should be parsed as 1222000.1 (with a euro sign)' do
    MoneyParser.parse("€1 222 000,10").should == BigDecimal("1222000.1")
  end


  it '"£1 222 000,10" should be parsed as 1222000.1 (with a pound sign)' do
    MoneyParser.parse("£1 222 000,10").should == BigDecimal("1222000.1")
  end


  it '"₤1 222 000,10" should be parsed as 1222000.1 (with a pound sign)' do
    MoneyParser.parse("₤1 222 000,10").should == BigDecimal("1222000.1")
  end


  it '"1 222 000" should be parsed as 1222000.0 ' do
    MoneyParser.parse("1 222 000").should == BigDecimal("1222000.0")
  end


  it '" -1 222 000" should be parsed as -1222000.0 (negative amount)' do
    MoneyParser.parse(" -1 222 000").should == BigDecimal("-1222000.0")
  end


  it '"1 222 0o0" should be parsed as 1222000.0 (with O instead of 0)' do
    MoneyParser.parse("1 222 0o0").should == BigDecimal("1222000.0")
  end


  it '"$1 222 000" should be parsed as 1222000.0 (with a dollar sign)' do
    MoneyParser.parse("$1 222 000").should == BigDecimal("1222000.0")
  end


  it '"€1 222 000" should be parsed as 1222000.0 (with a euro sign)' do
    MoneyParser.parse("€1 222 000").should == BigDecimal("1222000.0")
  end


  it '"£1 222 000" should be parsed as 1222000.0 (with a pound sign)' do
    MoneyParser.parse("£1 222 000").should == BigDecimal("1222000.0")
  end


  it '"₤1 222 000" should be parsed as 1222000.0 (with a pound sign)' do
    MoneyParser.parse("₤1 222 000").should == BigDecimal("1222000.0")
  end


  it '"1 222 000" should be parsed as 1222000.0 ' do
    MoneyParser.parse("1 222 000").should == BigDecimal("1222000.0")
  end


  it '" -1 222 000" should be parsed as -1222000.0 (negative amount)' do
    MoneyParser.parse(" -1 222 000").should == BigDecimal("-1222000.0")
  end


  it '"1 222 o00" should be parsed as 1222000.0 (with O instead of 0)' do
    MoneyParser.parse("1 222 o00").should == BigDecimal("1222000.0")
  end


  it '"$1 222 000" should be parsed as 1222000.0 (with a dollar sign)' do
    MoneyParser.parse("$1 222 000").should == BigDecimal("1222000.0")
  end


  it '"€1 222 000" should be parsed as 1222000.0 (with a euro sign)' do
    MoneyParser.parse("€1 222 000").should == BigDecimal("1222000.0")
  end


  it '"£1 222 000" should be parsed as 1222000.0 (with a pound sign)' do
    MoneyParser.parse("£1 222 000").should == BigDecimal("1222000.0")
  end


  it '"₤1 222 000" should be parsed as 1222000.0 (with a pound sign)' do
    MoneyParser.parse("₤1 222 000").should == BigDecimal("1222000.0")
  end


  it '"1,222,000" should be parsed as 1222000.0 ' do
    MoneyParser.parse("1,222,000").should == BigDecimal("1222000.0")
  end


  it '" -1,222,000" should be parsed as -1222000.0 (negative amount)' do
    MoneyParser.parse(" -1,222,000").should == BigDecimal("-1222000.0")
  end


  it '"1,222,o00" should be parsed as 1222000.0 (with O instead of 0)' do
    MoneyParser.parse("1,222,o00").should == BigDecimal("1222000.0")
  end


  it '"$1,222,000" should be parsed as 1222000.0 (with a dollar sign)' do
    MoneyParser.parse("$1,222,000").should == BigDecimal("1222000.0")
  end


  it '"€1,222,000" should be parsed as 1222000.0 (with a euro sign)' do
    MoneyParser.parse("€1,222,000").should == BigDecimal("1222000.0")
  end


  it '"£1,222,000" should be parsed as 1222000.0 (with a pound sign)' do
    MoneyParser.parse("£1,222,000").should == BigDecimal("1222000.0")
  end


  it '"₤1,222,000" should be parsed as 1222000.0 (with a pound sign)' do
    MoneyParser.parse("₤1,222,000").should == BigDecimal("1222000.0")
  end


  it '"1.222.000" should be parsed as 1222000.0 ' do
    MoneyParser.parse("1.222.000").should == BigDecimal("1222000.0")
  end


  it '" -1.222.000" should be parsed as -1222000.0 (negative amount)' do
    MoneyParser.parse(" -1.222.000").should == BigDecimal("-1222000.0")
  end


  it '"1.222.00o" should be parsed as 1222000.0 (with O instead of 0)' do
    MoneyParser.parse("1.222.00o").should == BigDecimal("1222000.0")
  end


  it '"$1.222.000" should be parsed as 1222000.0 (with a dollar sign)' do
    MoneyParser.parse("$1.222.000").should == BigDecimal("1222000.0")
  end


  it '"€1.222.000" should be parsed as 1222000.0 (with a euro sign)' do
    MoneyParser.parse("€1.222.000").should == BigDecimal("1222000.0")
  end


  it '"£1.222.000" should be parsed as 1222000.0 (with a pound sign)' do
    MoneyParser.parse("£1.222.000").should == BigDecimal("1222000.0")
  end


  it '"₤1.222.000" should be parsed as 1222000.0 (with a pound sign)' do
    MoneyParser.parse("₤1.222.000").should == BigDecimal("1222000.0")
  end


  it '"1 222 000" should be parsed as 1222000.0 ' do
    MoneyParser.parse("1 222 000").should == BigDecimal("1222000.0")
  end


  it '"- 1 222 000" should be parsed as -1222000.0 (negative amount)' do
    MoneyParser.parse("- 1 222 000").should == BigDecimal("-1222000.0")
  end


  it '"1 222 0o0" should be parsed as 1222000.0 (with O instead of 0)' do
    MoneyParser.parse("1 222 0o0").should == BigDecimal("1222000.0")
  end


  it '"$1 222 000" should be parsed as 1222000.0 (with a dollar sign)' do
    MoneyParser.parse("$1 222 000").should == BigDecimal("1222000.0")
  end


  it '"€1 222 000" should be parsed as 1222000.0 (with a euro sign)' do
    MoneyParser.parse("€1 222 000").should == BigDecimal("1222000.0")
  end


  it '"£1 222 000" should be parsed as 1222000.0 (with a pound sign)' do
    MoneyParser.parse("£1 222 000").should == BigDecimal("1222000.0")
  end


  it '"₤1 222 000" should be parsed as 1222000.0 (with a pound sign)' do
    MoneyParser.parse("₤1 222 000").should == BigDecimal("1222000.0")
  end


  it '"1 222 000" should be parsed as 1222000.0 ' do
    MoneyParser.parse("1 222 000").should == BigDecimal("1222000.0")
  end


  it '" - 1 222 000" should be parsed as -1222000.0 (negative amount)' do
    MoneyParser.parse(" - 1 222 000").should == BigDecimal("-1222000.0")
  end


  it '"1 222 00o" should be parsed as 1222000.0 (with O instead of 0)' do
    MoneyParser.parse("1 222 00o").should == BigDecimal("1222000.0")
  end


  it '"$1 222 000" should be parsed as 1222000.0 (with a dollar sign)' do
    MoneyParser.parse("$1 222 000").should == BigDecimal("1222000.0")
  end


  it '"€1 222 000" should be parsed as 1222000.0 (with a euro sign)' do
    MoneyParser.parse("€1 222 000").should == BigDecimal("1222000.0")
  end


  it '"£1 222 000" should be parsed as 1222000.0 (with a pound sign)' do
    MoneyParser.parse("£1 222 000").should == BigDecimal("1222000.0")
  end


  it '"₤1 222 000" should be parsed as 1222000.0 (with a pound sign)' do
    MoneyParser.parse("₤1 222 000").should == BigDecimal("1222000.0")
  end


  it '"2,123" should be parsed as 2123.0 ' do
    MoneyParser.parse("2,123").should == BigDecimal("2123.0")
  end


  it '" - 2,123" should be parsed as -2123.0 (negative amount)' do
    MoneyParser.parse(" - 2,123").should == BigDecimal("-2123.0")
  end


  it '"$2,123" should be parsed as 2123.0 (with a dollar sign)' do
    MoneyParser.parse("$2,123").should == BigDecimal("2123.0")
  end


  it '"€2,123" should be parsed as 2123.0 (with a euro sign)' do
    MoneyParser.parse("€2,123").should == BigDecimal("2123.0")
  end


  it '"£2,123" should be parsed as 2123.0 (with a pound sign)' do
    MoneyParser.parse("£2,123").should == BigDecimal("2123.0")
  end


  it '"₤2,123" should be parsed as 2123.0 (with a pound sign)' do
    MoneyParser.parse("₤2,123").should == BigDecimal("2123.0")
  end


  it '"2.123" should be parsed as 2123.0 ' do
    MoneyParser.parse("2.123").should == BigDecimal("2123.0")
  end


  it '" - 2.123" should be parsed as -2123.0 (negative amount)' do
    MoneyParser.parse(" - 2.123").should == BigDecimal("-2123.0")
  end


  it '"$2.123" should be parsed as 2123.0 (with a dollar sign)' do
    MoneyParser.parse("$2.123").should == BigDecimal("2123.0")
  end


  it '"€2.123" should be parsed as 2123.0 (with a euro sign)' do
    MoneyParser.parse("€2.123").should == BigDecimal("2123.0")
  end


  it '"£2.123" should be parsed as 2123.0 (with a pound sign)' do
    MoneyParser.parse("£2.123").should == BigDecimal("2123.0")
  end


  it '"₤2.123" should be parsed as 2123.0 (with a pound sign)' do
    MoneyParser.parse("₤2.123").should == BigDecimal("2123.0")
  end


  it '"2,12" should be parsed as 2.12 ' do
    MoneyParser.parse("2,12").should == BigDecimal("2.12")
  end


  it '"- 2,12" should be parsed as -2.12 (negative amount)' do
    MoneyParser.parse("- 2,12").should == BigDecimal("-2.12")
  end


  it '"$2,12" should be parsed as 2.12 (with a dollar sign)' do
    MoneyParser.parse("$2,12").should == BigDecimal("2.12")
  end


  it '"€2,12" should be parsed as 2.12 (with a euro sign)' do
    MoneyParser.parse("€2,12").should == BigDecimal("2.12")
  end


  it '"£2,12" should be parsed as 2.12 (with a pound sign)' do
    MoneyParser.parse("£2,12").should == BigDecimal("2.12")
  end


  it '"₤2,12" should be parsed as 2.12 (with a pound sign)' do
    MoneyParser.parse("₤2,12").should == BigDecimal("2.12")
  end


  it '"" should be parsed as nil ' do
    MoneyParser.parse("").should == nil
  end


  it '"$" should be parsed as nil (with a dollar sign)' do
    MoneyParser.parse("$").should == nil
  end


  it '"€" should be parsed as nil (with a euro sign)' do
    MoneyParser.parse("€").should == nil
  end


  it '"£" should be parsed as nil (with a pound sign)' do
    MoneyParser.parse("£").should == nil
  end


  it '"₤" should be parsed as nil (with a pound sign)' do
    MoneyParser.parse("₤").should == nil
  end


  it '"1" should be parsed as 1.0 ' do
    MoneyParser.parse("1").should == BigDecimal("1.0")
  end


  it '"-1" should be parsed as -1.0 (negative amount)' do
    MoneyParser.parse("-1").should == BigDecimal("-1.0")
  end


  it '"$1" should be parsed as 1.0 (with a dollar sign)' do
    MoneyParser.parse("$1").should == BigDecimal("1.0")
  end


  it '"€1" should be parsed as 1.0 (with a euro sign)' do
    MoneyParser.parse("€1").should == BigDecimal("1.0")
  end


  it '"£1" should be parsed as 1.0 (with a pound sign)' do
    MoneyParser.parse("£1").should == BigDecimal("1.0")
  end


  it '"₤1" should be parsed as 1.0 (with a pound sign)' do
    MoneyParser.parse("₤1").should == BigDecimal("1.0")
  end


  it '" " should be parsed as nil ' do
    MoneyParser.parse(" ").should == nil
  end


  it '"$ " should be parsed as nil (with a dollar sign)' do
    MoneyParser.parse("$ ").should == nil
  end


  it '"€ " should be parsed as nil (with a euro sign)' do
    MoneyParser.parse("€ ").should == nil
  end


  it '"£ " should be parsed as nil (with a pound sign)' do
    MoneyParser.parse("£ ").should == nil
  end


  it '"₤ " should be parsed as nil (with a pound sign)' do
    MoneyParser.parse("₤ ").should == nil
  end


  it '"hello" should be parsed as nil ' do
    MoneyParser.parse("hello").should == nil
  end


  it '"$hello" should be parsed as nil (with a dollar sign)' do
    MoneyParser.parse("$hello").should == nil
  end


  it '"€hello" should be parsed as nil (with a euro sign)' do
    MoneyParser.parse("€hello").should == nil
  end


  it '"£hello" should be parsed as nil (with a pound sign)' do
    MoneyParser.parse("£hello").should == nil
  end


  it '"₤hello" should be parsed as nil (with a pound sign)' do
    MoneyParser.parse("₤hello").should == nil
  end
end
