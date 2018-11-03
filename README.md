### Version numbers

nanopb doesn't follow https://semver.org/, so we'll use the following scheme:

nanopb version `a.b.c` becomes `a.b.(c*100)` and nanopb version `a.b.c.d`
becomes `a.b.(c*10000+d*100+e)` where e is the version of the podspec.

Example: nanopb 0.3.9 => 0.3.90000, and nanopb 0.3.9.1 => 0.3.90100 and a
podspec only rev would be 0.3.90101.
