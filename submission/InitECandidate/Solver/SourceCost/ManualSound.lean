import InitECandidate.Solver.SourceCost.Manual
import InitECandidate.Solver.Spec.Bridge
import InitECandidate.Solver.Spec.StateRestore
import InitECandidate.Solver.Spec.WalkGuest
import InitECandidate.Solver.Spec.Fq12.Top
import InitECandidate.Solver.Spec.Mpt.InsertFinal

/-!
# Soundness of the manual cost-table entries

`manualEntries_sound`: each entry of `manualEntries` (`Manual.lean`) is sound, from the
hand-proved cost theorems of `Solver/Spec/`:

* `modinv_bin`: `Spec.modinv_bin_cost_tbl` (`Spec/ModInv.lean`);
* `bls_fp_inv_raw`: `Spec.bls_fp_inv_raw_cost_tbl` (`Spec/BlsInv.lean`);
* `state_restore`: `Spec.state_restore_cost` (`Spec/StateRestore.lean`);
* `_rlp_validate_items_body`: `Spec.rlp_validate_items_body_cost_dom` (`Spec/WalkGuest.lean`);
* `rlp_list_count`: `Spec.rlp_list_count_cost_domB` (`Spec/WalkGuest.lean`);
* `trie_walk`: `Spec.trie_walk_cost_dom` (`Spec/WalkGuest.lean`).
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Basis.Pure.MlString

theorem mkModinvBin_sound : ManualSound (ofString "modinv_bin") mkModinvBin := by
  intro σ X hC _ tbl ef ht hef B h
  unfold mkModinvBin at h
  split at h
  · rename_i Bz Blt Bsub Bh Bms hz hlt hsub hh hms hesc
    simp only [Option.some.injEq] at h
    subst h
    exact Spec.modinv_bin_cost_tbl hC ht hef hz hlt hsub hh hms hesc
  · simp at h

theorem mkBlsFpInvRaw_sound : ManualSound (ofString "bls_fp_inv_raw") mkBlsFpInvRaw := by
  intro σ X hC _ tbl ef ht hef B h
  unfold mkBlsFpInvRaw at h
  split at h
  · rename_i Bz Blt Bsub Bshr Bhc Bfs hz hlt hsub hshr hhc hfs hesc
    simp only [Option.some.injEq] at h
    subst h
    exact Spec.bls_fp_inv_raw_cost_tbl hC ht hef hz hlt hsub hshr hhc hfs hesc
  · simp at h

theorem mkStateRestore_sound : ManualSound (ofString "state_restore") mkStateRestore := by
  intro σ X hC _ tbl ef ht _ B h
  unfold mkStateRestore at h
  split at h
  · rename_i Bset Bdel hset hdel
    simp only [Option.some.injEq] at h
    subst h
    have H := Spec.state_restore_cost hC (Spec.calleeCost_of_tbl ht hset)
      (Spec.calleeCost_of_tbl ht hdel)
    rw [show (2 : Nat) ^ 64 = 18446744073709551616 from rfl] at H
    exact H
  · simp at h

theorem mkRlpValidateItemsBody_sound :
    ManualSound (ofString "_rlp_validate_items_body") mkRlpValidateItemsBody := by
  intro σ X hC hX tbl ef ht _ B h
  unfold mkRlpValidateItemsBody at h
  split at h
  · rename_i Bh Ba hh ha
    simp only [Option.some.injEq] at h
    subst h
    exact Spec.rlp_validate_items_body_cost_dom hC hX (Spec.calleeCost_of_tbl ht hh)
      (Spec.calleeCost_of_tbl ht ha)
  · simp at h

theorem mkRlpListCount_sound : ManualSound (ofString "rlp_list_count") mkRlpListCount := by
  intro σ X hC hX tbl ef ht _ B h
  unfold mkRlpListCount at h
  split at h
  · rename_i Btot htot
    simp only [Option.some.injEq] at h
    subst h
    exact Spec.rlp_list_count_cost_domB hC hX (Spec.calleeCost_of_tbl ht htot)
  · simp at h

