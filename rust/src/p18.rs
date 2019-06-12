// Project Euler
//
// Problem 18.
//
// This one helped me learn some iterative stuff, and I have to give great thanks to
// the code I found on github: https://github.com/dhbradshaw/ProjectEulerFastRust
//
// Comments are mine as I work through groking all of it

use std::cmp::max;

extern crate csv;
use std::error::Error;
use std::fs::File;

fn process_file() -> Result<Vec<Vec<u32>>, Box<dyn Error>> {
    let file_path = String::from("../shared/18.txt");
    let file = File::open(file_path)?;
    let mut rdr = csv::ReaderBuilder::new()
        .has_headers(false)
        .delimiter(b' ')
        .flexible(true)
        .from_reader(file);

    // A vector of Vec<u32> records, which represents the data
    // in the source file as integer values
    let mut file_records: Vec<Vec<u32>> = Vec::new();

    // For each of the CSV reader records, lets parse it into the
    // proper data structure
    for result in rdr.records() {
        let record = result?;

        // A vector of u32 to represent this CSV file's row
        let mut rec_vec: Vec<u32> = Vec::new();
        for field in record.iter() {
            let val: u32 = field.parse().unwrap_or(0);
            rec_vec.push(val);
        }

        // Push it onto the master file's Vector of Vec<u32>s
        file_records.push(rec_vec);
    }

    // Return OK with the rows
    Ok(file_records)
}

pub fn run() {
    let mut triangle: Vec<Vec<u32>> = process_file().unwrap_or(vec![vec![0]]);
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



