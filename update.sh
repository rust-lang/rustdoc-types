#!/bin/sh

curl -# https://raw.githubusercontent.com/rust-lang/rust/master/src/rustdoc-json-types/lib.rs | sed 's/rustc_data_structures::fx::/std::collections::/g' | sed 's/FxHashMap/HashMap/g' > src/lib.rs

curl -# https://raw.githubusercontent.com/rust-lang/rust/master/src/rustdoc-json-types/tests.rs > src/tests.rs

curl -# "https://api.github.com/repos/rust-lang/rust/commits?path=src/rustdoc-json-types/lib.rs"  | jq -r ".[0].sha" > COMMIT.txt
