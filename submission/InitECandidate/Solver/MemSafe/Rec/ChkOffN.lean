import InitECandidate.Solver.MemSafe.Rec.ChkOff

set_option autoImplicit false

/-!
# `ssz_check_offsets` for `2 <= n <= 4` (and memory preserved)

**`funSpec_ssz_check_offsetsN`**: a normal return of `ssz_check_offsets(W, N, F, L)` with `0 < N <= 4` leaves the
memory unchanged and gives `CoOk M W L N`: for every `j < N`, `word_j <= L` and (`1 <= j`) `word_(j-1) <= word_j`
(unsigned). Generalises `funSpec_ssz_check_offsets` (the `N = 4` case used by `decode_payload`).
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (FreshFoot SIn hoare_store_eq hoare_seq_eq hoare_assign_eq
  hoare_assign_fin eq_of_then)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

def CoLN (Nv W F Lm : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "offs") = some (.val (.word W)) ∧
    m.lookup (nm "n") = some (.val (.word Nv)) ∧
    m.lookup (nm "fixed") = some (.val (.word F)) ∧ m.lookup (nm "len") = some (.val (.word Lm))

def CoIN (Nv : BitVec 64) (M0 : Mem) (G0 : LocalsH) (W F Lm : BitVec 64) (t : State σ) : Prop :=
  t.memory = M0 ∧ t.globals = G0 ∧ CoLN Nv W F Lm t.locals ∧ ∃ I : BitVec 64,
    t.locals.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat ≤ Nv.toNat ∧ CoOk M0 W Lm I.toNat

theorem coIN_res {Nv : BitVec 64} {M0 : Mem} {G0 : LocalsH} {W F Lm : BitVec 64} {t : State σ} (old : Option (ValueHOL 64))
    (h : CoIN Nv M0 G0 W F Lm t) : CoIN Nv M0 G0 W F Lm { t with locals := t.locals.resVarEq (nm "o", old) } := by
  obtain ⟨hm, hg, ⟨h1, h2, h3, h4⟩, I, h5, h6, h7⟩ := h
  refine ⟨hm, hg, ⟨?_, ?_, ?_, ?_⟩, I, ?_, h6, h7⟩ <;>
    rw [lookup_resVarEq_ne _ _ (by decide)] <;> assumption

