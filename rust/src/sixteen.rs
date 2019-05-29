// Project Euler
//
// Problem 16.
//
// 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
// What is the sum of the digits of the number 2^1000?

extern crate bigint;
use bigint::U512;

pub fn run() {
    println!("Running problem 16.");
    let mut n = U512::from_dec_str("2").expect("invalid");

    for _i in 1..1000 {
        n = n * U512::from_dec_str("2").expect("invalid");
    }
    println!("{}", n);
}
