var clock = require ('./clockAngle.js')
var sa = require ('./sumArray.js')

console.log ("Clock Angle")
str="18:53:45"
console.log (str+"->"+clock.calculateSmallestAngle(str))
str="23:00:01"
console.log (str+"->"+clock.calculateSmallestAngle(str))
str="11:59:59"
console.log (str+"->"+clock.calculateSmallestAngle(str))
str="12:00:01"
console.log (str+"->"+clock.calculateSmallestAngle(str))


console.log ("Sum Array")
var inp=[ 1, 2, 3, 4 ]
console.log ("1,2,3,4 =>"+sa.sumArray(inp))
inp = [ [ 1 ], [ 2, 3 ], [ 4 ] ]
console.log ("1,[2,3],[4] =>"+sa.sumArray(inp))
inp = [ [ 1 ], [ [ 2, 3 ], [ 4 ] ] ]
console.log ("1,[[2,3],[4]] =>"+sa.sumArray(inp))

