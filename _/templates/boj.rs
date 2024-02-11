use std::{io::{self, Read, Write}};

fn main() {
    let stdout = io::stdout();
    let mut outputs = io::BufWriter::new(stdout.lock());

    let stdin = io::stdin();
    let mut inputs = String::new();


    writeln!(outputs, "Hello World!").unwrap();
}