#!/bin/sh

curl https://raw.githubusercontent.com/rust-lang/rust/master/src/librustdoc/json/types.rs | sed 's/rustc_data_structures::fx::/std::collections::/g' | sed 's/FxHashMap/HashMap/g' > src/lib.rs
