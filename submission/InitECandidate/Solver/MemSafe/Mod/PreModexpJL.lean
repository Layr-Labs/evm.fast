import InitECandidate.Solver.MemSafe.Mod.PreModexp
import InitECandidate.Solver.MemSafe.Mod.ModexpJL
import InitECandidate.Solver.MemSafe.Pre.Dispatch
import InitECandidate.Solver.MemSafe.Pre.RpHand
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `pre_modexp` at the final hook family, and `run_precompile` with only the pairing check open

* `csumm_pre_modexp_guestJL`: no hypotheses; the callee entries are read off `ShardsJL.tab26`:
  `buffer_read` 579, `u256_from_be` 441, `sat_word` 183, `modexp_gas` 184, `min` 479, `charge_gas` 569
  (caps `evCaps`); `modexp` is `sumSpecA_modexp_guestJL`.
* `run_precompile_guestJL'`: `Pre.csumm_run_precompile_guestJL` with `hPM := csumm_pre_modexp_guestJL`;
  only the `pre_alt_bn128_pairing_check` hypothesis remains.
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Mod
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem csumm_pre_modexp_guestJL {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksJL (σ := σ)) (nm "pre_modexp") Pre.preSig Pre.evCaps :=
  csumm_pre_modexp Wire.foldOK_guestJL
    (ctab% Wire.tab_guestJL)
    (ctab% Wire.tab_guestJL)
    (ctab% Wire.tab_guestJL)
    (ctab% Wire.tab_guestJL)
    (ctab% Wire.tab_guestJL)
    (ctab% Wire.tab_guestJL)
    sumSpecA_modexp_guestJL

/-- `run_precompile` with `pre_modexp` discharged; only the pairing check remains a hypothesis. -/
theorem run_precompile_guestJL' {σ : Type}
    (hPC : CSumm σ guestCtx guestC (Hooks.guestHooksJL (σ := σ))
      (nm "pre_alt_bn128_pairing_check") Pre.preSig Pre.evCaps) :
    Pre.RpS σ (Hooks.guestHooksJL (σ := σ)) :=
  Pre.sumSpecA_run_precompile_guestJL csumm_pre_modexp_guestJL hPC

end InitECandidate.Solver.MemSafe.Mod

#print axioms InitECandidate.Solver.MemSafe.Mod.csumm_pre_modexp_guestJL
#print axioms InitECandidate.Solver.MemSafe.Mod.run_precompile_guestJL'
