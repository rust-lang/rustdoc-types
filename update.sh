#!/bin/sh

pyjq() {
    python3 -c "import json, sys; print(json.load(sys.stdin)${1})"
}

user="aDotInTheVoid"
repo="rust"
branch="rdj-hashmap"

curl -# https://raw.githubusercontent.com/${user}/${repo}/${branch}/src/rustdoc-json-types/lib.rs > src/lib.rs

curl -# https://raw.githubusercontent.com/${user}/${repo}/${branch}/src/rustdoc-json-types/tests.rs > src/tests.rs

curl -# "https://api.github.com/repos/${user}/${repo}/commits?sha=${branch}&path=src/rustdoc-json-types/lib.rs" | pyjq '[0]["sha"]' > COMMIT.txt
