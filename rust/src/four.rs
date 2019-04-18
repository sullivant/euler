// Project Euler - problem 4
// Find the largest palindrome made from the product of two 3-digit numbers.
//
// Smallest possible product of two 3-digit numbers: 100000 (100 * 100)
// Largest possible product of two 3-digit numbers: 998001 (999 * 999)
//

pub fn run() {
    println!("Running problem 4");

    let s: bool = is_palindrome(121);

    println!("check: {}", s);
}

fn is_palindrome(p: u32) -> bool {
    println!("Testing: {}", p);

    let v: Vec<u8> = p.to_string().into_bytes();
    let mut vr: Vec<u8> = v.clone();
    vr.reverse();

    return vr == v;
}
