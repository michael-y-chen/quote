

function calculateSmallestAngle(timeOfDay) {

    /* getting hr-mi-sec */
    time=timeOfDay.split(":")
    
    /* validate string */
    time.forEach( function (ele){
        if (isNaN(ele)){
            throw "String is not valid"
        }
    })
    if (time[0]>23 || time[1]>59 ||time[2]>59){
        throw "String is not valid"
    }
    
    /* convert into numbers */
    time[0]=parseInt(time[0])%12
    time[1]=parseInt(time[1])%60
    time[2]=parseInt(time[2])%60
    
    /* actual hour/min/sec in float */
    sec = time[2]
    min = time[1]+sec/60
    hour = time[0]+min/60
    
    /* hands angle from 12 */
    hourAngle = 360*hour/12
    minAngle = 360*min/60
    secAngle = 360*sec/60
     
    var anglesArray=[]
    
    anglesArray = twoAngles(anglesArray, hourAngle, minAngle)
    anglesArray = twoAngles(anglesArray, hourAngle, secAngle)
    anglesArray = twoAngles(anglesArray, secAngle, minAngle)

    minAngle = Math.min.apply(0,anglesArray)
    
    return minAngle.toFixed(2)

} 
                                     
function twoAngles(anglesArray, firstAngle, secondAngle){
    angle1 = Math.abs(firstAngle-secondAngle)
    anglesArray.push(angle1)
    anglesArray.push(360-angle1)
    return anglesArray
}
