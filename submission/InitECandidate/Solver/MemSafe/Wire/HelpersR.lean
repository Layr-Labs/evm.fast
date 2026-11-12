import InitECandidate.Solver.MemSafe.Wire.FoldR
import InitECandidate.Solver.MemSafe.Bn2.Submul
import InitECandidate.Solver.MemSafe.MptH.Compact
import InitECandidate.Solver.MemSafe.MptH.Key
import InitECandidate.Solver.MemSafe.Wire.Helpers
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.ShardsJL.AllR
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Wire
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- **`fq_poly_submul`'s summary for `guestHooksR`**, every hypothesis discharged. -/
theorem fq_poly_submul_guestR {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "fq_poly_submul")
      Bn2.bnSubSig Bn2.SubPre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  Bn2.sumSpec_fq_poly_submul Rec.foldOK_guestR (ctab% tab_guestR)
    (ctab% tab_guestR)

end InitECandidate.Solver.MemSafe.Wire

#print axioms InitECandidate.Solver.MemSafe.Wire.fq_poly_submul_guestR
