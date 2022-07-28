#!/bin/sh

pyjq() {
    python3 -c "import json, sys; print(json.load(sys.stdin)${1})"
}

user="rust-lang"
repo="rust"
branch="master"

curl -# https://raw.githubusercontent.com/${user}/${repo}/${branch}/src/rustdoc-json-types/lib.rs | sed 's/rustc_data_structures::fx::/std::collections::/g' | sed 's/FxHashMap/HashMap/g' > src/lib.rs

curl -# https://raw.githubusercontent.com/${user}/${repo}/${branch}/src/rustdoc-json-types/tests.rs > src/tests.rs

curl -# "https://api.github.com/repos/${user}/${repo}/commits?sha=${branch}&path=src/rustdoc-json-types/lib.rs" | pyjq '[0]["sha"]' > COMMIT.txt
