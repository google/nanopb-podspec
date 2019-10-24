### Version numbers

nanopb doesn't follow https://semver.org/, so we'll use the following scheme:

nanopb version `a.b.c` becomes `a.b.(c*1000)` and nanopb version `a.b.c.d`
becomes `a.b.(c*1000+d*10+podspec_revision)`

Example: nanopb 0.3.9 => 0.3.9000, and nanopb 0.3.9.1 => 0.3.9010

Converted to four digit version after upgrade from 0.3.9.1 to 0.3.9.4 failed
and required a rollback.
