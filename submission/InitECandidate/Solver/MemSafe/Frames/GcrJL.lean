import InitECandidate.Solver.MemSafe.Frames.GcrMain
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Shards.CtabFind

/-!
# `generic_create` for `guestHooksR` (frames10, task 2)

`GcrCallees` from the merged fold table (`ShardsJL.tab26`: get_account [448], u256_lt [387],
stack_push [572], warm_address [390], is_account_alive [391], account_deployable [447],
increment_nonce [396]), `sd_spec` (set_retdata), the `KeepsFp` table, and `start_child`
(`sc_sumSpecX_guestRh`, open only in `PreHyps`).

* **`gcrCallees_guestR hP`**, **`gcr_sumSpecT_guestR hP : SumSpecT … "generic_create"
  (sgA 4 (nmEv :: nmCC :: ([gJn] ++ [] ++ [gJn]))) (PreGCR M) QGCR`**.
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Wire
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-- **`increment_nonce` from the merged table** (`ShardsJL.tab26[396]`), footprint `PWtopM []`. -/
theorem inc_guestR :
    SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "increment_nonce")
      ⟨[.buf 20], [], [Hooks.gJn], true⟩ (fun _ s _ => JrNZ s) (PWtopM tEV tCK [])
      (fun _ _ _ _ _ _ => True) := by
  have hc : CSumm σ guestCtx guestC Hooks.guestHooksR (nm "increment_nonce")
      ⟨[.buf 20], [], [Hooks.gJn], true⟩ incCaps :=
    ctab% tabJL_guestR
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hJ
  obtain ⟨Γ', p, p', core, -⟩ := hc vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs
    (reqOK_jrs incCaps_g hG hJ)
  exact ⟨Γ', p, p', sumCore_pw core fun a ⟨hpc, hw⟩ => ⟨hpc, incCaps_pw hG hw⟩, trivial⟩

/-- **`generic_create`'s callee facts for `guestHooksR`**, open only in `PreHyps`. -/
theorem gcrCallees_guestR (hP : PreHyps σ) {M : Nat} :
    GcrCallees σ guestCtx Hooks.guestHooksR M ([Hooks.gJn] ++ [] ++ [Hooks.gJn]) where
  sd := sd_spec Rec.foldOK_guestR Hooks.drvCfg_guestHooksR Hooks.rdHooks_guestR
    (Wire.keepsFp_guest (by decide_cbv))
  sdF := Wire.keepsFp_guest (by decide_cbv)
  ga := ctab% tabJL_guestR
  gaF := Wire.keepsFp_guest (by decide_cbv)
  ult := ctab% tabJL_guestR
  ultF := Wire.keepsFp_guest (by decide_cbv)
  sp := ctab% tabJL_guestR
  spF := Wire.keepsFp_guest (by decide_cbv)
  wa := ctab% tabJL_guestR
  waF := Wire.keepsFp_guest (by decide_cbv)
  al := ctab% tabJL_guestR
  alF := Wire.keepsFp_guest (by decide_cbv)
  dep := ctab% tabJL_guestR
  depF := Wire.keepsFp_guest (by decide_cbv)
  inc := inc_guestR
  incF := Wire.keepsFp_guest (by decide_cbv)
  sc := sc_sumSpecX_guestRh hP
  gwJn := by decide

/-- **`generic_create`'s summary for `guestHooksR`**, open only in `PreHyps`. -/
theorem gcr_sumSpecT_guestR (hP : PreHyps σ) {M : Nat} :
    SumSpecT σ guestCtx guestC Hooks.guestHooksR (nm "generic_create")
      (sgA 4 (nmEv :: nmCC :: ([Hooks.gJn] ++ [] ++ [Hooks.gJn]))) (PreGCR M) QGCR :=
  gcr_sumSpecT Hooks.drvCfg_guestHooksR Rec.foldOK_guestR Hooks.guestHooksR_guest
    msgHook_guestR (gcrCallees_guestR hP)

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.inc_guestR
#print axioms InitECandidate.Solver.MemSafe.Frames.gcrCallees_guestR
#print axioms InitECandidate.Solver.MemSafe.Frames.gcr_sumSpecT_guestR
