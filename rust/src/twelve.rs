// Project Euler
//
// The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle
// number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28.
//
// We can see that 28 is the first triangle number to have over five divisors.
//
// What is the value of the first triangle number to have over five hundred divisors?

use super::shared;

pub fn run() {
    println!("Running problem 12.");

    let mut triangle: u64 = 0;
    for n in 1..100001 {
        triangle += n;
        let factors: Vec<u64> = shared::get_factors(triangle);

        if n % 500 == 0 {
            println!("Hit {}", n);
        }

        if factors.len() > 500 {
            println!("t:{} = ({})", triangle, factors.len());
            break;
        }
    }
}
