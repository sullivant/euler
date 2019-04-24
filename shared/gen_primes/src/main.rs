// gen_primes.rs
//
// This simply generates the primes that come after what's already
// stored in a shared text file.
//
// It generates them by checking that the supplied number is prime first,
// then walks up the next 1,000,000 numbers, checking each for primality
// and if prime adds them to a vector.
//
// At the end, it prints that vector of primes to a tmp file for review
// to be appended to file_path if approved
//
// It could probably be written to just append them to file_path, but
// I wanted to "baby step" this process.
//

use std::env;
use std::error::Error;
use std::fs::File;
use std::io::Write;
use std::process;

pub fn main() {
    let args: Vec<String> = env::args().collect();
    let n: u64 = args[1].parse().unwrap();
    let upper_limit: u64 = 10000000;

    // If supplied N is not prime, lets bail and check on why
    if !is_prime(n) {
        println!("{} is not prime. check on that.", n);
        return;
    }

    println!("Generating primes after known value: {}", n);

    let file_path: String = String::from("/mnt/d/sandbox/euler/shared/primes.txt");
    println!("File Path: {}", file_path);

    let mut prime_vec: Vec<u64> = Vec::new();
    for i in ((n + 2)..(n + upper_limit)).step_by(2) {
        if is_prime(i) {
            prime_vec.push(i);
        }
    }
    if prime_vec.len() > 0 {
        println!("Got {} primes; writing to file", prime_vec.len());

        if let Err(err) = write_primes(prime_vec) {
            eprintln!("{}", err);
            process::exit(1);
        }
        println!("Wrote to /tmp/new_primes for review.");
    } else {
        println!("No primes found.");
    }
}

// Returns true or false if this number is prime
pub fn is_prime(n: u64) -> bool {
    if n % 100001 == 0 {
        println!("Checking: {}", n);
    }

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

fn write_primes(nums: Vec<u64>) -> Result<(), Box<Error>> {
    let strings: Vec<String> = nums.iter().map(|n| n.to_string()).collect();

    let mut file = File::create("/tmp/new_primes")?;
    writeln!(file, "{}", strings.join("\n"))?;
    Ok(())
}
