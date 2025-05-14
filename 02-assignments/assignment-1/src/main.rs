fn takes_ownership(s: String) {
    // HERE
}

fn makes_copy(x: i32) {
    // HERE
}

fn print_length(s2: &String) {
    // HERE
}

fn print_length(s: String) -> String {
    // HERE
}

fn main() {
    let s = String::from("hello");

    takes_ownership(s);
    // println!("{}", s); // COMPILE ERROR

    let x = 5;
    makes_copy(x);

    let s2 = String::from("world");
    print_length(&s2);

    let s3 = give_ownership_back(String::from("hi"));
    println!("{}", s3);
}