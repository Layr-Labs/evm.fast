import InitECandidate.Solver.MemSafe.Fq.InvJL
import InitECandidate.Solver.MemSafe.Fq.Pairing
import InitECandidate.Solver.MemSafe.Mod.PreModexpJL

set_option autoImplicit false

/-!
# `pre_alt_bn128_pairing_check` and `run_precompile`, with no hypotheses

* `csumm_pairing_check_guestJL`: `Pairing.csumm_pairing_check` (the fold's own `accepts` for
  `bn254_pairing_check` and `pre_alt_bn128_pairing_check` once `fq12_inv` is in the table) applied to
  `csumm_fq12_inv_guestJL`.
* `run_precompile_guestJL_full`: `Mod.run_precompile_guestJL'` with that.
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Fq
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem csumm_pairing_check_guestJL {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksJL (σ := σ))
      (nm "pre_alt_bn128_pairing_check") Pre.preSig Pre.evCaps :=
  csumm_pairing_check Wire.foldOK_guestJL Wire.tab_guestJL csumm_fq12_inv_guestJL

/-- **`run_precompile`, no hypotheses.** -/
theorem run_precompile_guestJL_full {σ : Type} :
    Pre.RpS σ (Hooks.guestHooksJL (σ := σ)) :=
  Mod.run_precompile_guestJL' csumm_pairing_check_guestJL

end InitECandidate.Solver.MemSafe.Fq

#print axioms InitECandidate.Solver.MemSafe.Fq.csumm_pairing_check_guestJL
#print axioms InitECandidate.Solver.MemSafe.Fq.run_precompile_guestJL_full
