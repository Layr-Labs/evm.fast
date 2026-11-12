import InitECandidate.Solver.MemSafe.Wire.FoldR
import InitECandidate.Solver.MemSafe.Frames.FinGuest
import InitECandidate.Solver.MemSafe.Frames.RetData
import InitECandidate.Solver.MemSafe.Frames.BundleJ
import InitECandidate.Solver.MemSafe.HtabEntries.JL
import InitECandidate.Solver.MemSafe.Hooks.ListFr
import InitECandidate.Solver.MemSafe.WaveHelpers.RlpCount
import InitECandidate.Solver.MemSafe.Frames.OpenGuest
import InitECandidate.Solver.MemSafe.Wire.FinTable
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
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The fold's `rollback_child_access` summary (entry 161 of `tab26`). -/
theorem rbS_guestR {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "rollback_child_access")
      (sgRb tEV) capsRb :=
  ctab% tab_guestR

/-- The fold's `address_to_u256` summary (entry 440 of `tab26`). -/
theorem auS_guestR {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "address_to_u256")
      { params := [.any], grows := false } [] :=
  ctab% tab_guestR

/-- **`frame_open`'s summary for `guestHooksR`**, with every hypothesis discharged. -/
theorem open_sumSpec_guestR {σ : Type} :
    SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "frame_open") (sgFO [])
      (PreFO NewPreG) (fun _ _ _ _ => False) (FOQ tEV tCK) :=
  open_sumSpec_guest Rec.foldOK_guestR Hooks.drvCfg_guestHooksR Hooks.newHooksL_guestR nsS_guestR
    (keepsFp_guest (by decide_cbv)) cntS_guestR (keepsFp_guest (by decide_cbv))
    (keepsFp_guest (by decide_cbv)) (keepsFp_guest (by decide_cbv))

/-- `state_restore`'s `FinHyps` fact for `guestHooksR`. -/
theorem fin_sr_guestR {σ : Type} :
    SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "state_restore") (sgA 1 [Hooks.gJn])
      (fun _ s _ => JrNZ s) (PWtopM tEV tCK []) Frames.FQ :=
  fin_srJ guestCtx_code (HtabEntries.csumm_state_restoreG Hooks.jHooks_guestR Rec.foldOK_guestR)
    (keepsFp_guest (by decide_cbv))

/-- **`FinHyps` for `guestHooksR`** (frames7's chain extension `GP` / `GR`, `Inc.IcsX` in ic's
Pre, `PWtopM` footprints). Open: the hand specs of `create_finish` and
`incorporate_child_on_success` in the `PWtopM` shape. -/
theorem finHyps_guestR {σ : Type} {gcf gic : List MlS}
    (gwcf : nmEv ∉ gcf ∧ nmCC ∉ gcf) (jcf : JrOut gcf)
    (cf : SumSpecO σ guestCtx guestC Hooks.guestHooksR (nm "create_finish") (sgA 2 gcf)
      (CfPre guestC tEV) (PWtopM tEV tCK gasKs) CfQ)
    (gwic : nmEv ∉ gic ∧ nmCC ∉ gic) (jic : JrOut gic)
    (ic : SumSpecA σ guestCtx guestC Hooks.guestHooksR (nm "incorporate_child_on_success")
      (sgA 1 gic) (IcPreG tEV Inc.IcsX) (PWtopL tEV tCK [8, 9, 12, 23, 24]) IcQG) :
    FinHyps σ guestCtx guestC Hooks.guestHooksR tEV tCK GP GR Inc.IcsX
      ⟨[Hooks.gJn], gcf, [], [], gic, [], []⟩ :=
  finHyps_guest Rec.foldOK_guestR Hooks.guestHooksR_guest Hooks.lstHooks_guestR Hooks.drvCfg_guestHooksR
    (by decide_cbv) (by decide_cbv) fin_sr_guestR gwcf jcf cf (by decide_cbv) (by decide_cbv)
    (sd_spec Rec.foldOK_guestR Hooks.drvCfg_guestHooksR Hooks.rdHooks_guestR
      (keepsFp_guest (by decide_cbv)))
    gwic jic ic rbS_guestR (keepsFp_guest (by decide_cbv)) (noEvm_guest (by decide_cbv))
    auS_guestR (keepsFp_guest (by decide_cbv)) (noEvm_guest (by decide_cbv))
    (keepsFp_guest (by decide_cbv)) (noEvm_guest (by decide_cbv))
    (keepsFp_guest (by decide_cbv))

end InitECandidate.Solver.MemSafe.Wire

#print axioms InitECandidate.Solver.MemSafe.Wire.rbS_guestR
#print axioms InitECandidate.Solver.MemSafe.Wire.auS_guestR
#print axioms InitECandidate.Solver.MemSafe.Wire.open_sumSpec_guestR
#print axioms InitECandidate.Solver.MemSafe.Wire.fin_sr_guestR
#print axioms InitECandidate.Solver.MemSafe.Wire.finHyps_guestR
