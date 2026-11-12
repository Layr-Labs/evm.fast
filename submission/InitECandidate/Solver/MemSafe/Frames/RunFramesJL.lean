import InitECandidate.Solver.MemSafe.Frames.BundleXJL
import InitECandidate.Solver.MemSafe.Frames.IcsWire
import InitECandidate.Solver.MemSafe.Wire.FinCostsR
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `finish_child` discharged in the extended `run_frames` bundle for `guestHooksR` (frames9)

With `finHyps_guestR_ic` hypothesis-free (task 1: `create_finish` from `set_code` =
`ShardsJL.tab26[399]`, option B), `finish_child`'s bundle entry and its cost are closed:

* **`fin_jSpec_guestR M`**: `fin_jSpec` at `finHyps_guestR_ic`, `Hooks.relCfg_guestR`;
* **`fin_condCost_guestR M`**: `fin_condCost` at `Wire.finCosts_guestR` (bound
  `finBnd Wire.finBsGuest`);
* **`run_frames_condCost_opX_R opSum opCost`**: `run_frames`' conditional cost on the extension
  (Pre `PreInvX … GP GR M`), open only in `op_dispatch`'s summary and cost.
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Wire
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- **`finish_child`'s extended bundle entry for `guestHooksR`.** -/
theorem fin_jSpec_guestR {σ : Type} (M : Nat) :
    JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "finish_child")
      (fun vs s Γ => vs = [] ∧ PreFinX guestC tEV tCK GP GR M vs s Γ)
      (QStepX guestC tEV tCK GP GR) :=
  fin_jSpec finHyps_guestR_ic Hooks.relCfg_guestR M

/-- **`finish_child`'s cost under the extended precondition for `guestHooksR`.** -/
theorem fin_condCost_guestR {σ : Type} (M : Nat) :
    CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "finish_child") (sg0 [])
      (PreFinX guestC tEV tCK GP GR M) (finBnd Wire.finBsGuest) :=
  fin_condCost finHyps_guestR_ic Wire.finCosts_guestR M

/-- **`run_frames`' conditional cost on the extension for `guestHooksR`**, open only in
`op_dispatch`'s summary and cost. -/
theorem run_frames_condCost_opX_R {σ : Type} {M Bop : Nat}
    (opSum : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch")
      (fun vs s Γ => vs.length = 1 ∧ PreOpX guestC tEV tCK GP GR M vs s Γ)
      (QStepX guestC tEV tCK GP GR))
    (opCost : CondCost σ guestCtx guestC Hooks.guestHooksR (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    CondCost σ guestCtx guestC Hooks.guestHooksR (nm "run_frames") (sg0 [])
      (PreInvX guestC tEV tCK GP GR M)
      (rfB M Bop 2 (max (1 + srBGuest + 0) 0 + 0) (finBnd Wire.finBsGuest)) :=
  run_frames_condCost_ofX_R opSum opCost (fin_jSpec_guestR M) (fin_condCost_guestR M)

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.fin_jSpec_guestR
#print axioms InitECandidate.Solver.MemSafe.Frames.fin_condCost_guestR
#print axioms InitECandidate.Solver.MemSafe.Frames.run_frames_condCost_opX_R
