import InitECandidate.Solver.MemSafe.Plug.F3
import InitECandidate.Solver.MemSafe.Plug.Pt
import InitECandidate.Solver.MemSafe.Ra.AttFinal
import InitECandidate.Solver.MemSafe.Ra.AttInteg
import InitECandidate.Solver.Band6.UbCost

/-!
# `run_attempt` and `verify_stateless_new_payload` with F3's hypotheses discharged

`HypKeepG` (`Plug.hypKeepG_closed`), `HypSft` (`Plug.hypSft_closed`) and `Bal.HGS` (`Band6.hgs_R`) are gone. Left: the costs of
`process_unchecked_system_transaction`, the cost of `process_transaction`, `compute_state_root`, `build_merkle_index`, `state_init`,
`payload_header`, and the memory contract of `process_unchecked_system_transaction` (`Plug.hypPt_closed`: `process_transaction`'s memory contract is closed).
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

theorem condCost_run_attempt_p {M Bpuc BT Bcsr Bbmi Bsi Bph : Nat} (hPucC : HypPucCost σ Bpuc)
    (hPtC : HypPtCost σ M BT) (hCsr : HypCsrCost σ Bcsr) (hBmi : HypBmiCost σ Bbmi) (hSiC : HypSiCost σ Bsi)
    (hPhC : HypPhCost σ Bph) (hPuc : HypPuc σ) (hM : 2 ^ 24 + 2 ≤ M) :
    CondCost σ guestCtx guestC (HR σ) (nm "run_attempt") Band.sgSi (CcPre RaPre0)
      (bRunAttempt Bsi Bph (bExecBlock Bpuc BT Wg.bWd (Wg.bGpr (Wg.bCsr Bpuc)) Bcsr Bbmi)) :=
  condCost_run_attempt hPucC hPtC hCsr hBmi hSiC hPhC hPuc hypSft_closed (hypPt_closed hM) hM hypKeepG_closed Band6.hgs_R

theorem condCost_verify_p {M Bpuc BT Bcsr Bbmi Bsi Bph : Nat} (hPucC : HypPucCost σ Bpuc)
    (hPtC : HypPtCost σ M BT) (hCsr : HypCsrCost σ Bcsr) (hBmi : HypBmiCost σ Bbmi) (hSiC : HypSiCost σ Bsi)
    (hPhC : HypPhCost σ Bph) (hPuc : HypPuc σ) (hM : 2 ^ 24 + 2 ≤ M) :
    CondCost σ guestCtx guestC (HR σ) (nm "verify_stateless_new_payload") Band.sgSi (CcPre RaPre0)
      (1 + ((1 + bRunAttempt Bsi Bph (bExecBlock Bpuc BT Wg.bWd (Wg.bGpr (Wg.bCsr Bpuc)) Bcsr Bbmi) + (0 + 0) + 0) + 6) +
        (0 + 0) + 0) :=
  condCost_verify_of_run_attempt (condCost_run_attempt_p hPucC hPtC hCsr hBmi hSiC hPhC hPuc hM)

end InitECandidate.Solver.MemSafe.Plug

#print axioms InitECandidate.Solver.MemSafe.Plug.condCost_run_attempt_p
#print axioms InitECandidate.Solver.MemSafe.Plug.condCost_verify_p
