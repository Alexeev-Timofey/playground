use std::io::{empty, Read};

fn main() {
    println!("Start");
    let mut e = empty();
    let mut b = [0; 8];
    loop {
	e.read(& mut b);
    }
}
