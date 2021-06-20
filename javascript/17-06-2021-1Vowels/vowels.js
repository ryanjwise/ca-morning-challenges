function vowels(string) {
	// List vowels for comparison
	const vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
	// Search string
	// Return Array 
	return string.split("").filter(letter => vowels.includes(letter))
}

module.exports = {vowels}