// problem 10
//
// The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
//
// Find the sum of all the primes below two million.
//
// Plan: I believe this is to be as simple as opening shared/primes.txt,
// and summing the values below 2,000,000.  If shared/primes.txt does not yet contain
// values > 2,000,000 then run shared/gen_primes until we reach that point.
//

use std::fs::File;
use std::io::{BufRead, BufReader};

pub fn run() {
    println!("Running problem 10.");

    let mut total: u64 = 0; // Running total
    let prime_cap: u64 = 2000000; // The cap, we want to total primes under this cap

    // Open the file, error if we can't find it
    let f = File::open("../shared/primes.txt");
    let f = match f {
        Ok(file) => file,
        Err(error) => panic!("Could not open the file: {:?}", error),
    };

    // Process the lines, one by one
    let buffered = BufReader::new(f);
    for line in buffered.lines() {
        let line = match line {
            Ok(line) => line,
            Err(error) => panic!("Could not read line: {:?}", error),
        };

        // Convert this line to a u32 and add it to the total if it's < 2,000,000
        let n: u64 = line.parse().unwrap();
        if n < prime_cap {
            total += n;
        }
    }

    println!("Prime total: {}", total);
}
