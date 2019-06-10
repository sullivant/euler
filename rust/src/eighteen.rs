// Project Euler
//
// Problem 18.
//
// This one helped me learn some iterative stuff, and I have to give great thanks to
// the code I found on github: https://github.com/dhbradshaw/ProjectEulerFastRust
//
// Comments are mine as I work through groking all of it

use std::cmp::max;

pub fn run() {
    let triangle: Vec<Vec<u32>> = vec![
        vec![04, 62, 98, 27, 23, 09, 70, 98, 73, 93, 38, 53, 60, 04, 23],
        vec![63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31],
        vec![91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48],
        vec![70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57],
        vec![53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14],
        vec![41, 48, 72, 33, 47, 32, 37, 16, 94, 29],
        vec![41, 41, 26, 56, 83, 40, 80, 70, 33],
        vec![99, 65, 04, 28, 06, 16, 70, 92],
        vec![88, 02, 77, 73, 07, 63, 67],
        vec![19, 01, 23, 75, 03, 34],
        vec![20, 04, 82, 47, 65],
        vec![18, 35, 87, 10],
        vec![17, 47, 82],
        vec![95, 64],
        vec![75],
    ];

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