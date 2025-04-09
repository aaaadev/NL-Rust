fn main() {
    println!("{} {} {} {} {} {}", std::mem::size_of::<i8>(), std::mem::size_of::<i128>(), std::mem::size_of::<u16>(), std::mem::size_of::<usize>(), std::mem::size_of::<bool>(), std::mem::size_of::<()>());
}