function sumArray (arr){
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

exports.sumArray = sumArray

