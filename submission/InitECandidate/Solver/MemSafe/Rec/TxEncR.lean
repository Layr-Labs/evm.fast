import InitECandidate.Solver.MemSafe.Rec.PutAuth
import InitECandidate.Solver.MemSafe.Rec.TxEnc
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.SourceCost.Shards.All
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `tx_encode_generic` at the record family, without hypotheses

* `wspec_tx_put_u256` (`≤ 33`), `wspec_tx_put_access_list`: the writer specs in `EncHyps` form;
* **`encHyps_guestR : EncHyps ALPf AUPf σ guestCtx guestHooksR`** (`ALPf` / `AUPf` the payload
  lengths of `PayLen` / `PayAu`; `tx_encode_bound`'s summary is `ShardsJL.tab26[55]`);
* **`csumm_tx_encode_generic_guestR`**:
  `CSumm σ guestCtx guestC guestHooksR "tx_encode_generic" teSig []`,
  `teSig = ⟨[fits (ptr tTX), any, any], [], [], false⟩`.
-/

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

/-- Escape-freeness from the cost table's list. -/
theorem ef_of_table (hC : X.code.lookup = guestCode) (hX : DomBounded X) {f : MlS}
    (h : SourceCost.Shards.finalState.2.1.contains f = true) : CalleeEscFree σ X f :=
  Spec.calleeEscFree_of_ef (SourceCost.Shards.finalState_sound hC hX).2.1 h

set_option maxHeartbeats 0 in
theorem ef_u256_to_be_min (hC : X.code.lookup = guestCode) (hX : DomBounded X) :
    CalleeEscFree σ X (nm "u256_to_be_min") :=
  ef_of_table hC hX (by decide_cbv)

set_option maxHeartbeats 0 in
theorem ef_rlp_encode_bytes (hC : X.code.lookup = guestCode) (hX : DomBounded X) :
    CalleeEscFree σ X (nm "rlp_encode_bytes") :=
  ef_of_table hC hX (by decide_cbv)

theorem wspec_tx_put_u256 (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hX : DomBounded X) :
    WSpec σ X (nm "tx_put_u256") PreU (fun _ _ => 33) := by
  refine FootRetS.mono (footS_tx_put_u256 hC hA (ef_u256_to_be_min hC hX) (ef_rlp_encode_bytes hC hX))
    ?_ ?_ ?_
  · rintro vs s ⟨D, v, rfl, hD, hp⟩
    exact ⟨D, v, rfl, by have := fuV_le v; omega, hp⟩
  · rintro vs s a ⟨D, v, rfl, hD, hp⟩ (⟨D', v', he, hov⟩ | hf)
    · simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at he
      obtain ⟨rfl, rfl⟩ := he
      exact Or.inl ⟨D, rfl, show Overlap D.toNat 33 a from
        overlap_mono hov le_rfl (by have := fuV_le v; omega)⟩
    · exact Or.inr hf
  · rintro vs s w ⟨D, v, rfl, hD, hp⟩ ⟨k, rfl, hk⟩
    exact ⟨k, rfl, show k ≤ 33 by have := (hk D v rfl).2; have := fuV_le v; omega⟩

theorem wspec_tx_put_access_list (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    WSpec σ X (nm "tx_put_access_list") (PreA ALPf) (FA ALPf) := by
  refine FootRetS.mono (footS_tx_put_access_list hC hA) (fun _ _ h => h) ?_ (fun _ _ _ _ h => h)
  rintro vs s a ⟨D, P, N, rfl, -, -, -⟩ ⟨D', P', N', he, hov⟩
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at he
  obtain ⟨rfl, rfl, rfl⟩ := he
  exact Or.inl ⟨D, rfl, hov⟩

theorem bval_tx_encode_bound (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "tx_encode_bound") (fun vs s r _ => Good (some r) → ∀ TX : BitVec 64,
      vs = [.val (.word TX)] → ∀ v, r = .returned v →
        v = .val (.word (BitVec.ofNat 64 (boundF s.memory TX ALPf AUPf)))) :=
  FunSpec.mono (footS_tx_encode_bound (σ := σ) hC) fun _ _ _ _ h hg TX hvs v hv =>
    (h hg trivial).2.2 v hv TX hvs

set_option maxHeartbeats 0 in
/-- **The callee facts of `tx_encode_generic` at the record family.** -/
theorem encHyps_guestR : EncHyps ALPf AUPf σ guestCtx (Hooks.guestHooksR (σ := σ)) where
  bsum := ctab% tab26_guestR
  bval := bval_tx_encode_bound guestCtx_code
  u256 := wspec_tx_put_u256 guestCtx_code Helpers.alignedDom_guestCtx guestCtx_bounded
  acc := wspec_tx_put_access_list guestCtx_code Helpers.alignedDom_guestCtx
  auth := wspec_tx_put_authorizations guestCtx_code Helpers.alignedDom_guestCtx
    (ef_u256_to_be_min guestCtx_code guestCtx_bounded)
    (ef_rlp_encode_bytes guestCtx_code guestCtx_bounded)
  alp := ALPf_le
  aup := AUPf_le
  alpc := fun _ _ _ _ hw h => ALPf_congr hw h
  aupc := fun _ _ _ _ hw h => AUPf_congr hw h
  get := encGet_guestR

/-- **`tx_encode_generic` keeps `G` at the record family** (no hypotheses). -/
theorem csumm_tx_encode_generic_guestR :
    CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "tx_encode_generic") teSig [] :=
  csumm_tx_encode_generic foldOK_guestR encHyps_guestR

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.encHyps_guestR
#print axioms InitECandidate.Solver.MemSafe.Rec.csumm_tx_encode_generic_guestR
