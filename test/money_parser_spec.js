var assert = require("assert")
var parseMoney = require('../vendor/assets/javascripts/parse_money');

describe('moneyParse', function(){

  it('null should be parsed as null ', function(){
    assert.equal(null, parseMoney(null));
  });

  it('"," should be parsed as null ', function(){
    assert.equal(null, parseMoney(","));
  });

  it('"$," should be parsed as null (with a dollar sign)', function(){
    assert.equal(null, parseMoney("$,"));
  });

  it('"€," should be parsed as null (with a euro sign)', function(){
    assert.equal(null, parseMoney("€,"));
  });

  it('"£," should be parsed as null (with a pound sign)', function(){
    assert.equal(null, parseMoney("£,"));
  });

  it('"₤," should be parsed as null (with a pound sign)', function(){
    assert.equal(null, parseMoney("₤,"));
  });

  it('",," should be parsed as null ', function(){
    assert.equal(null, parseMoney(",,"));
  });

  it('"$,," should be parsed as null (with a dollar sign)', function(){
    assert.equal(null, parseMoney("$,,"));
  });

  it('"€,," should be parsed as null (with a euro sign)', function(){
    assert.equal(null, parseMoney("€,,"));
  });

  it('"£,," should be parsed as null (with a pound sign)', function(){
    assert.equal(null, parseMoney("£,,"));
  });

  it('"₤,," should be parsed as null (with a pound sign)', function(){
    assert.equal(null, parseMoney("₤,,"));
  });

  it('"." should be parsed as null ', function(){
    assert.equal(null, parseMoney("."));
  });

  it('"$." should be parsed as null (with a dollar sign)', function(){
    assert.equal(null, parseMoney("$."));
  });

  it('"€." should be parsed as null (with a euro sign)', function(){
    assert.equal(null, parseMoney("€."));
  });

  it('"£." should be parsed as null (with a pound sign)', function(){
    assert.equal(null, parseMoney("£."));
  });

  it('"₤." should be parsed as null (with a pound sign)', function(){
    assert.equal(null, parseMoney("₤."));
  });

  it('".." should be parsed as null ', function(){
    assert.equal(null, parseMoney(".."));
  });

  it('"$.." should be parsed as null (with a dollar sign)', function(){
    assert.equal(null, parseMoney("$.."));
  });

  it('"€.." should be parsed as null (with a euro sign)', function(){
    assert.equal(null, parseMoney("€.."));
  });

  it('"£.." should be parsed as null (with a pound sign)', function(){
    assert.equal(null, parseMoney("£.."));
  });

  it('"₤.." should be parsed as null (with a pound sign)', function(){
    assert.equal(null, parseMoney("₤.."));
  });

  it('"2000.01" should be parsed as 2000.01 ', function(){
    assert.equal(2000.01, parseMoney("2000.01"));
  });

  it('"-2000.01" should be parsed as -2000.01 (negative amount)', function(){
    assert.equal(-2000.01, parseMoney("-2000.01"));
  });

  it('"20o0.01" should be parsed as 2000.01 (with O instead of 0)', function(){
    assert.equal(2000.01, parseMoney("20o0.01"));
  });

  it('"$2000.01" should be parsed as 2000.01 (with a dollar sign)', function(){
    assert.equal(2000.01, parseMoney("$2000.01"));
  });

  it('"€2000.01" should be parsed as 2000.01 (with a euro sign)', function(){
    assert.equal(2000.01, parseMoney("€2000.01"));
  });

  it('"£2000.01" should be parsed as 2000.01 (with a pound sign)', function(){
    assert.equal(2000.01, parseMoney("£2000.01"));
  });

  it('"₤2000.01" should be parsed as 2000.01 (with a pound sign)', function(){
    assert.equal(2000.01, parseMoney("₤2000.01"));
  });

  it('"2000,01" should be parsed as 2000.01 ', function(){
    assert.equal(2000.01, parseMoney("2000,01"));
  });

  it('"-2000,01" should be parsed as -2000.01 (negative amount)', function(){
    assert.equal(-2000.01, parseMoney("-2000,01"));
  });

  it('"2000,o1" should be parsed as 2000.01 (with O instead of 0)', function(){
    assert.equal(2000.01, parseMoney("2000,o1"));
  });

  it('"$2000,01" should be parsed as 2000.01 (with a dollar sign)', function(){
    assert.equal(2000.01, parseMoney("$2000,01"));
  });

  it('"€2000,01" should be parsed as 2000.01 (with a euro sign)', function(){
    assert.equal(2000.01, parseMoney("€2000,01"));
  });

  it('"£2000,01" should be parsed as 2000.01 (with a pound sign)', function(){
    assert.equal(2000.01, parseMoney("£2000,01"));
  });

  it('"₤2000,01" should be parsed as 2000.01 (with a pound sign)', function(){
    assert.equal(2000.01, parseMoney("₤2000,01"));
  });

  it('"2000.1" should be parsed as 2000.1 ', function(){
    assert.equal(2000.1, parseMoney("2000.1"));
  });

  it('"-2000.1" should be parsed as -2000.1 (negative amount)', function(){
    assert.equal(-2000.1, parseMoney("-2000.1"));
  });

  it('"20o0.1" should be parsed as 2000.1 (with O instead of 0)', function(){
    assert.equal(2000.1, parseMoney("20o0.1"));
  });

  it('"$2000.1" should be parsed as 2000.1 (with a dollar sign)', function(){
    assert.equal(2000.1, parseMoney("$2000.1"));
  });

  it('"€2000.1" should be parsed as 2000.1 (with a euro sign)', function(){
    assert.equal(2000.1, parseMoney("€2000.1"));
  });

  it('"£2000.1" should be parsed as 2000.1 (with a pound sign)', function(){
    assert.equal(2000.1, parseMoney("£2000.1"));
  });

  it('"₤2000.1" should be parsed as 2000.1 (with a pound sign)', function(){
    assert.equal(2000.1, parseMoney("₤2000.1"));
  });

  it('"2000,1" should be parsed as 2000.1 ', function(){
    assert.equal(2000.1, parseMoney("2000,1"));
  });

  it('" -2000,1" should be parsed as -2000.1 (negative amount)', function(){
    assert.equal(-2000.1, parseMoney(" -2000,1"));
  });

  it('"2o00,1" should be parsed as 2000.1 (with O instead of 0)', function(){
    assert.equal(2000.1, parseMoney("2o00,1"));
  });

  it('"$2000,1" should be parsed as 2000.1 (with a dollar sign)', function(){
    assert.equal(2000.1, parseMoney("$2000,1"));
  });

  it('"€2000,1" should be parsed as 2000.1 (with a euro sign)', function(){
    assert.equal(2000.1, parseMoney("€2000,1"));
  });

  it('"£2000,1" should be parsed as 2000.1 (with a pound sign)', function(){
    assert.equal(2000.1, parseMoney("£2000,1"));
  });

  it('"₤2000,1" should be parsed as 2000.1 (with a pound sign)', function(){
    assert.equal(2000.1, parseMoney("₤2000,1"));
  });

  it('"2000" should be parsed as 2000.0 ', function(){
    assert.equal(2000.0, parseMoney("2000"));
  });

  it('" - 2000" should be parsed as -2000.0 (negative amount)', function(){
    assert.equal(-2000.0, parseMoney(" - 2000"));
  });

  it('"2o00" should be parsed as 2000.0 (with O instead of 0)', function(){
    assert.equal(2000.0, parseMoney("2o00"));
  });

  it('"$2000" should be parsed as 2000.0 (with a dollar sign)', function(){
    assert.equal(2000.0, parseMoney("$2000"));
  });

  it('"€2000" should be parsed as 2000.0 (with a euro sign)', function(){
    assert.equal(2000.0, parseMoney("€2000"));
  });

  it('"£2000" should be parsed as 2000.0 (with a pound sign)', function(){
    assert.equal(2000.0, parseMoney("£2000"));
  });

  it('"₤2000" should be parsed as 2000.0 (with a pound sign)', function(){
    assert.equal(2000.0, parseMoney("₤2000"));
  });

  it('".01" should be parsed as 0.01 ', function(){
    assert.equal(0.01, parseMoney(".01"));
  });

  it('"-.01" should be parsed as -0.01 (negative amount)', function(){
    assert.equal(-0.01, parseMoney("-.01"));
  });

  it('".o1" should be parsed as 0.01 (with O instead of 0)', function(){
    assert.equal(0.01, parseMoney(".o1"));
  });

  it('"$.01" should be parsed as 0.01 (with a dollar sign)', function(){
    assert.equal(0.01, parseMoney("$.01"));
  });

  it('"€.01" should be parsed as 0.01 (with a euro sign)', function(){
    assert.equal(0.01, parseMoney("€.01"));
  });

  it('"£.01" should be parsed as 0.01 (with a pound sign)', function(){
    assert.equal(0.01, parseMoney("£.01"));
  });

  it('"₤.01" should be parsed as 0.01 (with a pound sign)', function(){
    assert.equal(0.01, parseMoney("₤.01"));
  });

  it('",01" should be parsed as 0.01 ', function(){
    assert.equal(0.01, parseMoney(",01"));
  });

  it('" -,01" should be parsed as -0.01 (negative amount)', function(){
    assert.equal(-0.01, parseMoney(" -,01"));
  });

  it('",o1" should be parsed as 0.01 (with O instead of 0)', function(){
    assert.equal(0.01, parseMoney(",o1"));
  });

  it('"$,01" should be parsed as 0.01 (with a dollar sign)', function(){
    assert.equal(0.01, parseMoney("$,01"));
  });

  it('"€,01" should be parsed as 0.01 (with a euro sign)', function(){
    assert.equal(0.01, parseMoney("€,01"));
  });

  it('"£,01" should be parsed as 0.01 (with a pound sign)', function(){
    assert.equal(0.01, parseMoney("£,01"));
  });

  it('"₤,01" should be parsed as 0.01 (with a pound sign)', function(){
    assert.equal(0.01, parseMoney("₤,01"));
  });

  it('"0.01" should be parsed as 0.01 ', function(){
    assert.equal(0.01, parseMoney("0.01"));
  });

  it('" -0.01" should be parsed as -0.01 (negative amount)', function(){
    assert.equal(-0.01, parseMoney(" -0.01"));
  });

  it('"o.01" should be parsed as 0.01 (with O instead of 0)', function(){
    assert.equal(0.01, parseMoney("o.01"));
  });

  it('"$0.01" should be parsed as 0.01 (with a dollar sign)', function(){
    assert.equal(0.01, parseMoney("$0.01"));
  });

  it('"€0.01" should be parsed as 0.01 (with a euro sign)', function(){
    assert.equal(0.01, parseMoney("€0.01"));
  });

  it('"£0.01" should be parsed as 0.01 (with a pound sign)', function(){
    assert.equal(0.01, parseMoney("£0.01"));
  });

  it('"₤0.01" should be parsed as 0.01 (with a pound sign)', function(){
    assert.equal(0.01, parseMoney("₤0.01"));
  });

  it('"0,01" should be parsed as 0.01 ', function(){
    assert.equal(0.01, parseMoney("0,01"));
  });

  it('" - 0,01" should be parsed as -0.01 (negative amount)', function(){
    assert.equal(-0.01, parseMoney(" - 0,01"));
  });

  it('"o,01" should be parsed as 0.01 (with O instead of 0)', function(){
    assert.equal(0.01, parseMoney("o,01"));
  });

  it('"$0,01" should be parsed as 0.01 (with a dollar sign)', function(){
    assert.equal(0.01, parseMoney("$0,01"));
  });

  it('"€0,01" should be parsed as 0.01 (with a euro sign)', function(){
    assert.equal(0.01, parseMoney("€0,01"));
  });

  it('"£0,01" should be parsed as 0.01 (with a pound sign)', function(){
    assert.equal(0.01, parseMoney("£0,01"));
  });

  it('"₤0,01" should be parsed as 0.01 (with a pound sign)', function(){
    assert.equal(0.01, parseMoney("₤0,01"));
  });

  it('".1" should be parsed as 0.1 ', function(){
    assert.equal(0.1, parseMoney(".1"));
  });

  it('" - .1" should be parsed as -0.1 (negative amount)', function(){
    assert.equal(-0.1, parseMoney(" - .1"));
  });

  it('"$.1" should be parsed as 0.1 (with a dollar sign)', function(){
    assert.equal(0.1, parseMoney("$.1"));
  });

  it('"€.1" should be parsed as 0.1 (with a euro sign)', function(){
    assert.equal(0.1, parseMoney("€.1"));
  });

  it('"£.1" should be parsed as 0.1 (with a pound sign)', function(){
    assert.equal(0.1, parseMoney("£.1"));
  });

  it('"₤.1" should be parsed as 0.1 (with a pound sign)', function(){
    assert.equal(0.1, parseMoney("₤.1"));
  });

  it('",1" should be parsed as 0.1 ', function(){
    assert.equal(0.1, parseMoney(",1"));
  });

  it('"- ,1" should be parsed as -0.1 (negative amount)', function(){
    assert.equal(-0.1, parseMoney("- ,1"));
  });

  it('"$,1" should be parsed as 0.1 (with a dollar sign)', function(){
    assert.equal(0.1, parseMoney("$,1"));
  });

  it('"€,1" should be parsed as 0.1 (with a euro sign)', function(){
    assert.equal(0.1, parseMoney("€,1"));
  });

  it('"£,1" should be parsed as 0.1 (with a pound sign)', function(){
    assert.equal(0.1, parseMoney("£,1"));
  });

  it('"₤,1" should be parsed as 0.1 (with a pound sign)', function(){
    assert.equal(0.1, parseMoney("₤,1"));
  });

  it('"0.1" should be parsed as 0.1 ', function(){
    assert.equal(0.1, parseMoney("0.1"));
  });

  it('" - 0.1" should be parsed as -0.1 (negative amount)', function(){
    assert.equal(-0.1, parseMoney(" - 0.1"));
  });

  it('"o.1" should be parsed as 0.1 (with O instead of 0)', function(){
    assert.equal(0.1, parseMoney("o.1"));
  });

  it('"$0.1" should be parsed as 0.1 (with a dollar sign)', function(){
    assert.equal(0.1, parseMoney("$0.1"));
  });

  it('"€0.1" should be parsed as 0.1 (with a euro sign)', function(){
    assert.equal(0.1, parseMoney("€0.1"));
  });

  it('"£0.1" should be parsed as 0.1 (with a pound sign)', function(){
    assert.equal(0.1, parseMoney("£0.1"));
  });

  it('"₤0.1" should be parsed as 0.1 (with a pound sign)', function(){
    assert.equal(0.1, parseMoney("₤0.1"));
  });

  it('"0,1" should be parsed as 0.1 ', function(){
    assert.equal(0.1, parseMoney("0,1"));
  });

  it('"- 0,1" should be parsed as -0.1 (negative amount)', function(){
    assert.equal(-0.1, parseMoney("- 0,1"));
  });

  it('"o,1" should be parsed as 0.1 (with O instead of 0)', function(){
    assert.equal(0.1, parseMoney("o,1"));
  });

  it('"$0,1" should be parsed as 0.1 (with a dollar sign)', function(){
    assert.equal(0.1, parseMoney("$0,1"));
  });

  it('"€0,1" should be parsed as 0.1 (with a euro sign)', function(){
    assert.equal(0.1, parseMoney("€0,1"));
  });

  it('"£0,1" should be parsed as 0.1 (with a pound sign)', function(){
    assert.equal(0.1, parseMoney("£0,1"));
  });

  it('"₤0,1" should be parsed as 0.1 (with a pound sign)', function(){
    assert.equal(0.1, parseMoney("₤0,1"));
  });

  it('"2,000.01" should be parsed as 2000.01 ', function(){
    assert.equal(2000.01, parseMoney("2,000.01"));
  });

  it('"-2,000.01" should be parsed as -2000.01 (negative amount)', function(){
    assert.equal(-2000.01, parseMoney("-2,000.01"));
  });

  it('"2,0o0.01" should be parsed as 2000.01 (with O instead of 0)', function(){
    assert.equal(2000.01, parseMoney("2,0o0.01"));
  });

  it('"$2,000.01" should be parsed as 2000.01 (with a dollar sign)', function(){
    assert.equal(2000.01, parseMoney("$2,000.01"));
  });

  it('"€2,000.01" should be parsed as 2000.01 (with a euro sign)', function(){
    assert.equal(2000.01, parseMoney("€2,000.01"));
  });

  it('"£2,000.01" should be parsed as 2000.01 (with a pound sign)', function(){
    assert.equal(2000.01, parseMoney("£2,000.01"));
  });

  it('"₤2,000.01" should be parsed as 2000.01 (with a pound sign)', function(){
    assert.equal(2000.01, parseMoney("₤2,000.01"));
  });

  it('"2.000,01" should be parsed as 2000.01 ', function(){
    assert.equal(2000.01, parseMoney("2.000,01"));
  });

  it('"-2.000,01" should be parsed as -2000.01 (negative amount)', function(){
    assert.equal(-2000.01, parseMoney("-2.000,01"));
  });

  it('"2.o00,01" should be parsed as 2000.01 (with O instead of 0)', function(){
    assert.equal(2000.01, parseMoney("2.o00,01"));
  });

  it('"$2.000,01" should be parsed as 2000.01 (with a dollar sign)', function(){
    assert.equal(2000.01, parseMoney("$2.000,01"));
  });

  it('"€2.000,01" should be parsed as 2000.01 (with a euro sign)', function(){
    assert.equal(2000.01, parseMoney("€2.000,01"));
  });

  it('"£2.000,01" should be parsed as 2000.01 (with a pound sign)', function(){
    assert.equal(2000.01, parseMoney("£2.000,01"));
  });

  it('"₤2.000,01" should be parsed as 2000.01 (with a pound sign)', function(){
    assert.equal(2000.01, parseMoney("₤2.000,01"));
  });

  it('"2 000.01" should be parsed as 2000.01 ', function(){
    assert.equal(2000.01, parseMoney("2 000.01"));
  });

  it('"- 2 000.01" should be parsed as -2000.01 (negative amount)', function(){
    assert.equal(-2000.01, parseMoney("- 2 000.01"));
  });

  it('"2 000.o1" should be parsed as 2000.01 (with O instead of 0)', function(){
    assert.equal(2000.01, parseMoney("2 000.o1"));
  });

  it('"$2 000.01" should be parsed as 2000.01 (with a dollar sign)', function(){
    assert.equal(2000.01, parseMoney("$2 000.01"));
  });

  it('"€2 000.01" should be parsed as 2000.01 (with a euro sign)', function(){
    assert.equal(2000.01, parseMoney("€2 000.01"));
  });

  it('"£2 000.01" should be parsed as 2000.01 (with a pound sign)', function(){
    assert.equal(2000.01, parseMoney("£2 000.01"));
  });

  it('"₤2 000.01" should be parsed as 2000.01 (with a pound sign)', function(){
    assert.equal(2000.01, parseMoney("₤2 000.01"));
  });

  it('"2 000,01" should be parsed as 2000.01 ', function(){
    assert.equal(2000.01, parseMoney("2 000,01"));
  });

  it('"- 2 000,01" should be parsed as -2000.01 (negative amount)', function(){
    assert.equal(-2000.01, parseMoney("- 2 000,01"));
  });

  it('"2 000,o1" should be parsed as 2000.01 (with O instead of 0)', function(){
    assert.equal(2000.01, parseMoney("2 000,o1"));
  });

  it('"$2 000,01" should be parsed as 2000.01 (with a dollar sign)', function(){
    assert.equal(2000.01, parseMoney("$2 000,01"));
  });

  it('"€2 000,01" should be parsed as 2000.01 (with a euro sign)', function(){
    assert.equal(2000.01, parseMoney("€2 000,01"));
  });

  it('"£2 000,01" should be parsed as 2000.01 (with a pound sign)', function(){
    assert.equal(2000.01, parseMoney("£2 000,01"));
  });

  it('"₤2 000,01" should be parsed as 2000.01 (with a pound sign)', function(){
    assert.equal(2000.01, parseMoney("₤2 000,01"));
  });

  it('"1,222,000.01" should be parsed as 1222000.01 ', function(){
    assert.equal(1222000.01, parseMoney("1,222,000.01"));
  });

  it('"-1,222,000.01" should be parsed as -1222000.01 (negative amount)', function(){
    assert.equal(-1222000.01, parseMoney("-1,222,000.01"));
  });

  it('"1,222,o00.01" should be parsed as 1222000.01 (with O instead of 0)', function(){
    assert.equal(1222000.01, parseMoney("1,222,o00.01"));
  });

  it('"$1,222,000.01" should be parsed as 1222000.01 (with a dollar sign)', function(){
    assert.equal(1222000.01, parseMoney("$1,222,000.01"));
  });

  it('"€1,222,000.01" should be parsed as 1222000.01 (with a euro sign)', function(){
    assert.equal(1222000.01, parseMoney("€1,222,000.01"));
  });

  it('"£1,222,000.01" should be parsed as 1222000.01 (with a pound sign)', function(){
    assert.equal(1222000.01, parseMoney("£1,222,000.01"));
  });

  it('"₤1,222,000.01" should be parsed as 1222000.01 (with a pound sign)', function(){
    assert.equal(1222000.01, parseMoney("₤1,222,000.01"));
  });

  it('"1.222.000,01" should be parsed as 1222000.01 ', function(){
    assert.equal(1222000.01, parseMoney("1.222.000,01"));
  });

  it('"-1.222.000,01" should be parsed as -1222000.01 (negative amount)', function(){
    assert.equal(-1222000.01, parseMoney("-1.222.000,01"));
  });

  it('"1.222.0o0,01" should be parsed as 1222000.01 (with O instead of 0)', function(){
    assert.equal(1222000.01, parseMoney("1.222.0o0,01"));
  });

  it('"$1.222.000,01" should be parsed as 1222000.01 (with a dollar sign)', function(){
    assert.equal(1222000.01, parseMoney("$1.222.000,01"));
  });

  it('"€1.222.000,01" should be parsed as 1222000.01 (with a euro sign)', function(){
    assert.equal(1222000.01, parseMoney("€1.222.000,01"));
  });

  it('"£1.222.000,01" should be parsed as 1222000.01 (with a pound sign)', function(){
    assert.equal(1222000.01, parseMoney("£1.222.000,01"));
  });

  it('"₤1.222.000,01" should be parsed as 1222000.01 (with a pound sign)', function(){
    assert.equal(1222000.01, parseMoney("₤1.222.000,01"));
  });

  it('"1 222 000.01" should be parsed as 1222000.01 ', function(){
    assert.equal(1222000.01, parseMoney("1 222 000.01"));
  });

  it('" -1 222 000.01" should be parsed as -1222000.01 (negative amount)', function(){
    assert.equal(-1222000.01, parseMoney(" -1 222 000.01"));
  });

  it('"1 222 0o0.01" should be parsed as 1222000.01 (with O instead of 0)', function(){
    assert.equal(1222000.01, parseMoney("1 222 0o0.01"));
  });

  it('"$1 222 000.01" should be parsed as 1222000.01 (with a dollar sign)', function(){
    assert.equal(1222000.01, parseMoney("$1 222 000.01"));
  });

  it('"€1 222 000.01" should be parsed as 1222000.01 (with a euro sign)', function(){
    assert.equal(1222000.01, parseMoney("€1 222 000.01"));
  });

  it('"£1 222 000.01" should be parsed as 1222000.01 (with a pound sign)', function(){
    assert.equal(1222000.01, parseMoney("£1 222 000.01"));
  });

  it('"₤1 222 000.01" should be parsed as 1222000.01 (with a pound sign)', function(){
    assert.equal(1222000.01, parseMoney("₤1 222 000.01"));
  });

  it('"1 222 000,01" should be parsed as 1222000.01 ', function(){
    assert.equal(1222000.01, parseMoney("1 222 000,01"));
  });

  it('" - 1 222 000,01" should be parsed as -1222000.01 (negative amount)', function(){
    assert.equal(-1222000.01, parseMoney(" - 1 222 000,01"));
  });

  it('"1 222 0o0,01" should be parsed as 1222000.01 (with O instead of 0)', function(){
    assert.equal(1222000.01, parseMoney("1 222 0o0,01"));
  });

  it('"$1 222 000,01" should be parsed as 1222000.01 (with a dollar sign)', function(){
    assert.equal(1222000.01, parseMoney("$1 222 000,01"));
  });

  it('"€1 222 000,01" should be parsed as 1222000.01 (with a euro sign)', function(){
    assert.equal(1222000.01, parseMoney("€1 222 000,01"));
  });

  it('"£1 222 000,01" should be parsed as 1222000.01 (with a pound sign)', function(){
    assert.equal(1222000.01, parseMoney("£1 222 000,01"));
  });

  it('"₤1 222 000,01" should be parsed as 1222000.01 (with a pound sign)', function(){
    assert.equal(1222000.01, parseMoney("₤1 222 000,01"));
  });

  it('"2,000.1" should be parsed as 2000.1 ', function(){
    assert.equal(2000.1, parseMoney("2,000.1"));
  });

  it('"- 2,000.1" should be parsed as -2000.1 (negative amount)', function(){
    assert.equal(-2000.1, parseMoney("- 2,000.1"));
  });

  it('"2,0o0.1" should be parsed as 2000.1 (with O instead of 0)', function(){
    assert.equal(2000.1, parseMoney("2,0o0.1"));
  });

  it('"$2,000.1" should be parsed as 2000.1 (with a dollar sign)', function(){
    assert.equal(2000.1, parseMoney("$2,000.1"));
  });

  it('"€2,000.1" should be parsed as 2000.1 (with a euro sign)', function(){
    assert.equal(2000.1, parseMoney("€2,000.1"));
  });

  it('"£2,000.1" should be parsed as 2000.1 (with a pound sign)', function(){
    assert.equal(2000.1, parseMoney("£2,000.1"));
  });

  it('"₤2,000.1" should be parsed as 2000.1 (with a pound sign)', function(){
    assert.equal(2000.1, parseMoney("₤2,000.1"));
  });

  it('"2.000,1" should be parsed as 2000.1 ', function(){
    assert.equal(2000.1, parseMoney("2.000,1"));
  });

  it('" -2.000,1" should be parsed as -2000.1 (negative amount)', function(){
    assert.equal(-2000.1, parseMoney(" -2.000,1"));
  });

  it('"2.00o,1" should be parsed as 2000.1 (with O instead of 0)', function(){
    assert.equal(2000.1, parseMoney("2.00o,1"));
  });

  it('"$2.000,1" should be parsed as 2000.1 (with a dollar sign)', function(){
    assert.equal(2000.1, parseMoney("$2.000,1"));
  });

  it('"€2.000,1" should be parsed as 2000.1 (with a euro sign)', function(){
    assert.equal(2000.1, parseMoney("€2.000,1"));
  });

  it('"£2.000,1" should be parsed as 2000.1 (with a pound sign)', function(){
    assert.equal(2000.1, parseMoney("£2.000,1"));
  });

  it('"₤2.000,1" should be parsed as 2000.1 (with a pound sign)', function(){
    assert.equal(2000.1, parseMoney("₤2.000,1"));
  });

  it('"2 000.1" should be parsed as 2000.1 ', function(){
    assert.equal(2000.1, parseMoney("2 000.1"));
  });

  it('" -2 000.1" should be parsed as -2000.1 (negative amount)', function(){
    assert.equal(-2000.1, parseMoney(" -2 000.1"));
  });

  it('"2 0o0.1" should be parsed as 2000.1 (with O instead of 0)', function(){
    assert.equal(2000.1, parseMoney("2 0o0.1"));
  });

  it('"$2 000.1" should be parsed as 2000.1 (with a dollar sign)', function(){
    assert.equal(2000.1, parseMoney("$2 000.1"));
  });

  it('"€2 000.1" should be parsed as 2000.1 (with a euro sign)', function(){
    assert.equal(2000.1, parseMoney("€2 000.1"));
  });

  it('"£2 000.1" should be parsed as 2000.1 (with a pound sign)', function(){
    assert.equal(2000.1, parseMoney("£2 000.1"));
  });

  it('"₤2 000.1" should be parsed as 2000.1 (with a pound sign)', function(){
    assert.equal(2000.1, parseMoney("₤2 000.1"));
  });

  it('"2 000,1" should be parsed as 2000.1 ', function(){
    assert.equal(2000.1, parseMoney("2 000,1"));
  });

  it('"-2 000,1" should be parsed as -2000.1 (negative amount)', function(){
    assert.equal(-2000.1, parseMoney("-2 000,1"));
  });

  it('"2 o00,1" should be parsed as 2000.1 (with O instead of 0)', function(){
    assert.equal(2000.1, parseMoney("2 o00,1"));
  });

  it('"$2 000,1" should be parsed as 2000.1 (with a dollar sign)', function(){
    assert.equal(2000.1, parseMoney("$2 000,1"));
  });

  it('"€2 000,1" should be parsed as 2000.1 (with a euro sign)', function(){
    assert.equal(2000.1, parseMoney("€2 000,1"));
  });

  it('"£2 000,1" should be parsed as 2000.1 (with a pound sign)', function(){
    assert.equal(2000.1, parseMoney("£2 000,1"));
  });

  it('"₤2 000,1" should be parsed as 2000.1 (with a pound sign)', function(){
    assert.equal(2000.1, parseMoney("₤2 000,1"));
  });

  it('"1,222,000.1" should be parsed as 1222000.1 ', function(){
    assert.equal(1222000.1, parseMoney("1,222,000.1"));
  });

  it('"-1,222,000.1" should be parsed as -1222000.1 (negative amount)', function(){
    assert.equal(-1222000.1, parseMoney("-1,222,000.1"));
  });

  it('"1,222,0o0.1" should be parsed as 1222000.1 (with O instead of 0)', function(){
    assert.equal(1222000.1, parseMoney("1,222,0o0.1"));
  });

  it('"$1,222,000.1" should be parsed as 1222000.1 (with a dollar sign)', function(){
    assert.equal(1222000.1, parseMoney("$1,222,000.1"));
  });

  it('"€1,222,000.1" should be parsed as 1222000.1 (with a euro sign)', function(){
    assert.equal(1222000.1, parseMoney("€1,222,000.1"));
  });

  it('"£1,222,000.1" should be parsed as 1222000.1 (with a pound sign)', function(){
    assert.equal(1222000.1, parseMoney("£1,222,000.1"));
  });

  it('"₤1,222,000.1" should be parsed as 1222000.1 (with a pound sign)', function(){
    assert.equal(1222000.1, parseMoney("₤1,222,000.1"));
  });

  it('"1.222.000,1" should be parsed as 1222000.1 ', function(){
    assert.equal(1222000.1, parseMoney("1.222.000,1"));
  });

  it('"- 1.222.000,1" should be parsed as -1222000.1 (negative amount)', function(){
    assert.equal(-1222000.1, parseMoney("- 1.222.000,1"));
  });

  it('"1.222.00o,1" should be parsed as 1222000.1 (with O instead of 0)', function(){
    assert.equal(1222000.1, parseMoney("1.222.00o,1"));
  });

  it('"$1.222.000,1" should be parsed as 1222000.1 (with a dollar sign)', function(){
    assert.equal(1222000.1, parseMoney("$1.222.000,1"));
  });

  it('"€1.222.000,1" should be parsed as 1222000.1 (with a euro sign)', function(){
    assert.equal(1222000.1, parseMoney("€1.222.000,1"));
  });

  it('"£1.222.000,1" should be parsed as 1222000.1 (with a pound sign)', function(){
    assert.equal(1222000.1, parseMoney("£1.222.000,1"));
  });

  it('"₤1.222.000,1" should be parsed as 1222000.1 (with a pound sign)', function(){
    assert.equal(1222000.1, parseMoney("₤1.222.000,1"));
  });

  it('"1 222 000.1" should be parsed as 1222000.1 ', function(){
    assert.equal(1222000.1, parseMoney("1 222 000.1"));
  });

  it('" - 1 222 000.1" should be parsed as -1222000.1 (negative amount)', function(){
    assert.equal(-1222000.1, parseMoney(" - 1 222 000.1"));
  });

  it('"1 222 0o0.1" should be parsed as 1222000.1 (with O instead of 0)', function(){
    assert.equal(1222000.1, parseMoney("1 222 0o0.1"));
  });

  it('"$1 222 000.1" should be parsed as 1222000.1 (with a dollar sign)', function(){
    assert.equal(1222000.1, parseMoney("$1 222 000.1"));
  });

  it('"€1 222 000.1" should be parsed as 1222000.1 (with a euro sign)', function(){
    assert.equal(1222000.1, parseMoney("€1 222 000.1"));
  });

  it('"£1 222 000.1" should be parsed as 1222000.1 (with a pound sign)', function(){
    assert.equal(1222000.1, parseMoney("£1 222 000.1"));
  });

  it('"₤1 222 000.1" should be parsed as 1222000.1 (with a pound sign)', function(){
    assert.equal(1222000.1, parseMoney("₤1 222 000.1"));
  });

  it('"1 222 000,1" should be parsed as 1222000.1 ', function(){
    assert.equal(1222000.1, parseMoney("1 222 000,1"));
  });

  it('" -1 222 000,1" should be parsed as -1222000.1 (negative amount)', function(){
    assert.equal(-1222000.1, parseMoney(" -1 222 000,1"));
  });

  it('"1 222 00o,1" should be parsed as 1222000.1 (with O instead of 0)', function(){
    assert.equal(1222000.1, parseMoney("1 222 00o,1"));
  });

  it('"$1 222 000,1" should be parsed as 1222000.1 (with a dollar sign)', function(){
    assert.equal(1222000.1, parseMoney("$1 222 000,1"));
  });

  it('"€1 222 000,1" should be parsed as 1222000.1 (with a euro sign)', function(){
    assert.equal(1222000.1, parseMoney("€1 222 000,1"));
  });

  it('"£1 222 000,1" should be parsed as 1222000.1 (with a pound sign)', function(){
    assert.equal(1222000.1, parseMoney("£1 222 000,1"));
  });

  it('"₤1 222 000,1" should be parsed as 1222000.1 (with a pound sign)', function(){
    assert.equal(1222000.1, parseMoney("₤1 222 000,1"));
  });

  it('"2,000.10" should be parsed as 2000.1 ', function(){
    assert.equal(2000.1, parseMoney("2,000.10"));
  });

  it('" -2,000.10" should be parsed as -2000.1 (negative amount)', function(){
    assert.equal(-2000.1, parseMoney(" -2,000.10"));
  });

  it('"2,0o0.10" should be parsed as 2000.1 (with O instead of 0)', function(){
    assert.equal(2000.1, parseMoney("2,0o0.10"));
  });

  it('"$2,000.10" should be parsed as 2000.1 (with a dollar sign)', function(){
    assert.equal(2000.1, parseMoney("$2,000.10"));
  });

  it('"€2,000.10" should be parsed as 2000.1 (with a euro sign)', function(){
    assert.equal(2000.1, parseMoney("€2,000.10"));
  });

  it('"£2,000.10" should be parsed as 2000.1 (with a pound sign)', function(){
    assert.equal(2000.1, parseMoney("£2,000.10"));
  });

  it('"₤2,000.10" should be parsed as 2000.1 (with a pound sign)', function(){
    assert.equal(2000.1, parseMoney("₤2,000.10"));
  });

  it('"2.000,10" should be parsed as 2000.1 ', function(){
    assert.equal(2000.1, parseMoney("2.000,10"));
  });

  it('" - 2.000,10" should be parsed as -2000.1 (negative amount)', function(){
    assert.equal(-2000.1, parseMoney(" - 2.000,10"));
  });

  it('"2.00o,10" should be parsed as 2000.1 (with O instead of 0)', function(){
    assert.equal(2000.1, parseMoney("2.00o,10"));
  });

  it('"$2.000,10" should be parsed as 2000.1 (with a dollar sign)', function(){
    assert.equal(2000.1, parseMoney("$2.000,10"));
  });

  it('"€2.000,10" should be parsed as 2000.1 (with a euro sign)', function(){
    assert.equal(2000.1, parseMoney("€2.000,10"));
  });

  it('"£2.000,10" should be parsed as 2000.1 (with a pound sign)', function(){
    assert.equal(2000.1, parseMoney("£2.000,10"));
  });

  it('"₤2.000,10" should be parsed as 2000.1 (with a pound sign)', function(){
    assert.equal(2000.1, parseMoney("₤2.000,10"));
  });

  it('"2 000.10" should be parsed as 2000.1 ', function(){
    assert.equal(2000.1, parseMoney("2 000.10"));
  });

  it('" -2 000.10" should be parsed as -2000.1 (negative amount)', function(){
    assert.equal(-2000.1, parseMoney(" -2 000.10"));
  });

  it('"2 o00.10" should be parsed as 2000.1 (with O instead of 0)', function(){
    assert.equal(2000.1, parseMoney("2 o00.10"));
  });

  it('"$2 000.10" should be parsed as 2000.1 (with a dollar sign)', function(){
    assert.equal(2000.1, parseMoney("$2 000.10"));
  });

  it('"€2 000.10" should be parsed as 2000.1 (with a euro sign)', function(){
    assert.equal(2000.1, parseMoney("€2 000.10"));
  });

  it('"£2 000.10" should be parsed as 2000.1 (with a pound sign)', function(){
    assert.equal(2000.1, parseMoney("£2 000.10"));
  });

  it('"₤2 000.10" should be parsed as 2000.1 (with a pound sign)', function(){
    assert.equal(2000.1, parseMoney("₤2 000.10"));
  });

  it('"2 000,10" should be parsed as 2000.1 ', function(){
    assert.equal(2000.1, parseMoney("2 000,10"));
  });

  it('" - 2 000,10" should be parsed as -2000.1 (negative amount)', function(){
    assert.equal(-2000.1, parseMoney(" - 2 000,10"));
  });

  it('"2 00o,10" should be parsed as 2000.1 (with O instead of 0)', function(){
    assert.equal(2000.1, parseMoney("2 00o,10"));
  });

  it('"$2 000,10" should be parsed as 2000.1 (with a dollar sign)', function(){
    assert.equal(2000.1, parseMoney("$2 000,10"));
  });

  it('"€2 000,10" should be parsed as 2000.1 (with a euro sign)', function(){
    assert.equal(2000.1, parseMoney("€2 000,10"));
  });

  it('"£2 000,10" should be parsed as 2000.1 (with a pound sign)', function(){
    assert.equal(2000.1, parseMoney("£2 000,10"));
  });

  it('"₤2 000,10" should be parsed as 2000.1 (with a pound sign)', function(){
    assert.equal(2000.1, parseMoney("₤2 000,10"));
  });

  it('"1,222,000.10" should be parsed as 1222000.1 ', function(){
    assert.equal(1222000.1, parseMoney("1,222,000.10"));
  });

  it('" -1,222,000.10" should be parsed as -1222000.1 (negative amount)', function(){
    assert.equal(-1222000.1, parseMoney(" -1,222,000.10"));
  });

  it('"1,222,00o.10" should be parsed as 1222000.1 (with O instead of 0)', function(){
    assert.equal(1222000.1, parseMoney("1,222,00o.10"));
  });

  it('"$1,222,000.10" should be parsed as 1222000.1 (with a dollar sign)', function(){
    assert.equal(1222000.1, parseMoney("$1,222,000.10"));
  });

  it('"€1,222,000.10" should be parsed as 1222000.1 (with a euro sign)', function(){
    assert.equal(1222000.1, parseMoney("€1,222,000.10"));
  });

  it('"£1,222,000.10" should be parsed as 1222000.1 (with a pound sign)', function(){
    assert.equal(1222000.1, parseMoney("£1,222,000.10"));
  });

  it('"₤1,222,000.10" should be parsed as 1222000.1 (with a pound sign)', function(){
    assert.equal(1222000.1, parseMoney("₤1,222,000.10"));
  });

  it('"1.222.000,10" should be parsed as 1222000.1 ', function(){
    assert.equal(1222000.1, parseMoney("1.222.000,10"));
  });

  it('" - 1.222.000,10" should be parsed as -1222000.1 (negative amount)', function(){
    assert.equal(-1222000.1, parseMoney(" - 1.222.000,10"));
  });

  it('"1.222.o00,10" should be parsed as 1222000.1 (with O instead of 0)', function(){
    assert.equal(1222000.1, parseMoney("1.222.o00,10"));
  });

  it('"$1.222.000,10" should be parsed as 1222000.1 (with a dollar sign)', function(){
    assert.equal(1222000.1, parseMoney("$1.222.000,10"));
  });

  it('"€1.222.000,10" should be parsed as 1222000.1 (with a euro sign)', function(){
    assert.equal(1222000.1, parseMoney("€1.222.000,10"));
  });

  it('"£1.222.000,10" should be parsed as 1222000.1 (with a pound sign)', function(){
    assert.equal(1222000.1, parseMoney("£1.222.000,10"));
  });

  it('"₤1.222.000,10" should be parsed as 1222000.1 (with a pound sign)', function(){
    assert.equal(1222000.1, parseMoney("₤1.222.000,10"));
  });

  it('"1 222 000.10" should be parsed as 1222000.1 ', function(){
    assert.equal(1222000.1, parseMoney("1 222 000.10"));
  });

  it('"- 1 222 000.10" should be parsed as -1222000.1 (negative amount)', function(){
    assert.equal(-1222000.1, parseMoney("- 1 222 000.10"));
  });

  it('"1 222 o00.10" should be parsed as 1222000.1 (with O instead of 0)', function(){
    assert.equal(1222000.1, parseMoney("1 222 o00.10"));
  });

  it('"$1 222 000.10" should be parsed as 1222000.1 (with a dollar sign)', function(){
    assert.equal(1222000.1, parseMoney("$1 222 000.10"));
  });

  it('"€1 222 000.10" should be parsed as 1222000.1 (with a euro sign)', function(){
    assert.equal(1222000.1, parseMoney("€1 222 000.10"));
  });

  it('"£1 222 000.10" should be parsed as 1222000.1 (with a pound sign)', function(){
    assert.equal(1222000.1, parseMoney("£1 222 000.10"));
  });

  it('"₤1 222 000.10" should be parsed as 1222000.1 (with a pound sign)', function(){
    assert.equal(1222000.1, parseMoney("₤1 222 000.10"));
  });

  it('"1 222 000,10" should be parsed as 1222000.1 ', function(){
    assert.equal(1222000.1, parseMoney("1 222 000,10"));
  });

  it('"-1 222 000,10" should be parsed as -1222000.1 (negative amount)', function(){
    assert.equal(-1222000.1, parseMoney("-1 222 000,10"));
  });

  it('"1 222 o00,10" should be parsed as 1222000.1 (with O instead of 0)', function(){
    assert.equal(1222000.1, parseMoney("1 222 o00,10"));
  });

  it('"$1 222 000,10" should be parsed as 1222000.1 (with a dollar sign)', function(){
    assert.equal(1222000.1, parseMoney("$1 222 000,10"));
  });

  it('"€1 222 000,10" should be parsed as 1222000.1 (with a euro sign)', function(){
    assert.equal(1222000.1, parseMoney("€1 222 000,10"));
  });

  it('"£1 222 000,10" should be parsed as 1222000.1 (with a pound sign)', function(){
    assert.equal(1222000.1, parseMoney("£1 222 000,10"));
  });

  it('"₤1 222 000,10" should be parsed as 1222000.1 (with a pound sign)', function(){
    assert.equal(1222000.1, parseMoney("₤1 222 000,10"));
  });

  it('"1 222 000" should be parsed as 1222000.0 ', function(){
    assert.equal(1222000.0, parseMoney("1 222 000"));
  });

  it('" -1 222 000" should be parsed as -1222000.0 (negative amount)', function(){
    assert.equal(-1222000.0, parseMoney(" -1 222 000"));
  });

  it('"1 222 0o0" should be parsed as 1222000.0 (with O instead of 0)', function(){
    assert.equal(1222000.0, parseMoney("1 222 0o0"));
  });

  it('"$1 222 000" should be parsed as 1222000.0 (with a dollar sign)', function(){
    assert.equal(1222000.0, parseMoney("$1 222 000"));
  });

  it('"€1 222 000" should be parsed as 1222000.0 (with a euro sign)', function(){
    assert.equal(1222000.0, parseMoney("€1 222 000"));
  });

  it('"£1 222 000" should be parsed as 1222000.0 (with a pound sign)', function(){
    assert.equal(1222000.0, parseMoney("£1 222 000"));
  });

  it('"₤1 222 000" should be parsed as 1222000.0 (with a pound sign)', function(){
    assert.equal(1222000.0, parseMoney("₤1 222 000"));
  });

  it('"1 222 000" should be parsed as 1222000.0 ', function(){
    assert.equal(1222000.0, parseMoney("1 222 000"));
  });

  it('" -1 222 000" should be parsed as -1222000.0 (negative amount)', function(){
    assert.equal(-1222000.0, parseMoney(" -1 222 000"));
  });

  it('"1 222 o00" should be parsed as 1222000.0 (with O instead of 0)', function(){
    assert.equal(1222000.0, parseMoney("1 222 o00"));
  });

  it('"$1 222 000" should be parsed as 1222000.0 (with a dollar sign)', function(){
    assert.equal(1222000.0, parseMoney("$1 222 000"));
  });

  it('"€1 222 000" should be parsed as 1222000.0 (with a euro sign)', function(){
    assert.equal(1222000.0, parseMoney("€1 222 000"));
  });

  it('"£1 222 000" should be parsed as 1222000.0 (with a pound sign)', function(){
    assert.equal(1222000.0, parseMoney("£1 222 000"));
  });

  it('"₤1 222 000" should be parsed as 1222000.0 (with a pound sign)', function(){
    assert.equal(1222000.0, parseMoney("₤1 222 000"));
  });

  it('"1,222,000" should be parsed as 1222000.0 ', function(){
    assert.equal(1222000.0, parseMoney("1,222,000"));
  });

  it('" -1,222,000" should be parsed as -1222000.0 (negative amount)', function(){
    assert.equal(-1222000.0, parseMoney(" -1,222,000"));
  });

  it('"1,222,o00" should be parsed as 1222000.0 (with O instead of 0)', function(){
    assert.equal(1222000.0, parseMoney("1,222,o00"));
  });

  it('"$1,222,000" should be parsed as 1222000.0 (with a dollar sign)', function(){
    assert.equal(1222000.0, parseMoney("$1,222,000"));
  });

  it('"€1,222,000" should be parsed as 1222000.0 (with a euro sign)', function(){
    assert.equal(1222000.0, parseMoney("€1,222,000"));
  });

  it('"£1,222,000" should be parsed as 1222000.0 (with a pound sign)', function(){
    assert.equal(1222000.0, parseMoney("£1,222,000"));
  });

  it('"₤1,222,000" should be parsed as 1222000.0 (with a pound sign)', function(){
    assert.equal(1222000.0, parseMoney("₤1,222,000"));
  });

  it('"1.222.000" should be parsed as 1222000.0 ', function(){
    assert.equal(1222000.0, parseMoney("1.222.000"));
  });

  it('" -1.222.000" should be parsed as -1222000.0 (negative amount)', function(){
    assert.equal(-1222000.0, parseMoney(" -1.222.000"));
  });

  it('"1.222.00o" should be parsed as 1222000.0 (with O instead of 0)', function(){
    assert.equal(1222000.0, parseMoney("1.222.00o"));
  });

  it('"$1.222.000" should be parsed as 1222000.0 (with a dollar sign)', function(){
    assert.equal(1222000.0, parseMoney("$1.222.000"));
  });

  it('"€1.222.000" should be parsed as 1222000.0 (with a euro sign)', function(){
    assert.equal(1222000.0, parseMoney("€1.222.000"));
  });

  it('"£1.222.000" should be parsed as 1222000.0 (with a pound sign)', function(){
    assert.equal(1222000.0, parseMoney("£1.222.000"));
  });

  it('"₤1.222.000" should be parsed as 1222000.0 (with a pound sign)', function(){
    assert.equal(1222000.0, parseMoney("₤1.222.000"));
  });

  it('"1 222 000" should be parsed as 1222000.0 ', function(){
    assert.equal(1222000.0, parseMoney("1 222 000"));
  });

  it('"- 1 222 000" should be parsed as -1222000.0 (negative amount)', function(){
    assert.equal(-1222000.0, parseMoney("- 1 222 000"));
  });

  it('"1 222 0o0" should be parsed as 1222000.0 (with O instead of 0)', function(){
    assert.equal(1222000.0, parseMoney("1 222 0o0"));
  });

  it('"$1 222 000" should be parsed as 1222000.0 (with a dollar sign)', function(){
    assert.equal(1222000.0, parseMoney("$1 222 000"));
  });

  it('"€1 222 000" should be parsed as 1222000.0 (with a euro sign)', function(){
    assert.equal(1222000.0, parseMoney("€1 222 000"));
  });

  it('"£1 222 000" should be parsed as 1222000.0 (with a pound sign)', function(){
    assert.equal(1222000.0, parseMoney("£1 222 000"));
  });

  it('"₤1 222 000" should be parsed as 1222000.0 (with a pound sign)', function(){
    assert.equal(1222000.0, parseMoney("₤1 222 000"));
  });

  it('"1 222 000" should be parsed as 1222000.0 ', function(){
    assert.equal(1222000.0, parseMoney("1 222 000"));
  });

  it('" - 1 222 000" should be parsed as -1222000.0 (negative amount)', function(){
    assert.equal(-1222000.0, parseMoney(" - 1 222 000"));
  });

  it('"1 222 00o" should be parsed as 1222000.0 (with O instead of 0)', function(){
    assert.equal(1222000.0, parseMoney("1 222 00o"));
  });

  it('"$1 222 000" should be parsed as 1222000.0 (with a dollar sign)', function(){
    assert.equal(1222000.0, parseMoney("$1 222 000"));
  });

  it('"€1 222 000" should be parsed as 1222000.0 (with a euro sign)', function(){
    assert.equal(1222000.0, parseMoney("€1 222 000"));
  });

  it('"£1 222 000" should be parsed as 1222000.0 (with a pound sign)', function(){
    assert.equal(1222000.0, parseMoney("£1 222 000"));
  });

  it('"₤1 222 000" should be parsed as 1222000.0 (with a pound sign)', function(){
    assert.equal(1222000.0, parseMoney("₤1 222 000"));
  });

  it('"2,123" should be parsed as 2123.0 ', function(){
    assert.equal(2123.0, parseMoney("2,123"));
  });

  it('" - 2,123" should be parsed as -2123.0 (negative amount)', function(){
    assert.equal(-2123.0, parseMoney(" - 2,123"));
  });

  it('"$2,123" should be parsed as 2123.0 (with a dollar sign)', function(){
    assert.equal(2123.0, parseMoney("$2,123"));
  });

  it('"€2,123" should be parsed as 2123.0 (with a euro sign)', function(){
    assert.equal(2123.0, parseMoney("€2,123"));
  });

  it('"£2,123" should be parsed as 2123.0 (with a pound sign)', function(){
    assert.equal(2123.0, parseMoney("£2,123"));
  });

  it('"₤2,123" should be parsed as 2123.0 (with a pound sign)', function(){
    assert.equal(2123.0, parseMoney("₤2,123"));
  });

  it('"2.123" should be parsed as 2123.0 ', function(){
    assert.equal(2123.0, parseMoney("2.123"));
  });

  it('" - 2.123" should be parsed as -2123.0 (negative amount)', function(){
    assert.equal(-2123.0, parseMoney(" - 2.123"));
  });

  it('"$2.123" should be parsed as 2123.0 (with a dollar sign)', function(){
    assert.equal(2123.0, parseMoney("$2.123"));
  });

  it('"€2.123" should be parsed as 2123.0 (with a euro sign)', function(){
    assert.equal(2123.0, parseMoney("€2.123"));
  });

  it('"£2.123" should be parsed as 2123.0 (with a pound sign)', function(){
    assert.equal(2123.0, parseMoney("£2.123"));
  });

  it('"₤2.123" should be parsed as 2123.0 (with a pound sign)', function(){
    assert.equal(2123.0, parseMoney("₤2.123"));
  });

  it('"2,12" should be parsed as 2.12 ', function(){
    assert.equal(2.12, parseMoney("2,12"));
  });

  it('"- 2,12" should be parsed as -2.12 (negative amount)', function(){
    assert.equal(-2.12, parseMoney("- 2,12"));
  });

  it('"$2,12" should be parsed as 2.12 (with a dollar sign)', function(){
    assert.equal(2.12, parseMoney("$2,12"));
  });

  it('"€2,12" should be parsed as 2.12 (with a euro sign)', function(){
    assert.equal(2.12, parseMoney("€2,12"));
  });

  it('"£2,12" should be parsed as 2.12 (with a pound sign)', function(){
    assert.equal(2.12, parseMoney("£2,12"));
  });

  it('"₤2,12" should be parsed as 2.12 (with a pound sign)', function(){
    assert.equal(2.12, parseMoney("₤2,12"));
  });

  it('"" should be parsed as null ', function(){
    assert.equal(null, parseMoney(""));
  });

  it('"$" should be parsed as null (with a dollar sign)', function(){
    assert.equal(null, parseMoney("$"));
  });

  it('"€" should be parsed as null (with a euro sign)', function(){
    assert.equal(null, parseMoney("€"));
  });

  it('"£" should be parsed as null (with a pound sign)', function(){
    assert.equal(null, parseMoney("£"));
  });

  it('"₤" should be parsed as null (with a pound sign)', function(){
    assert.equal(null, parseMoney("₤"));
  });

  it('"1" should be parsed as 1.0 ', function(){
    assert.equal(1.0, parseMoney("1"));
  });

  it('"-1" should be parsed as -1.0 (negative amount)', function(){
    assert.equal(-1.0, parseMoney("-1"));
  });

  it('"$1" should be parsed as 1.0 (with a dollar sign)', function(){
    assert.equal(1.0, parseMoney("$1"));
  });

  it('"€1" should be parsed as 1.0 (with a euro sign)', function(){
    assert.equal(1.0, parseMoney("€1"));
  });

  it('"£1" should be parsed as 1.0 (with a pound sign)', function(){
    assert.equal(1.0, parseMoney("£1"));
  });

  it('"₤1" should be parsed as 1.0 (with a pound sign)', function(){
    assert.equal(1.0, parseMoney("₤1"));
  });

  it('" " should be parsed as null ', function(){
    assert.equal(null, parseMoney(" "));
  });

  it('"$ " should be parsed as null (with a dollar sign)', function(){
    assert.equal(null, parseMoney("$ "));
  });

  it('"€ " should be parsed as null (with a euro sign)', function(){
    assert.equal(null, parseMoney("€ "));
  });

  it('"£ " should be parsed as null (with a pound sign)', function(){
    assert.equal(null, parseMoney("£ "));
  });

  it('"₤ " should be parsed as null (with a pound sign)', function(){
    assert.equal(null, parseMoney("₤ "));
  });

  it('"hello" should be parsed as null ', function(){
    assert.equal(null, parseMoney("hello"));
  });

  it('"$hello" should be parsed as null (with a dollar sign)', function(){
    assert.equal(null, parseMoney("$hello"));
  });

  it('"€hello" should be parsed as null (with a euro sign)', function(){
    assert.equal(null, parseMoney("€hello"));
  });

  it('"£hello" should be parsed as null (with a pound sign)', function(){
    assert.equal(null, parseMoney("£hello"));
  });

  it('"₤hello" should be parsed as null (with a pound sign)', function(){
    assert.equal(null, parseMoney("₤hello"));
  });
})
