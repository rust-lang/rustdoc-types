#!/bin/sh

pyjq() {
    python3 -c "import json, sys; print(json.load(sys.stdin)${1})"
}

curl -# https://raw.githubusercontent.com/rust-lang/rust/master/src/rustdoc-json-types/lib.rs | sed 's/rustc_data_structures::fx::/std::collections::/g' | sed 's/FxHashMap/HashMap/g' > src/lib.rs

curl -# https://raw.githubusercontent.com/rust-lang/rust/master/src/rustdoc-json-types/tests.rs > src/tests.rs

curl -# "https://api.github.com/repos/rust-lang/rust/commits?path=src/rustdoc-json-types/lib.rs" | pyjq '[0]["sha"]' > COMMIT.txt
