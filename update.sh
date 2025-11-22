#!/bin/sh

pyjq() {
    python3 -c "import json, sys; print(json.load(sys.stdin)${1})"
}

case "$#" in
    0)
        ref="main"
        ;;
    1)
        ref="$1"
        ;;
    2)
        echo "usage: ./update.sh [ref]"
        exit 1
        ;;
esac

user="rust-lang"
repo="rust"

curl -# https://raw.githubusercontent.com/${user}/${repo}/${ref}/src/rustdoc-json-types/lib.rs \
    | sed '/^pub type FxHashMap.*$/d' \
    > src/lib.rs

curl -# https://raw.githubusercontent.com/${user}/${repo}/${ref}/src/rustdoc-json-types/tests.rs > src/tests.rs

curl -# "https://api.github.com/repos/${user}/${repo}/commits?sha=${ref}&path=src/rustdoc-json-types/lib.rs" | pyjq '[0]["sha"]' > COMMIT.txt
