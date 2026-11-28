## Resubmission

This is a patch release (1.20.1) fixing two p-value bugs reported by a user:

* `pPage()`: the Exact and Monte Carlo p-values were overwritten by the
  asymptotic calculation and returned 0.
* `pHaySton()`: the vector (x, g) form returned incorrect exact p-values
  for data not sorted by group.

No new features, no API changes, no changes to dependencies.

## Test environments

* local: Ubuntu 24.04, R 4.3.3

## R CMD check results

0 errors | 0 warnings | 4 notes

* Unable to verify current time (future-file-timestamps check) — clock
  issue in the local check environment, not the package.
* LICENSE file is not mentioned in the DESCRIPTION file — pre-existing;
  the package is GPL-2 and the LICENSE file is included.
* Compilation used the non-portable flag '-mno-omit-leaf-frame-pointer' —
  a compiler default on this platform, pre-existing.
* Skipping HTML validation: no command 'tidy' found — 'tidy' is not
  installed in the local check environment.
