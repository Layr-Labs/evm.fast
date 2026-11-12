import InitECandidate.Solver.MemSafe.ShardsJ2.Base
import InitECandidate.Solver.MemSafe.Rec.TxEncR
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Dn.Ctor
import InitECandidate.Solver.MemSafe.MptH.ListCompact
import InitECandidate.Solver.MemSafe.Stor3.Final

/-!
# The base table of the record-hook fold (`ShardsR`)

`baseRTab = extraRTab ++ ShardsJL.tab26`: the fold's current table plus the hand-proved, unconditional (`Pre = True`) entries
that are sound at the record family `guestHooksR`:
* `bn_to_be`, `bn_from_be`, `node_hash_cached`, `node_write_ref`, `encode_account`, `nibble_list_to_compact` (generic proofs at
  `guestHooksR`);
* `node_new_branch`, `node_new_hashed` (`Dn/Ctor`; `node_new_leaf` / `node_new_ext` have stage-2b preconditions, so they are not
  table entries);
* `tx_encode_generic` (`Rec/TxEncR`);
* `ws_get_storage`, `get_storage`, `get_storage_original` (closed by stage 2b, `Stor3/Final.lean`);
* `ssz_split_var_list` (`Rec.svTab`) and the SSZ group (`Ssz.sszTab`).

The generator runs only on the functions `tab26` rejected, with this base, and writes `ShardsR`. Since `ShardsR` sits on top of
`ShardsJL`, the base may use `ShardsJL`'s entries (`ctab% Rec.tab26_guestR`) without a cycle. **`baseRTab_soundR`**.
-/

set_option autoImplicit false
set_option maxRecDepth 1000000

namespace InitECandidate.Solver.MemSafe.ShardsR
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Shards
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

theorem mf_R : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "mpt_fail") Integ.sgMF [] :=
  ctab% Rec.tab26_guestR

theorem kec_R : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "keccak256")
    (WaveHelpers.sigKeccak 32 false) [] :=
  ctab% Rec.tab26_guestR

theorem nhc_R : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "node_hash_cached") MptH.nhcSig [] :=
  Node.csumm_node_hash_cached Rec.foldOK_guestR mf_R kec_R

/-- The literal-signature entries. -/
def litTabR : CTab :=
  [(nm "bn_to_be", Bn.bnToBeSig, []), (nm "bn_from_be", Bn.bnFromBeSig, []),
   (nm "node_hash_cached", MptH.nhcSig, []), (nm "node_write_ref", MptH.nwrSig, []),
   (nm "node_new_branch", Node.nbSig, []), (nm "node_new_hashed", Node.nhSig, []),
   (nm "encode_account", MptE.sigEa, []), (nm "tx_encode_generic", Rec.teSig, []),
   (nm "nibble_list_to_compact", MptH.nlcSig, [])]

theorem litTabR_sound : CTabSound σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) litTabR := by
  intro f sg cs hm
  simp only [litTabR, List.mem_cons, List.not_mem_nil, or_false] at hm
  rcases hm with h | h | h | h | h | h | h | h | h <;> cases h
  · exact csumm_of_summA (Bn.sumSpec_bn_to_be Rec.foldOK_guestR)
  · exact csumm_of_summA (Bn.sumSpec_bn_from_be Rec.foldOK_guestR)
  · exact nhc_R
  · exact csumm_of_summA (MptH.sumSpec_node_write_ref Rec.foldOK_guestR mf_R nhc_R)
  · exact csumm_of_summA (sumSpecA_mono Dn.node_new_branchT_guestR (fun _ _ _ h => h)
      (fun _ _ _ _ h => h) (fun _ _ _ _ _ _ _ => trivial))
  · exact Dn.node_new_hashed_guestR
  · exact csumm_of_summA (MptE.sumSpec_encode_account Rec.foldOK_guestR)
  · exact Rec.csumm_tx_encode_generic_guestR
  · exact csumm_of_summA (MptH.sumSpec_nibble_list_to_compact Rec.foldOK_guestR)

/-- The storage reads, closed by stage 2b (`Dn.vty_tVAL`, `Dn.nval_tVAL`). -/
def stTabR : CTab :=
  [(nm "ws_get_storage", Stor.storWgsSig, Stor.storWstCaps), (nm "get_storage", Band3.gsSig, Stor3.gsCaps),
   (nm "get_storage_original", Band3.gsoSig, Band3.rpsrCaps)]

theorem stTabR_sound : CTabSound σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) stTabR := by
  intro f sg cs hm
  simp only [stTabR, List.mem_cons, List.not_mem_nil, or_false] at hm
  rcases hm with h | h | h <;> cases h
  · exact Dn.csumm_wgs_Fin (Dn.staged_of_tv Dn.vty_tVAL Dn.nval_tVAL) Dn.cfg_hWSz Dn.cfg_hWS4
  · exact Stor3.csumm_gs_R Dn.vty_tVAL Dn.nval_tVAL
  · exact Stor3.csumm_gso_R Dn.vty_tVAL Dn.nval_tVAL

/-- The hand entries added on top of `tab26`. -/
def extraRTab : CTab := litTabR ++ stTabR ++ Rec.svTab ++ Ssz.sszTab

theorem extraRTab_sound : CTabSound σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) extraRTab :=
  ctabSound_append (ctabSound_append (ctabSound_append litTabR_sound stTabR_sound)
    (Rec.svTab_sound Rec.foldOK_guestR (ctab% Rec.tab26_guestR)))
    (Ssz.sszTab_sound Rec.foldOK_guestR (Ssz.merkTab_of_tab26 Rec.tab26_guestR) (ctab% Rec.tab26_guestR))

/-- **The base table of `ShardsR`.** -/
def baseRTab : CTab := extraRTab ++ ShardsJL.tab26

theorem baseRTab_soundR : CTabSound σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) baseRTab :=
  ctabSound_append extraRTab_sound Rec.tab26_guestR

end InitECandidate.Solver.MemSafe.ShardsR

#print axioms InitECandidate.Solver.MemSafe.ShardsR.baseRTab_soundR
