var Hamming = function() {};

Hamming.prototype.compute = function(first, second){

  if(first.length != second.length){
    throw new Error('DNA strands must be of equal length.');
  }

  var mutation = 0;

  for(var i = 0; i < first.length; i++){
    if(first[i] != second[i]){
      mutation ++;
    }
  }

  return mutation;
}

module.exports = Hamming;
