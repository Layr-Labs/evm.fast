import InitECandidate.Solver.MemSafe.Plug.Rt
import InitECandidate.Solver.MemSafe.PtC.Lit

/-!
# `run_attempt` with package PtC's cost of `process_transaction`

Left: the cost and memory contract of `process_unchecked_system_transaction` (packages Eon, Puc).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Plug
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Eb InitECandidate.Solver.MemSafe.Att

variable {σ : Type}

theorem condCost_run_attempt_ptc {Bpuc : Nat} (hPucC : HypPucCost σ Bpuc) (hPuc : HypPuc σ) :
    CondCost σ guestCtx guestC (HR σ) (nm "run_attempt") Band.sgSi (CcPre RaPre0)
      (bRunAttempt Sp.bSi (Sp.bPh bBmiL) (bExecBlock Bpuc PtC.bPtLit Wg.bWd (Wg.bGpr (Wg.bCsr Bpuc)) bCsrL bBmiL)) :=
  condCost_run_attempt_rt hPucC PtC.hypPtCost_lit hPuc (le_refl _)

end InitECandidate.Solver.MemSafe.Plug

#print axioms InitECandidate.Solver.MemSafe.Plug.condCost_run_attempt_ptc
