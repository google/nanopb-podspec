### Version numbers

Starting with nanopb 0.3.9.4, the CocoaPods version is disconnected from the
nanopb version and is described by the following table:

| CocoaPods Version | nanopb version |
| ----------------- | -------------- |
| 1.0.0             | 0.3.9.4        |


#### Version rationale and background

nanopb doesn't follow https://semver.org/. It uses four digit versions and is
still setting the major version to 0 which in semver implies any update can be
breaking.

While nanopb tries to follow a variation of semver and updates the fourth digit
for non-breaking patch updates, the policy is not enforced for binary
dependencies which can break when source dependencies don't, like the `#define`
changes in 0.3.9.4.

The versioning scheme is exacerbated by early Firebase releases specifying
CocoaPods dependencies with `"nanopb": "~> 0.3"` which allows an update to any
subsequent 0.* release.