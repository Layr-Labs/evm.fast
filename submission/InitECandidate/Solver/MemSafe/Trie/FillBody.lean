import InitECandidate.Solver.MemSafe.Trie.FillPush
import InitECandidate.Solver.MemSafe.Trie.FillScan

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# One iteration of the `_node_rlp_fill` loop, exception-inclusive
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

theorem pg_of_none {S E : State σ → Prop} {r : Option (PanSemResultExact 64)} {t : State σ}
    (h : r = none ∧ S t) : PG S E r t := by
  obtain ⟨hr, hs⟩ := h
  subst hr
  exact pg_none hs

/-- The scan is a step. -/
theorem stepW_scan {S0 : Nat} {Nd : BitVec 64 → Prop} {s4 t : State σ} {p : Ptrs} {T N : BitVec 64}
    (hp : ptrsOf s4 = some p) (ho : p.Ordered) (hsp : p.sp ≤ T.toNat) (hT : T.toNat + 48 ≤ S0)
    (hscale : T.toNat + 48 < 2 ^ 64) (h : ScanPost Nd s4 T N t) : StepW S0 Nd s4 t := by
  obtain ⟨hg, hbe, hl, hmem, -⟩ := h
  refine ⟨p, p, hp, by rw [ptrsOf_frame hg]; exact hp, ho, le_rfl, le_rfl,
    fun g _ _ => by rw [hg], fun a ha => ?_⟩
  rcases hmem with e | ⟨v, -, e⟩
  · exact absurd (by rw [e]) ha
  · have : a = T + BitVec.ofNat 64 16 := by
      by_contra hne
      apply ha
      rw [e]; unfold Spec.Mpt.upd; exact if_neg hne
    subst this
    rw [toNat_add_k (by omega)]
    exact Or.inr (Or.inr (Or.inr ⟨by omega, by omega⟩))

