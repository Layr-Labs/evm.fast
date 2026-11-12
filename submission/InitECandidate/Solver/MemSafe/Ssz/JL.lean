import InitECandidate.Solver.MemSafe.Ssz.Tab
import InitECandidate.Solver.MemSafe.ShardsJL.All
import InitECandidate.Solver.MemSafe.Wire.Guest
import InitECandidate.Solver.MemSafe.Hooks.List
import InitECandidate.Solver.MemSafe.WaveHelpers.RlpCount
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# The SSZ entries at the final hook family `guestHooksJL`

`tab26_guestJL` restates `Wire.tab_guestJL` without importing `Frames`. Instances:
`csumm_merkleize_guestJL`, `csumm_pack_bytes_guestJL`, `csumm_htr_bytes_vector_guestJL`,
`sszTab_guestJL`, and **`sszFold_guestJL`** (the fold's table plus the SSZ entries and the six
callers `htr_withdrawal`, `htr_wdreq`, `htr_cons`, `htr_bexit`, `htr_deposit`, `htr_bdep`).
-/

namespace InitECandidate.Solver.MemSafe.Ssz
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

theorem tab26_guestJL {σ : Type} :
    CTabSound σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) ShardsJL.tab26 :=
  ShardsJL.tab_sound Wire.foldOK_guestJL WaveHelpers.domLow_guestCtx

theorem merkTab_guestJL {σ : Type} :
    CTabSound σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) merkTab :=
  merkTab_of_tab26 tab26_guestJL

theorem csumm_merkleize_guestJL {σ : Type} {c l k : Nat} (hck : (c, l, k) ∈ merkInst) :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "merkleize") (merkSig c l)
      [] :=
  csumm_merkleize Wire.foldOK_guestJL merkTab_guestJL hck

theorem csumm_pack_bytes_guestJL {σ : Type} {c : Nat} (hc : c ∈ pbInst) :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "pack_bytes") (pbSig c) [] :=
  csumm_pack_bytes Wire.foldOK_guestJL
    (ctabSound_sub merkTab_guestJL fun e he => by
      simp only [pbTab, List.mem_cons, List.not_mem_nil, or_false] at he
      rcases he with rfl | rfl | rfl <;> simp [merkTab]) hc

theorem csumm_htr_bytes_vector_guestJL {σ : Type} {c : Nat} (hc : c ∈ hbInst) :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "htr_bytes_vector")
      (hbSig c) [] :=
  csumm_htr_bytes_vector Wire.foldOK_guestJL merkTab_guestJL hc

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem sszTab_guestJL {σ : Type} :
    CTabSound σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) sszTab :=
  sszTab_sound Wire.foldOK_guestJL merkTab_guestJL (ctab% tab26_guestJL)

theorem csumm_add_to_bloom_guestJL {σ : Type} :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "add_to_bloom") abSig [] :=
  sszTab_guestJL _ _ _ (by simp [sszTab])

theorem sszFold_guestJL {σ : Type} :
    CTabSound σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ))
      (chunkTab (sszTab ++ ShardsJL.tab26) sszCallers) :=
  sszFold_sound Wire.foldOK_guestJL tab26_guestJL

end InitECandidate.Solver.MemSafe.Ssz

#print axioms InitECandidate.Solver.MemSafe.Ssz.sszTab_guestJL
#print axioms InitECandidate.Solver.MemSafe.Ssz.sszFold_guestJL