/-- One iteration. -/
theorem co_bodyN (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False)) {Nv : BitVec 64}
    (hN : Nv.toNat ≤ 4) {M0 : Mem} {G0 : LocalsH} {W F Lm : BitVec 64} :
    Hoare σ X (fun t => CoIN Nv M0 G0 W F Lm t ∧ CondTrue t coCond) coLoop
      (fun r t => r = none ∧ CoIN Nv M0 G0 W F Lm t) := by
  refine hoare_of_eq fun s hs ⟨⟨hmem, hglob, hL, I, hi, hI4, hok⟩, hc⟩ => ?_
  obtain ⟨hoffs, hn, hfx, hln⟩ := hL
  have hIlt : I.toNat < Nv.toNat :=
    signed_lt (x := I) (y := Nv) (by omega) (by omega) (cmp_true (ev_lw hi) (ev_lw hn) hc)
  have hmul : I * BitVec.ofNat 64 8 = BitVec.ofNat 64 (8 * I.toNat) := mul8 (by omega)
  have hA : ev s coAddr = some (.val (.word (W + BitVec.ofNat 64 (8 * I.toNat)))) := by
    unfold coAddr
    rw [ev_add2 (ev_lw hoffs) (ev_mul2 (ev_lw hi) (ev_cw _ 8)), hmul]
  unfold coLoop
  refine hoare_dec fun s' _ hs' v hv _ => ?_
  subst s'
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [hA] at hw
  cases hw
  set O := rd M0 (W + BitVec.ofNat 64 (8 * I.toNat)) with hO
  have hvO : s.memory (W + BitVec.ofNat 64 (8 * I.toNat)) = .word O := by
    rw [hmem, hO]; exact mem_rd' M0 _
  rw [hvO]
  refine hoare_post (Q := fun r t => r = none ∧ CoIN Nv M0 G0 W F Lm t) ?_
    (fun r t _ _ h => ⟨h.1, coIN_res _ h.2⟩)
  set s1 := setVarHOLFinite (nm "o") (.val (.word O)) s with hs1
  have hl1 : ∀ y, y ≠ nm "o" → s1.locals.lookup y = s.locals.lookup y :=
    fun y hy => lk_set_ne _ _ (Ne.symm hy)
  have hs1m : s1.memory = M0 := hmem
  refine hoare_seqFail hfr (hoare_of_eq fun t _ ⟨ht, hc2⟩ => ?_)
  subst ht
  obtain ⟨hFO, hOL⟩ := coC1_false (by rw [hl1 _ (by decide)]; exact hfx)
    (by rw [hl1 _ (by decide)]; exact hln) (lk_set_self _ _ _) hc2
  have hlo : ∀ y, y ≠ nm "o" → s1.locals.lookup y = s.locals.lookup y := hl1
  have hi1 : s1.locals.lookup (nm "i") = some (.val (.word I)) := by
    rw [hl1 _ (by decide)]; exact hi
  have hI64 : I.toNat < 2 ^ 63 := by omega
  refine hoare_seq (R := fun r t => r = none ∧ t = s1 ∧ (1 ≤ I.toNat →
      (rd M0 (W + BitVec.ofNat 64 (8 * (I.toNat - 1)))).toNat ≤ O.toNat)) ?_
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_post (hoare_pre (hoare_sFail' hfr (P := fun t => t = s1) (c := coC2) (k := 11))
        (fun t _ ⟨ht, _⟩ => ht)) ?_
      rintro r t _ _ ⟨hr, ht, hc3⟩
      subst ht
      refine ⟨hr, rfl, fun hI1 => ?_⟩
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc3
      obtain ⟨w, hw, -, hvy⟩ := ev_load_one hy
      have hsub : ev s1 (.op .sub [coAddr, cw 8]) =
          some (.val (.word (W + BitVec.ofNat 64 (8 * (I.toNat - 1))))) := by
        have hA1 : ev s1 coAddr = some (.val (.word (W + BitVec.ofNat 64 (8 * I.toNat)))) := by
          unfold coAddr
          rw [ev_add2 (ev_lw (by rw [hl1 _ (by decide)]; exact hoffs))
            (ev_mul2 (ev_lw hi1) (ev_cw _ 8)), hmul]
        rw [ev_sub2 hA1 (ev_cw _ 8)]
        congr 3
        apply BitVec.eq_of_toNat_eq
        simp only [BitVec.toNat_sub, BitVec.toNat_add, BitVec.toNat_ofNat]
        omega
      rw [hsub] at hw
      cases hw
      rw [ev_lw (lk_set_self _ _ _)] at hx
      cases hx
      have hv : (s1.memory (W + BitVec.ofNat 64 (8 * (I.toNat - 1)))) =
          .word (rd M0 (W + BitVec.ofNat 64 (8 * (I.toNat - 1)))) := by
        rw [hs1m]; exact mem_rd' M0 _
      rw [hv] at hvy
      simp only [ValueHOL.val.injEq] at hvy
      cases hvy
      exact lower_false hxy
    · refine hoare_skip fun t _ ⟨ht, hc3⟩ => ⟨rfl, ht, fun h1 => ?_⟩
      subst ht
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc3
      rw [ev_cw] at hx
      cases hx
      rw [ev_lw hi1] at hy
      cases hy
      have := signed_ge' (x := BitVec.ofNat 64 0) (y := I) (by decide) hI64 hxy
      simp at this
      omega
  · refine hoare_of_eq fun t _ ⟨_, ht, hprev⟩ => ?_
    subst ht
    have hI1 : ev s1 (.op .add [lv (nm "i"), cw 1]) = some (.val (.word (I + BitVec.ofNat 64 1))) :=
      ev_add2 (ev_lw hi1) (ev_cw _ 1)
    refine hoare_assign_fin hI1 ?_
    have hI1n : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
    refine ⟨rfl, ?_, ?_, ?_, I + BitVec.ofNat 64 1, lk_set_self _ _ _, by omega, ?_⟩
    · exact hs1m
    · exact hglob
    · refine ⟨?_, ?_, ?_, ?_⟩ <;> rw [lk_set_ne _ _ (by decide)] <;> rw [hl1 _ (by decide)]
      · exact hoffs
      · exact hn
      · exact hfx
      · exact hln
    · rw [hI1n]
      intro j hj
      by_cases hjI : j < I.toNat
      · exact hok j hjI
      · have hjeq : j = I.toNat := by omega
        subst hjeq
        exact ⟨hOL, hprev⟩


theorem co_loopN (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False)) {Nv : BitVec 64}
    (hN : Nv.toNat ≤ 4) {M0 : Mem} {G0 : LocalsH} {W F Lm : BitVec 64} :
    Hoare σ X (CoIN Nv M0 G0 W F Lm) (.while coCond coLoop)
      (fun r t => r = none ∧ CoIN Nv M0 G0 W F Lm t ∧ ∃ I : BitVec 64,
        t.locals.lookup (nm "i") = some (.val (.word I)) ∧ Nv.toNat ≤ I.toNat) := by
  refine hoare_while (fun _ h => h) (hoare_post (co_bodyN hfr hN)
    fun r t _ _ ⟨hr, hI⟩ => ⟨fun _ => hI, fun h => by subst hr; exact absurd h (by simp),
      fun h => by subst hr; exact absurd h (by simp),
      fun v h => by subst hr; exact absurd h (by simp)⟩) ?_
  intro t _ hI hc
  obtain ⟨hm, hg, ⟨h1, h2, h3, h4⟩, I, hiI, hI4, hok⟩ := hI
  refine ⟨rfl, ⟨hm, hg, ⟨h1, h2, h3, h4⟩, I, hiI, hI4, hok⟩, I, hiI, ?_⟩
  exact signed_ge' (x := I) (y := Nv) (by omega) (by omega)
    (cmp_val_false hc (ev_lw hiI) (ev_lw h2))


