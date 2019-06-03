## Version numbers

nanopb doesn't follow https://semver.org/, so we'll use the following scheme:

nanopb version `a.b.c` becomes `a.b.(c*100)` and nanopb version `a.b.c.d`
becomes `a.b.(c*100+d)`

Example: nanopb 0.3.9 => 0.3.900, and nanopb 0.3.9.1 => 0.3.901


## Testing and Publishing

### Publish the podspec to internal staging repo
1. `pod repo add cpdc-internal sso://cpdc-internal/spec`
1. `pod repo push cpdc-internal nanobp.podspec`

Additional information about working with private repos
[here](https://guides.cocoapods.org/making/private-cocoapods.html).

### Test the new podspec
1. `git clone git@github.com:firebase/quickstart-ios.git`
1. `cd quickstart-ios.git/firestore`
1. Add the following two lines to the top of the Podfile:
```
source 'sso://cpdc-internal/firebase'
source 'https://github.com/CocoaPods/Specs.git'
```
1. `pod install`
1. Open `Podfile.lock` and verify that nanopb was installed from cpdc-internal.
1. Open the app in Xcode and change the bundle ID to something unique.
1. Build, run, and test the app in Xcode.
1. Email davidair@ to ask to verify logging for the unique bundle ID.
1. Once confirmed, email icore-eng@ to ask to publish the podspec to CocoaPods master.
