import InitECandidate.Solver.MemSafe.Rcpt.Outer

set_option autoImplicit false

/-!
# `encode_logs` with an exact footprint

`funSpec_encode_logsX`: from `Env M D Lg` (the output `[D, D + 9 + S)` ends below `heapEnd` and the
cells the code reads lie outside it, `S = Σ_i (64 + 33 nt_i + dn_i)` read from the entry memory), a
return writes only the cells of `[D, D + 9 + S)` and returns `k` with `1 ≤ k ≤ 9 + S`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rcpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

theorem sk_ge (M : Mem) (Lg : BitVec 64) (i : Nat) : 64 * i ≤ Sk M Lg i := by
  induction i with
  | zero => simp [Sk]
  | succ k ih =>
    simp only [Sk, lgWb]
    omega

theorem rd_n (M : Mem) (Lg : BitVec 64) : rd M (Lg + BitVec.ofNat 64 8) = BitVec.ofNat 64 (lgN M Lg) := by
  unfold lgN
  rw [ofNat_toNat_self]
  rfl

theorem rd_p (M : Mem) (Lg : BitVec 64) : rd M (Lg + BitVec.ofNat 64 0) = lgP M Lg := by
  unfold lgP
  congr 1
  simp

theorem D_add9 (D : BitVec 64) : D + BitVec.ofNat 64 9 = BitVec.ofNat 64 (D.toNat + 9) := by
  rw [← ofNat_add_ofNat', ofNat_toNat_self]

theorem funSpec_encode_logsX (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FunSpec σ X (nm "encode_logs") (fun vs s r t => Good (some r) →
      ∀ D Lg : BitVec 64, argW vs 0 = some D → argW vs 1 = some Lg → Env s.memory D Lg →
        t.globals = s.globals ∧
          ModifiesOnly (Overlap D.toNat (9 + Sk s.memory Lg (lgN s.memory Lg))) s.memory t.memory ∧
          ∀ v, r = .returned v → ∃ k, v = .val (.word (BitVec.ofNat 64 k)) ∧ 1 ≤ k ∧
            k ≤ 9 + Sk s.memory Lg (lgN s.memory Lg)) := by
  intro vs body callee rs hl s0 hs hloc r hr hg D0 Lg0 hD hLg hEnv
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bb, rfl, hA', hB', hla, hlb⟩ :=
    lookupCode_two code_encode_logs (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨Lg, rfl⟩ := val_of_shapeEq_one hB'
  simp only [argW, wordOf, List.getElem?_cons_zero, List.getElem?_cons_succ, Option.some.injEq] at hD hLg
  subst hD
  subst hLg
  set M := s0.memory with hMdef
  have hM : s0.memory = M := rfl
  have hE := hEnv.hE
  have hhe : heapEnd + 1000 < scratchEnd := heapEnd_lt
  have hhe2 : heapEnd < 2 ^ 40 := by decide
  have hN64 : 64 * lgN M Lg ≤ Sk M Lg (lgN M Lg) := sk_ge M Lg _
  let Rf : BitVec 64 → Prop := Overlap D.toNat (9 + Sk M Lg (lgN M Lg))
  let Ret : ValueHOL 64 → Prop := fun v => ∃ k, v = .val (.word (BitVec.ofNat 64 k)) ∧ 1 ≤ k ∧
    k ≤ 9 + Sk M Lg (lgN M Lg)
  let L0 : Locals → Prop := fun m => LB m dN D ∧ LB m logsN Lg
  have main : HoareG σ X (LPre Rf s0 L0) encodeLogsBody (LZ Rf s0 (fun _ => True) Ret) := by
    unfold encodeLogsBody
    -- n
    refine hoareG_decZ' (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
    intro s hs1 hpre v hv hsh
    have hmo : ModifiesOnly Rf M s.memory := hM ▸ hpre.2.2
    have hv' := ev_ldk hmo hpre.1.2 (env_hdr hEnv (k := 8) (Or.inr rfl)) hv
    rw [rd_n] at hv'
    subst hv'
    refine hoareG_preZ (L' := fun m => L0 m ∧ LW m nN (lgN M Lg)) ?_ (fun m hm => by
      subst hm
      exact ⟨⟨lb_keep hpre.1.1 (by decide), lb_keep hpre.1.2 (by decide)⟩, lw_set⟩)
    -- p
    refine hoareG_decZ' (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
    intro s hs2 hpre2 v hv hsh
    have hmo : ModifiesOnly Rf M s.memory := hM ▸ hpre2.2.2
    have hv' := ev_ldk hmo hpre2.1.1.2 (env_hdr hEnv (k := 0) (Or.inl rfl)) hv
    rw [rd_p] at hv'
    subst hv'
    refine hoareG_preZ (L' := fun m => (L0 m ∧ LW m nN (lgN M Lg)) ∧ LB m Aw.pN (lgP M Lg)) ?_ (fun m hm => by
      subst hm
      exact ⟨⟨⟨lb_keep hpre2.1.1.1 (by decide), lb_keep hpre2.1.1.2 (by decide)⟩,
        lw_keep hpre2.1.2 (by decide)⟩, lb_set⟩)
    -- q
    refine hoareG_decZ' (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
    intro s hs3 hpre3 v hv hsh
    rw [ev_add2 (ev_lb hpre3.1.1.1.1) (ev_cw _ 9), D_add9] at hv
    cases hv
    refine hoareG_preZ (L' := fun m => ((L0 m ∧ LW m nN (lgN M Lg)) ∧ LB m Aw.pN (lgP M Lg)) ∧
        LW m qN (D.toNat + 9)) ?_ (fun m hm => by
      subst hm
      exact ⟨⟨⟨⟨lb_keep hpre3.1.1.1.1 (by decide), lb_keep hpre3.1.1.1.2 (by decide)⟩,
        lw_keep hpre3.1.1.2 (by decide)⟩, lb_keep hpre3.1.2 (by decide)⟩, lw_set⟩)
    -- i
    refine hoareG_decZ' (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
    intro s hs4 hpre4 v hv hsh
    rw [ev_cw] at hv
    cases hv
    refine hoareG_preZ (L' := JO D Lg M 0 (D.toNat + 9)) ?_ (fun m hm => by
      subst hm
      exact ⟨lb_keep hpre4.1.1.1.1.1 (by decide), lb_keep hpre4.1.1.1.1.2 (by decide),
        lw_keep hpre4.1.1.1.2 (by decide), lb_keep hpre4.1.1.2 (by decide),
        lw_keep hpre4.1.2 (by decide), lw_set, Nat.zero_le _, Nat.le_refl _, by simp [Sk]⟩)
    refine hoareG_seqZ (L2 := fun m => ∃ Q, JO D Lg M (lgN M Lg) Q m) ?_ ?_
    · refine hoareG_preZ (L' := fun m => ∃ i Q, JO D Lg M i Q m) ?_ (fun m hm => ⟨0, _, hm⟩)
      refine hoareG_whileZ (J := fun m => ∃ i Q, JO D Lg M i Q m) ?_ ?_
      · refine hoareG_pre (P := fun s => ∃ i Q, LPre Rf s0 (fun m => JO D Lg M i Q m ∧
            i < lgN M Lg) s) ?_ ?_
        · refine hoareG_ex fun i => hoareG_ex fun Q => ?_
          refine hoareG_postZ (outer_body hC hA hEnv hM i Q) (fun m ⟨Q', h⟩ => ⟨i + 1, Q', h⟩)
            (fun v h => h)
        · rintro s hs ⟨⟨⟨i, Q, hj⟩, hb⟩, hc⟩
          refine ⟨i, Q, ?_, hb⟩
          refine ⟨hj, ?_⟩
          exact lt_of_cond hj.2.2.2.2.2.1 hj.2.2.1 (by have := hj.2.2.2.2.2.2.1; omega)
            (by omega) hc
      · rintro s hs ⟨i, Q, hj⟩ hz
        have hnlt := nlt_of_exit hj.2.2.2.2.2.1 hj.2.2.1 (by have := hj.2.2.2.2.2.2.1; omega)
          (by omega) hz
        have : i = lgN M Lg := by have := hj.2.2.2.2.2.2.1; omega
        subst this
        exact ⟨Q, hj⟩
    · -- total = rlp_finish_list(d, q)
      refine hoareG_decCallFootZ (footRet_finish_listX hC hA) (L' := fun _ _ => False) ?_ ?_
        (fun _ _ _ h => h.elim)
      · rintro s2 hs2 ⟨⟨Q, hj⟩, hb0⟩ vs hvs
        obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
        obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
        rw [evs_nil] at hvs2
        cases hvs2
        rw [ev_lb hj.1] at h1
        rw [ev_lwn hj.2.2.2.2.1] at h2
        cases h1
        cases h2
        have hQ := hj.2.2.2.2.2.2.2.2
        have hD9 := hj.2.2.2.2.2.2.2.1
        have hh := hdrLen_le (n := Q - (D.toNat + 9)) (by omega)
        refine ⟨⟨D, BitVec.ofNat 64 Q, rfl, rfl, ?_, ?_⟩, fun a ⟨D2, P2, hD2, hP2, h⟩ => ?_⟩
        · rw [toNat_ofNat_lt (by omega)]; omega
        · rw [toNat_ofNat_lt (by omega)]; omega
        · simp only [argW, wordOf, List.getElem?_cons_zero, List.getElem?_cons_succ, Option.some.injEq] at hD2 hP2
          subst hD2
          subst hP2
          rw [toNat_ofNat_lt (by omega)] at h
          exact ovl_sub h (by omega) (by omega)
      · intro s2 vs v2 hs2 ⟨Q, hj⟩ hvs hRet hsh
        obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
        obtain ⟨v2', vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
        rw [evs_nil] at hvs2
        cases hvs2
        rw [ev_lb hj.1] at h1
        rw [ev_lwn hj.2.2.2.2.1] at h2
        cases h1
        cases h2
        have hQ := hj.2.2.2.2.2.2.2.2
        have hD9 := hj.2.2.2.2.2.2.2.1
        have hv := hRet D (BitVec.ofNat 64 Q) (by simp [argW, wordOf]) (by simp [argW, wordOf])
        subst hv
        have hh := hdrLen_le (n := Q - (D.toNat + 9)) (by omega)
        rw [toNat_ofNat_lt (by omega)] at *
        refine hoareG_returnZ (L := fun m' => m' = s2.locals.update (totN, _)) ?_
        intro t ht hL w hw
        rw [ev_lv, hL, lookup_update_self] at hw
        cases hw
        exact ⟨_, rfl, by omega, by omega⟩
  have H := main s0 hs (lpre_init ⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlb⟩)
    (by rw [hr]; exact hg)
  rw [hr] at H
  exact ⟨H.1.1.1, H.1.1.2, fun v hv => H.1.2.2 v (by rw [hv])⟩

end InitECandidate.Solver.MemSafe.Rcpt

#print axioms InitECandidate.Solver.MemSafe.Rcpt.funSpec_encode_logsX
