#let num_to_str(num, digits: 0) = {
  num = str(calc.round(float(num), digits: digits))

  // if digits <= 0, calc.round has the desired behaviour
  if digits <= 0 {
    return num
  }

  // here, desired digits will be strictly positive.
  // therefore, the string should contain a decimal point.
  // If it does not, the number is whole and it should be
  // concatinated at the end.
  if not num.contains(".") {
    num += "."
  }

  let i = num.position(".")

  // while the number of digits is less than the desired number,
  // concatenate a zero to the end.
  while num.slice(i+1).len() < digits {
    num += "0"
  }

  return num
}
