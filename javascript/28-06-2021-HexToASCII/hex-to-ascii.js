function hexStringToAscii(hexString) {
  hexStringArray = hexString.split(" ");
  return hexStringArray
    .map((num) => String.fromCharCode(parseInt(num, 16)))
    .join("");
}

module.exports = { hexStringToAscii };