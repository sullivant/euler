// Project Euler
#[allow(dead_code)]
pub fn run() {
    // List the sum of all numbers below 1000 that are multiples of 3 or 5
    println!("Running problem one.");

    let mut total = 0;

    for i in 1..1000 {
        if i % 3 == 0 {
            total += i;
        } else if i % 5 == 0 {
            total += i;
        }
    }

    println!("Total is: {}", total);
}
