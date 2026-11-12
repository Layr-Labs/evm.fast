import InitECandidate.Solver.MemSafe.Mod.Modexp
import InitECandidate.Solver.MemSafe.Wire.FoldR
import InitECandidate.Solver.MemSafe.Mod.ModexpJL
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

theorem sumSpecA_modexp_guestR {σ : Type} :
    SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "modexp") mxSig MxPre
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpecA_modexp Rec.foldOK_guestR
    (ctab% Wire.tab_guestR)
    (ctab% Wire.tab_guestR)
    (ctab% Wire.tab_guestR)
    (ctab% Wire.tab_guestR)
    (ctab% Wire.tab_guestR)

end InitECandidate.Solver.MemSafe.Mod

#print axioms InitECandidate.Solver.MemSafe.Mod.sumSpecA_modexp_guestR
