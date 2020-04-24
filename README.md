### Version numbers

nanopb doesn't follow https://semver.org/. It uses four digit versions and has
only used major version 0 which in semver implies any update can be
breaking.

The CocoaPods minor version is calculated from the nanopb version with the
formula:
`minor * 100,000 + patch * 100 + fourth`

The CocoaPod major version will be 1 for the forseeable future. It is not
0 because some CocoaPods incorrectly published with floating dependencies
allowing updates to any 0 major version.

The CocoaPods patch version should be used for any podspec or other packaging
updates.

#### Additional versioning background

While nanopb tries to follow a variation of semver and updates the fourth digit
for non-breaking patch updates, the policy is not enforced for binary
dependencies which can break when source dependencies don't, like the `#define`
changes in 0.3.9.4.
