
function palindrome(value) {
  let temp = "";

  for (let i = value.length - 1; i >= 0; i-- ){
    temp = temp + value.charAt(i);
  }

  let tempSplit = temp.split(" ");
  let valueSplit = value.split(" ");

  console.log(tempSplit);
  console.log(valueSplit);

  console.log(temp === value);

}

palindrome('aku');