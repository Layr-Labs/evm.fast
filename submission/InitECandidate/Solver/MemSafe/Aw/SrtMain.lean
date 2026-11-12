import InitECandidate.Solver.MemSafe.Aw.SrtM

set_option autoImplicit false

/-!
# Target G, part 5: `sort_elems`
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {σ : Type} {X : Ctx 64}

theorem awSpecG_sort_elems {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C) :
    AWSpecG σ X C H (nm "sort_elems") [] (fun vs s Γ h0 => SrtPre C vs s Γ h0)
      (fun _ _ _ _ => True) := by
  refine awSpecG_of_hoareG (PV := fun _ _ => True) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, B1, C1, D1, E1, rfl, hA', hB', hC', hD', hE', hla, hlb, hlc, hld, hle⟩ :=
    lookupCode_five code_sort_elems (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨E, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨K, rfl⟩ := val_of_shapeEq_one hD'
  obtain ⟨Tm, rfl⟩ := val_of_shapeEq_one hE'
  have hbig := hPre P N E rfl rfl rfl
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  have hHE : heapEnd = 2952790016 := rfl
  have hd : domTop = 1099511627776 := by decide
  have hmem := asp_memcpy_cov hK hC hA
  have hgt := asp_of_footRet hK (footRet_bal_sort_gt hC) (fun vs x hx => hx.elim)
  let LL : Locals → Prop := fun m => Lk pN P m ∧ Lk nN N m ∧ Lk eszN E m ∧ Lk kindN K m
  refine hoareG_conseq (P := APre a LL) (Q := AQ a (fun _ => True) (fun _ => True)) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨awInv_init a hG hp hB, by rw [hloc]; exact ⟨hla, hlb, hlc, hld⟩⟩)
    (fun _ _ _ _ h => h)
  unfold srtBody
  refine hoareG_seqA (L2 := LL)
    (hoareG_iteA (hoareG_returnA hK (fun _ _ _ _ _ => trivial)) (hoareG_skipA fun m h => h)) ?_
  refine hoareG_decCallAs' hK (asp_mark hK hC) (Lk := fun m => LL m ∧ MkB p.hp markN m)
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_nil] at hvs
    cases hvs
    rfl
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨w, p', rfl, hp', hw, h1, h2, h3⟩ := hRet
    exact ⟨⟨lk_updo (by decide) hL.1, lk_updo (by decide) hL.2.1, lk_updo (by decide) hL.2.2.1,
      lk_updo (by decide) hL.2.2.2⟩, w, lookup_update_self _ _ _, h1, h2, h3⟩
  intro s1
  refine hoareG_decCallAs' hK (asp_alloc hK hC)
    (Lk := fun m => ∃ Aux : BitVec 64, SH C Γ h0 ⟨P, N, E, K, Aux⟩ ∧ (LL m ∧ MkB p.hp markN m) ∧
      Lk auxN Aux m)
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_cons (ev_mul2 (ev_lw hP.2.1.2.1) (ev_lw hP.2.1.2.2.1)) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hL hvs hRet hsh
    rw [evs_cons (ev_mul2 (ev_lw hL.1.2.1) (ev_lw hL.1.2.2.1)) evs_nil] at hvs
    cases hvs
    obtain ⟨n, q, p'', hvs, hvq, hq1, hq2, hp'', hq3, hq4⟩ := hRet
    cases hvs
    cases hvq
    refine ⟨q, ⟨hK.h8, hq1, by show q.toNat + (N * E).toNat ≤ heapEnd; omega, hq2, hbig⟩, ⟨⟨lk_updo (by decide) hL.1.1,
      lk_updo (by decide) hL.1.2.1, lk_updo (by decide) hL.1.2.2.1,
      lk_updo (by decide) hL.1.2.2.2⟩, mkb_upd (by decide) hL.2⟩, lk_new _ _ _⟩
  intro s2
  refine hoareG_exF (fun Aux hSH => ?_)
  let c : SC := ⟨P, N, E, K, Aux⟩
  let BA : Locals → Prop := fun m => (LL m ∧ MkB p.hp markN m) ∧ Lk auxN Aux m
  -- src = p
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s3 hs3 hL3 v3 hv3 hsh3
  rw [ev_lw hL3.1.1.1] at hv3
  cases hv3
  let B1 : Locals → Prop := fun m => BA m ∧ Lk srcN P m
  refine hoareG_preA (L' := B1) ?_ (fun m hm => by
    subst hm
    exact ⟨⟨⟨⟨lk_updo (by decide) hL3.1.1.1, lk_updo (by decide) hL3.1.1.2.1,
      lk_updo (by decide) hL3.1.1.2.2.1, lk_updo (by decide) hL3.1.1.2.2.2⟩,
      mkb_upd (by decide) hL3.1.2⟩, lk_updo (by decide) hL3.2⟩, lk_new _ _ _⟩)
  -- dst = aux
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s4 hs4 hL4 v4 hv4 hsh4
  rw [ev_lw hL4.1.2] at hv4
  cases hv4
  let B2 : Locals → Prop := fun m => B1 m ∧ Lk dstN Aux m
  refine hoareG_preA (L' := B2) ?_ (fun m hm => by
    subst hm
    exact ⟨⟨⟨⟨⟨lk_updo (by decide) hL4.1.1.1.1, lk_updo (by decide) hL4.1.1.1.2.1,
      lk_updo (by decide) hL4.1.1.1.2.2.1, lk_updo (by decide) hL4.1.1.1.2.2.2⟩,
      mkb_upd (by decide) hL4.1.1.2⟩, lk_updo (by decide) hL4.1.2⟩,
      lk_updo (by decide) hL4.2⟩, lk_new _ _ _⟩)
  -- width = 1
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s5 hs5 hL5 v5 hv5 hsh5
  rw [ev_cw] at hv5
  cases hv5
  refine hoareG_preA (L' := T0 p.hp c) ?_ (fun m hm => by
    subst hm
    obtain ⟨⟨⟨⟨⟨q1, q2, q3, q4⟩, q5⟩, q6⟩, q7⟩, q8⟩ := hL5
    refine ⟨⟨lk_updo (by decide) q1, lk_updo (by decide) q2, lk_updo (by decide) q3,
      lk_updo (by decide) q4, lk_updo (by decide) q6, mkb_upd (by decide) q5, P, Aux,
      lk_updo (by decide) q7, lk_updo (by decide) q8, Or.inl ⟨rfl, rfl⟩⟩, BitVec.ofNat 64 1,
      lk_new _ _ _, by simp, by simp⟩)
  refine hoareG_seqA (L2 := T0 p.hp c)
    (hoareG_whileA hK (J := T0 p.hp c) ?_ (fun s _ h _ => h)) ?_
  · refine hoareG_loopPre2 (iN' := widthN) (nN' := nN) ?_ ?_
    · by_cases hN : N.toNat < 2 ^ 63
      · obtain ⟨hN1, hNE, hPs, hcov⟩ := hSH.big hN
        have hNEm : (N * E).toNat = N.toNat * E.toNat := toNat_mul2 (by omega)
        have hcN : c.N.toNat = N.toNat := rfl
        refine hoareG_preA (L' := SrW p.hp c) ?_ (fun m ⟨hT0, I, N', hI, hN', i1, i2⟩ => ?_)
        swap
        · obtain ⟨hb, W, hW, w1, w2⟩ := hT0
          have e1 := lk_inj hI hW
          have e2 := lk_inj hN' hb.2.1
          subst e1
          subst e2
          exact ⟨hb, I, hI, w1, i1⟩
        -- left = 0
        refine hoareG_decA hK (L' := fun _ m' => T0 p.hp c m') ?_
          (fun m m' _ h => t0_res (by decide) (by decide) (by decide) (by decide) (by decide)
            (by decide) (by decide) (by decide) (by decide) h)
        intro s6 hs6 hL6 v6 hv6 hsh6
        rw [ev_cw] at hv6
        cases hv6
        refine hoareG_preA (L' := SrI p.hp c) ?_ (fun m hm => by
          subst hm
          exact ⟨srw_upd (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
            (by decide) (by decide) (by decide) hL6, BitVec.ofNat 64 0, lk_new _ _ _, by simp⟩)
        refine hoareG_seqA (L2 := SrI p.hp c) (hoareG_whileA hK (J := SrI p.hp c) ?_
          (fun s _ h _ => h)) ?_
        · refine hoareG_loopPre2 (iN' := leftN) (nN' := nN)
            (hoareG_preA (srt_inner hK hSH hN hmem hgt) (fun m h => h.1)) ?_
          intro m ⟨⟨hb, W, hW, w1, w2⟩, L, hL, l1⟩
          exact ⟨L, N, hL, hb.2.1, by omega⟩
        · -- swap src and dst, double the width
          refine hoareG_decA hK (L' := fun _ m' => T0 p.hp c m') ?_
            (fun m m' _ h => t0_res (by decide) (by decide) (by decide) (by decide) (by decide)
              (by decide) (by decide) (by decide) (by decide) h)
          intro s7 hs7 hL7 v7 hv7 hsh7
          obtain ⟨⟨hb, W, hW, w1, w2⟩, L, hL, l1⟩ := hL7
          obtain ⟨hx, s1, d1, b1, b2, b3⟩ := sbs_split hb
          rw [ev_lw b1] at hv7
          cases hv7
          let M0 : Locals → Prop := fun m => SBx p.hp c m ∧ Lk widthN W m ∧ Lk swapN s1 m ∧
            Lk srcN s1 m ∧ Lk dstN d1 m
          refine hoareG_preA (L' := M0) ?_ (fun m hm => by
            subst hm
            exact ⟨sbx_upd (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) hx,
              lk_updo (by decide) hW, lk_new _ _ _, lk_updo (by decide) b1, lk_updo (by decide) b2⟩)
          refine hoareG_seqA (L2 := fun m => SBx p.hp c m ∧ Lk widthN W m ∧ Lk swapN s1 m ∧
              Lk srcN d1 m ∧ Lk dstN d1 m)
            (hoareG_assignA hK fun s8 _ hL8 v8 hv8 => ?_) ?_
          · rw [ev_lw hL8.2.2.2.2] at hv8
            cases hv8
            exact ⟨sbx_upd (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) hL8.1,
              lk_updo (by decide) hL8.2.1, lk_updo (by decide) hL8.2.2.1, lk_new _ _ _,
              lk_updo (by decide) hL8.2.2.2.2⟩
          refine hoareG_seqA (L2 := fun m => SBx p.hp c m ∧ Lk widthN W m ∧ Lk swapN s1 m ∧
              Lk srcN d1 m ∧ Lk dstN s1 m)
            (hoareG_assignA hK fun s8 _ hL8 v8 hv8 => ?_) ?_
          · rw [ev_lw hL8.2.2.1] at hv8
            cases hv8
            exact ⟨sbx_upd (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) hL8.1,
              lk_updo (by decide) hL8.2.1, lk_updo (by decide) hL8.2.2.1,
              lk_updo (by decide) hL8.2.2.2.1, lk_new _ _ _⟩
          · refine hoareG_assignA hK fun s8 _ hL8 v8 hv8 => ?_
            rw [ev_mul2 (ev_lw hL8.2.1) (ev_cw _ 2)] at hv8
            cases hv8
            have hW2 : (W * BitVec.ofNat 64 2).toNat = W.toNat * 2 := toNat_mulc (by omega) (by omega)
            refine ⟨sbs_join (sbx_upd (by decide) (by decide) (by decide) (by decide) (by decide)
              (by decide) hL8.1) ⟨d1, s1, lk_updo (by decide) hL8.2.2.2.1,
                lk_updo (by decide) hL8.2.2.2.2, ?_⟩, _, lk_new _ _ _, by rw [hW2]; omega,
              by rw [hW2]; omega⟩
            rcases b3 with ⟨e1, e2⟩ | ⟨e1, e2, e3⟩
            · exact Or.inr ⟨hN, e2, e1⟩
            · exact Or.inl ⟨e3, e2⟩
      · exact hoareG_false (fun s ⟨hI, hT0, I, N', hI', hN', i1, i2⟩ => by
          have := lk_inj hN' hT0.1.2.1
          subst this
          exact hN i2)
    · intro m ⟨hs, W, hW, w1, w2⟩
      exact ⟨W, N, hW, hs.2.1, by omega⟩
  -- the final copy and release
  unfold srtEnd
  refine hoareG_seqA (L2 := T0 p.hp c) (hoareG_iteC ?_ ?_) ?_
  · refine hoareG_pre (hoareG_postA (L := fun m => T0 p.hp c m ∧ ∃ s : BitVec 64, Lk srcN s m ∧ s ≠ P)
      (hoareG_callOK hK hmem ?_) (fun m h => h.1) (fun _ h => h)) (fun s _ h => ?_)
    · intro s hL vs hvs
      obtain ⟨⟨hb, W, hW⟩, S1, hS1, hne⟩ := hL
      obtain ⟨a1, a2, a3, a4, a5, a6, s1, d1, b1, b2, b3⟩ := hb
      have h1 : S1 = s1 := lk_inj hS1 b1
      have hN : N.toNat < 2 ^ 63 := by
        rcases b3 with ⟨e1, -⟩ | ⟨e1, e2, -⟩
        · exact absurd (h1.trans e1) hne
        · exact e1
      obtain ⟨hN1, hNE, hPs, hcov⟩ := hbig hN
      obtain ⟨v1, v2, v3, rfl, f1, f2, f3⟩ := evs_three hvs
      rw [ev_lw a1] at f1
      cases f1
      rw [ev_mul2 (ev_lw a2) (ev_lw a3)] at f3
      cases f3
      have hNEm : (N * E).toNat = N.toNat * E.toNat := toNat_mul2 (by omega)
      exact ⟨P, N * E, rfl, rfl, Or.inr (by rw [hNEm]; exact hPs), fun x hx => by
        rw [hNEm] at hx; exact hcov x hx⟩
    · obtain ⟨hI, hT0⟩ := h.1
      obtain ⟨w, hw, hw0⟩ := h.2
      obtain ⟨hb, W, hW⟩ := hT0
      obtain ⟨a1, a2, a3, a4, a5, a6, s1, d1, b1, b2, b3⟩ := hb
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lw b1] at hx
      cases hx
      rw [ev_lw a1] at hy
      cases hy
      refine ⟨hI, ⟨⟨a1, a2, a3, a4, a5, a6, s1, d1, b1, b2, b3⟩, W, hW⟩, s1, b1, ?_⟩
      intro he
      have hcp : c.P = P := rfl
      rw [hcp, he] at hxy
      simp [wordCmpHOL] at hxy
  · exact hoareG_pre (hoareG_skipA fun m h => h) (fun s _ h => h.1)
  refine hoareG_seqA (L2 := fun _ => True)
    (hoareG_callAs hK (asp_release hK hC) ?_ (fun _ _ _ _ _ _ _ => trivial)) ?_
  · intro s hs hP vs hvs callee
    obtain ⟨w, hw, h1, h2, h3⟩ := hP.2.1.2.2.2.2.2.1
    rw [evs_cons (ev_lw hw) evs_nil] at hvs
    cases hvs
    exact ⟨w, rfl, h1, h2, h3⟩
  · exact hoareG_returnA hK (fun _ _ _ _ _ => trivial)

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpecG_sort_elems
