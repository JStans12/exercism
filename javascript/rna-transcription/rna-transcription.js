var DnaTranscriber = function() {};

DnaTranscriber.prototype.toRna = function(strand){
  var swap = {'C' : 'G', 'G' : 'C', 'A' : 'U', 'T' : 'A'};

  rnaStrand = ""

  for(var i = 0; i < strand.length; i++){
    rnaStrand += swap[strand[i]];
  }

  return rnaStrand
}

module.exports = DnaTranscriber;
