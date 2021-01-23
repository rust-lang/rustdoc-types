#!/bin/sh

curl -# https://raw.githubusercontent.com/rust-lang/rust/master/src/librustdoc/json/types.rs | sed 's/rustc_data_structures::fx::/std::collections::/g' | sed 's/FxHashMap/HashMap/g' > src/lib.rs


curl -# "https://api.github.com/repos/rust-lang/rust/commits?path=src/librustdoc/json/types.rs"  | jq -r ".[0].sha" > COMMIT.txt
