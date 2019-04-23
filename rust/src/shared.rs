// Shared functions that many problems may use or need

use std::fs::File;
use std::io;
use std::io::{BufRead, BufReader, Error, ErrorKind};

// Returns a vector containing the prime factors of a supplied number
pub fn prime_factors(n: u64) -> Vec<u64> {
    println!("Getting pf for {}", n);
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

// Returns true if a number is a palindrome (eg: 12321)
pub fn is_palindrome(p: i32) -> bool {
    let v: Vec<u8> = p.to_string().into_bytes();
    let mut vr: Vec<u8> = v.clone();
    vr.reverse();

    return vr == v;
}

// Returns a vector containing the factors of a number
// (source: https://gist.github.com/qolop/71ef78c394db822756d58cac9993db77 )
pub fn get_factors(n: u64) -> Vec<u64> {
    (1..n + 1)
        .into_iter()
        .filter(|&x| n % x == 0)
        .collect::<Vec<u64>>()
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

fn read(path: &str) -> Result<Vec<u64>, io::Error> {
    //TODO: Read only the last line of the file.
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
