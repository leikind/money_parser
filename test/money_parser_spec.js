var assert = require("assert")

function parse_money(moneyString){
  return null;
}

describe('moneyParse', function(){

  it('"2000.01" should be parsed as 2000.01', function(){
    assert.equal(2000.01, parse_money("2000.01"));
  });

  it('"- 2000.01" should be parsed as -2000.01', function(){
    assert.equal(-2000.01, parse_money("- 2000.01"));
  });

  it('"20o0.01" should be parsed as 2000.01', function(){
    assert.equal(2000.01, parse_money("20o0.01"));
  });

  it('"2000,01" should be parsed as 2000.01', function(){
    assert.equal(2000.01, parse_money("2000,01"));
  });

  it('" -2000,01" should be parsed as -2000.01', function(){
    assert.equal(-2000.01, parse_money(" -2000,01"));
  });

  it('"20o0,01" should be parsed as 2000.01', function(){
    assert.equal(2000.01, parse_money("20o0,01"));
  });

  it('"2000.1" should be parsed as 2000.1', function(){
    assert.equal(2000.1, parse_money("2000.1"));
  });

  it('" - 2000.1" should be parsed as -2000.1', function(){
    assert.equal(-2000.1, parse_money(" - 2000.1"));
  });

  it('"20o0.1" should be parsed as 2000.1', function(){
    assert.equal(2000.1, parse_money("20o0.1"));
  });

  it('"2000,1" should be parsed as 2000.1', function(){
    assert.equal(2000.1, parse_money("2000,1"));
  });

  it('" - 2000,1" should be parsed as -2000.1', function(){
    assert.equal(-2000.1, parse_money(" - 2000,1"));
  });

  it('"20o0,1" should be parsed as 2000.1', function(){
    assert.equal(2000.1, parse_money("20o0,1"));
  });

  it('"2000" should be parsed as 2000.0', function(){
    assert.equal(2000.0, parse_money("2000"));
  });

  it('"-2000" should be parsed as -2000.0', function(){
    assert.equal(-2000.0, parse_money("-2000"));
  });

  it('"2o00" should be parsed as 2000.0', function(){
    assert.equal(2000.0, parse_money("2o00"));
  });

  it('".01" should be parsed as 0.01', function(){
    assert.equal(0.01, parse_money(".01"));
  });

  it('"- .01" should be parsed as -0.01', function(){
    assert.equal(-0.01, parse_money("- .01"));
  });

  it('".o1" should be parsed as 0.01', function(){
    assert.equal(0.01, parse_money(".o1"));
  });

  it('",01" should be parsed as 0.01', function(){
    assert.equal(0.01, parse_money(",01"));
  });

  it('"-,01" should be parsed as -0.01', function(){
    assert.equal(-0.01, parse_money("-,01"));
  });

  it('",o1" should be parsed as 0.01', function(){
    assert.equal(0.01, parse_money(",o1"));
  });

  it('"0.01" should be parsed as 0.01', function(){
    assert.equal(0.01, parse_money("0.01"));
  });

  it('" -0.01" should be parsed as -0.01', function(){
    assert.equal(-0.01, parse_money(" -0.01"));
  });

  it('"o.01" should be parsed as 0.01', function(){
    assert.equal(0.01, parse_money("o.01"));
  });

  it('"0,01" should be parsed as 0.01', function(){
    assert.equal(0.01, parse_money("0,01"));
  });

  it('" -0,01" should be parsed as -0.01', function(){
    assert.equal(-0.01, parse_money(" -0,01"));
  });

  it('"o,01" should be parsed as 0.01', function(){
    assert.equal(0.01, parse_money("o,01"));
  });

  it('".1" should be parsed as 0.1', function(){
    assert.equal(0.1, parse_money(".1"));
  });

  it('" -.1" should be parsed as -0.1', function(){
    assert.equal(-0.1, parse_money(" -.1"));
  });

  it('",1" should be parsed as 0.1', function(){
    assert.equal(0.1, parse_money(",1"));
  });

  it('"- ,1" should be parsed as -0.1', function(){
    assert.equal(-0.1, parse_money("- ,1"));
  });

  it('"0.1" should be parsed as 0.1', function(){
    assert.equal(0.1, parse_money("0.1"));
  });

  it('"- 0.1" should be parsed as -0.1', function(){
    assert.equal(-0.1, parse_money("- 0.1"));
  });

  it('"o.1" should be parsed as 0.1', function(){
    assert.equal(0.1, parse_money("o.1"));
  });

  it('"0,1" should be parsed as 0.1', function(){
    assert.equal(0.1, parse_money("0,1"));
  });

  it('" - 0,1" should be parsed as -0.1', function(){
    assert.equal(-0.1, parse_money(" - 0,1"));
  });

  it('"o,1" should be parsed as 0.1', function(){
    assert.equal(0.1, parse_money("o,1"));
  });

  it('"2,000.01" should be parsed as 2000.01', function(){
    assert.equal(2000.01, parse_money("2,000.01"));
  });

  it('"-2,000.01" should be parsed as -2000.01', function(){
    assert.equal(-2000.01, parse_money("-2,000.01"));
  });

  it('"2,000.o1" should be parsed as 2000.01', function(){
    assert.equal(2000.01, parse_money("2,000.o1"));
  });

  it('"2.000,01" should be parsed as 2000.01', function(){
    assert.equal(2000.01, parse_money("2.000,01"));
  });

  it('"- 2.000,01" should be parsed as -2000.01', function(){
    assert.equal(-2000.01, parse_money("- 2.000,01"));
  });

  it('"2.0o0,01" should be parsed as 2000.01', function(){
    assert.equal(2000.01, parse_money("2.0o0,01"));
  });

  it('"2 000.01" should be parsed as 2000.01', function(){
    assert.equal(2000.01, parse_money("2 000.01"));
  });

  it('" -2 000.01" should be parsed as -2000.01', function(){
    assert.equal(-2000.01, parse_money(" -2 000.01"));
  });

  it('"2 0o0.01" should be parsed as 2000.01', function(){
    assert.equal(2000.01, parse_money("2 0o0.01"));
  });

  it('"2 000,01" should be parsed as 2000.01', function(){
    assert.equal(2000.01, parse_money("2 000,01"));
  });

  it('" -2 000,01" should be parsed as -2000.01', function(){
    assert.equal(-2000.01, parse_money(" -2 000,01"));
  });

  it('"2 000,o1" should be parsed as 2000.01', function(){
    assert.equal(2000.01, parse_money("2 000,o1"));
  });

  it('"1,222,000.01" should be parsed as 1222000.01', function(){
    assert.equal(1222000.01, parse_money("1,222,000.01"));
  });

  it('"- 1,222,000.01" should be parsed as -1222000.01', function(){
    assert.equal(-1222000.01, parse_money("- 1,222,000.01"));
  });

  it('"1,222,00o.01" should be parsed as 1222000.01', function(){
    assert.equal(1222000.01, parse_money("1,222,00o.01"));
  });

  it('"1.222.000,01" should be parsed as 1222000.01', function(){
    assert.equal(1222000.01, parse_money("1.222.000,01"));
  });

  it('"-1.222.000,01" should be parsed as -1222000.01', function(){
    assert.equal(-1222000.01, parse_money("-1.222.000,01"));
  });

  it('"1.222.000,o1" should be parsed as 1222000.01', function(){
    assert.equal(1222000.01, parse_money("1.222.000,o1"));
  });

  it('"1 222 000.01" should be parsed as 1222000.01', function(){
    assert.equal(1222000.01, parse_money("1 222 000.01"));
  });

  it('"- 1 222 000.01" should be parsed as -1222000.01', function(){
    assert.equal(-1222000.01, parse_money("- 1 222 000.01"));
  });

  it('"1 222 000.o1" should be parsed as 1222000.01', function(){
    assert.equal(1222000.01, parse_money("1 222 000.o1"));
  });

  it('"1 222 000,01" should be parsed as 1222000.01', function(){
    assert.equal(1222000.01, parse_money("1 222 000,01"));
  });

  it('"- 1 222 000,01" should be parsed as -1222000.01', function(){
    assert.equal(-1222000.01, parse_money("- 1 222 000,01"));
  });

  it('"1 222 000,o1" should be parsed as 1222000.01', function(){
    assert.equal(1222000.01, parse_money("1 222 000,o1"));
  });

  it('"2,000.1" should be parsed as 2000.1', function(){
    assert.equal(2000.1, parse_money("2,000.1"));
  });

  it('" - 2,000.1" should be parsed as -2000.1', function(){
    assert.equal(-2000.1, parse_money(" - 2,000.1"));
  });

  it('"2,0o0.1" should be parsed as 2000.1', function(){
    assert.equal(2000.1, parse_money("2,0o0.1"));
  });

  it('"2.000,1" should be parsed as 2000.1', function(){
    assert.equal(2000.1, parse_money("2.000,1"));
  });

  it('" - 2.000,1" should be parsed as -2000.1', function(){
    assert.equal(-2000.1, parse_money(" - 2.000,1"));
  });

  it('"2.0o0,1" should be parsed as 2000.1', function(){
    assert.equal(2000.1, parse_money("2.0o0,1"));
  });

  it('"2 000.1" should be parsed as 2000.1', function(){
    assert.equal(2000.1, parse_money("2 000.1"));
  });

  it('"-2 000.1" should be parsed as -2000.1', function(){
    assert.equal(-2000.1, parse_money("-2 000.1"));
  });

  it('"2 o00.1" should be parsed as 2000.1', function(){
    assert.equal(2000.1, parse_money("2 o00.1"));
  });

  it('"2 000,1" should be parsed as 2000.1', function(){
    assert.equal(2000.1, parse_money("2 000,1"));
  });

  it('"-2 000,1" should be parsed as -2000.1', function(){
    assert.equal(-2000.1, parse_money("-2 000,1"));
  });

  it('"2 00o,1" should be parsed as 2000.1', function(){
    assert.equal(2000.1, parse_money("2 00o,1"));
  });

  it('"1,222,000.1" should be parsed as 1222000.1', function(){
    assert.equal(1222000.1, parse_money("1,222,000.1"));
  });

  it('" - 1,222,000.1" should be parsed as -1222000.1', function(){
    assert.equal(-1222000.1, parse_money(" - 1,222,000.1"));
  });

  it('"1,222,o00.1" should be parsed as 1222000.1', function(){
    assert.equal(1222000.1, parse_money("1,222,o00.1"));
  });

  it('"1.222.000,1" should be parsed as 1222000.1', function(){
    assert.equal(1222000.1, parse_money("1.222.000,1"));
  });

  it('" -1.222.000,1" should be parsed as -1222000.1', function(){
    assert.equal(-1222000.1, parse_money(" -1.222.000,1"));
  });

  it('"1.222.o00,1" should be parsed as 1222000.1', function(){
    assert.equal(1222000.1, parse_money("1.222.o00,1"));
  });

  it('"1 222 000.1" should be parsed as 1222000.1', function(){
    assert.equal(1222000.1, parse_money("1 222 000.1"));
  });

  it('" -1 222 000.1" should be parsed as -1222000.1', function(){
    assert.equal(-1222000.1, parse_money(" -1 222 000.1"));
  });

  it('"1 222 0o0.1" should be parsed as 1222000.1', function(){
    assert.equal(1222000.1, parse_money("1 222 0o0.1"));
  });

  it('"1 222 000,1" should be parsed as 1222000.1', function(){
    assert.equal(1222000.1, parse_money("1 222 000,1"));
  });

  it('"-1 222 000,1" should be parsed as -1222000.1', function(){
    assert.equal(-1222000.1, parse_money("-1 222 000,1"));
  });

  it('"1 222 o00,1" should be parsed as 1222000.1', function(){
    assert.equal(1222000.1, parse_money("1 222 o00,1"));
  });

  it('"2,000.10" should be parsed as 2000.1', function(){
    assert.equal(2000.1, parse_money("2,000.10"));
  });

  it('" - 2,000.10" should be parsed as -2000.1', function(){
    assert.equal(-2000.1, parse_money(" - 2,000.10"));
  });

  it('"2,000.1o" should be parsed as 2000.1', function(){
    assert.equal(2000.1, parse_money("2,000.1o"));
  });

  it('"2.000,10" should be parsed as 2000.1', function(){
    assert.equal(2000.1, parse_money("2.000,10"));
  });

  it('" - 2.000,10" should be parsed as -2000.1', function(){
    assert.equal(-2000.1, parse_money(" - 2.000,10"));
  });

  it('"2.0o0,10" should be parsed as 2000.1', function(){
    assert.equal(2000.1, parse_money("2.0o0,10"));
  });

  it('"2 000.10" should be parsed as 2000.1', function(){
    assert.equal(2000.1, parse_money("2 000.10"));
  });

  it('" - 2 000.10" should be parsed as -2000.1', function(){
    assert.equal(-2000.1, parse_money(" - 2 000.10"));
  });

  it('"2 00o.10" should be parsed as 2000.1', function(){
    assert.equal(2000.1, parse_money("2 00o.10"));
  });

  it('"2 000,10" should be parsed as 2000.1', function(){
    assert.equal(2000.1, parse_money("2 000,10"));
  });

  it('" - 2 000,10" should be parsed as -2000.1', function(){
    assert.equal(-2000.1, parse_money(" - 2 000,10"));
  });

  it('"2 000,1o" should be parsed as 2000.1', function(){
    assert.equal(2000.1, parse_money("2 000,1o"));
  });

  it('"1,222,000.10" should be parsed as 1222000.1', function(){
    assert.equal(1222000.1, parse_money("1,222,000.10"));
  });

  it('"- 1,222,000.10" should be parsed as -1222000.1', function(){
    assert.equal(-1222000.1, parse_money("- 1,222,000.10"));
  });

  it('"1,222,0o0.10" should be parsed as 1222000.1', function(){
    assert.equal(1222000.1, parse_money("1,222,0o0.10"));
  });

  it('"1.222.000,10" should be parsed as 1222000.1', function(){
    assert.equal(1222000.1, parse_money("1.222.000,10"));
  });

  it('" -1.222.000,10" should be parsed as -1222000.1', function(){
    assert.equal(-1222000.1, parse_money(" -1.222.000,10"));
  });

  it('"1.222.0o0,10" should be parsed as 1222000.1', function(){
    assert.equal(1222000.1, parse_money("1.222.0o0,10"));
  });

  it('"1 222 000.10" should be parsed as 1222000.1', function(){
    assert.equal(1222000.1, parse_money("1 222 000.10"));
  });

  it('"- 1 222 000.10" should be parsed as -1222000.1', function(){
    assert.equal(-1222000.1, parse_money("- 1 222 000.10"));
  });

  it('"1 222 000.1o" should be parsed as 1222000.1', function(){
    assert.equal(1222000.1, parse_money("1 222 000.1o"));
  });

  it('"1 222 000,10" should be parsed as 1222000.1', function(){
    assert.equal(1222000.1, parse_money("1 222 000,10"));
  });

  it('" - 1 222 000,10" should be parsed as -1222000.1', function(){
    assert.equal(-1222000.1, parse_money(" - 1 222 000,10"));
  });

  it('"1 222 0o0,10" should be parsed as 1222000.1', function(){
    assert.equal(1222000.1, parse_money("1 222 0o0,10"));
  });

  it('"1 222 000" should be parsed as 1222000.0', function(){
    assert.equal(1222000.0, parse_money("1 222 000"));
  });

  it('" -1 222 000" should be parsed as -1222000.0', function(){
    assert.equal(-1222000.0, parse_money(" -1 222 000"));
  });

  it('"1 222 00o" should be parsed as 1222000.0', function(){
    assert.equal(1222000.0, parse_money("1 222 00o"));
  });

  it('"1 222 000" should be parsed as 1222000.0', function(){
    assert.equal(1222000.0, parse_money("1 222 000"));
  });

  it('" - 1 222 000" should be parsed as -1222000.0', function(){
    assert.equal(-1222000.0, parse_money(" - 1 222 000"));
  });

  it('"1 222 o00" should be parsed as 1222000.0', function(){
    assert.equal(1222000.0, parse_money("1 222 o00"));
  });

  it('"1,222,000" should be parsed as 1222000.0', function(){
    assert.equal(1222000.0, parse_money("1,222,000"));
  });

  it('"-1,222,000" should be parsed as -1222000.0', function(){
    assert.equal(-1222000.0, parse_money("-1,222,000"));
  });

  it('"1,222,0o0" should be parsed as 1222000.0', function(){
    assert.equal(1222000.0, parse_money("1,222,0o0"));
  });

  it('"1.222.000" should be parsed as 1222000.0', function(){
    assert.equal(1222000.0, parse_money("1.222.000"));
  });

  it('"- 1.222.000" should be parsed as -1222000.0', function(){
    assert.equal(-1222000.0, parse_money("- 1.222.000"));
  });

  it('"1.222.0o0" should be parsed as 1222000.0', function(){
    assert.equal(1222000.0, parse_money("1.222.0o0"));
  });

  it('"1 222 000" should be parsed as 1222000.0', function(){
    assert.equal(1222000.0, parse_money("1 222 000"));
  });

  it('"- 1 222 000" should be parsed as -1222000.0', function(){
    assert.equal(-1222000.0, parse_money("- 1 222 000"));
  });

  it('"1 222 00o" should be parsed as 1222000.0', function(){
    assert.equal(1222000.0, parse_money("1 222 00o"));
  });

  it('"1 222 000" should be parsed as 1222000.0', function(){
    assert.equal(1222000.0, parse_money("1 222 000"));
  });

  it('" -1 222 000" should be parsed as -1222000.0', function(){
    assert.equal(-1222000.0, parse_money(" -1 222 000"));
  });

  it('"1 222 00o" should be parsed as 1222000.0', function(){
    assert.equal(1222000.0, parse_money("1 222 00o"));
  });

  it('"2,123" should be parsed as 2123.0', function(){
    assert.equal(2123.0, parse_money("2,123"));
  });

  it('"-2,123" should be parsed as -2123.0', function(){
    assert.equal(-2123.0, parse_money("-2,123"));
  });

  it('"2.123" should be parsed as 2123.0', function(){
    assert.equal(2123.0, parse_money("2.123"));
  });

  it('"-2.123" should be parsed as -2123.0', function(){
    assert.equal(-2123.0, parse_money("-2.123"));
  });

  it('"2,12" should be parsed as 2.12', function(){
    assert.equal(2.12, parse_money("2,12"));
  });

  it('" -2,12" should be parsed as -2.12', function(){
    assert.equal(-2.12, parse_money(" -2,12"));
  });

  it('"" should be parsed as null', function(){
    assert.equal(null, parse_money(""));
  });

  it('"1" should be parsed as 1.0', function(){
    assert.equal(1.0, parse_money("1"));
  });

  it('" -1" should be parsed as -1.0', function(){
    assert.equal(-1.0, parse_money(" -1"));
  });

  it('" " should be parsed as null', function(){
    assert.equal(null, parse_money(" "));
  });

  it('"hello" should be parsed as null', function(){
    assert.equal(null, parse_money("hello"));
  });
})
