import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Wire.Guest
import InitECandidate.Solver.MemSafe.ShardsJL.AllR
import InitECandidate.Solver.MemSafe.WaveHelpers.RlpCount

set_option autoImplicit false

/-!
# The record family at the challenge context

* `foldOK_guestR : FoldOK σ guestCtx guestC guestHooksR`;
* **`tab26_guestR`**: the merged fold's table `ShardsJL.tab26` is sound for `guestHooksR`
  (`ShardsJL.tab_soundR`). It used to be the original fold's `Shards.tab26`. The merged table holds
  every entry of that one except `acct_copy`'s older signature, so the original fold is no longer used.
-/

namespace InitECandidate.Solver.MemSafe.Rec
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

theorem foldOK_guestR {σ : Type} :
    FoldOK σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) where
  hH := Hooks.guestHooksR_lawful
  hC := Types.cfgOK_guest
  hal := Helpers.alignedDom_guestCtx
  hX := guestCtx_code
  hAC := Wire.allocCfg_guest
  hNS := nullSafe_guestCtx

theorem tab26_guestR {σ : Type} :
    CTabSound σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) ShardsJL.tab26 :=
  ShardsJL.tab_soundR foldOK_guestR WaveHelpers.domLow_guestCtx

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.tab26_guestR
