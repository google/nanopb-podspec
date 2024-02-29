### Version numbers

nanopb doesn't follow https://semver.org/. It uses four digit versions and has
only used major version 0 which in semver implies any update can be
breaking.

The CocoaPods minor version is calculated from the nanopb version with the
formula:
`minor * 10,000 + patch * 100 + fourth`

The CocoaPod major version is not 0 because some CocoaPods incorrectly published
with floating dependencies allowing updates to any 0 major version. Other major
version updates may be done because of iOS support versioning changes even
if the underlying nanopb library is unimpacted. For example, the major update
from 1 to 2 is done to bump the minimum supported iOS version to 9 because
Xcode 12 no longer supports iOS 8 and generates build warnings for nanopb
client apps.

The CocoaPods patch version should be used for any podspec or other packaging
updates.

#### Additional versioning background

While nanopb tries to follow a variation of semver and updates the fourth digit
for non-breaking patch updates, the policy is not enforced for binary
dependencies which can break when source dependencies don't, like the `#define`
changes in 0.3.9.4.

The pod instead looks for sources from the podspec's `source` attribute.

### Publishing

Publish this pod with `--allow-warnings` to address a warning caused by
the podspec's `version` attribute not matching a tag in the source-of-truth repo.
