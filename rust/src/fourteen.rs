// Project Euler
//
// Problem 14.
//
// The following iterative sequence is defined for the set of positive integers:
//
// n → n/2 (n is even)
// n → 3n + 1 (n is odd)
//
// Using the rule above and starting with 13, we generate the following sequence:
//
// 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
// It can be seen that this sequence (starting at 13 and finishing at 1)
// contains 10 terms.
// Although it has not been proved yet (Collatz Problem), it is thought that
// all starting numbers finish at 1.
// Which starting number, under one million, produces the longest chain?
//
// NOTE: Once the chain starts the terms are allowed to go above one million.
//

pub fn run() {
    println!("Running problem 14.");

    let mut v: Vec<(i64, i64)> = Vec::new();
    let mut biggest_chain: (i64, i64) = (0, 0);

    for i in 1..1000000 {
        let mut num = i.clone();
        let mut chain_count: i64 = 1;
        println!("Chaining: {}", num);

        while num != 1 {
            // Check for even or odd
            if num % 2 == 0 {
                num = num / 2;
            } else {
                num = 3 * num + 1;
            }
            chain_count += 1;
        }
        v.push((i, chain_count));
    }

    for r in v.iter() {
        if r.1 > biggest_chain.1 {
            biggest_chain.1 = r.1;
            biggest_chain.0 = r.0;
        }
    }

    println!("Biggest Chain: {:?}", biggest_chain);
}
