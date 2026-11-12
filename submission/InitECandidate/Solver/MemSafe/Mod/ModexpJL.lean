import InitECandidate.Solver.MemSafe.Mod.Modexp
import InitECandidate.Solver.MemSafe.Wire.Fold
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `modexp` at the final hook family

`sumSpecA_modexp_guestJL`: no hypotheses; the callee entries `digits_len` (367), `max` (416),
`be_top_bit` (185), `memzero` (592), `memcpy` (593) are read off the merged fold `ShardsJL.tab26`.
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Mod
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem sumSpecA_modexp_guestJL {σ : Type} :
    SumSpecA σ guestCtx guestC (Hooks.guestHooksJL (σ := σ)) (nm "modexp") mxSig MxPre
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpecA_modexp Wire.foldOK_guestJL
    (ctab% Wire.tab_guestJL)
    (ctab% Wire.tab_guestJL)
    (ctab% Wire.tab_guestJL)
    (ctab% Wire.tab_guestJL)
    (ctab% Wire.tab_guestJL)

end InitECandidate.Solver.MemSafe.Mod

#print axioms InitECandidate.Solver.MemSafe.Mod.sumSpecA_modexp_guestJL
