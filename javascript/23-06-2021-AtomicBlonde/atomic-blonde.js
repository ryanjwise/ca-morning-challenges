const atomicBlonde = (num) => {
  const digits = Array.from(String(num), Number)
  const Product = digits.reduce((total, el) => total *= el)
  const Sum = digits.reduce((total, el) => total += el)
  return (Product === Sum)
};

module.exports = { atomicBlonde };
