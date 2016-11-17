var delinquents = [{
  aka: 'spider melissa',
  type: 'student',
  yob: 1990
}, {
  aka: 'asteroid leon',
  type: 'student',
  yob: 2000
}, {
  aka: 'just chloe',
  type: 'student',
  yob: 2010
}, {
  aka: 'harry',
  type: 'staff',
  yob: 1980
}];

var result = delinquents.filter(function(delinquent) {
  return delinquent.type === 'student'
})
.map(function(delinquent) {
  return 2016 - delinquent.yob
})
.reduce(function(accum, age) {
  return accum + age;
});

delinquents.select do |delinquent|
  delinquent.type == 'student'
end.map do |delinquent|
  2016 - delinquent.yob
end.reduce do |memo, elem|
  memo + elem
end


// total age of students