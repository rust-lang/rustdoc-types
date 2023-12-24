<a name="v0.24.0"></a>
# [v0.24.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.24.0) - 2023-12-23

**Breaking Change**: `Trait` now includes the `is_object_safe` field. ([rust#119246](https://github.com/rust-lang/rust/pull/119246))

**Internal Improvement**: The scripts to generate the changelog have been revamped to allow
hand-written information in the changelog, and to make the release process easier.

- Format Version: 28
- Upstream Commit: [`c29f763153ac89e7930c6d50f5ab4656318b30d4`](https://github.com/rust-lang/rust/commit/c29f763153ac89e7930c6d50f5ab4656318b30d4)
- Diff: [v0.23.0...v0.24.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.23.0...v0.24.0)

<a name="v0.23.0"></a>
# [v0.23.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.23.0) - 2023-08-23

**Breaking Change**: `Typedef` has been renamed to `TypeAlias`, as this is what
people (and the reference) generaly call these items. ([rust#115078](https://github.com/rust-lang/rust/pull/115078))

- Format Version: 27
- Upstream Commit: [`c90a5b2019e5a862c8fb5ae39dcf6ad5f4c65b09`](https://github.com/rust-lang/rust/commit/c90a5b2019e5a862c8fb5ae39dcf6ad5f4c65b09)
- Diff: [v0.23.0...v0.22.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.22.0...v0.23.0)

<a name="v0.22.0"></a>
# [v0.22.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.22.0) - 2023-05-23 

**Breaking Change**: All enums now use external tagging. No change is required
to move to this version (all all the types are the same), but it won't be able
to read JSON files from older rustdoc versions, as enums will be represented
differently. This change allows using non-self-describing serde serializers
(like bincode), although rustdoc itself won't generate these.
([rust#111427](https://github.com/rust-lang/rust/pull/111427))

- Format Version: 26
- Upstream Commit: [`a5e51013753ca75c239403b47af1e605f5af2a64`](https://github.com/rust-lang/rust/commit/a5e51013753ca75c239403b47af1e605f5af2a64)
- Diff: [v0.22.0...v0.21.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.21.0...v0.22.0)

<a name="v0.21.0"></a>
# [v0.21.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.21.0) - 2023-05-13 

**Breaking Change**: `Type::QualifiedPath.trait_` is now an `Option<Path>`
(instead of path). This is to support the (currently unstable) [inherent
associated types](https://github.com/rust-lang/rust/issues/8995) feature.
([rust#109410](https://github.com/rust-lang/rust/pull/109410))

- Format Version: 25
- Upstream Commit: [`61e1eda6db042413cf1794407fd10b7edc90059d`](https://github.com/rust-lang/rust/commit/61e1eda6db042413cf1794407fd10b7edc90059d)
- Diff: [v0.21.0...v0.20.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.20.0...v0.21.0)

<a name="v0.20.0"></a>
# [v0.20.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.20.0) - 2023-01-03 

**Breaking Change**: `Variant` has been split into `Variant` and `VariantKind`,
so the `Discriminant` can always be reported. Previously, it could only be
reported for a plain enum variant (i.e. one with no fields or braces).
([rust#106354](https://github.com/rust-lang/rust/pull/106354))

- Format Version: 24
- Upstream Commit: [`cca5d219e6801ebc2a62b455a12c657098a8af2d`](https://github.com/rust-lang/rust/commit/cca5d219e6801ebc2a62b455a12c657098a8af2d)
- Diff: [v0.20.0...v0.19.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.19.0...v0.20.0)

<a name="v0.19.0"></a>
# [v0.19.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.19.0) - 2022-11-21 
- Format Version: 23
- Upstream Commit: [`30b7e44a3cabe1c21129253da54b21193f65ebe0`](https://github.com/rust-lang/rust/commit/30b7e44a3cabe1c21129253da54b21193f65ebe0)
- Diff: [v0.19.0...v0.18.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.18.0...v0.19.0)

<a name="v0.18.0"></a>
# [v0.18.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.18.0) - 2022-09-27 
- Format Version: 22
- Upstream Commit: [`aac7429c17aa558fbd9fb0be093e7bd9ccc73972`](https://github.com/rust-lang/rust/commit/aac7429c17aa558fbd9fb0be093e7bd9ccc73972)
- Diff: [v0.18.0...v0.17.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.17.0...v0.18.0)

<a name="v0.17.0"></a>
# [v0.17.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.17.0) - 2022-09-08 
- Format Version: 21
- Upstream Commit: [`1c8de173238a02abeb5642c25c3cef1eea52ac18`](https://github.com/rust-lang/rust/commit/1c8de173238a02abeb5642c25c3cef1eea52ac18)
- Diff: [v0.17.0...v0.16.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.16.0...v0.17.0)

<a name="v0.16.0"></a>
# [v0.16.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.16.0) - 2022-09-07 
- Format Version: 20
- Upstream Commit: [`065e0b9c9cf3d03f286c5d0b98fbae7185e41b75`](https://github.com/rust-lang/rust/commit/065e0b9c9cf3d03f286c5d0b98fbae7185e41b75)
- Diff: [v0.16.0...v0.15.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.15.0...v0.16.0)

<a name="v0.15.0"></a>
# [v0.15.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.15.0) - 2022-09-05 
- Format Version: 19
- Upstream Commit: [`b76a012be16de964c242594afba4323997f436b2`](https://github.com/rust-lang/rust/commit/b76a012be16de964c242594afba4323997f436b2)
- Diff: [v0.15.0...v0.14.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.14.0...v0.15.0)

<a name="v0.14.0"></a>
# [v0.14.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.14.0) - 2022-08-15 
- Format Version: 18
- Upstream Commit: [`4989f6a7247930ba027fa4b96a0c284f6ab02942`](https://github.com/rust-lang/rust/commit/4989f6a7247930ba027fa4b96a0c284f6ab02942)
- Diff: [v0.14.0...v0.13.1](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.13.1...v0.14.0)

<a name="v0.13.1"></a>
# [v0.13.1](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.13.1) - 2022-08-10 
- Format Version: 17
- Upstream Commit: [`0dc39c7bd9795927b903c8c24e89a00788ce3e33`](https://github.com/rust-lang/rust/commit/0dc39c7bd9795927b903c8c24e89a00788ce3e33)
- Diff: [v0.13.1...v0.13.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.13.0...v0.13.1)

<a name="v0.13.0"></a>
# [v0.13.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.13.0) - 2022-08-09 
- Format Version: 17
- Upstream Commit: [`a856e57f6cc8ba8bb83c5abadce338f589df6b10`](https://github.com/rust-lang/rust/commit/a856e57f6cc8ba8bb83c5abadce338f589df6b10)
- Diff: [v0.13.0...v0.12.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.12.0...v0.13.0)

<a name="v0.12.0"></a>
# [v0.12.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.12.0) - 2022-07-18 
- Format Version: 16
- Upstream Commit: [`1a15c7147f90afaa64ae3ff27fcbd678e2e44a8e`](https://github.com/rust-lang/rust/commit/1a15c7147f90afaa64ae3ff27fcbd678e2e44a8e)
- Diff: [v0.12.0...v0.11.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.11.0...v0.12.0)

<a name="v0.11.0"></a>
# [v0.11.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.11.0) - 2022-05-18 
- Format Version: 15
- Upstream Commit: [`1f15ce5f9748d523f3c1835da12b05b15648aa68`](https://github.com/rust-lang/rust/commit/1f15ce5f9748d523f3c1835da12b05b15648aa68)
- Diff: [v0.11.0...v0.10.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.10.0...v0.11.0)

<a name="v0.10.0"></a>
# [v0.10.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.10.0) - 2022-03-14 
- Format Version: 14
- Upstream Commit: [`a5c0b1470cc48e665eabf29881dd87438973ab97`](https://github.com/rust-lang/rust/commit/a5c0b1470cc48e665eabf29881dd87438973ab97)
- Diff: [v0.10.0...v0.9.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.9.0...v0.10.0)

<a name="v0.9.0"></a>
# [v0.9.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.9.0) - 2022-03-12 
- Format Version: 13
- Upstream Commit: [`aa763fcf421e627455aa1de16df1292c8e1bcb9d`](https://github.com/rust-lang/rust/commit/aa763fcf421e627455aa1de16df1292c8e1bcb9d)
- Diff: [v0.9.0...v0.8.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.8.0...v0.9.0)

<a name="v0.8.0"></a>
# [v0.8.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.8.0) - 2022-03-04 
- Format Version: 12
- Upstream Commit: [`aefc0a223a0022a156be07b18feb45cd07e517e0`](https://github.com/rust-lang/rust/commit/aefc0a223a0022a156be07b18feb45cd07e517e0)
- Diff: [v0.8.0...v0.7.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.7.0...v0.8.0)

<a name="v0.7.0"></a>
# [v0.7.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.7.0) - 2022-02-24 
- Format Version: 11
- Upstream Commit: [`aa601574a5fe861bffd641beccf59c7be3ed16c9`](https://github.com/rust-lang/rust/commit/aa601574a5fe861bffd641beccf59c7be3ed16c9)
- Diff: [v0.7.0...v0.6.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.6.0...v0.7.0)

<a name="v0.6.0"></a>
# [v0.6.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.6.0) - 2022-02-01 
- Format Version: 10
- Upstream Commit: [`1521b53c532ccd90c504b0c860cd5662172cc05e`](https://github.com/rust-lang/rust/commit/1521b53c532ccd90c504b0c860cd5662172cc05e)
- Diff: [v0.6.0...v0.5.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.5.0...v0.6.0)

<a name="v0.5.0"></a>
# [v0.5.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.5.0) - 2021-10-16 
- Format Version: 9
- Upstream Commit: [`43f4ef5c6a059c32e19483ff3d295feb2f37c5b8`](https://github.com/rust-lang/rust/commit/43f4ef5c6a059c32e19483ff3d295feb2f37c5b8)
- Diff: [v0.5.0...v0.4.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.4.0...v0.5.0)

<a name="v0.4.0"></a>
# [v0.4.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.4.0) - 2021-09-06 
- Format Version: 7
- Upstream Commit: [`2a6022949077176bfff9f72282dc52e51a175cb7`](https://github.com/rust-lang/rust/commit/2a6022949077176bfff9f72282dc52e51a175cb7)
- Diff: [v0.4.0...v0.3](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.3...v0.4.0)

<a name="v0.3"></a>
# [v0.3](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.3) - 2021-06-25 
- Format Version: 5
- Upstream Commit: [`6dff51f37d87eb02e8776032fa8da16c990a3283`](https://github.com/rust-lang/rust/commit/6dff51f37d87eb02e8776032fa8da16c990a3283)
- Diff: [v0.3...v0.2.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.2.0...v0.3)

<a name="v0.2.0"></a>
# [v0.2.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.2.0) - 2021-01-23 
- Format Version: 2
- Upstream Commit: [`2ceee724270f2186e5e85acff49acd35bf8a652a`](https://github.com/rust-lang/rust/commit/2ceee724270f2186e5e85acff49acd35bf8a652a)
- Diff: [v0.2.0...v0.1.0](https://github.com/aDotInTheVoid/rustdoc-types/compare/v0.1.0...v0.2.0)

<a name="v0.1.0"></a>
# [v0.1.0](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/v0.1.0) - 2020-12-06 
- Format Version: 1
- Upstream Commit: [`7dc1e852d43cb8c9e77dc1e53014f0eb85d2ebfb`](https://github.com/rust-lang/rust/commit/7dc1e852d43cb8c9e77dc1e53014f0eb85d2ebfb)
- Diff: [v0.1.0...](https://github.com/aDotInTheVoid/rustdoc-types/compare/...v0.1.0)

