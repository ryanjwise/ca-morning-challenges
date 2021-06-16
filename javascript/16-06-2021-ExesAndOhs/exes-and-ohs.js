const exesAndOhs = (string) => {
  // Instantiate x & o counters
  let [x, o] = [0, 0];
  // Convert string to lowercase.
  // Convert string to character array
  const chars = string.toLowerCase().split("");
  // Iterate through array counting each x and o counters
  for (let char of chars) {
    if (char == "x") {
      x++;
    } else if (char == "o") {
      o++;
    }
  }
  // Compare counts
  // Return true if even else return false
  return x === o ? true : false;
};

console.log(exesAndOhs("xxxooo"));
// Leave this line
module.exports = { exesAndOhs };
