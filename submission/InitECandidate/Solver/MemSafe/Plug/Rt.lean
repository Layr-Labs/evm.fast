import InitECandidate.Solver.MemSafe.CsrCost.Main
import InitECandidate.Solver.MemSafe.Plug.Sp
import InitECandidate.Solver.Band7.CsrLit
import InitECandidate.Solver.Band7.Bmi6

/-!
# `run_attempt` with package Rt2's costs (`compute_state_root`, `build_merkle_index`)

Left: the cost and memory contract of `process_unchecked_system_transaction` (packages Eon, Puc) and the cost of `process_transaction`
(package PtC). `process_transaction`'s memory contract is discharged (`Plug.hypPt_closed`, package Ptb2).
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

/-- `build_merkle_index`'s literal bound (package Rt2). -/
abbrev bBmiL : Nat := 12078056111340228862099624302614933235999340691607359240689463329401371

/-- `compute_state_root`'s literal bound (package Rt2). -/
abbrev bCsrL : Nat :=
  66931011924003819429423923558987842733099444390525250343783444979

theorem condCost_run_attempt_rt {M Bpuc BT : Nat} (hPucC : HypPucCost σ Bpuc) (hPtC : HypPtCost σ M BT)
    (hPuc : HypPuc σ) (hM : 2 ^ 24 + 2 ≤ M) :
    CondCost σ guestCtx guestC (HR σ) (nm "run_attempt") Band.sgSi (CcPre RaPre0)
      (bRunAttempt Sp.bSi (Sp.bPh bBmiL) (bExecBlock Bpuc BT Wg.bWd (Wg.bGpr (Wg.bCsr Bpuc)) bCsrL bBmiL)) :=
  condCost_run_attempt_sp hPucC hPtC InitECandidate.Solver.MemSafe.CsrCost.hypCsrCost Band7.hypBmiCost_lit hPuc hM

end InitECandidate.Solver.MemSafe.Plug

#print axioms InitECandidate.Solver.MemSafe.Plug.condCost_run_attempt_rt
