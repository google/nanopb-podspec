### Version numbers

nanopb doesn't follow https://semver.org/, so we'll use the following scheme:

nanopb version `a.b.c` becomes `a.b.(c*100)` and nanopb version `a.b.c.d`
becomes `a.b.(c*100+d)`

Example: nanopb 0.3.9 => 0.3.900, and nanopb 0.3.9.1 => 0.3.901
