use std::error::Error;

fn main() -> Result<(), Box<dyn Error>> {
    let json_string = std::fs::read_to_string("./target/doc/rustdoc_types.json")?;
    let krate: rustdoc_types::Crate = serde_json::from_str(&json_string)?;
    println!("the index has {} items", krate.index.len());

    Ok(())
}
