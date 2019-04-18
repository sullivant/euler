// Project Euler - problem 3
// What is the largest prime factor of the number 600851475143
use super::shared;

pub fn run() {
    println!("Running problem 3");
    
    let x: Vec<u64> = shared::prime_factors(600851475143);
    println!("{:?}",x);
}
