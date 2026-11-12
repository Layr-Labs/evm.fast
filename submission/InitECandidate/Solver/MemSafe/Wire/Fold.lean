import InitECandidate.Solver.MemSafe.Wire.Guest
import InitECandidate.Solver.MemSafe.ShardsJL.All
import InitECandidate.Solver.MemSafe.Hooks.List
import InitECandidate.Solver.MemSafe.WaveHelpers.RlpCount
import InitECandidate.Solver.MemSafe.Shards.CtabFind

/-!
# Wiring: facts read off the merged fold, with no frame imports

Everything here depends only on the hooks, the cost table and the merged fold (`ShardsJL`).
Helper lanes can import it without rebuilding `Frames/*`.

* `calleeEscFree_guest`: escape-freedom from the cost table's escape-free list.
* `tab_guestJL`: the merged fold `ShardsJL.tab26` is sound for `guestHooksJL`.
* Fold entries by position: `nsS_guestJL` (htab_new_scratch, 568), `cntS_guestJL` (htab_count, 350),
  `mptFail_guestJL` (mpt_fail, 497), `keccak256_guestJL` (keccak256 at `[any, any, buf 32]`, 525).
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Wire
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- Escape-freedom from the cost table's escape-free list. -/
theorem calleeEscFree_guest {σ : Type} {f : MlS}
    (h : Shards.finalState.2.1.contains f = true) : Spec.CalleeEscFree σ guestCtx f :=
  Spec.calleeEscFree_of_ef (Shards.finalState_sound_guest (σ := σ)).2.1 h

/-- The fold's table is sound for the challenge context and the final hook family. -/
theorem tab_guestJL {σ : Type} :
    CTabSound σ guestCtx guestC (Hooks.guestHooksJL (σ := σ)) ShardsJL.tab26 :=
  ShardsJL.tab_sound foldOK_guestJL WaveHelpers.domLow_guestCtx

/-- The fold's `htab_new_scratch` summary (entry 568 of `tab26`). -/
theorem nsS_guestJL {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksJL (σ := σ)) (nm "htab_new_scratch")
      ⟨[.eq 20, .eq 4], [.fits (.ptr tHTs20)], [], true⟩ [] :=
  ctab% tab_guestJL

/-- The fold's `htab_count` summary (entry 350 of `tab26`). -/
theorem cntS_guestJL {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksJL (σ := σ)) (nm "htab_count")
      { params := [.any], grows := false } [] :=
  ctab% tab_guestJL

/-- The fold's `mpt_fail` summary (`ShardsJL.tab26[497]`). -/
theorem mptFail_guestJL {σ : Type} :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "mpt_fail") Integ.sgMF [] :=
  ctab% tab_guestJL

/-- The fold's `keccak256` summary at `[any, any, buf 32]` (`ShardsJL.tab26[525]`). -/
theorem keccak256_guestJL {σ : Type} :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "keccak256")
      (WaveHelpers.sigKeccak 32 false) [] :=
  ctab% tab_guestJL

end InitECandidate.Solver.MemSafe.Wire

#print axioms InitECandidate.Solver.MemSafe.Wire.tab_guestJL
#print axioms InitECandidate.Solver.MemSafe.Wire.nsS_guestJL
#print axioms InitECandidate.Solver.MemSafe.Wire.mptFail_guestJL
#print axioms InitECandidate.Solver.MemSafe.Wire.keccak256_guestJL
