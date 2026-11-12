import InitECandidate.Solver.MemSafe.Wire.Fold
import InitECandidate.Solver.MemSafe.Frames.FinGuest
import InitECandidate.Solver.MemSafe.Frames.RetData
import InitECandidate.Solver.MemSafe.Frames.BundleJ
import InitECandidate.Solver.MemSafe.HtabEntries.JL
import InitECandidate.Solver.MemSafe.Hooks.ListFr
import InitECandidate.Solver.MemSafe.WaveHelpers.RlpCount
import InitECandidate.Solver.MemSafe.Frames.OpenGuest
import InitECandidate.Solver.MemSafe.Shards.CtabFind

/-!
# Wiring: the table facts of `finish_child` for the final hook family

* `tab_guestJL`: the merged fold's table `ShardsJL.tab26` (base `Shards.baseJLTab`) is sound for
  the challenge context and `guestHooksJL`.
* `calleeEscFree_guest`, `noEvm_guest`: escape-freedom (hence "no `EvmErr`") read off the cost
  table's escape-free list.
* `rbS_guestJL`, `auS_guestJL`: the fold's summaries of `rollback_child_access` (entry 161)
  and `address_to_u256` (entry 440).
* `nsS_guestJL`, `cntS_guestJL`: the fold's `htab_new_scratch` (entry 568) and `htab_count`
  (entry 350) summaries; **`open_sumSpec_guestJL`**: `frame_open`'s summary for `guestHooksJL`.
* **`finHyps_guestJL`**: `Frames.FinHyps` for `guestHooksJL`, with everything discharged except
  the hand specs of `create_finish` and `incorporate_child_on_success`.
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

/-- "No `EvmErr`" for a function on the cost table's escape-free list. -/
theorem noEvm_guest {σ : Type} {f : MlS} (h : Shards.finalState.2.1.contains f = true) :
    NoEvm σ guestCtx f :=
  noEvm_of_escFree (calleeEscFree_guest h)

/-- The fold's `rollback_child_access` summary (entry 161 of `tab26`). -/
theorem rbS_guestJL {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksJL (σ := σ)) (nm "rollback_child_access")
      (sgRb tEV) capsRb :=
  ctab% tab_guestJL

/-- The fold's `address_to_u256` summary (entry 440 of `tab26`). -/
theorem auS_guestJL {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksJL (σ := σ)) (nm "address_to_u256")
      { params := [.any], grows := false } [] :=
  ctab% tab_guestJL

/-- **`frame_open`'s summary for `guestHooksJL`**, with every hypothesis discharged. -/
theorem open_sumSpec_guestJL {σ : Type} :
    SumSpecA σ guestCtx guestC (Hooks.guestHooksJL (σ := σ)) (nm "frame_open") (sgFO [])
      (PreFO NewPreG) (fun _ _ _ _ => False) (FOQ tEV tCK) :=
  open_sumSpec_guest foldOK_guestJL Hooks.drvCfg_guestHooksJL Hooks.newHooksL_guestJL nsS_guestJL
    (keepsFp_guest (by decide_cbv)) cntS_guestJL (keepsFp_guest (by decide_cbv))
    (keepsFp_guest (by decide_cbv)) (keepsFp_guest (by decide_cbv))

/-- `state_restore`'s `FinHyps` fact for `guestHooksJL`. -/
theorem fin_sr_guestJL {σ : Type} :
    SumSpecA σ guestCtx guestC (Hooks.guestHooksJL (σ := σ)) (nm "state_restore") (sgA 1 [Hooks.gJn])
      (fun _ s _ => JrNZ s) (PWtopM tEV tCK []) Frames.FQ :=
  fin_srJ guestCtx_code (HtabEntries.csumm_state_restoreL foldOK_guestJL)
    (keepsFp_guest (by decide_cbv))

/-- **`FinHyps` for `guestHooksJL`** (frames7's chain extension `GP` / `GR`, `Inc.IcsX` in ic's
Pre, `PWtopM` footprints). Open: the hand specs of `create_finish` and
`incorporate_child_on_success` in the `PWtopM` shape. -/
theorem finHyps_guestJL {σ : Type} {gcf gic : List MlS}
    (gwcf : nmEv ∉ gcf ∧ nmCC ∉ gcf) (jcf : JrOut gcf)
    (cf : SumSpecO σ guestCtx guestC Hooks.guestHooksJL (nm "create_finish") (sgA 2 gcf)
      (CfPre guestC tEV) (PWtopM tEV tCK gasKs) CfQ)
    (gwic : nmEv ∉ gic ∧ nmCC ∉ gic) (jic : JrOut gic)
    (ic : SumSpecA σ guestCtx guestC Hooks.guestHooksJL (nm "incorporate_child_on_success")
      (sgA 1 gic) (IcPreG tEV Inc.IcsX) (PWtopL tEV tCK [8, 9, 12, 23, 24]) IcQG) :
    FinHyps σ guestCtx guestC Hooks.guestHooksJL tEV tCK GP GR Inc.IcsX
      ⟨[Hooks.gJn], gcf, [], [], gic, [], []⟩ :=
  finHyps_guest foldOK_guestJL Hooks.guestHooksJL_guest Hooks.lstHooks_guestJL Hooks.drvCfg_guestHooksJL
    (by decide_cbv) (by decide_cbv) fin_sr_guestJL gwcf jcf cf (by decide_cbv) (by decide_cbv)
    (sd_spec foldOK_guestJL Hooks.drvCfg_guestHooksJL Hooks.rdHooks_guestJL
      (keepsFp_guest (by decide_cbv)))
    gwic jic ic rbS_guestJL (keepsFp_guest (by decide_cbv)) (noEvm_guest (by decide_cbv))
    auS_guestJL (keepsFp_guest (by decide_cbv)) (noEvm_guest (by decide_cbv))
    (keepsFp_guest (by decide_cbv)) (noEvm_guest (by decide_cbv))
    (keepsFp_guest (by decide_cbv))

end InitECandidate.Solver.MemSafe.Wire

#print axioms InitECandidate.Solver.MemSafe.Wire.rbS_guestJL
#print axioms InitECandidate.Solver.MemSafe.Wire.auS_guestJL
#print axioms InitECandidate.Solver.MemSafe.Wire.fin_sr_guestJL
#print axioms InitECandidate.Solver.MemSafe.Wire.open_sumSpec_guestJL
#print axioms InitECandidate.Solver.MemSafe.Wire.finHyps_guestJL
