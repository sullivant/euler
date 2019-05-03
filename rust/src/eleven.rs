// problem 11
//
//
// What is the greatest product of four adjacent numbers in the same direction (up, down, left,
// right, or diagonally) in the 20×20 grid?
//
// 08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08
// 49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00
// 81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65
// 52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91
// 22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80
// 24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50
// 32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70
// 67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21
// 24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72
// 21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95
// 78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92
// 16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57
// 86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58
// 19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40
// 04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66
// 88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69
// 04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36
// 20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16
// 20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54
// 01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48
//
//
// Plan:
// I think this can be tackled by treating this matrix of numbers as cells that are
// "walkable" like a game - I want to do some boundary some/none checking examples
// anyway; it's a good time to learn that.  So, if I treat this like it's available
// moves on a board, I might be able to have functions like get_east, get_north, etc.
// and if the move is invalid, it can return a vector of zeros, which will multiply
// to zero anyway.
//

pub fn run() {
    println!("Running problem 11.");

    // let's start by making a vector of vectors.

    let v: Vec<Vec<i32>> = get_vec();

    //    let res = match divide(2.0, 0.0) {
    //        Some(x) => x,
    //        None => 0.0,
    //   };
    //   println!("{}", res);

    let row: Vec<i32> = match v.get(0) {
        Some(r) => r.to_vec(),
        None => [0, 0, 0, 0].to_vec(),
    };
    println!("r: {:?}", row);
    println!("e: {:?}", get_east(0, 0, &v));
    println!("w: {:?}", get_west(0, 0, &v));
    println!("s: {:?}", get_south(16, 0, &v));
}

// Returns a vector containing the values (r,c) to (r,c+4) or returns 0
// if the move is invalid
pub fn get_east(r: usize, c: usize, v: &Vec<Vec<i32>>) -> (Vec<i32>) {
    match v.get(r) {
        None => [0, 0, 0, 0].to_vec(),
        Some(r) => match r.get(c..c + 4) {
            None => [0, 0, 0, 0].to_vec(),
            Some(e) => e.to_vec(),
        },
    }
}

// Returns a vector containing the values (r,c) to (r,c-4) or returns 0
// if the move is invalid
pub fn get_west(r: usize, c: usize, v: &Vec<Vec<i32>>) -> (Vec<i32>) {
    if c < 4 {
        return [0, 0, 0, 0].to_vec();
    }

    match v.get(r) {
        None => [0, 0, 0, 0].to_vec(),
        Some(r) => match r.get(c - 3..c + 1) {
            None => [0, 0, 0, 0].to_vec(),
            Some(e) => e.to_vec(),
        },
    }
}

//pub fn get_north(r: usize, c: usize, v: &Vec<Vec<i32>>) -> (Vec<i32>) {}

pub fn get_south(r: usize, c: usize, v: &Vec<Vec<i32>>) -> (Vec<i32>) {
    let mut return_vec: Vec<i32> = Vec::new();

    let rows = match v.get(r..r + 4) {
        None => {
            return [0, 0, 0, 0].to_vec();
        }
        Some(rows) => rows,
    };

    // rows here is all 4 of our south rows.   lets collect the columns into a vec
    // to return from the function.
    for i in 0..4 {
        let n: i32 = match rows[i].get(c) {
            None => 0,
            Some(c) => *c,
        };
        return_vec.push(n);
    }

    return return_vec;
}

