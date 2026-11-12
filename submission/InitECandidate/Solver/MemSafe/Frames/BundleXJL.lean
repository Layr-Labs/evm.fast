import InitECandidate.Solver.MemSafe.Frames.BundleXG
import InitECandidate.Solver.MemSafe.Wire.BundleR
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# The extended `run_frames` bundle for `guestHooksR` (frames8, task 4)

`bundle_ofX_R` / `run_frames_condCost_ofX_R`: `bundle_ofX` at the challenge context and the final
hook family (state_restore's summary, `KeepsFp` and table cost as in `Wire.bundle_ofA_R`). Open:
op_dispatch's summary / cost on the extension, finish_child's (`fin_jSpec` / `fin_condCost` at
`finHyps_guestR_ic`, which still needs create_finish's hand spec).
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Wire
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- **The extended `run_frames` bundle for `guestHooksR`.** -/
theorem bundle_ofX_R {σ : Type} {M Bop Bfin : Nat}
    (opSum : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch")
      (fun vs s Γ => vs.length = 1 ∧ PreOpX guestC tEV tCK GP GR M vs s Γ)
      (QStepX guestC tEV tCK GP GR))
    (opCost : CondCost σ guestCtx guestC Hooks.guestHooksR (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop)
    (finSum : JSpec σ guestCtx guestC Hooks.guestHooksR (nm "finish_child")
      (fun vs s Γ => vs = [] ∧ PreFinX guestC tEV tCK GP GR M vs s Γ)
      (QStepX guestC tEV tCK GP GR))
    (finCost : CondCost σ guestCtx guestC Hooks.guestHooksR (nm "finish_child") (sg0 [])
      (PreFinX guestC tEV tCK GP GR M) Bfin) :
    BundleX σ guestCtx guestC Hooks.guestHooksR tEV tCK M GP GR Bop 2
      (max (1 + srBGuest + 0) 0 + 0) Bfin :=
  bundle_ofX guestCtx_code Hooks.frameCfg_guestHooksR
    (HtabEntries.csumm_state_restoreG Hooks.jHooks_guestR Rec.foldOK_guestR) opSum opCost finSum finCost
    (keepsFp_guest (by decide_cbv)) (calleeCost_guest (by decide_cbv))

/-- **`run_frames`' conditional cost on the extension for `guestHooksR`**. -/
theorem run_frames_condCost_ofX_R {σ : Type} {M Bop Bfin : Nat}
    (opSum : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch")
      (fun vs s Γ => vs.length = 1 ∧ PreOpX guestC tEV tCK GP GR M vs s Γ)
      (QStepX guestC tEV tCK GP GR))
    (opCost : CondCost σ guestCtx guestC Hooks.guestHooksR (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop)
    (finSum : JSpec σ guestCtx guestC Hooks.guestHooksR (nm "finish_child")
      (fun vs s Γ => vs = [] ∧ PreFinX guestC tEV tCK GP GR M vs s Γ)
      (QStepX guestC tEV tCK GP GR))
    (finCost : CondCost σ guestCtx guestC Hooks.guestHooksR (nm "finish_child") (sg0 [])
      (PreFinX guestC tEV tCK GP GR M) Bfin) :
    CondCost σ guestCtx guestC Hooks.guestHooksR (nm "run_frames") (sg0 [])
      (PreInvX guestC tEV tCK GP GR M) (rfB M Bop 2 (max (1 + srBGuest + 0) 0 + 0) Bfin) :=
  run_frames_condCostX (bundle_ofX_R opSum opCost finSum finCost)

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.bundle_ofX_R
#print axioms InitECandidate.Solver.MemSafe.Frames.run_frames_condCost_ofX_R
