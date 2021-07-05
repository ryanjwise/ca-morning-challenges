function tulipValue(totalDays) {
  let value = 1
  let upDays = 1
  let days = 0
  let profit = true
  for (var x = 0; x < totalDays - 1; x++){
    if (profit) {
      value++
      days++
      if (days === upDays) profit = false
    } else {
      value--
      upDays++
      days = 0
      profit = true
    }
  }
  return value
}

// Don't change this
module.exports = {
  tulipValue,
};