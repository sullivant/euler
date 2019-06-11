// Project Euler - problem 6
//
// Find the difference between the sum of the squares of the first one hundred natural numbers and
// the square of the sum.

pub fn run() {
    println!("Running problem 6.");

    let sum_of_squares: i32 = (1..101).map(|x| x * x).collect::<Vec<i32>>().iter().sum();
    let s: i32 = (1..101).sum();
    let square_of_sum: i32 = s * s;
    println!(
        "{:?} vs {:?} diff: {}",
        sum_of_squares,
        square_of_sum,
        square_of_sum - sum_of_squares
    );
}
