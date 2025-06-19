#!/bin/bash
set -eou pipefail

sd() {
	sed -E "s/$1/$2/g"
}
col2() {
	awk '{print $2}'
}
col6() {
	awk '{print $6}'
}

# Check we have two arguments, and assign them to variables

if [[ $# -ne 2 ]]; then
	echo "Usage: $0 <old_version> <new_version>"
	exit 1
fi

old_version=$1
new_version=$2

# Update the version in Cargo.toml
cat Cargo.toml | sd "version = \"$old_version\"" "version = \"$new_version\"" > tmp
# Error if the version is not updated
if [[ $(cat tmp | grep $new_version | wc -l) -ne 1 ]]; then
	echo "Error: Version not updated in Cargo.toml"
	exit 1
fi
mv tmp Cargo.toml

date=$(date -u +'%Y-%m-%d')
format_version=$(cat src/lib.rs | grep 'FORMAT_VERSION: u32 =' | col6 | sd ";" "")
rustc_commit=$(cat COMMIT.txt)

# We do a shuffling dance to append the new version to the top of the changelog
new_tag="v$new_version"
old_tag="v$old_version"

cat<<EOF > tmp
<a name="$new_tag"></a>
# [$new_tag](https://github.com/rust-lang/rustdoc-types/releases/tag/$new_tag) - $date

TODO: Changelog.

- Format Version: $format_version
- Upstream Commit: [\`$rustc_commit\`](https://github.com/rust-lang/rust/commit/$rustc_commit)
- Diff: [$old_tag...$new_tag](https://github.com/rust-lang/rustdoc-types/compare/$old_tag...$new_tag)

EOF

cat tmp CHANGELOG.md > tmp2
mv tmp2 CHANGELOG.md
rm tmp


echo "First, edit the TODO in CHANGELOG.md"
echo "Then, check the diff"
echo "Finally, Run:"
echo "git add Cargo.toml CHANGELOG.md COMMIT.txt src/"
echo "git commit -m $new_tag"
echo "git tag $new_tag"
echo "git push && git push --tags"
echo "cargo publish"
