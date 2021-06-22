function remove(items, callback) {
	// your code goes here
	const removed = []
	//Current issue as removing an item messes with index and count is unsuccessful
	for(index in items){
		if (removecallbackrFunction(items[index])){
			removed.push(items[index])
			items.splice(index, 1)
		}
	}
	return removed
}

function removerFunction(item) {
	// Your code goes here
	// Should return true if item begins with 't' and false otherwise
	return (item.charAt(0) == 't' || item.charAt(0) =='T');
}

let people = ["tanya", "sue", "john", "garret"];
let removed = remove(people, removerFunction) ; // should remove "tanya" from people and return it in an array
console.log(people);  // should log: ["sue", "john", "garret"]
console.log(removed); // should log: ["tanya"]

module.exports = {remove, removerFunction};