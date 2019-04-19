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
