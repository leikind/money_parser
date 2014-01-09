
parseMoney = function(moneyString){

  var cleanedUp = moneyString.
    replace(/\s+/g,'').
    replace(/(\d)o/ig, function(match, p1, offset, string){
      return p1 + '0';
    }).
    replace(/o(\d)/ig, function(match, p1, offset, string){
      return '0' + p1;
    }).
    replace(/\s+/,'').
    replace(/,/g, '.').
    replace(/[^\d\.-]/g, '')


  if (cleanedUp == ""){
    return null;
  }

  var chunks = cleanedUp.split(".");

  var normalized;

  if (chunks.length == 1){
    normalized = cleanedUp;
  }else{
    if (chunks[chunks.length - 1].length > 2){
      normalized = chunks.join("")
    }else{
      normalized = chunks.slice(0, chunks.length - 1).join("") +
        '.' + chunks[chunks.length - 1] ;
    }
  }

  return parseFloat(normalized);
};

if (module){
  module.exports = parseMoney;
}else{
  window['parseMoney'] = parseMoney;
}
