# Rustdoc Types

[Docs](https://docs.rs/rustdoc-types/latest/rustdoc_types/)

This crate contains the type definitions for rustdoc's currently-unstable
`--output-format=json` flag. They can be deserialized with `serde-json` from
the output of `cargo +nightly rustdoc -- --output-format json -Z unstable-options`:

```rust
let json_string = std::fs::read_to_string("./target/doc/rustdoc_types.json")?;
let krate: rustdoc_types::Crate = serde_json::from_str(&json_string)?;

println!("the index has {} items", krate.index.len());
```

## Contributing

This repo is a reexport of
[`rustdoc-json-types`](https://github.com/rust-lang/rust/blob/master/src/rustdoc-json-types/lib.rs)
from the rust repo. Any change to the contents of [`src/`](src/), should be sent
to [`rust-lang/rust`](https://github.com/rust-lang/rust/), via their [normal
contribution
procedures](https://rustc-dev-guide.rust-lang.org/contributing.html). Once
reviewed and merged there, the change will be pulled to this repo and published
to crates.io.

### Release Procedure

1. Run `./update.sh` to pull code from upstream
2. Run `cargo test`
3. Run `./clgen.sh <old_version> <new_version>`
4. Follow printed instructions to commit and push.

## License

Licensed under either of

 * Apache License, Version 2.0
   ([LICENSE-APACHE](LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
 * MIT license
   ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.

### Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in the work by you, as defined in the Apache-2.0 license, shall be
dual licensed as above, without any additional terms or conditions.

