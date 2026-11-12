import InitECandidate.Solver.Spec.Fq12.Prime
import InitECandidate.Solver.Spec.Fq12.Doom
import InitECandidate.Solver.Spec.Fq12.FqMul
import InitECandidate.Solver.Spec.Fq12.FqSub
import InitECandidate.Solver.Spec.Fq12.Top

/-!
# The tick bound of `fq12_inv`

`calleeCost_fq12_inv` (`Spec/Fq12/Top.lean`): under `X.code.lookup = guestCode`, the callee
entries `heap_mark`, `alloc`, `memzero`, `memcpy`, `fq_poly_deg`, `fq_inv`, `fq_mul`,
`fq_poly_submul`, `u256_is_zero`, `heap_release`, and escape-freedom marks for `fq_mul`,
`fq_poly_submul`, `fq_poly_deg`, every body installed for `fq12_inv` costs at most
`fq12InvB ...` ticks.

The one non-structural step is the division loop (`while (d0 >= d1)`), whose body need not
lower the degree of `r0`. It terminates by a doom argument (`Spec/Fq12/Doom.lean`): over the
prime field `F_p` (`fqP_prime`, a Lucas certificate), the top coefficient of `r0` after one
step is `t - c*t` for a fixed `c` (the Montgomery product of the inverse of the divisor's lead
and the lead), so if it does not cancel once it never cancels; the loop either drops the
degree or never ends (no Good run). The specifications behind it:

* `Spec/Fq12/FqMul.lean`: `fq_mul` is the Montgomery product (`funRet_fq_mul`);
* `Spec/Fq12/FqSub.lean`: `fq_sub`, `fq_inv`, `u256_add` results;
* `Spec/Fq12/IzbDeg.lean`, `Submul.lean`, `MemFp.lean`, `Alloc.lean`: the byte and word
  views and footprints of `is_zero_bytes`, `fq_poly_deg`, `fq_poly_submul`, `memzero`,
  `memcpy`, `alloc`;
* `Spec/Fq12/InnerLoop.lean`, `JLoop.lean`, `OuterBody.lean`: the three loops.
-/
