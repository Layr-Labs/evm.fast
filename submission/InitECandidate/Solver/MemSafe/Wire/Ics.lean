import InitECandidate.Solver.MemSafe.Wire.Guest
import InitECandidate.Solver.MemSafe.Inc.Spec
import InitECandidate.Solver.MemSafe.Frames.FinHyps

/-!
# Wiring: `incorporate_child_on_success` in the frames' vocabulary

`ics_guestJL` is lists-state's `Inc.sumSpec_icsJL`, restated with the frame predicates
(`EvRun`, `PWtopM` (frames8: outside the message records), `Frames.FQ`, `sgA`, `fld`). Its Pre is `FinHyps.ic`'s Pre plus
`Inc.IcsX Γ s.memory e.base c`:
* the parent's log list `e[88]` is a `Γ` list header of element size 8;
* the parent's and the child's deletion tables `e[136]`, `c[136]` are `Γ` headers of one header
  type, and they differ.

EV slots 11 and 17 are `prot`, so `G` does not give these facts. The frame chain has to carry
them for every live EV record.
-/

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

/-- `FinHyps.ic`'s Pre, plus the facts `Inc.IcsX` about the parent's log list and deletion
tables and the child's log list. -/
abbrev IcPreX {σ : Type} (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  IcPreG tEV Inc.IcsX vs s Γ

/-- **`incorporate_child_on_success`'s summary for `guestHooksJL`**, in the shape of
`FinHyps.ic` with the Pre `IcPreX`. -/
theorem ics_guestJL {σ : Type} :
    SumSpecA σ guestCtx guestC (Hooks.guestHooksJL (σ := σ)) (nm "incorporate_child_on_success")
      (sgA 1 []) IcPreX (PWtopL tEV tCK [8, 9, 12, 23, 24]) IcQG :=
  Inc.sumSpec_icsJL foldOK_guestJL (keepsFp_guest (by decide_cbv))

end InitECandidate.Solver.MemSafe.Wire

#print axioms InitECandidate.Solver.MemSafe.Wire.ics_guestJL
