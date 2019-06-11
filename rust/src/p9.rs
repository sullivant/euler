// problem 9
//
// A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
// a2 + b2 = c2
//
// For example, 32 + 42 = 9 + 16 = 25 = 52.
//
// There exists exactly one Pythagorean triplet for which a + b + c = 1000.
// Find the product abc
//
//
// Generating a triple:
// When m and n are any two positive integers (m < n):
// a = n^2 - m^2
// b = 2nm
// c = n^2 + m^2
// Then a, b, and c form a Pythagorean Triple. Additionally, common factors of
// a, b, and c also are triples.  3(2),4(2),5(2) = 6,8,10 = triple.
//
//
//
// Thank you to: https://www.mathblog.dk/pythagorean-triplets/
// I was able to skip the spoiler and really focus on the "theory" here - and come
// to understand why a < target/3 and b < target/2, which greatly helped.

pub fn run() {
    println!("Running problem 9.");

    let target: i32 = 1000;

    'outer: for a in 1..(target / 3) {
        for b in a..(target / 2) {
            let c = target - a - b;

            if a * a + b * b == c * c {
                println!("Got: {} {} {} (prod: {})", a, b, c, a * b * c);
                break 'outer;
            }
        }
    }
}
