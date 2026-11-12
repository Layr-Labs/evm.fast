import InitECandidate.Solver.MemSafe.Wire.Guest
import InitECandidate.Solver.MemSafe.ShardsJL.All
import InitECandidate.Solver.MemSafe.Hooks.List
import InitECandidate.Solver.MemSafe.WaveHelpers.RlpCount
import InitECandidate.Solver.MemSafe.Wire.Fold
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
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The fold's table is sound for the challenge context and the final hook family. -/
theorem tab_guestR {σ : Type} :
    CTabSound σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) ShardsJL.tab26 :=
  ShardsJL.tab_soundR Rec.foldOK_guestR WaveHelpers.domLow_guestCtx

/-- The fold's `htab_new_scratch` summary (entry 568 of `tab26`). -/
theorem nsS_guestR {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "htab_new_scratch")
      ⟨[.eq 20, .eq 4], [.fits (.ptr tHTs20)], [], true⟩ [] :=
  ctab% tab_guestR

/-- The fold's `htab_count` summary (entry 350 of `tab26`). -/
theorem cntS_guestR {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "htab_count")
      { params := [.any], grows := false } [] :=
  ctab% tab_guestR

/-- The fold's `mpt_fail` summary (`ShardsJL.tab26[497]`). -/
theorem mptFail_guestR {σ : Type} :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "mpt_fail") Integ.sgMF [] :=
  ctab% tab_guestR

/-- The fold's `keccak256` summary at `[any, any, buf 32]` (`ShardsJL.tab26[525]`). -/
theorem keccak256_guestR {σ : Type} :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "keccak256")
      (WaveHelpers.sigKeccak 32 false) [] :=
  ctab% tab_guestR

end InitECandidate.Solver.MemSafe.Wire

#print axioms InitECandidate.Solver.MemSafe.Wire.tab_guestR
#print axioms InitECandidate.Solver.MemSafe.Wire.nsS_guestR
#print axioms InitECandidate.Solver.MemSafe.Wire.cntS_guestR
#print axioms InitECandidate.Solver.MemSafe.Wire.mptFail_guestR
#print axioms InitECandidate.Solver.MemSafe.Wire.keccak256_guestR
