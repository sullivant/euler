// Project Euler - problem 5
//
// What is the smallest positive number that is evenly divisible by all
// of the numbers from 1 to 20?

pub fn run() {
    println!("Running problem 5.");

    // Brute force this, starting after the example number given in the description
    // on the Project Euler site.
    for x in (2520i64..999999999999).step_by(2520) {
        // Start at 2520, stepping by 2520
        let mut c: i32 = 0;

        // We only need to check to see if they are divisible by the following list
        // since we already know about 1-10
        for d in [11, 12, 13, 14, 15, 16, 17, 18, 19, 20].iter() {
            // Check primes
            if x % d != 0 {
                c = 1;
            }
        }
        // If c is still 0 here, we have a candidate
        if c == 0 {
            println!("Candidate: {}", x);
            break;
        }
    }
}
