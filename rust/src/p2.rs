// Project Euler
#[allow(dead_code)]
fn get_next_fib(fib: (i32, i32)) -> (i32, i32) {
    return (fib.1, fib.0 + fib.1);
}

pub fn run() {
    // Find sum of even fibonacci numbers not to exceed four million
    println!("Running problem two.");

    let mut fib: (i32, i32) = (0, 1);
    let mut total: i32 = 0;

    println!("Fib is: {:?}", fib);
    while fib.1 < 4000000 {
        fib = get_next_fib(fib);
        if fib.1 % 2 == 0 {
            total += fib.1;
        }
        println!("Fib is: {:?}", fib);
    }
    println!("Total is: {}", total);
}