theorem funSpec_ssz_check_offsetsN (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "ssz_check_offsets") (fun vs s r t => ∀ v, r = .returned v →
      ∀ W N F L : BitVec 64, vs = [.val (.word W), .val (.word N), .val (.word F), .val (.word L)] →
        N.toNat ≤ 4 → N ≠ BitVec.ofNat 64 0 → t.memory = s.memory ∧ t.globals = s.globals ∧ CoOk s.memory W L N.toNat) := by
  have hfr := funRet_ssz_fail (σ := σ) hC
  refine funSpec_of_hoare fun vs body callee rs hl s0 hs0 hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, C, D, rfl, hsA, hsB, hsC, hsD, hA, hB, hC', hD⟩ :=
    MemSafe.Bn.lookupCode_four code_ssz_check_offsets (by decide) hl
  obtain ⟨Wv, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨Nv, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨Fv, rfl⟩ := val_of_shapeEq_one hsC
  obtain ⟨Lv, rfl⟩ := val_of_shapeEq_one hsD
  refine hoare_pre (P := fun s => s = s0) ?_ (fun s _ h => h)
  by_cases hN : Nv.toNat ≤ 4 ∧ Nv ≠ BitVec.ofNat 64 0
  swap
  · intro s _ _ _ v _ W N F L hvs h4 hn0
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    obtain ⟨-, rfl, -⟩ := hvs
    exact absurd ⟨h4, hn0⟩ hN
  obtain ⟨hN4, hN0⟩ := hN
  have hL : CoLN Nv Wv Fv Lv s0.locals := by
    rw [hloc]; exact ⟨hA, hB, hC', hD⟩
  unfold coBody
  refine hoare_seq (R := fun r t => r = none ∧ t = s0) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_return fun t _ ⟨ht, w, hw, hw0⟩ v hv => ?_
      subst ht
      exfalso
      exact hN0 (eq_of_then (ev_lw hL.2.1) ⟨w, hw, hw0⟩)
    · exact hoare_skip fun t _ ⟨ht, _⟩ => ⟨rfl, ht⟩
  · refine hoare_pre (P := fun t => t = s0) ?_ (fun t _ h => h.2)
    refine hoare_dec fun s' _ hs' v hv _ => ?_
    subst s'
    rw [ev_cw] at hv
    cases hv
    refine hoare_conseq (Q := fun r t => ∀ v, r = some (.returned v) → ∀ W N F L : BitVec 64,
      [ValueHOL.val (.word Wv), .val (.word Nv), .val (.word Fv), .val (.word Lv)]
        = [.val (.word W), .val (.word N), .val (.word F), .val (.word L)] →
          N.toNat ≤ 4 → N ≠ BitVec.ofNat 64 0 → t.memory = s0.memory ∧ t.globals = s0.globals ∧ CoOk s0.memory W L N.toNat)
      ?_ (fun _ _ h => h) (fun _ _ _ _ h => h)
    refine hoare_seq (R := fun r t => r = none ∧ CoIN Nv s0.memory s0.globals Wv Fv Lv t ∧ ∃ I : BitVec 64,
        t.locals.lookup (nm "i") = some (.val (.word I)) ∧ Nv.toNat ≤ I.toNat) ?_
      (fun r t _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_pre (co_loopN hfr hN4) ?_
      intro t _ ht
      subst ht
      obtain ⟨h1, h2, h3, h4⟩ := hL
      refine ⟨rfl, rfl, ⟨?_, ?_, ?_, ?_⟩, BitVec.ofNat 64 0, lk_set_self _ _ _, by simp, ?_⟩
      · rw [lk_set_ne _ _ (by decide)]; exact h1
      · rw [lk_set_ne _ _ (by decide)]; exact h2
      · rw [lk_set_ne _ _ (by decide)]; exact h3
      · rw [lk_set_ne _ _ (by decide)]; exact h4
      · intro j hj
        simp at hj
    · refine hoare_seqFail hfr ?_
      refine hoare_return fun t _ ⟨⟨_, hI, I, hiI, hI4⟩, _⟩ v hv v' hv' W N F L hvs h4 hn0 => ?_
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
      obtain ⟨rfl, rfl, -, rfl⟩ := hvs
      obtain ⟨hm, hg, -, I', hiI', hI4', hok⟩ := hI
      rw [hiI] at hiI'
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hiI'
      subst hiI'
      have hle : Nv.toNat ≤ I.toNat := hI4
      have hIN : I.toNat = Nv.toNat := by omega
      refine ⟨hm, hg, ?_⟩
      rw [hIN] at hok
      exact hok

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.funSpec_ssz_check_offsetsN
