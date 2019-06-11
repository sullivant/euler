// Project Euler
extern crate problems;

use std::env;

// Run the problem
fn main() {
    if env::args().count() != 2 {
        println!("Please supply problem number [eg: 1]");
        return;
    }

    let arg = env::args().nth(1).unwrap();
    let prob: i32 = arg.parse().ok().unwrap_or(1);

    match prob {
        1 => problems::p1::run(),
        2 => problems::p2::run(),
        3 => problems::p3::run(),
        4 => problems::p4::run(),
        5 => problems::p5::run(),
        6 => problems::p6::run(),
        7 => problems::p7::run(),
        8 => problems::p8::run(),
        9 => problems::p9::run(),
        10 => problems::p10::run(),
        11 => problems::p11::run(),
        12 => problems::p12::run(),
        13 => problems::p13::run(),
        14 => problems::p14::run(),
        15 => problems::p15::run(),
        16 => problems::p16::run(),
        17 => problems::p17::run(),
        18 => problems::p18::run(),
        67 => problems::p67::run(),
        x @ _ => println!("Problem {} not ready yet.", x),
    }
}
