import InitECandidate.Solver.MemSafe.Wire.Guest
import InitECandidate.Solver.MemSafe.Frames.BundleJ
import InitECandidate.Solver.MemSafe.HtabEntries.JL
import InitECandidate.Solver.MemSafe.Wire.Bundle
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
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- **The `run_frames` bundle for `guestHooksR`**, from the summaries and conditional costs of
`op_dispatch` and `finish_child`. -/
theorem bundle_ofA_R {σ : Type} {M Bop Bfin : Nat}
    (opSum : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch")
      (fun vs s Γ => vs.length = 1 ∧ PreOpJ guestC tEV tCK M vs s Γ) (QStepJ guestC tEV tCK))
    (opCost : CondCost σ guestCtx guestC Hooks.guestHooksR (nm "op_dispatch") (sg1 [])
      (PreOpJ guestC tEV tCK M) Bop)
    (finSum : JSpec σ guestCtx guestC Hooks.guestHooksR (nm "finish_child")
      (fun vs s Γ => vs = [] ∧ PreFinJ guestC tEV tCK M vs s Γ) (QStepJ guestC tEV tCK))
    (finCost : CondCost σ guestCtx guestC Hooks.guestHooksR (nm "finish_child") (sg0 [])
      (PreFinJ guestC tEV tCK M) Bfin) :
    BundleJ σ guestCtx guestC Hooks.guestHooksR tEV tCK M Bop 2 (max (1 + srBGuest + 0) 0 + 0)
      Bfin :=
  bundle_ofA guestCtx_code Hooks.frameCfg_guestHooksR
    (HtabEntries.csumm_state_restoreG Hooks.jHooks_guestR Rec.foldOK_guestR) opSum opCost finSum finCost
    (keepsFp_guest (by decide_cbv)) (calleeCost_guest (by decide_cbv))

end InitECandidate.Solver.MemSafe.Wire

#print axioms InitECandidate.Solver.MemSafe.Wire.bundle_ofA_R
