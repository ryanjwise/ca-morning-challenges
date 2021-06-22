const findLastIndex = (array, needle) => {
  let location = -1;
  const searchKey = Object.keys(needle)[0];
  const searchValue = Object.values(needle)[0];
  for (let i = array.length - 1; i >= 0; i--) {
    if (searchKey in array[i]) {
			if (array[i][searchKey] == searchValue) {
				location = i
				break;
			};
    }
  }
	return location
};

const users = [
  { id: 1, name: "Bob", last: "Brown" },
  { id: 2, name: "Ted", last: "White" },
  { id: 3, name: "Matthew", last: "McConaughey" },
  { id: 4, name: "Kanye", last: "West" },
];

console.log(findLastIndex(users, {
  name: "Kanye",
}))

module.exports = { findLastIndex };
