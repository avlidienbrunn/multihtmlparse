extern crate base64;
use base64::{Engine as _, engine::{general_purpose}};
use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();
    let document = scraper::Html::parse_document(&args[1]);
    println!("{}: {}", "scraper", general_purpose::STANDARD.encode(document.html()))
    
}
