// Shared functions that many problems may use or need
use std::fs::File;
use std::io;
use std::io::{BufRead, BufReader, Error, ErrorKind};
// Returns a vector containing the prime factors of a supplied number
pub fn prime_factors(n: u64) -> Vec<u64> {
    //println!("Getting pf for {}", n);
    let mut factors: Vec<u64> = Vec::new();
    let mut d: u64 = 2;
    let mut x: u64 = n;

    while x > 1 {
        while x % d == 0 {
            factors.push(d);
            x = x / d;
        }
        d += 1;
    }
    return factors;
}

// Returns the count of factors/divisors for a positive integer n
pub fn count_factors(n: u64) -> u64 {
    let mut product: u64 = 1;
    let prime_factors: Vec<u64> = prime_factors(n);
    let mut prime_factors_dedup = prime_factors.clone();
    prime_factors_dedup.dedup();
    for p in prime_factors_dedup.iter() {
        product *= prime_factors.iter().filter(|&n| *n == *p).count() as u64 + 1;
    }

    return product;
}

// Returns a vector containing the factors of a number
// (source: https://gist.github.com/qolop/71ef78c394db822756d58cac9993db77 )
pub fn get_factors(n: u64) -> Vec<u64> {
    let mut f: Vec<u64> = (1..(n / 2) + 1)
        .into_iter()
        .filter(|&x| n % x == 0)
        .collect::<Vec<u64>>();
    f.push(n);
    return f;
}

// Returns true if a number is a palindrome (eg: 12321)
pub fn is_palindrome(p: i32) -> bool {
    let v: Vec<u8> = p.to_string().into_bytes();
    let mut vr: Vec<u8> = v.clone();
    vr.reverse();

    return vr == v;
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

// Reads a file into a vector; useful for a list of numbers.
// See also: shared/primes.txt
fn read(path: &str) -> Result<Vec<u64>, io::Error> {
    let file = File::open(path)?;
    let br = BufReader::new(file);
    let mut v = Vec::new();
    for line in br.lines() {
        let line = line?;
        let n = line
            .trim()
            .parse()
            .map_err(|e| Error::new(ErrorKind::InvalidData, e))?;
        v.push(n);
    }
    Ok(v)
}
