// Project Euler
//
// Problem 15.
//
// Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down,
// there are exactly 6 routes to the bottom right corner.
//
// How many such routes are there through a 20×20 grid
//

// This is, basically, a calculation of permutations; right can be = 1, down can be 0.
// Using the formula: C(n, r) = n! / (r! * (n - r)!)
// We get C(4,2) = 4! / (2! * (4-2)!) = 6
//
// Doing this for a 20x20 grid (40 1's + 0's), we get C(40,20) = 40! / (20! * (40-20)!) =
// 137846528820 (A big number...)

// Lets calculat this via Rust, anyway.

extern crate num_bigint as bigint;
use bigint::BigInt;
use bigint::ToBigInt;
use factorial::Factorial;

pub fn run() {
    println!("Running problem 15.");

    let sides: u64 = 20;
    println!("{} x {} = {} moves", sides, sides, sides * 2);

    let n: u64 = sides * 2;
    let r: u64 = sides;

    let mut a: BigInt = BigInt::from(n);
    a = a.factorial();

    println!(
        "C({},{}) = {}",
        n,
        r,
        a //(n.factorial() / (r.factorial() * (n - r).factorial()))
    );
}
