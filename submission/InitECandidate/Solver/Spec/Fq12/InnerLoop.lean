import InitECandidate.Solver.Spec.Fq12.Inner

/-!
# The cost of the division loop

`inner_cost`: from the invariant `InI g`, a Good run of the division loop of `fq12_inv` makes
at most `14` iterations (`costP_while_doom` with the measure `degM d0` and the doomed states
`DoomI g`).
-/

set_option linter.unusedSimpArgs false

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The measure: `degM d0`. -/
def muIn (t : PanSemStateFiniteExact 64 σ) : Nat :=
  match t.locals.lookup (nm "d0") with
  | some (.val (.word D)) => degM D
  | _ => 0

theorem muIn_eq {t : PanSemStateFiniteExact 64 σ} {D : BitVec 64}
    (h : t.locals.lookup (nm "d0") = some (.val (.word D))) : muIn t = degM D := by
  unfold muIn; rw [h]

/-- Doomed states of the division loop: the condition holds and the top coefficient can never
cancel. -/
def DoomI (g : IG) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  InI g t ∧ ∃ D, t.locals.lookup (nm "d0") = some (.val (.word D)) ∧ D ≠ 0 - 1 ∧
    g.D1.toNat ≤ D.toNat ∧
    (g.R0.toNat % 8 ≠ 0 ∨ (g.R0.toNat % 8 = 0 ∧ wn (words4 t.memory (sl g.R0 D)) ≠ 0 ∧
      ∀ x, GRel (wn g.LI) (wn g.LEAD) (wn (words4 t.memory (sl g.R0 D))) x → x ≠ 0))

theorem degFacts_lt {t : PanSemStateFiniteExact 64 σ} {a D : BitVec 64} (h : DegFacts t a D)
    (hD : D ≠ 0 - 1) : D.toNat < 13 := by
  rcases h with ⟨h1, -⟩ | ⟨h1, -, -⟩
  · exact absurd h1 hD
  · exact h1

/-- The loop condition `d0 >= d1` (signed) on degrees. -/
theorem condInner_iff {t : PanSemStateFiniteExact 64 σ} {g : IG} {D : BitVec 64}
    (hd1 : t.locals.lookup (nm "d1") = some (.val (.word g.D1))) (hD1 : g.D1.toNat ≤ 12)
    (hd0 : t.locals.lookup (nm "d0") = some (.val (.word D))) (hdeg : D = 0 - 1 ∨ D.toNat < 13) :
    CondTrue t innerCond ↔ D ≠ 0 - 1 ∧ g.D1.toNat ≤ D.toNat := by
  rw [condTrue_iff]
  have hc := ev_cmp (o := .notLess) (ev_lw hd0) (ev_lw hd1)
  unfold innerCond
  rw [hc]
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
    Flapjack.Compiler.Encoders.Asm.wordCmpHOL]
  rcases hdeg with rfl | hlt
  · have h1 := signed_m1_lt (y := g.D1) (by omega)
    simp
    exact h1
  · have h1 := signed_lt_iff (x := D) (y := g.D1) (by omega) (by omega)
    have hne : D ≠ 0 - 1 := by intro he; rw [he, m1_toNat] at hlt; omega
    by_cases h : D.toNat < g.D1.toNat
    · have h2 : Flapjack.Compiler.Encoders.Asm.holAsmSignedLess D g.D1 = true := by
        rw [h1]; simp [h]
      simp [h2, hne]
      intro _; exact h
    · have h2 : Flapjack.Compiler.Encoders.Asm.holAsmSignedLess D g.D1 = false := by
        rw [h1]; simp [h]
      simp [h2, hne]
      exact ⟨hne, by omega⟩

theorem words4_zero_of_wn {m : BitVec 64 → HolWordLab 64} {x : BitVec 64}
    (h : wn (words4 m x) = 0) : words4 m x = [0, 0, 0, 0] := by
  have hz := list_zero_of_wn h
  unfold words4 at hz ⊢
  simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq] at hz
  rw [hz.1, hz.2.1, hz.2.2.1, hz.2.2.2]

theorem wn_words4_zero {m : BitVec 64 → HolWordLab 64} {x : BitVec 64}
    (h : ∀ j : Nat, j < 4 → cellW m (x + BitVec.ofNat 64 (8 * j)) = 0) : wn (words4 m x) = 0 := by
  unfold words4
  have h0 := h 0 (by omega); have h1 := h 1 (by omega)
  have h2 := h 2 (by omega); have h3 := h 3 (by omega)
  simp only [Nat.mul_zero, BitVec.ofNat_eq_ofNat, BitVec.add_zero] at h0
  rw [h0, show x + BitVec.ofNat 64 8 = x + BitVec.ofNat 64 (8 * 1) from rfl, h1,
    show x + BitVec.ofNat 64 16 = x + BitVec.ofNat 64 (8 * 2) from rfl, h2,
    show x + BitVec.ofNat 64 24 = x + BitVec.ofNat 64 (8 * 3) from rfl, h3]
  rfl

