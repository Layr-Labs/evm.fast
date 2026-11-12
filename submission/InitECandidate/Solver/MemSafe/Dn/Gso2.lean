import InitECandidate.Solver.MemSafe.Stor.Gso

set_option autoImplicit false

/-!
# `get_storage_original` and the dispatcher, open only in `ws_storage_trie`'s summary

`ws_get_storage` calls `ws_storage_trie` only (not `decode_witness_to_mpt` or the node decoder),
so the checker accepts `ws_get_storage` and `get_storage_original` against `tab26` plus the one
entry `WstAnySumm`. This drops `Stor.DecNodeSumm` (the node decoder at `[any, any, any]`, which is
not provable as stated: on an unlocated input slice `compact_to_nibbles` allocates `2 * n` bytes,
which wraps, and writes past the block). The decoder's real summary needs the node-DB
precondition; it enters only through the proof of `WstAnySumm` itself.
-/

set_option maxRecDepth 1000000

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Stor

variable {σ : Type}

/-- The table: `tab26` plus `ws_storage_trie` on any root. -/
def dnTabW : CTab := (nm "ws_storage_trie", storWstAnySig, storWstCaps) :: ShardsJL.tab26

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem dn_chunk_ok : chkChunk Types.guestC dnTabW [wgsCand, gsoCand] = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 2; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem dn_tabW_sound (hW : WstAnySumm σ) :
    CTabSound σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) dnTabW :=
  ctabSound_cons Rec.tab26_guestR hW

theorem dn_fold_sound (hW : WstAnySumm σ) :
    CTabSound σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ))
      (chunkTab dnTabW [wgsCand, gsoCand]) :=
  chkChunk_sound Rec.foldOK_guestR [wgsCand, gsoCand] dnTabW dn_chunk_ok stor_chunk_valid
    (dn_tabW_sound hW)

/-- **`get_storage_original`'s summary from `ws_storage_trie`'s alone.** -/
theorem gsoSumm_of_wst (hW : WstAnySumm σ) : Band3.GsoSumm σ :=
  dn_fold_sound hW _ _ _ (by simp [chunkTab, gsoCand, MCand.ofPair])

set_option exponentiation.threshold 1000 in
/-- **The dispatcher's full cost**, open only in `hGT` (staged) and `ws_storage_trie`'s summary. -/
theorem op_dispatch_condCost_W {M : Nat}
    (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR)) (hW : WstAnySumm σ) :
    CondCost σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch")
      (Frames.sg1 []) (Frames.PreOpX Types.guestC Types.tEV Types.tCK Frames.GP Frames.GR M)
      (InitECandidate.Solver.Band.odN * (1 + max (2 ^ 269) (max Band3.oslB Band3.ossB))) :=
  Band3.op_dispatch_condCost_full hGT (gsoSumm_of_wst hW)

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.gsoSumm_of_wst
#print axioms InitECandidate.Solver.MemSafe.Dn.op_dispatch_condCost_W
