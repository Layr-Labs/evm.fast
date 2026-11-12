import InitECandidate.Solver.MemSafe.Init.Main2
import InitECandidate.Solver.MemSafe.Plug.Jr
import InitECandidate.Solver.MemSafe.Puc.Final
import InitECandidate.Solver.MemSafe.Puc.PucLit

/-!
# The final fold, part V: `verify_stateless_new_payload`'s cost at `VerPre`, every hypothesis discharged

`Init.certificate_of_verify_costP` needs `verify_stateless_new_payload`'s cost at `VerPre` (`= Att.CcPreNJ Att.RaPre0`). That is
`Plug.condCost_verify_jr` (JrFix + every closed package), whose two hypotheses are package Puc's `hypPucCost_lit` and `hypPuc_closed`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Eb

/-- `verify_stateless_new_payload`'s bound (`Plug.condCost_verify_jr` at `Puc.bPucLit`). -/
abbrev bVsnp : Nat :=
  1 + ((1 + Att.bRunAttempt Sp.bSi (Sp.bPh Plug.bBmiL)
    (bExecBlock Puc.bPucLit PtC.bPtLit Wg.bWd (Wg.bGpr (Wg.bCsr Puc.bPucLit)) Plug.bCsrL Plug.bBmiL) + (0 + 0) + 0) + 6) +
    (0 + 0) + 0

theorem verify_costP_closed :
    CondCost Guest.HostMemory guestCtx guestC (HR Guest.HostMemory) (nm "verify_stateless_new_payload") Band.sgSi VerPre
      bVsnp :=
  Plug.condCost_verify_jr Puc.hypPucCost_lit Puc.hypPuc_closed

end InitECandidate.Solver.MemSafe.Init

#print axioms InitECandidate.Solver.MemSafe.Init.verify_costP_closed
