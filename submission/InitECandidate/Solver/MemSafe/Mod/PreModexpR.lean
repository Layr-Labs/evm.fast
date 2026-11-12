import InitECandidate.Solver.MemSafe.Mod.PreModexp
import InitECandidate.Solver.MemSafe.Mod.ModexpR
import InitECandidate.Solver.MemSafe.Pre.DispatchR
import InitECandidate.Solver.MemSafe.Mod.PreModexpJL
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.ShardsJL.AllR
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Mod
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem csumm_pre_modexp_guestR {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "pre_modexp") Pre.preSig Pre.evCaps :=
  csumm_pre_modexp Rec.foldOK_guestR
    (ctab% Wire.tab_guestR)
    (ctab% Wire.tab_guestR)
    (ctab% Wire.tab_guestR)
    (ctab% Wire.tab_guestR)
    (ctab% Wire.tab_guestR)
    (ctab% Wire.tab_guestR)
    sumSpecA_modexp_guestR

/-- `run_precompile` with `pre_modexp` discharged; only the pairing check remains a hypothesis. -/
theorem run_precompile_guestR' {σ : Type}
    (hPC : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ))
      (nm "pre_alt_bn128_pairing_check") Pre.preSig Pre.evCaps) :
    Pre.RpS σ (Hooks.guestHooksR (σ := σ)) :=
  Pre.sumSpecA_run_precompile_guestR csumm_pre_modexp_guestR hPC

end InitECandidate.Solver.MemSafe.Mod

#print axioms InitECandidate.Solver.MemSafe.Mod.csumm_pre_modexp_guestR
#print axioms InitECandidate.Solver.MemSafe.Mod.run_precompile_guestR'
