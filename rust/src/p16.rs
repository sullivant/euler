// Project Euler
//
// Problem 16.
//
// 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
// What is the sum of the digits of the number 2^1000?

extern crate num;
use num::bigint::ToBigInt;
use num_traits::pow;

pub fn run() {
    println!("Running problem 16.");

    let n = 2.to_bigint().unwrap();
    let pn = pow(n, 1000);

    // Pretty standard way to go from a numeric value to
    // a string, to a vector of chars, then those chars as
    // digits base 10, collected back into... a vector.
    let digits: Vec<_> = pn
        .to_string()
        .chars()
        .map(|d| d.to_digit(10).unwrap())
        .collect();

    let sum: u32 = digits.iter().sum();
    println!("{}", sum);
}
