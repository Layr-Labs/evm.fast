import InitECandidate.Solver.MemSafe.FrameCost.Leaves
import InitECandidate.Solver.MemSafe.Frames.FHypsB
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames
namespace InitECandidate.Solver.MemSafe.FrameCost
variable {σ : Type}
def finBs : Frames.FinBs := {Wire.finBsGuest with
 sr := InitECandidate.Solver.MemSafe.FrameCost.Restore.bRestore
 cf := b_create_finish
 ios := b_incorporate_child_on_success}
theorem finCosts : Frames.FinCosts σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) tEV finBs where
 sr := InitECandidate.Solver.MemSafe.FrameCost.Restore.cc_restore
 rf := Wire.finCosts_guestR.rf
 fh := Wire.finCosts_guestR.fh
 cf := cc_create_finish
 rb := Wire.finCosts_guestR.rb
 ie := Wire.finCosts_guestR.ie
 cr := Wire.finCosts_guestR.cr
 sd := Wire.finCosts_guestR.sd
 sp := Wire.finCosts_guestR.sp
 ios := cc_incorporate_child_on_success
 au := Wire.finCosts_guestR.au
 mn := Wire.finCosts_guestR.mn
 mc := Wire.finCosts_guestR.mc
 scr := Wire.finCosts_guestR.scr
 fmr := Wire.finCosts_guestR.fmr
 pc := Wire.finCosts_guestR.pc

theorem run_frames_cost (hF : FHypsB σ) {M Bop : Nat} (hM : M < 2^64)
 (opCost : CondCost σ guestCtx guestC Hooks.guestHooksR (nm "op_dispatch") (sg1 [])
   (PreOpX guestC tEV tCK GP GR M) Bop) :
 CondCost σ guestCtx guestC Hooks.guestHooksR (nm "run_frames") (sg0 [])
   (PreInvX guestC tEV tCK GP GR M)
   (rfB M Bop 2 (max (1 + InitECandidate.Solver.MemSafe.FrameCost.Restore.bRestore + 0) 0 + 0) (finBnd finBs)) :=
 Frames.run_frames_condCost_ofX guestCtx_code Hooks.frameCfg_guestHooksR
   (HtabEntries.csumm_state_restoreG Hooks.jHooks_guestR Rec.foldOK_guestR)
   (Frames.op_dispatch_jSpecB hF M hM) opCost (Frames.fin_jSpec_guestR M)
   (Frames.fin_condCost Frames.finHyps_guestR_ic finCosts M)
   (Wire.keepsFp_guest (by decide_cbv)) InitECandidate.Solver.MemSafe.FrameCost.Restore.cc_restore
#print axioms finCosts
#print axioms run_frames_cost
end InitECandidate.Solver.MemSafe.FrameCost