theorem mkTrieWalk_sound : ManualSound (ofString "trie_walk") mkTrieWalk := by
  intro σ X hC hX tbl ef ht _ B h
  unfold mkTrieWalk at h
  split at h
  · rename_i Bf Bq hf hq
    simp only [Option.some.injEq] at h
    subst h
    exact Spec.trie_walk_cost_dom hC hX (Spec.calleeCost_of_tbl ht hf)
      (Spec.calleeCost_of_tbl ht hq)
  · simp at h

theorem fq12InvBM_eq (Bhm Bal Bmz Bmc Bdeg Binv Bmul Bsm Bz Bhr : Nat) :
    fq12InvBM Bhm Bal Bmz Bmc Bdeg Binv Bmul Bsm Bz Bhr =
      Spec.Fq12.fq12InvB Bhm Bal Bmz Bmc Bdeg Binv Bmul Bsm Bz Bhr := by
  unfold fq12InvBM fqSetupBM fqOuterBM fqFinBM fqInnerBM fqJBM Spec.Fq12.fq12InvB
    Spec.Fq12.setupB Spec.Fq12.outerB Spec.Fq12.finB Spec.Fq12.innerB Spec.Fq12.jB
  rw [show (2 : Nat) ^ 64 = 18446744073709551616 from rfl]

theorem mkFq12Inv_sound : ManualSound (ofString "fq12_inv") mkFq12Inv := by
  intro σ X hC _ tbl ef ht hef B h
  unfold mkFq12Inv at h
  split at h
  · rename_i Bhm Bal Bmz Bmc Bdeg Binv Bmul Bsm Bz Bhr hhm hal hmz hmc hdg hiv hmul hsm hz hhr
      he1 he2 he3
    simp only [Option.some.injEq] at h
    subst h
    rw [fq12InvBM_eq]
    exact Spec.Fq12.calleeCost_fq12_inv hC (Spec.calleeCost_of_tbl ht hhm)
      (Spec.calleeCost_of_tbl ht hal) (Spec.calleeCost_of_tbl ht hmz)
      (Spec.calleeCost_of_tbl ht hmc) (Spec.calleeCost_of_tbl ht hdg)
      (Spec.calleeCost_of_tbl ht hiv) (Spec.calleeCost_of_tbl ht hmul)
      (Spec.calleeCost_of_tbl ht hsm) (Spec.calleeCost_of_tbl ht hz)
      (Spec.calleeCost_of_tbl ht hhr) hef he1 he2 he3
  · simp at h

theorem insMb_succ : Spec.Mpt.insMb + 1 = 1361129467683753854001072382316749258754 := by
  unfold Spec.Mpt.insMb Spec.Mpt.Wt
  rfl

theorem mkMptInsertNode_sound : ManualSound (ofString "_mpt_insert_node") mkMptInsertNode := by
  intro σ X hC _ tbl ef ht hef B h
  unfold mkMptInsertNode at h
  split at h
  · rename_i Bnl Bmf Bni Bil Bcpl Bse Bne hnl hmf hni hil hcpl hse hne he1 he2
    simp only [Option.some.injEq] at h
    subst h
    have H := Spec.Mpt.mpt_insert_node_cost hC (Spec.calleeCost_of_tbl ht hnl)
      (Spec.calleeCost_of_tbl ht hmf) (Spec.calleeCost_of_tbl ht hni)
      (Spec.calleeCost_of_tbl ht hil) (Spec.calleeCost_of_tbl ht hcpl)
      (Spec.calleeCost_of_tbl ht hse) (Spec.calleeCost_of_tbl ht hne)
      (Spec.calleeEscFree_of_ef hef he1) (Spec.calleeEscFree_of_ef hef he2)
    rw [insMb_succ] at H
    unfold Spec.Mpt.insB at H
    exact H
  · simp at h

/-- The manual entries of the guest's cost table are sound. -/
theorem manualEntries_sound : ManualListSound manualEntries :=
  manualListSound_cons mkModinvBin_sound <| manualListSound_cons mkBlsFpInvRaw_sound <|
    manualListSound_cons mkStateRestore_sound <|
    manualListSound_cons mkRlpValidateItemsBody_sound <|
    manualListSound_cons mkRlpListCount_sound <|
    manualListSound_cons mkTrieWalk_sound <|
    manualListSound_cons mkFq12Inv_sound <|
    manualListSound_cons mkMptInsertNode_sound manualListSound_nil

end InitECandidate.Solver.SourceCost
