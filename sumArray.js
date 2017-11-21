

var inp=[ 1, 2, 3, 4 ]  
console.log ("1,2,3,4 =>"+sumArray(inp))
inp = [ [ 1 ], [ 2, 3 ], [ 4 ] ]  
console.log ("1,[2,3],[4] =>"+sumArray(inp))
inp = [ [ 1 ], [ [ 2, 3 ], [ 4 ] ] ]
console.log ("1,[[2,3],[4]] =>"+sumArray(inp))


 
 
 function sumArray(arr) {
    var result=0
    arr.forEach (function (ele){
        if (!isNaN(ele)){
            result+=parseInt(ele)
        }else{
            if (ele instanceof Array){
                result += parseInt(sumArray(ele))
            }else{
                throw "Invalid input"
            }
        }
    });
    return result
} 

