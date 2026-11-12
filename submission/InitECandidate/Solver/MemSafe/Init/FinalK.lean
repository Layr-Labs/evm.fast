import InitECandidate.Solver.MemSafe.Init.Fold

/-!
# The certificate with a literal K

`kLit = Final.totalBoundSrc bMain` by kernel evaluation; `certificate_lit` is `certificate_closed` restated with the literal.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Init
open InitE

/-- The claimed step bound. -/
abbrev kLit : Nat := 604497386198401696480443941423039233672056843956262611240144118453974882764353409596694785910843529629961798654508

theorem kLit_eq : Final.totalBoundSrc bMain = kLit := by decide +kernel

/-- **The certificate with the literal K.** -/
theorem certificate_lit :
    Certificate (Final.withScore baselineSubmission (.finite kLit)) (.finite kLit) := by
  rw [← kLit_eq]; exact certificate_closed

end InitECandidate.Solver.MemSafe.Init

#print axioms InitECandidate.Solver.MemSafe.Init.certificate_lit
