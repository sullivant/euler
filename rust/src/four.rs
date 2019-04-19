// Project Euler - problem 4
// Find the largest palindrome made from the product of two 3-digit numbers.
//
// Smallest possible product of two 3-digit numbers: 100000 (100 * 100)
// Largest possible product of two 3-digit numbers: 998001 (999 * 999)
//
use super::shared;

pub fn run() {
    println!("Running problem 4");

    for l in (100..999).rev() {
        for r in (100..999).rev() {
            let b: bool = shared::is_palindrome(l * r);
            if b {
                println!("Got Palindrome: {} ( {} * {} )", l * r, l, r);
            }
        }
    }
}
