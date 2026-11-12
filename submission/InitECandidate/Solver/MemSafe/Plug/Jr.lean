import InitECandidate.Solver.MemSafe.Plug.PtC
import InitECandidate.Solver.MemSafe.Ra.JrD

/-!
# `run_attempt` and `verify_stateless_new_payload` at `main`'s entry (no `JrNZ`)

Package JrFix's `Att.condCost_run_attempt_nj` with every closed hypothesis plugged in (as in `Plug.condCost_run_attempt_ptc`). Left: the
cost and memory contract of `process_unchecked_system_transaction` (packages Eon, Puc).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Plug
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb InitECandidate.Solver.MemSafe.Att

variable {σ : Type}

theorem condCost_run_attempt_jr {Bpuc : Nat} (hPucC : HypPucCost σ Bpuc) (hPuc : HypPuc σ) :
    CondCost σ guestCtx guestC (HR σ) (nm "run_attempt") Band.sgSi (CcPreNJ RaPre0)
      (bRunAttempt Sp.bSi (Sp.bPh bBmiL) (bExecBlock Bpuc PtC.bPtLit Wg.bWd (Wg.bGpr (Wg.bCsr Bpuc)) bCsrL bBmiL)) :=
  condCost_run_attempt_nj hPucC PtC.hypPtCost_lit Band7.hypCsrCost_lit Band7.hypBmiCost_lit
    (Sp.hypPhCost Band7.hypBmiCost_lit) hPuc hypSft_closed (hypPt_closed (le_refl _)) (le_refl _) hypKeepG_closed
    Band6.hgs_R

theorem condCost_verify_jr {Bpuc : Nat} (hPucC : HypPucCost σ Bpuc) (hPuc : HypPuc σ) :
    CondCost σ guestCtx guestC (HR σ) (nm "verify_stateless_new_payload") Band.sgSi (CcPreNJ RaPre0)
      (1 + ((1 + bRunAttempt Sp.bSi (Sp.bPh bBmiL) (bExecBlock Bpuc PtC.bPtLit Wg.bWd (Wg.bGpr (Wg.bCsr Bpuc)) bCsrL bBmiL) +
        (0 + 0) + 0) + 6) + (0 + 0) + 0) :=
  condCost_verify_nj (condCost_run_attempt_jr hPucC hPuc)

end InitECandidate.Solver.MemSafe.Plug

#print axioms InitECandidate.Solver.MemSafe.Plug.condCost_run_attempt_jr
#print axioms InitECandidate.Solver.MemSafe.Plug.condCost_verify_jr
