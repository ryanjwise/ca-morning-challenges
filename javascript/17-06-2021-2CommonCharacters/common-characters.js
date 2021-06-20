function commonCharacters(string1, string2) {
  // Your code here
  const st1Chars = string1.toLowerCase().split("");
  const st2Chars = string2.toLowerCase().split("");

  // return Array.from(new Set(st1Chars.filter(letter => st2Chars.includes(letter)))).join("").replace(/\s+/, '')
  return Array.from(
    new Set(
      st1Chars.filter((letter) => letter !== " " && st2Chars.includes(letter))
    )
  ).join("");
}


module.exports = { commonCharacters };