/-- **The analysis of one division step**: the invariant is kept, and the degree drops or
the new state is doomed; doomed states stay doomed. -/
theorem step_analysis {g : IG} {D : BitVec 64} {t0 t' : PanSemStateFiniteExact 64 σ}
    (hI0 : InI g t0) (hd0 : t0.locals.lookup (nm "d0") = some (.val (.word D))) (hDn : D ≠ 0 - 1)
    (hDle : g.D1.toNat ≤ D.toNat)
    (hP : StepPost g D (words4 t0.memory (sl g.R0 D)) t0 t') :
    InI g t' ∧ (muIn t' < degM D ∨ DoomI g t') ∧ (DoomI g t0 → DoomI g t') := by
  obtain ⟨hF', ⟨D', hd0', hdeg'⟩, hfr, hdom, hbe, hgrel, hdomT⟩ := hP
  have hI' : InI g t' := ⟨hF', D', hd0', hdeg'⟩
  obtain ⟨hF0, D0, hd00, hdeg0⟩ := hI0
  rw [hd0] at hd00
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hd00
  subst hd00
  have hD13 := degFacts_lt hdeg0 hDn
  obtain ⟨-, -, -, -, -, -, -, -, hD1a, hD1b, hdj01, hdj0q, hdj1q⟩ := hF0
  have hnq : ∀ k i : BitVec 64, k.toNat < 13 → i.toNat < 32 → ¬ WQ g D (ba (g.R0 + k * 32 + i)) :=
    fun k i hk hi hw => hdj0q _ (inBuf_byte g.R0 k i hk hi) (wslot_inBuf (by
      rw [toNat_sub_le hDle]; omega) hw)
  have hmu' : muIn t' = degM D' := muIn_eq hd0'
  by_cases hal : g.R0.toNat % 8 = 0
  · have habove : ∀ k i : BitVec 64, D.toNat < k.toNat → k.toNat < 13 → i.toNat < 32 →
        t'.memory (ba (g.R0 + k * 32 + i)) = t0.memory (ba (g.R0 + k * 32 + i)) := by
      intro k i hk1 hk2 hi
      refine hfr _ (hnq k i hk2 hi) ?_
      rintro ⟨i', hi', hw⟩
      have hm : (D - g.D1 + i').toNat = D.toNat - g.D1.toNat + i'.toNat := by
        rw [BitVec.toNat_add, toNat_sub_le hDle]; omega
      exact ba_ne_wslot_aligned hal hk2 (by omega) (fun he => by
        have := congrArg BitVec.toNat he; omega) hi hw rfl
    by_cases hz : wn (words4 t'.memory (sl g.R0 D)) = 0
    · have hsz : SlotZ t' g.R0 D :=
        slotZ_of_words_zero hal hD13 (by rw [hdom]; exact hdomT) (words4_zero_of_wn hz)
      refine ⟨hI', Or.inl ?_, ?_⟩
      · rw [hmu']; exact deg_drop hDn hdom hbe habove hdeg0 hsz hdeg'
      · rintro ⟨-, D2, hd2, -, -, hcase⟩
        rw [hd0] at hd2
        simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hd2
        subst hd2
        rcases hcase with h | ⟨-, -, hall⟩
        · exact absurd hal h
        · exact absurd hz (hall _ hgrel)
    · have hnz : ¬ SlotZ t' g.R0 D := fun h =>
        hz (wn_words4_zero (words_zero_of_slotZ hal hD13 h))
      have hDD := deg_stay hDn hdom hbe habove hdeg0 hnz hdeg'
      subst hDD
      have hdoom : DoomI g t' := ⟨hI', D', hd0', hDn, hDle, Or.inr ⟨hal, hz,
        fun x hx => grel_doom hgrel hx hz⟩⟩
      exact ⟨hI', Or.inr hdoom, fun _ => hdoom⟩
  · have hall : ∀ k i : BitVec 64, k.toNat < 13 → i.toNat < 32 →
        t'.memory (ba (g.R0 + k * 32 + i)) = t0.memory (ba (g.R0 + k * 32 + i)) := by
      intro k i hk hi
      refine hfr _ (hnq k i hk hi) ?_
      rintro ⟨i', _, hw⟩
      exact ba_ne_wslot_unaligned hal hw rfl
    have hDD := deg_same_of_frame hdom hbe hall hdeg0 hdeg'
    subst hDD
    have hdoom : DoomI g t' := ⟨hI', D', hd0', hDn, hDle, Or.inl hal⟩
    exact ⟨hI', Or.inr hdoom, fun _ => hdoom⟩

/-- The callee costs of one iteration. -/
def innerB (Bmul Bsm Bdeg : Nat) : Nat := (1 + Bmul) + (1 + Bsm) + (1 + Bdeg)

theorem innerBody_cost {Bmul Bsm Bdeg : Nat} (hmul : CalleeCost σ X (nm "fq_mul") Bmul)
    (hsm : CalleeCost σ X (nm "fq_poly_submul") Bsm) (hdg : CalleeCost σ X (nm "fq_poly_deg") Bdeg) :
    Cost σ X innerBody (innerB Bmul Bsm Bdeg) := by
  unfold innerBody innerB callN
  exact (cost_dec (cost_decCall hmul (cost_seq (cost_store _ _)
    (cost_seq (cost_call (Bh := 0) hsm (by intro _ _ _ _ h; cases h)) (cost_callTo hdg))))).mono (by omega)

theorem innerBody_escFree {ef : MlS → Bool} (hef : EfSound σ X.code ef)
    (h1 : ef (nm "fq_mul") = true) (h2 : ef (nm "fq_poly_submul") = true)
    (h3 : ef (nm "fq_poly_deg") = true) : EscFree σ X.code innerBody := by
  apply escFreeB_sound hef
  simp [innerBody, escFreeB, callN, callTo, h1, h2, h3]

theorem inner_hyps {g : IG} {s : PanSemStateFiniteExact 64 σ} (hI : InI g s) :
    ∃ D, s.locals.lookup (nm "d0") = some (.val (.word D)) ∧ DegFacts s g.R0 D ∧
      (CondTrue s innerCond ↔ D ≠ 0 - 1 ∧ g.D1.toNat ≤ D.toNat) := by
  obtain ⟨hF, D, hd0, hdeg⟩ := hI
  refine ⟨D, hd0, hdeg, condInner_iff hF.2.2.2.1 hF.2.2.2.2.2.2.2.2.2.1 hd0 ?_⟩
  rcases hdeg with ⟨h1, -⟩ | ⟨h1, -, -⟩
  · exact Or.inl h1
  · exact Or.inr h1

/-- **The cost of the division loop** from its invariant. -/
theorem inner_cost (hC : X.code.lookup = guestCode) (g : IG) {Bmul Bsm Bdeg : Nat}
    (hmul : CalleeCost σ X (nm "fq_mul") Bmul) (hsm : CalleeCost σ X (nm "fq_poly_submul") Bsm)
    (hdg : CalleeCost σ X (nm "fq_poly_deg") Bdeg) {ef : MlS → Bool} (hef : EfSound σ X.code ef)
    (he1 : ef (nm "fq_mul") = true) (he2 : ef (nm "fq_poly_submul") = true)
    (he3 : ef (nm "fq_poly_deg") = true) :
    Inv.CostP σ X (InI g) innerLoop ((13 + 1) * (innerB Bmul Bsm Bdeg + 1)) := by
  refine costP_while_doom (InI g) (DoomI g) muIn 13 (innerBody_cost hmul hsm hdg)
    (fun s h => ⟨h, rfl⟩) ?_ ?_ ?_
  · intro s _ hI _
    obtain ⟨D, hd0, hdeg, -⟩ := inner_hyps hI
    rw [muIn_eq hd0]; exact degM_le hdeg
  · intro k s hs ⟨hI, hc, hμ⟩ ht
    obtain ⟨D, hd0, hdeg, hci⟩ := inner_hyps hI
    obtain ⟨hDn, hDle⟩ := hci.mp hc
    obtain ⟨hr, hP⟩ := inner_step hC g D s hI.1 hd0 hDle (degFacts_lt hdeg hDn) s hs rfl ht
    intro _
    obtain ⟨h1, h2, -⟩ := step_analysis hI hd0 hDn hDle hP
    refine ⟨h1, ?_⟩
    rw [← hμ, muIn_eq hd0]
    exact h2
  · refine while_never (DoomI g) ?_ (fun s h => h) ?_ (innerBody_escFree hef he1 he2 he3)
    · intro s _ ⟨hI, D, hd0, hDn, hDle, _⟩
      obtain ⟨D', hd0', _, hci⟩ := inner_hyps hI
      rw [hd0] at hd0'
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hd0'
      subst hd0'
      exact hci.mpr ⟨hDn, hDle⟩
    · intro s hs ⟨hD, _⟩ ht
      have hD0 := hD
      obtain ⟨hI, D, hd0, hDn, hDle, _⟩ := hD
      obtain ⟨D', hd0', hdeg', _⟩ := inner_hyps hI
      rw [hd0] at hd0'
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hd0'
      subst hd0'
      obtain ⟨hr, hP⟩ := inner_step hC g D s hI.1 hd0 hDle (degFacts_lt hdeg' hDn) s hs rfl ht
      exact ⟨hr, (step_analysis hI hd0 hDn hDle hP).2.2 hD0⟩

end InitECandidate.Solver.Spec.Fq12
