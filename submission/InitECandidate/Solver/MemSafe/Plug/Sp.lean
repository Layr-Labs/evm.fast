import InitECandidate.Solver.MemSafe.Plug.Ra
import InitECandidate.Solver.MemSafe.Sp.Si
import InitECandidate.Solver.MemSafe.Sp.Final

/-!
# `run_attempt` with package Sp's costs (`state_init`, `payload_header`)

Left: the costs of `process_unchecked_system_transaction`, `process_transaction`, `compute_state_root`, `build_merkle_index`, and the
memory contracts of `process_unchecked_system_transaction` and `process_transaction`.
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

theorem condCost_run_attempt_sp {M Bpuc BT Bcsr Bbmi : Nat} (hPucC : HypPucCost σ Bpuc)
    (hPtC : HypPtCost σ M BT) (hCsr : HypCsrCost σ Bcsr) (hBmi : HypBmiCost σ Bbmi)
    (hPuc : HypPuc σ) (hM : 2 ^ 24 + 2 ≤ M) :
    CondCost σ guestCtx guestC (HR σ) (nm "run_attempt") Band.sgSi (CcPre RaPre0)
      (bRunAttempt Sp.bSi (Sp.bPh Bbmi) (bExecBlock Bpuc BT Wg.bWd (Wg.bGpr (Wg.bCsr Bpuc)) Bcsr Bbmi)) :=
  condCost_run_attempt_p hPucC hPtC hCsr hBmi Sp.hypSiCost (Sp.hypPhCost hBmi) hPuc hM

end InitECandidate.Solver.MemSafe.Plug

#print axioms InitECandidate.Solver.MemSafe.Plug.condCost_run_attempt_sp
