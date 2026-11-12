import InitECandidate.Solver.MemSafe.Ops4.PmFin
import InitECandidate.Solver.MemSafe.Mod.ModexpR
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `rpG_guestR`: `Frames.RpGas σ` (the gas of `run_precompile`), completed with `pre_modexp`
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ops4
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Mod

theorem tabs_guestR {σ : Type} : Tabs σ guestCtx (Hooks.guestHooksR (σ := σ)) :=
  { br := toSA (ctab% Wire.tab_guestR)
    ufb := toSA (ctab% Wire.tab_guestR)
    sw := toSA (ctab% Wire.tab_guestR)
    mg := toSA (ctab% Wire.tab_guestR)
    mn := toSA (ctab% Wire.tab_guestR)
    mxp := sumSpecA_modexp_guestR }

theorem gasFS_pre_modexp_guestR {σ : Type} :
    Rpg.GasFS σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "pre_modexp") :=
  gasFS_pre_modexp Rpg.rpEnv_guestR tabs_guestR

/-- **`RpGas σ`**: `run_precompile` does not raise the running EV's `GAS_LEFT`. -/
theorem rpG_guestR {σ : Type} : Frames.RpGas σ :=
  Rpg.rpG_guestR_of gasFS_pre_modexp_guestR

end InitECandidate.Solver.MemSafe.Ops4

#print axioms InitECandidate.Solver.MemSafe.Ops4.gasFS_pre_modexp_guestR
#print axioms InitECandidate.Solver.MemSafe.Ops4.rpG_guestR
