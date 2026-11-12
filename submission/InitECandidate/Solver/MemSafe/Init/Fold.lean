import InitECandidate.Solver.MemSafe.Init.Cert
import InitECandidate.Solver.MemSafe.Init.FoldV

/-!
# The final fold: the certificate with every hypothesis discharged

`Init.certificate_of_verify_costP` applied to `Init.verify_costP_closed` (`FoldV.lean`). Building this file needs more than 16 GiB
(its imports combine `Final` and the whole block-driver chain).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Init
open InitE

/-- `main`'s source cost bound. -/
abbrev bMain : Nat := 1 + bPre bVsnp + 0

/-- **The certificate**, every hypothesis discharged. -/
theorem certificate_closed :
    Certificate (Final.withScore baselineSubmission (.finite (Final.totalBoundSrc bMain)))
      (.finite (Final.totalBoundSrc bMain)) :=
  certificate_of_verify_costP verify_costP_closed

end InitECandidate.Solver.MemSafe.Init

#print axioms InitECandidate.Solver.MemSafe.Init.certificate_closed
