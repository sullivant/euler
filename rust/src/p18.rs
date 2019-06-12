// Project Euler
//
// Problem 18.
//
// This one helped me learn some iterative stuff, and I have to give great thanks to
// the code I found on github: https://github.com/dhbradshaw/ProjectEulerFastRust
//
// Comments are mine as I work through groking all of it

use super::shared;
use std::cmp::max;

pub fn run() {
    let mut triangle: Vec<Vec<u32>> =
        shared::read_vector("../shared/18.txt").unwrap_or(vec![vec![0]]);
    triangle.reverse();

    let mut agg = (&triangle[0]).to_vec();

    println!("Triangle len: {}", triangle.len());
    for i in 0..(triangle.len() - 1) {
        // For each record in the vector
        agg = highest_values(&triangle[i + 1], &agg);
    }

    println!("{}", agg[0]);
}

// Takes "the next row" and the "current" aggregated row then determines
// which value is the highest (left or right) and builds a new "aggregated"
// row out of that.  To be compared with the next and the next... all the way
// until we are out of rows.
fn highest_values(upper: &Vec<u32>, lower: &Vec<u32>) -> Vec<u32> {
    let l = upper.len();
    let mut v = Vec::new();
    for i in 0..l {
        let agg = max(lower[i], lower[i + 1]) + upper[i];
        v.push(agg)
    }

    return v;
}
