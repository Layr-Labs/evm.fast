import InitECandidate.Solver.MemSafe.Shards.BaseJL
import InitECandidate.Solver.MemSafe.Wire.Fold
import InitECandidate.Solver.MemSafe.Bn.ToBe
import InitECandidate.Solver.MemSafe.Bn.FromBe
import InitECandidate.Solver.MemSafe.Bn.JL
import InitECandidate.Solver.MemSafe.Node.NodeJL
import InitECandidate.Solver.MemSafe.Node.NodeHashJL
import InitECandidate.Solver.MemSafe.MptE.Account
import InitECandidate.Solver.MemSafe.Ssz.JL
import InitECandidate.Solver.MemSafe.Rec.SplitTab
import InitECandidate.Solver.MemSafe.Shards.CtabFind

/-!
# The base table of the second merged fold (`ShardsJ2`)

`baseJ2Tab = extraTab ++ baseJLTab`, where `extraTab` holds the hand-proved, unconditional
(`Pre = True`) summaries added since the first merge:

* bn_to_be, bn_from_be (Bn/);
* node_hash_cached, node_write_ref and the four node constructors (Node/, MptH/);
* encode_account (MptE/);
* ssz_split_var_list (Rec/SplitTab);
* merkleize, pack_bytes, htr_bytes_vector and add_to_bloom (Ssz/, `sszTab`).

Every entry is proved for the challenge context `guestCtx` and the hook family `guestHooksJL`,
so the generated fold (`ShardsJ2.tab_sound`) is stated for `guestCtx`.
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.ShardsJ2
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Shards
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The hand-proved entries with a literal signature. -/
def litTab : CTab :=
  [(nm "bn_to_be", Bn.bnToBeSig, []), (nm "bn_from_be", Bn.bnFromBeSig, []),
   (nm "node_hash_cached", MptH.nhcSig, []), (nm "node_write_ref", MptH.nwrSig, []),
   (nm "node_new_leaf", Node.nlSig, []), (nm "node_new_branch", Node.nbSig, []),
   (nm "node_new_ext", Node.neSig, []), (nm "node_new_hashed", Node.nhSig, []),
   (nm "encode_account", MptE.sigEa, [])]

theorem litTab_sound {σ : Type} :
    CTabSound σ guestCtx guestC (Hooks.guestHooksJL (σ := σ)) litTab := by
  intro f sg cs hm
  simp only [litTab, List.mem_cons, List.not_mem_nil, or_false] at hm
  rcases hm with h | h | h | h | h | h | h | h | h <;> cases h
  · exact csumm_of_summA Bn.sumSpec_bn_to_be_guestJL
  · exact csumm_of_summA Bn.sumSpec_bn_from_be_guestJL
  · exact Node.csumm_node_hash_cached_guestJL
  · exact csumm_of_summA Node.node_write_ref_guestJL
  · exact Node.node_new_leaf_guestJL
  · exact Node.node_new_branch_guestJL
  · exact Node.node_new_ext_guestJL
  · exact Node.node_new_hashed_guestJL
  · exact csumm_of_summA MptE.sumSpec_encode_account_guestJL

/-- All hand entries of the second merge. -/
def extraTab : CTab := litTab ++ Rec.svTab ++ Ssz.sszTab

theorem extraTab_sound {σ : Type} :
    CTabSound σ guestCtx guestC (Hooks.guestHooksJL (σ := σ)) extraTab :=
  ctabSound_append (ctabSound_append litTab_sound
    (Rec.svTab_sound Wire.foldOK_guestJL (ctab% Wire.tab_guestJL)))
    Ssz.sszTab_guestJL

/-- **The base table of `ShardsJ2`.** -/
def baseJ2Tab : CTab := extraTab ++ baseJLTab

theorem baseJ2Tab_sound {σ : Type} (hF : FoldOK σ guestCtx guestC Hooks.guestHooksJL)
    (hDL : WaveHelpers.DomLow guestCtx) :
    CTabSound σ guestCtx guestC Hooks.guestHooksJL baseJ2Tab :=
  ctabSound_append extraTab_sound (baseJLTab_sound hF hDL)

end InitECandidate.Solver.MemSafe.ShardsJ2

#print axioms InitECandidate.Solver.MemSafe.ShardsJ2.baseJ2Tab_sound
