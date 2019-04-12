// Project Euler

#[allow(dead_code)]
mod euler {
    pub mod one {
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
    }

    pub mod two {
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
    }
}

fn main() {
    euler::two::run();
}
