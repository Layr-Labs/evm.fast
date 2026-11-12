import InitECandidate.Solver.MemSafe.Ptx.PtC2

/-!
# F3d: chunk 2 (`cid`, `sender`, `recover_sender`, ...)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- Adding non-`gobj`, non-`cellv` facts and a new local keeps the invariant. -/
theorem cx1_ext {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    (C : Cx1 E En S rp rl buf n CV) {x : MlS} {v : ValueHOL 64} (hx1 : x ≠ nm "tx") (hx2 : x ≠ nm "index")
    (hx3 : x ≠ nm "enc") (hxT : x ∈ TRK) {L : List Fct}
    (hL : ∀ X ∈ L, (∀ g ty, X ≠ Fct.gobj g ty) ∧ (∀ a v, X ≠ Fct.cellv a v) ∧ (∀ y, ¬ X.reads y)) :
    Cx1 E (En.set x v) (addF S L) rp rl buf n CV where
  tx := by rw [env_set_ne _ _ (Ne.symm hx1)]; exact C.tx
  idx := by rw [env_set_ne _ _ (Ne.symm hx2)]; exact C.idx
  enc := by rw [env_set_ne _ _ (Ne.symm hx3)]; exact C.enc
  obj := Or.inl C.obj
  objE := Or.inl C.objE
  gl := gl_addF C.gl (fun X hX => (hL X hX).1)
  nobal := fun ty h => by
    rcases h with h | h
    · exact C.nobal ty h
    · exact (hL _ h).1 _ _ rfl
  cv1 := Or.inl C.cv1
  cv2 := Or.inl C.cv2
  cvonly := fun a v h => by
    rcases h with h | h
    · exact C.cvonly a v h
    · exact absurd rfl ((hL _ h).2.1 a v)
  nord := fun f hf ⟨y, hy⟩ => by
    rcases hf with hf | hf
    · exact C.nord f hf ⟨y, hy⟩
    · exact absurd hy ((hL _ hf).2.2 y)
  bnd := C.bnd
  un := fun y hy => by rw [env_set_ne _ _ (trk_ne hxT hy)]; exact C.un y hy

theorem cx1_set {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    (C : Cx1 E En S rp rl buf n CV) {x : MlS} {v : ValueHOL 64} (hx1 : x ≠ nm "tx") (hx2 : x ≠ nm "index")
    (hx3 : x ≠ nm "enc") (hxT : x ∈ TRK) : Cx1 E (En.set x v) S rp rl buf n CV where
  tx := by rw [env_set_ne _ _ (Ne.symm hx1)]; exact C.tx
  idx := by rw [env_set_ne _ _ (Ne.symm hx2)]; exact C.idx
  enc := by rw [env_set_ne _ _ (Ne.symm hx3)]; exact C.enc
  obj := C.obj
  objE := C.objE
  gl := C.gl
  nobal := C.nobal
  cv1 := C.cv1
  cv2 := C.cv2
  cvonly := C.cvonly
  nord := C.nord
  bnd := C.bnd
  un := fun y hy => by rw [env_set_ne _ _ (trk_ne hxT hy)]; exact C.un y hy

/-- After `sender = alloc(24)`. -/
def Cx2 (E : PtE σ) (En : Env) (S : FS) (rp rl : BitVec 64) (buf n : Nat) (CV : List (BitVec 64)) (w : BitVec 64) : Prop :=
  Cx1 E En S rp rl buf n CV ∧ En (nm "sender") = some (.val (.word w)) ∧ S (Fct.obj w tB24 24) ∧
    S (Fct.bufok0 w 24)

theorem tags_tB24 : Types.guestC.tags.lookup tB24 = none := by decide

theorem b24_slot (j : Nat) : (Types.guestC.ty tB24).slot j = .scalar := by
  show (b24Ty).slot j = .scalar
  unfold TyD.slot b24Ty
  simp

theorem recover_fin : ptAllNames.contains (nm "recover_sender_with_chain_id") = true := by decide_cbv

theorem callOK_recover {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w : BitVec 64}
    (C : Cx2 E En S rp rl buf n CV w) :
    CallOK E En S (nm "recover_sender_with_chain_id") ⟨[.fits (.ptr tTX), .any, .buf 20], [], [], false⟩ []
      [lv (nm "tx"), .load .one (.op .add [gv (nm "be"), cw 0]), lv (nm "sender")] := by
  refine callOK_gen csOK_nil ⟨by simp, by simp⟩ (by intro g _ h; simp at h) (by intro g h; simp at h) recover_fin
    ?_ ?_ ?_ (fun g ty h => (C.1.gl g ty h).1)
  · intro s hpa vs hvs D Γ p hr hL
    obtain ⟨x, y, z, rfl, hx, hy, hz⟩ := evs3 hvs
    have hx' := evI_lv (hpa.2 _ _ C.1.tx) x hx
    have hz' := evI_lv (hpa.2 _ _ C.2.1) z hz
    subst hx' hz'
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | _ | _ | i
    · simp at hpt hv; subst hpt hv
      obtain ⟨o, ho, hb, ht, -⟩ := hL _ C.1.obj
      exact ⟨E.tx, rfl, o, ho, hb, ht⟩
    · simp at hpt hv; subst hpt hv; trivial
    · simp at hpt hv; subst hpt hv
      exact ⟨w, rfl, bufOK_le' (hL _ C.2.2.2).1 (by norm_num)⟩
    · simp at hpt
  · intro s hpa vs hvs i w' m hw hm
    obtain ⟨x, y, z, rfl, hx, hy, hz⟩ := evs3 hvs
    have hz' := evI_lv (hpa.2 _ _ C.2.1) z hz
    subst hz'
    rcases i with _ | _ | _ | i
    · simp at hm
    · simp at hm
    · simp at hm; subst hm
      simp [argW, wordOf] at hw; subst hw
      exact ⟨24, C.2.2.2, by norm_num⟩
    · simp at hm
  · intro i j c d h
    rcases i with _ | _ | _ | i <;> simp at h

theorem cid_fin : ptAllNames.contains (nm "tx_chain_id") = true := by decide_cbv

/-- **Chunk 2a**: `cid`, the chain-id guard, `sender = alloc(24)`, `recover_sender_with_chain_id`. -/
theorem pt_c2a {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} (hQT : LocIns QT) (C : Cx1 E En S rp rl buf n CV)
    (hk : ∀ (w : BitVec 64) (En' : Env) (S' : FS), Cx2 E En' S' rp rl buf n CV w →
      Hoare σ guestCtx (PA E En' S') ptS14 QT) :
    Hoare σ guestCtx (PA E En S) ptS7 QT := by
  unfold ptS7
  refine hdecAny (locIns_resIns hQT _) tab_tx_chain_id (by simp) rfl cid_fin rfl
    (fun g ty h => (C.gl g ty h).1) ?_
  intro v hsh
  unfold ptS8
  refine hseqN (P1 := PA E (En.set (nm "cid") v) S) ?_ ?_
  · unfold ptS10 ptS225
    exact hguard2
  unfold ptS9
  refine hdecAllocA (locIns_resIns hQT _) (e := cw 24) (n := BitVec.ofNat 64 24) (ty := tB24)
    (fun s _ => evI_cw s 24) C.gl plain_tB24 tags_tB24 rfl b24_slot (by decide) (by decide) (by decide) ?_
  intro w
  have hn24 : (BitVec.ofNat 64 24).toNat = 24 := rfl
  simp only [hn24]
  unfold ptS11
  have C1 : Cx1 E ((En.set (nm "cid") v).set (nm "sender") (.val (.word w)))
      (addF S [Fct.obj w tB24 24, Fct.bufok0 w 24,
        Fct.prop (w.toNat % 8 = 0 ∧ heapBase ≤ w.toNat ∧ w.toNat + 24 ≤ heapEnd)]) rp rl buf n CV :=
    cx1_ext (cx1_set C (by decide) (by decide) (by decide) (by simp [TRK])) (by decide) (by decide) (by decide) (by simp [TRK])
      (by intro X hX; simp at hX; rcases hX with rfl | rfl | rfl <;> exact ⟨fun g ty => by simp, fun a v => by simp, fun y => by simp [Fct.reads]⟩)
  have C2 : Cx2 E ((En.set (nm "cid") v).set (nm "sender") (.val (.word w)))
      (addF S [Fct.obj w tB24 24, Fct.bufok0 w 24,
        Fct.prop (w.toNat % 8 = 0 ∧ heapBase ≤ w.toNat ∧ w.toNat + 24 ≤ heapEnd)]) rp rl buf n CV w :=
    ⟨C1, env_set_self _ _ _, Or.inr (by simp), Or.inr (by simp)⟩
  refine hseqN (hn_callC tab_recover_sender (callOK_recover C2)) ?_
  unfold ptS12
  refine hseqN hn_skip ?_
  exact hk w _ _ C2

end InitECandidate.Solver.MemSafe.Ptx