// Just returns a giant vector of vectors that contains our working dataset/frame.
pub fn get_vec() -> (Vec<Vec<i32>>) {
    let mut v: Vec<Vec<i32>> = Vec::new();
    v.push(
        [
            08, 02, 22, 97, 38, 15, 00, 40, 00, 75, 04, 05, 07, 78, 52, 12, 50, 77, 91, 08,
        ]
        .to_vec(),
    );
    v.push(
        [
            49, 49, 99, 40, 17, 81, 18, 57, 60, 87, 17, 40, 98, 43, 69, 48, 04, 56, 62, 00,
        ]
        .to_vec(),
    );
    v.push(
        [
            81, 49, 31, 73, 55, 79, 14, 29, 93, 71, 40, 67, 53, 88, 30, 03, 49, 13, 36, 65,
        ]
        .to_vec(),
    );
    v.push(
        [
            52, 70, 95, 23, 04, 60, 11, 42, 69, 24, 68, 56, 01, 32, 56, 71, 37, 02, 36, 91,
        ]
        .to_vec(),
    );
    v.push(
        [
            22, 31, 16, 71, 51, 67, 63, 89, 41, 92, 36, 54, 22, 40, 40, 28, 66, 33, 13, 80,
        ]
        .to_vec(),
    );
    v.push(
        [
            24, 47, 32, 60, 99, 03, 45, 02, 44, 75, 33, 53, 78, 36, 84, 20, 35, 17, 12, 50,
        ]
        .to_vec(),
    );
    v.push(
        [
            32, 98, 81, 28, 64, 23, 67, 10, 26, 38, 40, 67, 59, 54, 70, 66, 18, 38, 64, 70,
        ]
        .to_vec(),
    );
    v.push(
        [
            67, 26, 20, 68, 02, 62, 12, 20, 95, 63, 94, 39, 63, 08, 40, 91, 66, 49, 94, 21,
        ]
        .to_vec(),
    );
    v.push(
        [
            24, 55, 58, 05, 66, 73, 99, 26, 97, 17, 78, 78, 96, 83, 14, 88, 34, 89, 63, 72,
        ]
        .to_vec(),
    );
    v.push(
        [
            21, 36, 23, 09, 75, 00, 76, 44, 20, 45, 35, 14, 00, 61, 33, 97, 34, 31, 33, 95,
        ]
        .to_vec(),
    );
    v.push(
        [
            78, 17, 53, 28, 22, 75, 31, 67, 15, 94, 03, 80, 04, 62, 16, 14, 09, 53, 56, 92,
        ]
        .to_vec(),
    );
    v.push(
        [
            16, 39, 05, 42, 96, 35, 31, 47, 55, 58, 88, 24, 00, 17, 54, 24, 36, 29, 85, 57,
        ]
        .to_vec(),
    );
    v.push(
        [
            86, 56, 00, 48, 35, 71, 89, 07, 05, 44, 44, 37, 44, 60, 21, 58, 51, 54, 17, 58,
        ]
        .to_vec(),
    );
    v.push(
        [
            19, 80, 81, 68, 05, 94, 47, 69, 28, 73, 92, 13, 86, 52, 17, 77, 04, 89, 55, 40,
        ]
        .to_vec(),
    );
    v.push(
        [
            04, 52, 08, 83, 97, 35, 99, 16, 07, 97, 57, 32, 16, 26, 26, 79, 33, 27, 98, 66,
        ]
        .to_vec(),
    );
    v.push(
        [
            88, 36, 68, 87, 57, 62, 20, 72, 03, 46, 33, 67, 46, 55, 12, 32, 63, 93, 53, 69,
        ]
        .to_vec(),
    );
    v.push(
        [
            04, 42, 16, 73, 38, 25, 39, 11, 24, 94, 72, 18, 08, 46, 29, 32, 40, 62, 76, 36,
        ]
        .to_vec(),
    );
    v.push(
        [
            20, 69, 36, 41, 72, 30, 23, 88, 34, 62, 99, 69, 82, 67, 59, 85, 74, 04, 36, 16,
        ]
        .to_vec(),
    );
    v.push(
        [
            20, 73, 35, 29, 78, 31, 90, 01, 74, 31, 49, 71, 48, 86, 81, 16, 23, 57, 05, 54,
        ]
        .to_vec(),
    );
    v.push(
        [
            01, 70, 54, 71, 83, 51, 54, 69, 16, 92, 33, 48, 61, 43, 52, 01, 89, 19, 67, 48,
        ]
        .to_vec(),
    );

    return v;
}
