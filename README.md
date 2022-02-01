# Rustdoc Types

[Docs](https://doc.rust-lang.org/nightly/nightly-rustc/rustdoc_json_types/index.html)

This is an export of [`rustdoc-json-types`](https://github.com/rust-lang/rust/blob/master/src/rustdoc-json-types/lib.rs)

## Release Procedure

1. Run `./update.sh` to pull code from upstream
2. Run `cargo test`
3. Update `version` field in `Cargo.toml`
4. `git add` and `git commit` changed files
5. `git tag vMAJOR.MINOR.PATCH`
6. `git push --tags`
7. `git push`
7. `cargo publish`

## License

Licensed under either of

 * Apache License, Version 2.0
   ([LICENSE-APACHE](LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
 * MIT license
   ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.

## Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in the work by you, as defined in the Apache-2.0 license, shall be
dual licensed as above, without any additional terms or conditions.

