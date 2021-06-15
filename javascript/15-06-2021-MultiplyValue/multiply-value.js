function multiplyValue(value, times) {
  if (!Object.is(typeof times, "number")) return null;
  const valueString = Object.is(typeof value, "string");
  if (Object.is(typeof value, "number") || valueString) {
    if (valueString) {
      let result = [];
      for (let i = 0; i < times; i++) {
        result[i] = value;
      }
      return result.join("");
    } else {
      console.log("here");
      return value * times;
    }
  } else {
    return null;
  }
}

module.exports = { multiplyValue };
