// Returns the queue time for all customers given number of tills
function queueTime(customers, n) {
    const getShortestLine = (queueArray) => {
        let shortestLine = undefined;
        let shortestLength = Number.POSITIVE_INFINITY
        for(let i = 0; i < queueArray.length; i++) {
            if (queueArray[i].totalTime < shortestLength) {
                shortestLine = i;
                shortestLength = queueArray[i].totalTime
            }
        }
        return queueArray[shortestLine]
    }
    const getLongestLine = (queueArray) => {
        let LongestLine = undefined;
        let LongestLength = Number.NEGATIVE_INFINITY
        for(let i = 0; i < queueArray.length; i++) {
            if (queueArray[i].totalTime > LongestLength) {
                LongestLine = i;
                LongestLength = queueArray[i].totalTime
            }
        }
        return queueArray[LongestLine]
    }

    const queues = []
    for(let i=0;i<n;i++) {
        queues.push({
            shoppers: [],
            totalTime: 0
        })
    }

    for(let i= 0; i < customers.length; i++) {
        let shortestLine = getShortestLine(queues) 
        shortestLine.shoppers.push(customers[i])
        shortestLine.totalTime += customers[i]
    }
    
    return getLongestLine(queues).totalTime

}

console.log(queueTime([1,2,3,4,5], 2));
module.exports = {queueTime}