# Rustdoc Types

[Docs](https://doc.rust-lang.org/nightly/nightly-rustc/rustdoc_json_types/index.html)

This is an export of [`rustdoc-json-types`](https://github.com/rust-lang/rust/blob/master/src/rustdoc-json-types/lib.rs)

## Release Procedure

1. Run `./update.sh` to pull code from upstream
2. Run `cargo test`
3. Run `./clgen.sh <old_version> <new_version>`
4. Edit the `TODO` section in `CHANGELOG.md` to include what was done in this release.
5. `git add .`
6. `git commit -m v<new_version>`
7. `cargo publish`
8. `git tag v<new_version>`
9. `git push`
10. `git push --tags`



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

