<a name="v0.56.0"></a>
# [v0.56.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.56.0) - 2025-09-05

TODO: Changelog.

- Format Version: 56
- Upstream Commit: [`ab0ee84eac9732e4e81e559c688846b4c1bd400a`](https://github.com/rust-lang/rust/commit/ab0ee84eac9732e4e81e559c688846b4c1bd400a)
- Diff: [v0.55.0...v0.56.0](https://github.com/rust-lang/rustdoc-types/compare/v0.55.0...v0.56.0)

<a name="v0.55.0"></a>
# [v0.55.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.55.0) - 2025-08-02

**Breaking Change**: Add `Attribute::MacroUse` variant.
This means `#[macro_use]` is no longer represented by `Attribute::Other`
((rust#144700)[https://github.com/rust-lang/rust/pull/144700]).

- Format Version: 55
- Upstream Commit: [`a33e084afe698e0a025211abd6dc1c9a4bb22e9d`](https://github.com/rust-lang/rust/commit/a33e084afe698e0a025211abd6dc1c9a4bb22e9d)
- Diff: [v0.54.0...v0.55.0](https://github.com/rust-lang/rustdoc-types/compare/v0.54.0...v0.55.0)

<a name="v0.54.0"></a>
# [v0.54.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.54.0) - 2025-07-17

**Breaking Change**: Change `Item::attrs` from `Vec<String>` to
`Vec<Attribute>`. `Attribute` is a new enum that contains variants for different
attributes, and a catch-all `Other` varient. This will mean rustdoc-json
consumers won't need to parse common attributes. Changes to the stringified
representation in `Attribute::Other` won't cause a new `FORMAT_VERSION`
([rust#142936](https://github.com/rust-lang/rust/pull/142936)).

- Format Version: 54
- Upstream Commit: [`078332fdc8e11f7ff8253c019085098538ec3c2a`](https://github.com/rust-lang/rust/commit/078332fdc8e11f7ff8253c019085098538ec3c2a)
- Diff: [v0.53.0...v0.54.0](https://github.com/rust-lang/rustdoc-types/compare/v0.53.0...v0.54.0)

<a name="v0.53.0"></a>
# [v0.53.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.53.0) - 2025-06-23

**No Changes**: Due to a mistake, we bumped the `FORMAT_VERSION` without changing rustdoc's output.

- Format Version: 53
- Upstream Commit: [`2084831cd54eb603fec6cd85ebd9d1426b09f628`](https://github.com/rust-lang/rust/commit/2084831cd54eb603fec6cd85ebd9d1426b09f628)
- Diff: [v0.52.0...v0.53.0](https://github.com/rust-lang/rustdoc-types/compare/v0.52.0...v0.53.0)

<a name="v0.52.0"></a>
# [v0.52.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.52.0) - 2025-06-23

**Breaking Change(??)**: `#[must_use = "text"]` in `Item::attrs` is now
`"#[attr = MustUse {reason: \"text\"}]"`,
instead of `"#[must_use = \"text\"]"`
([rust#142780](https://github.com/rust-lang/rust/pull/142780)).

- Format Version: 52
- Upstream Commit: [`b24df424888d9db3a22d6d52f3f516e29d5be21a`](https://github.com/rust-lang/rust/commit/b24df424888d9db3a22d6d52f3f516e29d5be21a)
- Diff: [v0.51.0...v0.52.0](https://github.com/rust-lang/rustdoc-types/compare/v0.51.0...v0.52.0)

<a name="v0.51.0"></a>
# [v0.51.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.51.0) - 2025-06-23

**Breaking Change**: Change `AssocItemConstraint::args` and `Type::QualifiedPath::args` from `GenericArgs` to `Option<Box<GenericArgs>>`.
This is consistent with `Path::args`, and smaller on disk ([rust#142502](https://github.com/rust-lang/rust/pull/142502)).

- Format Version: 51
- Upstream Commit: [`7fa8901cd090093a57723d3f196c27db3b98ad94`](https://github.com/rust-lang/rust/commit/7fa8901cd090093a57723d3f196c27db3b98ad94)
- Diff: [v0.50.0...v0.51.0](https://github.com/rust-lang/rustdoc-types/compare/v0.50.0...v0.51.0)

<a name="v0.50.0"></a>
# [v0.50.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.50.0) - 2025-06-23

**Breaking Change(??)**: `#[cold]` in `Item::attrs` is now `"#[attr = Cold]"`, instead of `"#[cold]"`
([rust#142491](https://github.com/rust-lang/rust/pull/142491)).

- Format Version: 50
- Upstream Commit: [`b9107a83a1ace3f292641977df70e9610e0e4482`](https://github.com/rust-lang/rust/commit/b9107a83a1ace3f292641977df70e9610e0e4482)
- Diff: [v0.49.0...v0.50.0](https://github.com/rust-lang/rustdoc-types/compare/v0.49.0...v0.50.0)

<a name="v0.49.0"></a>
# [v0.49.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.49.0) - 2025-06-23

**Breaking Change(??)**: `#[optimize(size)]` in `Item::attrs` is now `"#[attr = Optimize(Size)]"`, instead of `"#[optimize(size)]"`
([rust#138291](https://github.com/rust-lang/rust/pull/138291)).

- Format Version: 49
- Upstream Commit: [`3c418ec505233927d562ff906d8eea309aee1905`](https://github.com/rust-lang/rust/commit/3c418ec505233927d562ff906d8eea309aee1905)
- Diff: [v0.48.0...v0.49.0](https://github.com/rust-lang/rustdoc-types/compare/v0.48.0...v0.49.0)

<a name="v0.48.0"></a>
# [v0.48.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.48.0) - 2025-06-19

**Breaking Change(??)**: `#[inline]` in `Item::attrs` as `"#[attr =
Inline(Hint)]"`, instead of `"#[inline]"`
([rust#138165](https://github.com/rust-lang/rust/pull/138165)).


> [!NOTE]
> Due to a mistake, format version 47/rustdoc-types 0.47.0 was skipped, and will
> never exist. See [here](https://github.com/rust-lang/rust/pull/138165#discussion_r2157457743)
> for details.

- Format Version: 48
- Upstream Commit: [`81f8b570b9dd5d7bef27e1f1391dc73eb8fa4ff6`](https://github.com/rust-lang/rust/commit/81f8b570b9dd5d7bef27e1f1391dc73eb8fa4ff6)
- Diff: [v0.46.1...v0.48.0](https://github.com/rust-lang/rustdoc-types/compare/v0.46.1...v0.48.0)

<a name="v0.46.1"></a>
# [v0.46.1](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.46.1) - 2025-06-05

**Build Time Improvement**: Depend separately on `serde` and `serde_derive`
(rather than depending on `serde` with the `"derive"` feature). This lets them be
built in parallel, yielding faster compile times
([#49](https://github.com/rust-lang/rustdoc-types/pull/49),
[rust#141989](https://github.com/rust-lang/rust/pull/141989)).

- Format Version: 46
- Upstream Commit: [`763663ad56672b0f0635ad25c0c1a52e7773e0b9`](https://github.com/rust-lang/rust/commit/763663ad56672b0f0635ad25c0c1a52e7773e0b9)
- Diff: [v0.46.0...v0.46.1](https://github.com/rust-lang/rustdoc-types/compare/v0.46.0...v0.46.1)

<a name="v0.46.0"></a>
# [v0.46.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.46.0) - 2025-06-03

**Versioning Change**: The crate version now corresponds to the `FORMAT_VERSION` constant.
([#24](https://github.com/rust-lang/rustdoc-types/issues/24))

**Feature**: `Id` now implements `Ord` and `PartialOrd`, making it usable as a
key in a `BTreeMap`
([rust#141898](https://github.com/rust-lang/rust/pull/141898)).

**Breaking Change(??)**: `Item::attrs` now always includes `#[repr]`. No changes
were made to the schema but the format version has been bumped, as this may
effect consuming tools regardless
([rust#141126](https://github.com/rust-lang/rust/pull/141126)).

**Documentation Improvements**: Fixed some false docs
([rust#141364](https://github.com/rust-lang/rust/pull/141364)).

- Format Version: 46
- Upstream Commit: [`6be3c3ceb7351677999c661dfba0110992b37132`](https://github.com/rust-lang/rust/commit/6be3c3ceb7351677999c661dfba0110992b37132)
- Diff: [v0.41.0...v0.46.0](https://github.com/rust-lang/rustdoc-types/compare/v0.41.0...v0.46.0)

<a name="v0.41.0"></a>
# [v0.41.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.41.0) - 2025-04-20

**Breaking Change**: Make `Span::begin` and `Span::end` consistently one-indexed
for both line and column
([rust#139919](https://github.com/rust-lang/rust/pull/139919)). 
Previously this was incorrectly documented both line and column being
zero-indexed, but line was actually one-indexed
([rust#139906](https://github.com/rust-lang/rust/issues/139906)).

No changes were made to the schema (i.e. the public api for this crate is
unchanged), but the format version has been bumped, as this may effect consuming
tools regardless.

- Format Version: 45
- Upstream Commit: [`076016d55afdf760c7e30e23c5df8f0c079cd85b`](https://github.com/rust-lang/rust/commit/076016d55afdf760c7e30e23c5df8f0c079cd85b)
- Diff: [v0.40.0...v0.41.0](https://github.com/rust-lang/rustdoc-types/compare/v0.40.0...v0.41.0)

<a name="v0.40.0"></a>
# [v0.40.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.40.0) - 2025-04-19

**Breaking Change**: Add `Crate::target` field with information about the target and its features
([rust#139393](https://github.com/rust-lang/rust/pull/139393)).

- Format Version: 44
- Upstream Commit: [`8c50f95cf088c6ccf882a152bd46c090efa3a1c7`](https://github.com/rust-lang/rust/commit/8c50f95cf088c6ccf882a152bd46c090efa3a1c7)
- Diff: [v0.39.0...v0.40.0](https://github.com/rust-lang/rustdoc-types/compare/v0.39.0...v0.40.0)

<a name="v0.39.0"></a>
# [v0.39.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.39.0) - 2025-03-24

**Breaking Change**: Change format of `Item::attrs` for `#[repr(..)]` from HIR
debug printing to how they're written in source-code. For example 
`#[attr = Repr([ReprC, ReprInt(SignedInt(I8))])])` would now be represented as 
`#[repr(C,i8)]` ((rust#138018)[https://github.com/rust-lang/rust/pull/138018]). 

This somewhat undoes [v0.36.0](#v0.36.0).

No changes were made to the schema (i.e. the public api for this crate is
unchanged), but the format version has been bumped, as this may effect consuming
tools regardless.

- Format Version: 43
- Upstream Commit: [`bafdbcadd5e70e4a1a35647002c30efd315621b4`](https://github.com/rust-lang/rust/commit/bafdbcadd5e70e4a1a35647002c30efd315621b4)
- Diff: [v0.38.0...v0.39.0](https://github.com/rust-lang/rustdoc-types/compare/v0.38.0...v0.39.0)

<a name="v0.38.0"></a>
# [v0.38.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.38.0) - 2025-03-16

**Breaking Change**: Add variant `GenericArgs::ReturnTypeNotation` to support
[return type notation](https://github.com/rust-lang/rust/issues/109417)
([rust#137956](https://github.com/rust-lang/rust/pull/137956)).

- Format Version: 42
- Upstream Commit: [`e3ac1fa81abd321abe193f491ed06c7d388f68fe`](https://github.com/rust-lang/rust/commit/e3ac1fa81abd321abe193f491ed06c7d388f68fe)
- Diff: [v0.37.0...v0.38.0](https://github.com/rust-lang/rustdoc-types/compare/v0.37.0...v0.38.0)

<a name="v0.37.0"></a>
# [v0.37.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.37.0) - 2025-03-14

**Breaking Change**: Change `GenericBound::Use` from `Vec<String>` to
`Vec<PreciseCapturingArg>`, a new enum
([rust#138109](https://github.com/rust-lang/rust/pull/138109)).

- Format Version: 41
- Upstream Commit: [`112f7b01a1b25035cd8b288d6936c6be48a3d845`](https://github.com/rust-lang/rust/commit/112f7b01a1b25035cd8b288d6936c6be48a3d845)
- Diff: [v0.36.0...v0.37.0](https://github.com/rust-lang/rustdoc-types/compare/v0.36.0...v0.37.0)

<a name="v0.36.0"></a>
# [v0.36.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.36.0) - 2025-02-26

**Breaking Change**: Change format of `Item::attrs` from e.g. `"#[inline]"` to
e.g. `#[attr="Inline(Hint)"]` which is equivalent to the hir pretty-printing of
attributes ([rust#135726](https://github.com/rust-lang/rust/pull/135726)).

This is result of a refractoring of how rustc represents attributes. There will
be a change (at some point) to make them easier to use in rustdoc-json. See
[rust#137645](https://github.com/rust-lang/rust/issues/137645) for details.

No changes were made to the schema (i.e. the public api for this crate is
unchanged), but the format version has been bumped, as this may effect consuming
tools regardless.

- Format Version: 40
- Upstream Commit: [`f321f107e3af37996ac6cca74294d581f2fb20e7`](https://github.com/rust-lang/rust/commit/f321f107e3af37996ac6cca74294d581f2fb20e7)
- Diff: [v0.35.0...v0.36.0](https://github.com/rust-lang/rustdoc-types/compare/v0.35.0...v0.36.0)

<a name="v0.35.0"></a>
# [v0.35.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.35.0) - 2025-01-24

**Breaking Change**: Rename the `Path::name` field to `Path::path`, and make it
have the entire path. This effectively reverts the [previous release](#v0.34.0),
as it was [not possible for many consumers to
migrate](https://github.com/rust-lang/rust/issues/135600)
([rust#135799](https://github.com/rust-lang/rust/pull/135799)).

- Format Version: 39
- Upstream Commit: [`40e28582bb95e33f762dea75b78f6ebb5c29b836`](https://github.com/rust-lang/rust/commit/40e28582bb95e33f762dea75b78f6ebb5c29b836)
- Diff: [v0.34.0...v0.35.0](https://github.com/rust-lang/rustdoc-types/compare/v0.34.0...v0.35.0)

<a name="v0.34.0"></a>
# [v0.34.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.34.0) - 2025-01-15

**Breaking Change**: The `Path::name` field now only holds item name rather than
the full path. Users needing the full path can find it in the `Crate::paths` map
([rust#134880](https://github.com/rust-lang/rust/pull/134880)).

No changes were made to the schema (i.e. the public api for this crate is
unchanged), but the format version has been bumped, as this may effect consuming
tools regardless.

- Format Version: 38
- Upstream Commit: [`2c4aee92fa65e74f23ad7853937db8d2c4bfa6c8`](https://github.com/rust-lang/rust/commit/2c4aee92fa65e74f23ad7853937db8d2c4bfa6c8)
- Diff: [v0.33.0...v0.34.0](https://github.com/rust-lang/rustdoc-types/compare/v0.33.0...v0.34.0)

<a name="v0.33.0"></a>
# [v0.33.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.33.0) - 2024-12-03

**Breaking Change**: Add new `is_unsafe` field in `Static` struct ([rust#133715](https://github.com/rust-lang/rust/pull/133715)).

- Format Version: 37
- Upstream Commit: [`f33dba028704d108497b8c06943b9bbc3d14c42b`](https://github.com/rust-lang/rust/commit/f33dba028704d108497b8c06943b9bbc3d14c42b)
- Diff: [v0.32.2...v0.33.0](https://github.com/rust-lang/rustdoc-types/compare/v0.32.2...v0.33.0)

<a name="v0.32.2"></a>
# [v0.32.2](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.32.2) - 2024-10-23

**Library Improvement**: `ItemKind`, `TraitBoundModifier`, and `MacroKind` all now implement `Copy` ([rust#131976](https://github.com/rust-lang/rust/pull/131976)).

- Format Version: 36
- Upstream Commit: [`4b658657da324253a201fc7baf70d106db5df7e0`](https://github.com/rust-lang/rust/commit/4b658657da324253a201fc7baf70d106db5df7e0)
- Diff: [v0.32.1...v0.32.2](https://github.com/rust-lang/rustdoc-types/compare/v0.32.1...v0.32.2)

<a name="v0.32.1"></a>
# [v0.32.1](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.32.1) - 2024-10-20

**New Feature**: The optional `rustc-hash` cargo feature has been added.
This changes the hashing algorithm used to [a speedy non-cryptographic hashing algorithm](https://github.com/rust-lang/rustc-hash) also used in rustc.
This has lead to [modest but appreciable](https://rust-lang.zulipchat.com/#narrow/channel/266220-t-rustdoc/topic/rustc-hash.20and.20performance.20of.20rustdoc-types/near/474855731) performance gains for some consumers
([#42](https://github.com/rust-lang/rustdoc-types/pull/42), [rust#131936](https://github.com/rust-lang/rust/pull/131936)).


- Format Version: 36
- Upstream Commit: [`d1fa49b2e66c343210c413b68ed57f150b7b89d8`](https://github.com/rust-lang/rust/commit/d1fa49b2e66c343210c413b68ed57f150b7b89d8)
- Diff: [v0.32.0...v0.32.1](https://github.com/rust-lang/rustdoc-types/compare/v0.32.0...v0.32.1)

<a name="v0.32.0"></a>
# [v0.32.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.32.0) - 2024-10-17


**Breaking Change**: Rename `Trait::is_object_safe` to `is_dyn_compatible`. This is a part of a [language wide rename](https://github.com/rust-lang/rust/issues/130852) to [make the term explain its meaning](https://internals.rust-lang.org/t/object-safety-is-a-terrible-term/21025) ([rust#131595](https://github.com/rust-lang/rust/pull/131595)).

- Format Version: 36
- Upstream Commit: [`2e6f3bd1d32455e535de1d9ee154253c333aec73`](https://github.com/rust-lang/rust/commit/2e6f3bd1d32455e535de1d9ee154253c333aec73)
- Diff: [v0.31.0...v0.32.0](https://github.com/rust-lang/rustdoc-types/compare/v0.31.0...v0.32.0)

<a name="v0.31.0"></a>
# [v0.31.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.31.0) - 2024-10-13

**Breaking Change**: The `Id` type now wraps a `u32` instead of a `String`. The should hopefully increase performance ([rust#130078](https://github.com/rust-lang/rust/pull/130078)).

**Documentation Improvement**: Remove false claim from `ProcMacro::helpers` docs ([rust#130939](https://github.com/rust-lang/rust/pull/130939)).

- Format Version: 35
- Upstream Commit: [`05c0591321f9956c1f0df4785d3737f40cffb598`](https://github.com/rust-lang/rust/commit/05c0591321f9956c1f0df4785d3737f40cffb598)
- Diff: [v0.30.0...v0.31.0](https://github.com/rust-lang/rustdoc-types/compare/v0.30.0...v0.31.0)

<a name="v0.30.0"></a>
# [v0.30.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.30.0) - 2024-09-13

**Breaking Change**: Many structs and fields have been renamed ([rust#128667](https://github.com/rust-lang/rust/pull/128667)):
- `Import` is now `Use`, to better reflect the syntax and [the reference](https://doc.rust-lang.org/stable/reference/items/use-declarations.html).
- `TypeBinding` is now `AssocItemConstraint`, to reflect that it can also work on associated constants, and that it can either require the associated item to equal a term, or satisfy bounds.
    - Similarly, `TypeBindingKind` is now `AssocItemConstraintKind`
    - `bindings` has been renamed to `constraints` on `GenericArgs::AngleBracketed`
- `ForeignType` has been renamed to `ExternType`, because [that's what the feature is called](https://github.com/rust-lang/rust/issues/43467). "Foreign" refers to types that aren't from the current crate, whereas Extern Types are entirely opaque to the type system (and may be in the current crate).
- `ItemEnum::AssocConst` and `ItemEnum::AssocType`'s `default` field has been renamed to `value`, to clarify that they can appear in both an `impl` and `trait` item.
- `Header` is now `FunctionHeader`, to be clearer what it is.
- `FnDecl` is now `FunctionSignature`, as it's also used for `FunctionPointer` types (and not just function items).
    - `decl` field is now `sig`
- Boolean fields are now `is_` or `has_` prefixed for clarity:
    - `fields_stripped` is now `has_fields_stripped`
    - `variants_stripped` is now `has_stripped_variants`
    - `const_` is now `is_const`
    - `async_` is now `is_async`
    - `unsafe_` is now `is_unsafe`
    - `synthetic` is now `is_synthetic`
    - `mutable` is now `is_mutable`
    - `c_variadic` is now `is_c_variadic`
    - `negative` is now `is_negative`
    - `glob` is now `is_glob`

<br/>

- Format Version: 34
- Upstream Commit: [`f2696ab4d3095bb6ad6197e55855ebdf00f50b80`](https://github.com/rust-lang/rust/commit/f2696ab4d3095bb6ad6197e55855ebdf00f50b80)
- Diff: [v0.29.1...v0.30.0](https://github.com/rust-lang/rustdoc-types/compare/v0.29.1...v0.30.0)

<a name="v0.29.1"></a>
# [v0.29.1](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.29.1) - 2024-08-13

**Documentation Improvements**: Typo fixes ([rust#128903](https://github.com/rust-lang/rust/pull/128903), [#29](https://github.com/rust-lang/rustdoc-types/pull/29)).

- Format Version: 33
- Upstream Commit: [`b735547025dad853829a7dbf6b6697090e3f657c`](https://github.com/rust-lang/rust/commit/b735547025dad853829a7dbf6b6697090e3f657c)
- Diff: [v0.29.0...v0.29.1](https://github.com/rust-lang/rustdoc-types/compare/v0.29.0...v0.29.1)

<a name="v0.29.0"></a>
# [v0.29.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.29.0) - 2024-08-01

> [!NOTE]  
> Due to a mistake, this version was never published to crates.io. Users can use `v0.29.1` instead.

**Breaking Change**: Removed `OpaqueTy`, `ItemKind::OpaqueTy` and `ItemEnum::OpaqueTy`. These were only generated with rarely used nightly features, so almost all documents will be unaffected ([rust#127276](https://github.com/rust-lang/rust/pull/127276)).

- Format Version: 33
- Upstream Commit: [`73ac5e0c6e8e0e35229444caf5461c6c079122b4`](https://github.com/rust-lang/rust/commit/73ac5e0c6e8e0e35229444caf5461c6c079122b4)
- Diff: [v0.28.1...v0.29.0](https://github.com/rust-lang/rustdoc-types/compare/v0.28.1...v0.29.0)

<a name="v0.28.1"></a>
# [v0.28.1](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.28.1) - 2024-08-01

**Documentation Improvements**: The library is now (almost) entirely documented ([rust#127290](https://github.com/rust-lang/rust/pull/127290))!

- Format Version: 32
- Upstream Commit: [`47b76d8d939be6085e9b1f6fc1a4b959346754a6`](https://github.com/rust-lang/rust/commit/47b76d8d939be6085e9b1f6fc1a4b959346754a6)
- Diff: [v0.28.0...v0.28.1](https://github.com/rust-lang/rustdoc-types/compare/v0.28.0...v0.28.1)

<a name="v0.28.0"></a>
# [v0.28.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.28.0) - 2024-07-18

**Breaking Change**: Add `GenericBound::Use` for the (currently unstable) [`precise_capturing`](https://github.com/rust-lang/rust/issues/123432) feature ([rust#127632]( https://github.com/rust-lang/rust/pull/127632)).

- Format Version: 32
- Upstream Commit: [`bd135e487f904e757f6c3d2ebcc2d216ac4d9aaf`](https://github.com/rust-lang/rust/commit/bd135e487f904e757f6c3d2ebcc2d216ac4d9aaf)
- Diff: [v0.27.0...v0.28.0](https://github.com/rust-lang/rustdoc-types/compare/v0.27.0...v0.28.0)

<a name="v0.27.0"></a>
# [v0.27.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.27.0) - 2024-07-04

**Breaking Change**: `WherePredicate::RegionPredicate` has been renamed to
`LifetimePredicate`, to avoid compiler-internal terminology. The `bounds` field
has been renamed to `outlives`, and changed from `Vec<GenericBound>` to
`Vec<String>`, because the only bound that lifetimes can have is that they
outlife other lifetimes
([rust#127289](https://github.com/rust-lang/rust/pull/127289)).

- Format Version: 31
- Upstream Commit: [`7e8aac553e756b0eb03fe98e1a65ffc47836ec51`](https://github.com/rust-lang/rust/commit/7e8aac553e756b0eb03fe98e1a65ffc47836ec51)
- Diff: [v0.26.0...v0.27.0](https://github.com/rust-lang/rustdoc-types/compare/v0.26.0...v0.27.0)

<a name="v0.26.0"></a>
# [v0.26.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.26.0) - 2024-06-06

**Breaking Change**: Remove `type_` from `Constant`, and add it to `ItemEnum::Constant` ([rust#125958](https://github.com/rust-lang/rust/pull/125958)).

**Documentation Improvements**: [rust#125130](https://github.com/rust-lang/rust/pull/125130), [rust#124322](https://github.com/rust-lang/rust/pull/124322/).

- Format Version: 30
- Upstream Commit: [`432c11feb6ddfffe6d1d111624ac86386b2fe751`](https://github.com/rust-lang/rust/commit/432c11feb6ddfffe6d1d111624ac86386b2fe751)
- Diff: [v0.25.0...v0.26.0](https://github.com/rust-lang/rustdoc-types/compare/v0.25.0...v0.26.0)

<a name="v0.25.0"></a>
# [v0.25.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.25.0) - 2024-04-19

**Breaking Change**: Add `Type::Pat` for unstable pattern types. ([rust#120131](https://github.com/rust-lang/rust/pull/120131/))

- Format Version: 29
- Upstream Commit: [`18ff131c4e06d6e1ebfc19092fe1d6c3535eb78b`](https://github.com/rust-lang/rust/commit/18ff131c4e06d6e1ebfc19092fe1d6c3535eb78b)
- Diff: [v0.24.0...v0.25.0](https://github.com/rust-lang/rustdoc-types/compare/v0.24.0...v0.25.0)

<a name="v0.24.0"></a>
# [v0.24.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.24.0) - 2023-12-23

**Breaking Change**: `Trait` now includes the `is_object_safe` field. ([rust#119246](https://github.com/rust-lang/rust/pull/119246))

**Internal Improvement**: The scripts to generate the changelog have been revamped to allow
hand-written information in the changelog, and to make the release process easier.

- Format Version: 28
- Upstream Commit: [`c29f763153ac89e7930c6d50f5ab4656318b30d4`](https://github.com/rust-lang/rust/commit/c29f763153ac89e7930c6d50f5ab4656318b30d4)
- Diff: [v0.23.0...v0.24.0](https://github.com/rust-lang/rustdoc-types/compare/v0.23.0...v0.24.0)

<a name="v0.23.0"></a>
# [v0.23.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.23.0) - 2023-08-23

**Breaking Change**: `Typedef` has been renamed to `TypeAlias`, as this is what
people (and the reference) generally call these items. ([rust#115078](https://github.com/rust-lang/rust/pull/115078))

- Format Version: 27
- Upstream Commit: [`c90a5b2019e5a862c8fb5ae39dcf6ad5f4c65b09`](https://github.com/rust-lang/rust/commit/c90a5b2019e5a862c8fb5ae39dcf6ad5f4c65b09)
- Diff: [v0.23.0...v0.22.0](https://github.com/rust-lang/rustdoc-types/compare/v0.22.0...v0.23.0)

<a name="v0.22.0"></a>
# [v0.22.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.22.0) - 2023-05-23 

**Breaking Change**: All enums now use external tagging. No change is required
to move to this version (all all the types are the same), but it won't be able
to read JSON files from older rustdoc versions, as enums will be represented
differently. This change allows using non-self-describing serde serializers
(like bincode), although rustdoc itself won't generate these.
([rust#111427](https://github.com/rust-lang/rust/pull/111427))

- Format Version: 26
- Upstream Commit: [`a5e51013753ca75c239403b47af1e605f5af2a64`](https://github.com/rust-lang/rust/commit/a5e51013753ca75c239403b47af1e605f5af2a64)
- Diff: [v0.22.0...v0.21.0](https://github.com/rust-lang/rustdoc-types/compare/v0.21.0...v0.22.0)

<a name="v0.21.0"></a>
# [v0.21.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.21.0) - 2023-05-13 

**Breaking Change**: `Type::QualifiedPath.trait_` is now an `Option<Path>`
(instead of path). This is to support the (currently unstable) [inherent
associated types](https://github.com/rust-lang/rust/issues/8995) feature.
([rust#109410](https://github.com/rust-lang/rust/pull/109410))

- Format Version: 25
- Upstream Commit: [`61e1eda6db042413cf1794407fd10b7edc90059d`](https://github.com/rust-lang/rust/commit/61e1eda6db042413cf1794407fd10b7edc90059d)
- Diff: [v0.21.0...v0.20.0](https://github.com/rust-lang/rustdoc-types/compare/v0.20.0...v0.21.0)

<a name="v0.20.0"></a>
# [v0.20.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.20.0) - 2023-01-03 

**Breaking Change**: `Variant` has been split into `Variant` and `VariantKind`,
so the `Discriminant` can always be reported. Previously, it could only be
reported for a plain enum variant (i.e. one with no fields or braces).
([rust#106354](https://github.com/rust-lang/rust/pull/106354))

- Format Version: 24
- Upstream Commit: [`cca5d219e6801ebc2a62b455a12c657098a8af2d`](https://github.com/rust-lang/rust/commit/cca5d219e6801ebc2a62b455a12c657098a8af2d)
- Diff: [v0.20.0...v0.19.0](https://github.com/rust-lang/rustdoc-types/compare/v0.19.0...v0.20.0)

<a name="v0.19.0"></a>
# [v0.19.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.19.0) - 2022-11-21 
- Format Version: 23
- Upstream Commit: [`30b7e44a3cabe1c21129253da54b21193f65ebe0`](https://github.com/rust-lang/rust/commit/30b7e44a3cabe1c21129253da54b21193f65ebe0)
- Diff: [v0.19.0...v0.18.0](https://github.com/rust-lang/rustdoc-types/compare/v0.18.0...v0.19.0)

<a name="v0.18.0"></a>
# [v0.18.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.18.0) - 2022-09-27 
- Format Version: 22
- Upstream Commit: [`aac7429c17aa558fbd9fb0be093e7bd9ccc73972`](https://github.com/rust-lang/rust/commit/aac7429c17aa558fbd9fb0be093e7bd9ccc73972)
- Diff: [v0.18.0...v0.17.0](https://github.com/rust-lang/rustdoc-types/compare/v0.17.0...v0.18.0)

<a name="v0.17.0"></a>
# [v0.17.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.17.0) - 2022-09-08 
- Format Version: 21
- Upstream Commit: [`1c8de173238a02abeb5642c25c3cef1eea52ac18`](https://github.com/rust-lang/rust/commit/1c8de173238a02abeb5642c25c3cef1eea52ac18)
- Diff: [v0.17.0...v0.16.0](https://github.com/rust-lang/rustdoc-types/compare/v0.16.0...v0.17.0)

<a name="v0.16.0"></a>
# [v0.16.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.16.0) - 2022-09-07 
- Format Version: 20
- Upstream Commit: [`065e0b9c9cf3d03f286c5d0b98fbae7185e41b75`](https://github.com/rust-lang/rust/commit/065e0b9c9cf3d03f286c5d0b98fbae7185e41b75)
- Diff: [v0.16.0...v0.15.0](https://github.com/rust-lang/rustdoc-types/compare/v0.15.0...v0.16.0)

<a name="v0.15.0"></a>
# [v0.15.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.15.0) - 2022-09-05 
- Format Version: 19
- Upstream Commit: [`b76a012be16de964c242594afba4323997f436b2`](https://github.com/rust-lang/rust/commit/b76a012be16de964c242594afba4323997f436b2)
- Diff: [v0.15.0...v0.14.0](https://github.com/rust-lang/rustdoc-types/compare/v0.14.0...v0.15.0)

<a name="v0.14.0"></a>
# [v0.14.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.14.0) - 2022-08-15 
- Format Version: 18
- Upstream Commit: [`4989f6a7247930ba027fa4b96a0c284f6ab02942`](https://github.com/rust-lang/rust/commit/4989f6a7247930ba027fa4b96a0c284f6ab02942)
- Diff: [v0.14.0...v0.13.1](https://github.com/rust-lang/rustdoc-types/compare/v0.13.1...v0.14.0)

<a name="v0.13.1"></a>
# [v0.13.1](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.13.1) - 2022-08-10 
- Format Version: 17
- Upstream Commit: [`0dc39c7bd9795927b903c8c24e89a00788ce3e33`](https://github.com/rust-lang/rust/commit/0dc39c7bd9795927b903c8c24e89a00788ce3e33)
- Diff: [v0.13.1...v0.13.0](https://github.com/rust-lang/rustdoc-types/compare/v0.13.0...v0.13.1)

<a name="v0.13.0"></a>
# [v0.13.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.13.0) - 2022-08-09 
- Format Version: 17
- Upstream Commit: [`a856e57f6cc8ba8bb83c5abadce338f589df6b10`](https://github.com/rust-lang/rust/commit/a856e57f6cc8ba8bb83c5abadce338f589df6b10)
- Diff: [v0.13.0...v0.12.0](https://github.com/rust-lang/rustdoc-types/compare/v0.12.0...v0.13.0)

<a name="v0.12.0"></a>
# [v0.12.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.12.0) - 2022-07-18 
- Format Version: 16
- Upstream Commit: [`1a15c7147f90afaa64ae3ff27fcbd678e2e44a8e`](https://github.com/rust-lang/rust/commit/1a15c7147f90afaa64ae3ff27fcbd678e2e44a8e)
- Diff: [v0.12.0...v0.11.0](https://github.com/rust-lang/rustdoc-types/compare/v0.11.0...v0.12.0)

<a name="v0.11.0"></a>
# [v0.11.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.11.0) - 2022-05-18 
- Format Version: 15
- Upstream Commit: [`1f15ce5f9748d523f3c1835da12b05b15648aa68`](https://github.com/rust-lang/rust/commit/1f15ce5f9748d523f3c1835da12b05b15648aa68)
- Diff: [v0.11.0...v0.10.0](https://github.com/rust-lang/rustdoc-types/compare/v0.10.0...v0.11.0)

<a name="v0.10.0"></a>
# [v0.10.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.10.0) - 2022-03-14 
- Format Version: 14
- Upstream Commit: [`a5c0b1470cc48e665eabf29881dd87438973ab97`](https://github.com/rust-lang/rust/commit/a5c0b1470cc48e665eabf29881dd87438973ab97)
- Diff: [v0.10.0...v0.9.0](https://github.com/rust-lang/rustdoc-types/compare/v0.9.0...v0.10.0)

<a name="v0.9.0"></a>
# [v0.9.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.9.0) - 2022-03-12 
- Format Version: 13
- Upstream Commit: [`aa763fcf421e627455aa1de16df1292c8e1bcb9d`](https://github.com/rust-lang/rust/commit/aa763fcf421e627455aa1de16df1292c8e1bcb9d)
- Diff: [v0.9.0...v0.8.0](https://github.com/rust-lang/rustdoc-types/compare/v0.8.0...v0.9.0)

<a name="v0.8.0"></a>
# [v0.8.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.8.0) - 2022-03-04 
- Format Version: 12
- Upstream Commit: [`aefc0a223a0022a156be07b18feb45cd07e517e0`](https://github.com/rust-lang/rust/commit/aefc0a223a0022a156be07b18feb45cd07e517e0)
- Diff: [v0.8.0...v0.7.0](https://github.com/rust-lang/rustdoc-types/compare/v0.7.0...v0.8.0)

<a name="v0.7.0"></a>
# [v0.7.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.7.0) - 2022-02-24 
- Format Version: 11
- Upstream Commit: [`aa601574a5fe861bffd641beccf59c7be3ed16c9`](https://github.com/rust-lang/rust/commit/aa601574a5fe861bffd641beccf59c7be3ed16c9)
- Diff: [v0.7.0...v0.6.0](https://github.com/rust-lang/rustdoc-types/compare/v0.6.0...v0.7.0)

<a name="v0.6.0"></a>
# [v0.6.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.6.0) - 2022-02-01 
- Format Version: 10
- Upstream Commit: [`1521b53c532ccd90c504b0c860cd5662172cc05e`](https://github.com/rust-lang/rust/commit/1521b53c532ccd90c504b0c860cd5662172cc05e)
- Diff: [v0.6.0...v0.5.0](https://github.com/rust-lang/rustdoc-types/compare/v0.5.0...v0.6.0)

<a name="v0.5.0"></a>
# [v0.5.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.5.0) - 2021-10-16 
- Format Version: 9
- Upstream Commit: [`43f4ef5c6a059c32e19483ff3d295feb2f37c5b8`](https://github.com/rust-lang/rust/commit/43f4ef5c6a059c32e19483ff3d295feb2f37c5b8)
- Diff: [v0.5.0...v0.4.0](https://github.com/rust-lang/rustdoc-types/compare/v0.4.0...v0.5.0)

<a name="v0.4.0"></a>
# [v0.4.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.4.0) - 2021-09-06 
- Format Version: 7
- Upstream Commit: [`2a6022949077176bfff9f72282dc52e51a175cb7`](https://github.com/rust-lang/rust/commit/2a6022949077176bfff9f72282dc52e51a175cb7)
- Diff: [v0.4.0...v0.3](https://github.com/rust-lang/rustdoc-types/compare/v0.3...v0.4.0)

<a name="v0.3"></a>
# [v0.3](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.3) - 2021-06-25 
- Format Version: 5
- Upstream Commit: [`6dff51f37d87eb02e8776032fa8da16c990a3283`](https://github.com/rust-lang/rust/commit/6dff51f37d87eb02e8776032fa8da16c990a3283)
- Diff: [v0.3...v0.2.0](https://github.com/rust-lang/rustdoc-types/compare/v0.2.0...v0.3)

<a name="v0.2.0"></a>
# [v0.2.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.2.0) - 2021-01-23 
- Format Version: 2
- Upstream Commit: [`2ceee724270f2186e5e85acff49acd35bf8a652a`](https://github.com/rust-lang/rust/commit/2ceee724270f2186e5e85acff49acd35bf8a652a)
- Diff: [v0.2.0...v0.1.0](https://github.com/rust-lang/rustdoc-types/compare/v0.1.0...v0.2.0)

<a name="v0.1.0"></a>
# [v0.1.0](https://github.com/rust-lang/rustdoc-types/releases/tag/v0.1.0) - 2020-12-06 
- Format Version: 1
- Upstream Commit: [`7dc1e852d43cb8c9e77dc1e53014f0eb85d2ebfb`](https://github.com/rust-lang/rust/commit/7dc1e852d43cb8c9e77dc1e53014f0eb85d2ebfb)
- Diff: [v0.1.0...](https://github.com/rust-lang/rustdoc-types/compare/...v0.1.0)

