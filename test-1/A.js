//Binary to decimal, co: input 1001, output 9

function convertBinaryToDecimal(value){
  let temp = 0
  let pow = 0

  for (let i=value.length-1; i>=0; i--) {
      let r=Math.pow(2, pow)

      temp += r * parseInt(value[i],10)

      pow++
  }

  console.log(temp)
}

convertBinaryToDecimal("1001")