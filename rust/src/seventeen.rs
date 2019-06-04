// Project Euler
//
// Problem 17.
//
// If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 +
// 3 + 5 + 4 + 4 = 19 letters used in total.
//
// If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many
// letters would be used?
//
// NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23
// letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out
// numbers is in compliance with British usage.

extern crate numbers;
extern crate regex;

use regex::Regex;

pub fn run() {
    println!("Running problem 17.");

    let re = Regex::new("[ -]+").unwrap();
    let mut letter_count: usize = 0;

    for i in 1..1001 {
        let num_str = numbers::convert(numbers::Language::English, i);
        let res = re.replace_all(num_str.as_str(), "");
        letter_count += res.len();
        println!("{} = {}", res, res.len());
    }

    println!("Total: {}", letter_count);
}