set_option maxHeartbeats 4000000 in
/-- **One iteration.** -/
theorem body_stepG (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) (hX0 : DomBounded X) {Nd : BitVec 64 → Prop} {HP0 S0 : Nat}
    {s0 : State σ} (hI : FInvX Nd HP0 S0 s0) (hc : CondTrue s0 fillCond) :
    HoareG σ X (fun t => t = s0) fillBody
      (PG (fun t => FInvX Nd HP0 S0 t ∧ fMu t < fMu s0 ∧ StepW S0 Nd s0 t) (StepW S0 Nd s0)) := by
  let SQ : State σ → Prop := fun t => FInvX Nd HP0 S0 t ∧ fMu t < fMu s0 ∧ StepW S0 Nd s0 t
  have hresQ : ∀ (y : MlS), y ≠ nm "top" → ∀ t : State σ, SQ t → ∀ old,
      SQ { t with locals := t.locals.resVarEq (y, old) } :=
    fun y hy t h old => by
      have hc' := finvX_congr (s := t) (t := { t with locals := t.locals.resVarEq (y, old) })
        rfl rfl rfl (lookup_resVarEq_ne _ _ hy) h.1
      exact ⟨hc'.1, by rw [hc'.2]; exact h.2.1, h.2.2⟩
  obtain ⟨p, hp, hord, h0, hb0, hsp, hS0, htr, hL, T, d', hT', hch, hB⟩ := hI
  have hT0 : T ≠ 0 := by
    obtain ⟨w, hw, hw0⟩ := hc
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_lv, hT'] at hx; rw [ev_cw] at hy
    cases hx; cases hy
    exact notEqual_true hxy
  obtain ⟨d, rfl⟩ : ∃ d, d' = d + 1 := by
    cases d' with
    | zero => exact absurd hch hT0
    | succ d => exact ⟨d, rfl⟩
  have hk0 : fMu s0 = (p.sp - heapEnd) / 24 + (d + 1) := fMu_of hp hT' hS0 hch
  unfold fillBody
  refine hoareG_decP (Sin := SQ)
    (hresQ _ (by decide)) (fun _ h _ => h) ?_
  intro s1 hs1 hP1 v1 hv1 hsh1
  subst hP1
  obtain ⟨w, hw, -, rfl⟩ := ev_load1_inv' hv1
  rw [ev_add_cw hT' 8] at hw
  cases hw
  set N := rd s1.memory (T + BitVec.ofNat 64 8) with hNdef
  refine hoareG_decP (Sin := SQ)
    (hresQ _ (by decide)) (fun _ h _ => h) ?_
  intro s2 hs2 hP2 v2 hv2 hsh2
  subst hP2
  obtain ⟨w2, hw2, -, rfl⟩ := ev_load1_inv' hv2
  rw [ev_add_cw (lk_set_self _ _ _) 0] at hw2
  cases hw2
  have hN0 : N + BitVec.ofNat 64 0 = N := by simp
  rw [hN0]
  refine hoareG_decP (Sin := SQ)
    (hresQ _ (by decide)) (fun _ h _ => h) ?_
  intro s3 hs3 hP3 v3 hv3 hsh3
  subst hP3
  rw [ev_cw] at hv3; cases hv3
  refine hoareG_decP (Sin := SQ)
    (hresQ _ (by decide)) (fun _ h _ => h) ?_
  intro s4' hs4' hP4 v4 hv4 hsh4
  subst hP4
  rw [ev_cw] at hv4; cases hv4
  set s4 := setVarHOLFinite (nm "found") (.val (.word (BitVec.ofNat 64 0)))
    (setVarHOLFinite (nm "child") (.val (.word (BitVec.ofNat 64 0)))
      (setVarHOLFinite (nm "k") (.val (.word (rd (setVarHOLFinite (nm "nd") (.val (.word N)) s1).memory N)))
        (setVarHOLFinite (nm "nd") (.val (.word N)) s1))) with hs4
  have hm4 : s4.memory = s1.memory := rfl
  have hg4 : s4.globals = s1.globals := rfl
  have hb4 : s4.be = s1.be := rfl
  have hp4 : ptrsOf s4 = some p := hp
  have hl4 : ∀ y, y ≠ nm "found" → y ≠ nm "child" → y ≠ nm "k" → y ≠ nm "nd" →
      s4.locals.lookup y = s1.locals.lookup y := fun y h1 h2 h3 h4 => by
    rw [hs4, lk_set_ne _ _ (Ne.symm h1), lk_set_ne _ _ (Ne.symm h2), lk_set_ne _ _ (Ne.symm h3),
      lk_set_ne _ _ (Ne.symm h4)]
  have hT4 : s4.locals.lookup (nm "top") = some (.val (.word T)) := by
    rw [hl4 _ (by decide) (by decide) (by decide) (by decide)]; exact hT'
  have hN4 : s4.locals.lookup (nm "nd") = some (.val (.word N)) := by
    rw [hs4, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_self]
  have hk4 : s4.locals.lookup (nm "k") = some (.val (.word (rd s4.memory N))) := by
    rw [hs4, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_self]; rfl
  have hc4 : s4.locals.lookup (nm "child") = some (.val (.word (BitVec.ofNat 64 0))) := by
    rw [hs4, lk_set_ne _ _ (by decide), lk_set_self]
  have hf4 : s4.locals.lookup (nm "found") = some (.val (.word (BitVec.ofNat 64 0))) := by
    rw [hs4, lk_set_self]
  obtain ⟨hT0', hT1, hT2, ⟨r1, r2, -, r4, -, -⟩, -⟩ := id hch
  have hTh : heapEnd ≤ T.toNat := le_trans (heapEnd_le_sp hord) hT1
  have hS := Spec.Mpt.scratchEnd_lt
  have hScan : HoareG σ X (fun t => t = s4) scanArm (PG (ScanPost Nd s4 T N) (StepW S0 Nd s1)) :=
    hoareG_conseq (hoareG_of_hoare (scan_hoare hC hNS (HP0 := HP0) (s4 := s4) (T := T) (N := N) htr.1
      (by have := hord.2.1; omega) r1 hT4 hTh (by omega) hN4 hk4 hc4 hf4 r4)
      (scanArm_escFree hC hX0)) (fun t _ ht => ht) (fun r t _ _ h => pg_of_none h)
  refine hoareG_pre (P := fun t => t = s4) ?_ (fun t _ ht => ht)
  refine hoareG_seqP (S1 := ScanPost Nd s4 T N) hScan ?_
  -- facts after the scan
  have harm : ∀ t : State σ, ScanPost Nd s4 T N t →
      ArmPreX Nd HP0 S0 d p T N t ∧ StepW S0 Nd s1 t ∧
        ∀ x : BitVec 64, x.toNat < heapEnd → t.memory x = s1.memory x := by
    intro t hsp4
    obtain ⟨harm1, hout⟩ := armPre_of_scan (d := d) (p := p) (s := s1) (s4 := s4) rfl rfl rfl hp hord
      h0 hb0 hsp hS0 htr hch hT4 hN4 rfl hsp4
    have hLt : LenStat Nd t := lenStat_of_agree (s := s1) htr.1 (by have := hord.2.1; omega) hout hL
    have hBt : ChainB t.memory (d + 1) T := by
      rcases hsp4.2.2.2.1 with e | ⟨v, hv, e⟩
      · rw [e]; exact hB
      · exact chainB_set16 hS0 hch (M' := t.memory) (v := v) (by rw [e]; rfl) hB
    have hsw : StepW S0 Nd s1 t :=
      stepW_congr (s := s4) rfl rfl (stepW_scan hp4 hord (by omega) (by omega) (by omega) hsp4)
    exact ⟨⟨harm1, hLt, hBt⟩, hsw, hout⟩
  have hmap : ∀ (t : State σ), StepW S0 Nd s1 t → ∀ (r : Option (PanSemResultExact 64)) (u : State σ),
      PG (fun u' => FInvX Nd HP0 S0 u' ∧ fMu u' < (p.sp - heapEnd) / 24 + (d + 1) ∧ StepW S0 Nd t u')
        (StepW S0 Nd t) r u → PG SQ (StepW S0 Nd s1) r u := fun t hsw r u h =>
    pg_mono h (fun u' hu => ⟨hu.1, by rw [hk0]; exact hu.2.1, stepW_trans hsw hu.2.2⟩)
      (fun u' hu => stepW_trans hsw hu)
  refine hoareG_ite ?_ ?_
  · intro t ht ⟨hsp4, w, hw, hw0⟩ hg
    obtain ⟨harmX, hsw, hout⟩ := harm t hsp4
    obtain ⟨-, -, -, -, F, C, hF, hCl, hFC⟩ := hsp4
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_lv, hF] at hx; rw [ev_cw] at hy
    cases hx; cases hy
    obtain ⟨hNdC, hkC, hkN⟩ := hFC (notEqual_true hxy)
    have hCh : C.toNat < heapEnd := by
      have := (htr.1 C hNdC).2.1; have := nsz_ge (rd s1.memory C); have := hord.2.1; omega
    have hNh : N.toNat < heapEnd := by
      have := (htr.1 N r1).2.1; have := nsz_ge (rd s1.memory N); have := hord.2.1; omega
    have H := push_stepG hC hA hT hNS hX0 harmX
      ⟨hCl, hNdC, by rw [rd_eq (hout C hCh)]; exact hkC, by rw [rd_eq (hout N hNh)]; exact hkN⟩
    exact hmap t hsw _ _ (H t ht rfl hg)
  · intro t ht ⟨hsp4, hw⟩ hg
    obtain ⟨harmX, hsw, hout⟩ := harm t hsp4
    have H := pop_stepG hC hA hT hNS hX0 harmX
    exact hmap t hsw _ _ (H t ht rfl hg)

end InitECandidate.Solver.MemSafe.Trie
