var Gigasecond = function(birthday){
  this.birthday = birthday;
}

Gigasecond.prototype.date = function(){
  return new Date(this.birthday.getTime() + 1000000000000);
}

module.exports = Gigasecond;
