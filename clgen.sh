#!/bin/bash

for version_tag in $(git tag --sort=-version:refname); do
	date=$(git show -s $version_tag --format=%ci | sd "[0-9]{2}:[0-9]{2}:[0-9]{2} \\+[0-9]{4}" "")
	format_version=$(git show $version_tag:src/lib.rs | grep FORMAT_VERSION | col6 | sd ";" "")

	if [[ $version_tag == "v0.1.0" ]]; then
		prev_tag=""
		rustc_commit=7dc1e852d43cb8c9e77dc1e53014f0eb85d2ebfb
	else
		prev_tag=$(git tag --sort=-version:refname | grep -A 1 $version_tag | tail -n 1)
		rustc_commit=$(git show $version_tag:COMMIT.txt)
	fi 

	# Handle pre https://github.com/rust-lang/rust/pull/89906
	if [[ -z $format_version ]]; then
		format_version=$(curl -L# https://raw.githubusercontent.com/rust-lang/rust/$rustc_commit/src/librustdoc/json/mod.rs | grep format_version | col2 | sd "," "")
	fi

	echo "<a name=\"$version_tag\"></a>"
	echo "# [$version_tag](https://github.com/aDotInTheVoid/rustdoc-types/releases/tag/$version_tag) - $date" 
	echo "- Format Version: $format_version"
	echo "- Upstream Commit: [\`$rustc_commit\`](https://github.com/rust-lang/rust/commit/$rustc_commit)"
	echo "- Diff: [$version_tag...$prev_tag](https://github.com/aDotInTheVoid/rustdoc-types/compare/$prev_tag...$version_tag)"

	echo ""
done