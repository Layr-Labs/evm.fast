import InitECandidate.Solver.Spec.Mpt.DelStep2

/-!
# One iteration of the delete descent keeps `DInv` (`desc_step`)
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}
variable {be0 : Bool}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd gHeap gFrame gScratch)

/-- The state after `node_invalidate(node)`, with `k` the node's kind word `κ ≠ 0`. -/
def AfterInvD (be0 : Bool) (Nd : BitVec 64 → Prop) (S0 : Nat) (K KL N T Lv κ : BitVec 64)
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  DF S0 K KL t ∧ GoZ t ∧ t.locals.lookup (nm "top") = some (.val (.word T)) ∧
    NdClosed t.memory Nd ∧ t.locals.lookup (nm "node") = some (.val (.word N)) ∧ Nd N ∧
    t.locals.lookup (nm "level") = some (.val (.word Lv)) ∧ KeyNib be0 t.memory K KL Lv ∧
    t.locals.lookup (nm "k") = some (.val (.word κ)) ∧ rd t.memory N = κ ∧ κ ≠ 0 ∧ t.be = be0

theorem afterInvD_set {Nd : BitVec 64 → Prop} {S0 : Nat} {K KL N T Lv κ : BitVec 64}
    {t : PanSemStateFiniteExact 64 σ} {y : MlS} (hy : Trk y) (hyk : y ≠ nm "k") (v : ValueHOL 64)
    (h : AfterInvD be0 Nd S0 K KL N T Lv κ t) : AfterInvD be0 Nd S0 K KL N T Lv κ (setVarHOLFinite y v t) := by
  obtain ⟨hdf, hgo, hT, hcl, hN, hNd, hLv, hkn, hk, hκ, h0, hbe0⟩ := h
  refine ⟨dinv_set (Nd := Nd) hy v hdf, goZ_set_ne hy.2.2.2.2.2.2 v hgo, ?_, hcl, ?_, hNd, ?_, hkn,
    ?_, hκ, h0, hbe0⟩
  · rw [lk_set_ne _ _ hy.1]; exact hT
  · rw [lk_set_ne _ _ hy.2.2.2.2.1]; exact hN
  · rw [lk_set_ne _ _ hy.2.2.2.2.2.1]; exact hLv
  · rw [lk_set_ne _ _ hyk]; exact hk

theorem ev_eq_lv {t : PanSemStateFiniteExact 64 σ} {x : MlS} {w : BitVec 64}
    (h : t.locals.lookup x = some (.val (.word w))) (k : Nat) :
    ev t (.cmp .equal (lv x) (cw k)) = some (.val (.word (if w = BitVec.ofNat 64 k then 1 else 0))) :=
  ev_eqw h k

