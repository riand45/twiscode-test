//Decimal to binary, co: input 19, output 10011

function convertDecimalToBinary(value) {
  let bin = 0;
  let rem, i = 1;

  while (value !== 0) {
      rem = value % 2;
      value = parseInt(value / 2);
      bin = bin + rem * i;
      i = i * 10;
  }
  console.log(bin);
}

convertDecimalToBinary(19);