// Shared functions that many problems may use or need
use std::error::Error;
use std::fs::File;

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

// Loads a passed file path into a vector of vector<u32> values.  
// worked well for problems 18 and 67.
pub fn read_vector(file: &str) -> Result<Vec<Vec<u32>>, Box<dyn Error>> {
    let file_path = String::from(file);
    let file = File::open(file_path)?;
    let mut rdr = csv::ReaderBuilder::new()
        .has_headers(false)
        .delimiter(b' ')
        .flexible(true)
        .from_reader(file);

    // A vector of Vec<u32> records, which represents the data
    // in the source file as integer values
    let mut file_records: Vec<Vec<u32>> = Vec::new();

    // For each of the CSV reader records, lets parse it into the
    // proper data structure
    for result in rdr.records() {
        let record = result?;

        // A vector of u32 to represent this CSV file's row
        let mut rec_vec: Vec<u32> = Vec::new();
        for field in record.iter() {
            let val: u32 = field.parse().unwrap_or(0);
            rec_vec.push(val);
        }

        // Push it onto the master file's Vector of Vec<u32>s
        file_records.push(rec_vec);
    }

    // Return OK with the rows
    Ok(file_records)
}

