// Project Euler - problem 8
//
// Find the thirteen adjacent digits in the 1000-digit number that
// have the greatest product. What is the value of this product?
//

pub fn run() {
    println!("Running problem 8");

    let big_number: String = "\
                              73167176531330624919225119674426574742355349194934\
                              96983520312774506326239578318016984801869478851843\
                              85861560789112949495459501737958331952853208805511\
                              12540698747158523863050715693290963295227443043557\
                              66896648950445244523161731856403098711121722383113\
                              62229893423380308135336276614282806444486645238749\
                              30358907296290491560440772390713810515859307960866\
                              70172427121883998797908792274921901699720888093776\
                              65727333001053367881220235421809751254540594752243\
                              52584907711670556013604839586446706324415722155397\
                              53697817977846174064955149290862569321978468622482\
                              83972241375657056057490261407972968652414535100474\
                              82166370484403199890008895243450658541227588666881\
                              16427171479924442928230863465674813919123162824586\
                              17866458359124566529476545682848912883142607690042\
                              24219022671055626321111109370544217506941658960408\
                              07198403850962455444362981230987879927244284909188\
                              84580156166097919133875499200524063689912560717606\
                              05886116467109405077541002256983155200055935729725\
                              71636269561882670428252483600823257530420752963450"
        .to_string();

    let slice_size = 13;

    println!("Master String is {} digits long.", big_number.len());
    println!("Slice size is {}", slice_size);
    println!(
        "First slice: {}, Last slice: {}",
        &big_number[0..13],
        &big_number[987..1000]
    );

    let mut greatest: u64 = 0u64;

    // Because we know where our last slice will start, we only need to count up to that number
    for i in 0..988 {
        let text = &big_number[i..(i + slice_size)].to_string();

        // Create a vector of the values contained in the slice (string)
        let v: Vec<u64> = text
            .chars()
            .flat_map(|ch| ch.to_digit(10).map(u64::from))
            .collect();

        // Iterate over them, creating a product
        let prod = v.iter().fold(1, |prod, x| prod * x);

        // If we hit a new max, save it
        if prod > greatest {
            greatest = prod;
        }
    }
    println!("greatest product found: {}", greatest);
}
