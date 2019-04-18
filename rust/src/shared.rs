// Shared functions that many problems may use or need

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

// Returns a vector of the divisors of a supplied number
pub fn divisors(n: f32) {
    //let mut divs: Vec<u64> = Vec::new();

    let f: f32 = n.sqrt().floor();
    println!("{}", f);

    //for i in 2..f {}
}
