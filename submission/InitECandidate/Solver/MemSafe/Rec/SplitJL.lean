import InitECandidate.Solver.MemSafe.Rec.SplitTab
import InitECandidate.Solver.MemSafe.Ssz.JL
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `ssz_split_var_list` / `decode_bytes_list` at the final hook family `guestHooksJL`

`csumm_ssz_split_var_list_guestJL`, **`svFold_guestJL`** (the fold's table plus
`ssz_split_var_list` and the checked `decode_bytes_list`).
-/

set_option maxRecDepth 1000000

namespace InitECandidate.Solver.MemSafe.Rec
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem csumm_ssz_split_var_list_guestJL {σ : Type} :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "ssz_split_var_list")
      (svSig false) [] :=
  svTab_sound Wire.foldOK_guestJL (ctab% Ssz.tab26_guestJL) _ _ _
    (by simp [svTab])

theorem svFold_guestJL {σ : Type} :
    CTabSound σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ))
      (chunkTab (svTab ++ ShardsJL.tab26) svCallers) :=
  svFold_sound Wire.foldOK_guestJL Ssz.tab26_guestJL

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.csumm_ssz_split_var_list_guestJL
#print axioms InitECandidate.Solver.MemSafe.Rec.svFold_guestJL
