// gen_primes.rs
//
// This simply generates the primes that come after what's already
// stored in a shared text file.
//

use std::env;

pub fn main() {
    let args: Vec<String> = env::args().collect();
    let n: u64 = args[1].parse().unwrap();

    println!("Generating primes after known value: {}", n);

    let file_path: String = String::from("/mnt/d/sandbox/euler/shared/primes.txt");
    println!("File Path: {}", file_path);

    println!("Adding 100 more primes to the list.");
    //for i in ((last_prime + 2)..(last_prime + 10)).step_by(2) {
    for i in ((n + 2)..(n + 10)).step_by(2) {
        println!("Next: {} prime? -> {}", i, is_prime(i));
    }
}

// Returns true or false if this number is prime
pub fn is_prime(n: u64) -> bool {
    println!("Checking: {}", n);

    // Gather the sum of the digits
    let digits: Vec<_> = n
        .to_string()
        .chars()
        .map(|d| d.to_digit(10).unwrap())
        .collect();
    let s: u32 = digits.iter().sum();

    // Check for some common things that make a number NOT prime
    if n < 1 {
        return false;
    }
    if n < 3 {
        return true;
    }
    if s % 3 == 0 {
        return false;
    }
    if s % 9 == 0 {
        return false;
    }

    // Check the longer way.
    let upper_limit: u64 = (n as f64).sqrt().ceil() as u64;
    for i in 2..upper_limit + 1 {
        if n % i == 0 {
            return false;
        }
    }

    return true;
}
