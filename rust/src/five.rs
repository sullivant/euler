// Project Euler - problem 5
//
// What is the smallest positive number that is evenly divisible by all
// of the numbers from 1 to 20?
//

// Div by 2?
// Div by 5?
// Div by 7?
// Div by 11?
// Div by 13?
// Div by 17?
// Div by 19?

pub fn run() {
    println!("Running problem 5");

    'outer: for i in 20i64..99999999999999 {
        let mut c: i32 = 0;
        if i % 100000 == 0 {
            println!("Got to {}", i);
        }

        for n in 1..20 {
            if i % n == 0 {
                c += 1;
            } else {
                continue 'outer;
            }
        }
        if c == 20 {
            println!("{} is div by 1=20", i);
            break 'outer;
        }
    }
}
