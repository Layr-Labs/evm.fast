import InitECandidate.Solver.MemSafe.Wg.CostGpr4

/-!
# Wg: closed forms of the bounds, and the statements delivered

* `Wg.hypWd (hSft) (hK) (hgs) : Eb.HypWd σ`
* `Wg.hypGpr4 (hSft) (hPuc) (hK) : Wg.HypGpr4 σ` (`Eb.HypGpr` with the four address globals in the precondition)
* `Wg.hypWdCost (hSft) (hK) (hgs) : Eb.HypWdCost σ bWd`, `bWd = 1175…` (`bWd_eq`)
* `Wg.hypGprCost (hPucC : Eb.HypPucCost σ Bpuc) (hSft) (hPuc) (hK) : Wg.HypGprCost4 σ (bGpr (bCsr Bpuc))`,
  `bGpr (bCsr Bpuc) = K + 4 * Bpuc` (`bGpr_bCsr_eq`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Wg

theorem bWd_eq : bWd = 4081774915008110980468975268830526301523107580443332530341250100585587228130182101863954 := by
  decide_cbv

theorem bGpr_bCsr_eq (Bpuc : Nat) : bGpr (bCsr Bpuc) = 1575552535582056872648010900883155952699584251226936515235826 + 4 * Bpuc := by
  have h : bGpr (bCsr 0) = 1575552535582056872648010900883155952699584251226936515235826 := by decide_cbv
  have e : bGpr (bCsr Bpuc) = bGpr (bCsr 0) + 4 * Bpuc := by
    unfold bGpr bGprTail bCsr
    omega
  rw [e, h]

end InitECandidate.Solver.MemSafe.Wg

#print axioms InitECandidate.Solver.MemSafe.Wg.bWd_eq
#print axioms InitECandidate.Solver.MemSafe.Wg.bGpr_bCsr_eq
