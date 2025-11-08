use colored::*;

fn main() {
    println!("{}", "Hello from Rust built with Nix!".green().bold());
    println!("{}", "Nix makes Rust builds reproducible!".cyan());
}