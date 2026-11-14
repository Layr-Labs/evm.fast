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
abbrev bBmiL : Nat := 6484356997289713489883399332781977854032012983525739547991540440757885346705771

/-- `compute_state_root`'s literal bound (package Rt2). -/
abbrev bCsrL : Nat :=
  160589666025205711490680953245729752537823497788352528105427238848339667217942745829459

theorem condCost_run_attempt_rt {M Bpuc BT : Nat} (hPucC : HypPucCost σ Bpuc) (hPtC : HypPtCost σ M BT)
    (hPuc : HypPuc σ) (hM : 2 ^ 24 + 2 ≤ M) :
    CondCost σ guestCtx guestC (HR σ) (nm "run_attempt") Band.sgSi (CcPre RaPre0)
      (bRunAttempt Sp.bSi (Sp.bPh bBmiL) (bExecBlock Bpuc BT Wg.bWd (Wg.bGpr (Wg.bCsr Bpuc)) bCsrL bBmiL)) :=
  condCost_run_attempt_sp hPucC hPtC InitECandidate.Solver.MemSafe.CsrCost.hypCsrCost Band7.hypBmiCost_lit hPuc hM

end InitECandidate.Solver.MemSafe.Plug

#print axioms InitECandidate.Solver.MemSafe.Plug.condCost_run_attempt_rt
