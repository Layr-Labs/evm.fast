import InitECandidate.Solver.MemSafe.Wire.Guest
import InitECandidate.Solver.MemSafe.Inc.Spec
import InitECandidate.Solver.MemSafe.Frames.FinHyps
import InitECandidate.Solver.MemSafe.Wire.Ics
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.ShardsJL.AllR
import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Wire
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- **`incorporate_child_on_success`'s summary for `guestHooksR`**, in the shape of
`FinHyps.ic` with the Pre `IcPreX`. -/
theorem ics_guestR {σ : Type} :
    SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "incorporate_child_on_success")
      (sgA 1 []) IcPreX (PWtopL tEV tCK [8, 9, 12, 23, 24]) IcQG :=
  Inc.sumSpec_ics Rec.foldOK_guestR Hooks.guestHooksR_mono Hooks.lstHooks_guestR Hooks.htabHooks_guestR Hooks.guestHooksR_hookEV (keepsFp_guest (by decide_cbv))

end InitECandidate.Solver.MemSafe.Wire

#print axioms InitECandidate.Solver.MemSafe.Wire.ics_guestR