/-- The kind dispatch. -/
theorem kinds_step (hC : X.code.lookup = guestCode)
    (hsa : MemSafe.AllocSpec σ X (nm "scratch_alloc") .scratch)
    (hcb : BelowSP σ X (nm "_collapse_branch") (fun vs _ => arg0 vs + 176 ≤ heapEnd))
    {Nd : BitVec 64 → Prop} {S0 : Nat} {K KL N T Lv κ : BitVec 64} :
    Hoare σ X (AfterInvD be0 Nd S0 K KL N T Lv κ) delKinds (KP (DInv be0 Nd S0 K KL)) := by
  have hcplS := (funSpec_of_funRet (funRet_cpl (σ := σ) hC)).and (keepsPM_cpl (σ := σ) (X := X) hC)
  unfold delKinds
  refine hoare_ite (hoare_pre (leaf_term hC) fun t _ ⟨h, _⟩ => ⟨h.1, h.2.1, h.2.2.2.2.1⟩) ?_
  refine hoare_ite ?_ ?_
  · -- extension
    intro s0 hs0 ⟨⟨hA, hc1⟩, hc2⟩
    obtain ⟨hdf, hgo, hT, hcl, hN, hNd, hLv, hkn, hk, hκ, h0, hbe0⟩ := hA
    have hκ2 : κ = 2 := by
      obtain ⟨w, hw, hw0⟩ := hc2
      rw [ev_eq_lv hk 2] at hw
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
      by_contra hne
      rw [if_neg (show κ ≠ BitVec.ofNat 64 2 from hne)] at hw
      exact hw0 hw.symm
    subst hκ2
    have hA0 : AfterInvD be0 Nd S0 K KL N T Lv 2 s0 := ⟨hdf, hgo, hT, hcl, hN, hNd, hLv, hkn, hk, hκ, h0, hbe0⟩
    have H : Hoare σ X (fun t => t = s0) delExt (KP (DInv be0 Nd S0 K KL)) := by
      unfold delExt
      refine hoare_dec fun s1 _ hs1 vseg hvseg _ => ?_
      subst s1
      obtain ⟨w32, hw32, -, rfl⟩ := ev_load_one hvseg
      have hA1 := afterInvD_set (trk_of "seg") (by decide) (.val (s0.memory w32)) hA0
      refine hoare_conseq (P := fun t => t = setVarHOLFinite (nm "seg") (.val (s0.memory w32)) s0)
        ?_ (fun _ _ h => h) (fun _ _ _ _ h => kp_dinv_restore (trk_of "seg") _ h)
      refine hoare_dec fun s2 _ hs2 vsl hvsl _ => ?_
      subst hs2
      obtain ⟨w40, hw40, -, rfl⟩ := ev_load_one hvsl
      set s2 := setVarHOLFinite (nm "seg") (.val (s0.memory w32)) s0
      have hA2 := afterInvD_set (trk_of "sl") (by decide) (.val (s2.memory w40)) hA1
      refine hoare_conseq (P := fun t => t = setVarHOLFinite (nm "sl") (.val (s2.memory w40)) s2)
        ?_ (fun _ _ h => h) (fun _ _ _ _ h => kp_dinv_restore (trk_of "sl") _ h)
      refine hoare_decCallS hcplS fun s3 _ hs3 vs hvs callee v st hR _ _ => ?_
      subst hs3
      set s3 := setVarHOLFinite (nm "sl") (.val (s2.memory w40)) s2
      obtain ⟨hRet, hmem, hptr⟩ := hR
      obtain ⟨A, C, al, bl, P, hvs', rfl, hPa, hPb⟩ := hRet _ rfl
      obtain ⟨v1, r1, rfl, hv1, h1⟩ := evs_cons_inv hvs
      obtain ⟨v2, r2, rfl, hv2, h2⟩ := evs_cons_inv h1
      obtain ⟨v3, r3, rfl, -, h3⟩ := evs_cons_inv h2
      obtain ⟨v4, r4, rfl, hv4, h4⟩ := evs_cons_inv h3
      simp only [evs, evalListHOLExact, Option.some.injEq] at h4
      subst h4
      simp only [List.cons.injEq, and_true] at hvs'
      obtain ⟨-, rfl, -, rfl⟩ := hvs'
      obtain ⟨Kx, Lx, hKx, hLx, rfl⟩ := ev_sub2_inv hv4
      obtain ⟨hdf3, hgo3, hT3, hcl3, hN3, -, hLv3, hkn3, -, hκ3, -⟩ := hA2
      rw [ev_lv, hdf3.2.2.2.2] at hKx
      rw [ev_lv, hLv3] at hLx
      cases hKx; cases hLx
      rw [ev_lv, lk_set_self] at hv2
      have hal : s2.memory w40 = .word al := by
        simp only [Option.some.injEq, ValueHOL.val.injEq] at hv2; exact hv2
      have hsl3 : s3.locals.lookup (nm "sl") = some (.val (.word al)) := by
        rw [lk_set_self, hal]
      -- the continuation state
      set s4 := setVarHOLFinite (nm "pl") (.val (.word P)) { st with locals := s3.locals }
      have hdf4 := dinv_set (Nd := Nd) (trk_of "pl") (.val (.word P)) (df_keep_call ⟨hmem, hptr⟩ hdf3)
      have hm4 : s4.memory = s3.memory := hmem
      have hl4 : ∀ y, y ≠ nm "pl" → s4.locals.lookup y = s3.locals.lookup y :=
        fun y hy => lk_set_ne _ _ (Ne.symm hy)
      refine hoare_conseq (P := fun t => t = s4) ?_ (fun _ _ h => h)
        (fun _ _ _ _ h => kp_dinv_restore (trk_of "pl") _ h)
      refine hoare_ite ?_ ?_
      · exact term_res fun t ⟨ht, _⟩ => by
          subst ht
          exact ⟨hdf4, goZ_set_ne (by decide) _ hgo3, N, by
            rw [ev_lv, hl4 _ (by decide)]; exact hN3⟩
      · intro t ht ⟨htt, hc⟩
        subst t
        obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
        rw [ev_lv, lk_set_self] at hx
        rw [ev_lv, hl4 _ (by decide), hsl3] at hy
        cases hx; cases hy
        have hPeq : P = al := BitVec.eq_of_toNat_eq (by have := lower_false hxy; omega)
        subst hPeq
        have hLK : Lv.toNat ≤ KL.toNat := hkn3.1
        have hsub : (KL - Lv).toNat = KL.toNat - Lv.toNat := by
          rw [BitVec.toNat_sub]; omega
        have h2 : rd s4.memory N = 2 := by rw [hm4]; exact hκ3
        refine ext_push (K := K) (KL := KL) (T := T) (Lv := Lv) (SEG := rd s0.memory w32) (SL := P)
          hsa s4 ht ⟨hdf4,
          by rw [hl4 _ (by decide)]; exact hT3, by rw [hm4]; exact hcl3,
          by rw [hl4 _ (by decide)]; exact hN3, hNd, h2, by rw [hl4 _ (by decide)]; exact hLv3,
          by rw [hm4]; exact hkn3, ?_, by rw [hl4 _ (by decide)]; exact hsl3, by omega⟩
        rw [hl4 _ (by decide), lk_set_ne _ _ (by decide), lk_set_self]
        exact congrArg (fun x => some (ValueHOL.val x)) (mem_word _ _)
    exact H s0 hs0 rfl
  · -- branch
    intro s0 hs0 ⟨⟨hA, hc1⟩, hc2⟩
    obtain ⟨hdf, hgo, hT, hcl, hN, hNd, hLv, hkn, hk, hκ, h0, hbe0⟩ := hA
    have hne : ∀ j : Nat, j < 3 → ev s0 (.cmp .equal (lv (nm "k")) (cw j)) =
        some (.val (.word 0)) → κ ≠ BitVec.ofNat 64 j := by
      intro j _ h e
      rw [ev_eq_lv hk j, if_pos e] at h
      simp at h
    have hk1 := hne 1 (by decide) hc1
    have hk2 := hne 2 (by decide) hc2
    have hk0 : rd s0.memory N ≠ 0 := by rw [hκ]; exact h0
    obtain ⟨h176, -⟩ := (hcl N hNd).2.2 hk0 (by rw [hκ]; exact hk1) (by rw [hκ]; exact hk2)
    have H : Hoare σ X (fun t => t = s0) delBranch (KP (DInv be0 Nd S0 K KL)) := by
      unfold delBranch
      refine hoare_ite (hoare_pre (brEnd_term hcb) fun t _ ⟨ht, _⟩ => by
        subst ht; exact ⟨hdf, hgo, hN, h176⟩) ?_
      intro t ht ⟨htt, hc⟩
      subst t
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_lv, hLv] at hx
      rw [ev_lv, hdf.2.2.2.2] at hy
      cases hx; cases hy
      have hlt : Lv.toNat < KL.toNat := by
        have := hkn.1
        have hne' : Lv ≠ KL := equal_false hxy
        have : Lv.toNat ≠ KL.toNat := fun e => hne' (BitVec.eq_of_toNat_eq e)
        omega
      have H2 : Hoare σ X (fun t => t = s0) (.dec (nm "idx") .one
          (.loadByte (.op .add [lv (nm "key"), lv (nm "level")]))
          (.decCall (nm "fr2") .one (nm "scratch_alloc") [cw 40] delPushB)) (KP (DInv be0 Nd S0 K KL)) := by
        refine hoare_dec fun s1 _ hs1 vidx hvidx _ => ?_
        subst s1
        obtain ⟨I, rfl, hI⟩ := ev_keyByte hdf.2.2.2.1 hLv hkn hbe0 hlt hvidx
        have hA1 := afterInvD_set (trk_of "idx") (by decide) (.val (.word I))
          (⟨hdf, hgo, hT, hcl, hN, hNd, hLv, hkn, hk, hκ, h0, hbe0⟩ : AfterInvD be0 Nd S0 K KL N T Lv κ s0)
        refine hoare_conseq (P := fun t => t = setVarHOLFinite (nm "idx") (.val (.word I)) s0) ?_
          (fun _ _ h => h) (fun _ _ _ _ h => kp_dinv_restore (trk_of "idx") _ h)
        obtain ⟨hdf1, -, hT1, hcl1, hN1, -, hLv1, hkn1, -, hκ1, -⟩ := hA1
        exact hoare_pre (br_push (T := T) (Lv := Lv) (I := I) hsa) fun u _ hu => by
          subst hu
          exact ⟨hdf1, hT1, hcl1, hN1, hNd, by rw [hκ1]; exact h0, by rw [hκ1]; exact hk1,
            by rw [hκ1]; exact hk2, hLv1, hkn1, hlt, lk_set_self _ _ _, hI⟩
      exact H2 _ ‹_› rfl
    exact H s0 hs0 rfl

end InitECandidate.Solver.Spec.Mpt
