import InitECandidate.Solver.Spec.Mpt.Callees
import InitECandidate.Solver.SourceCost.Orbit
import Mathlib.Data.Fintype.Card
import Mathlib.Data.FinEnum

/-!
# Loop rule with an invariant and doomed states; the nonzero-word count

* `costP_while_doomed`: `cost_while_doomed` (`SourceCost/Orbit.lean`) under a loop
  invariant `I`: only `I`-states need a bounded, decreasing measure, and doomed states (which
  loop forever) need none.
* `phi M`: the number of addresses whose word is not the zero word. A memory change that only
  turns words into the zero word does not raise it, and keeps it only if nothing changed
  (`phi_mono`).
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## The loop rule -/

theorem costP_while_doomed {c : ExpHOL 64} {body : ProgHOL 64} {Bb : Nat}
    (I : PanSemStateFiniteExact 64 σ → Prop) (μ : PanSemStateFiniteExact 64 σ → Nat) (M : Nat)
    (Doomed : PanSemStateFiniteExact 64 σ → Prop)
    (hbody : Cost σ X body Bb)
    (hclk : ∀ s, I s → I (decClockHOLFinite s))
    (hM : ∀ s : PanSemStateFiniteExact 64 σ, InCtx s X → I s → CondTrue s c → ¬ Doomed s →
      μ s ≤ M)
    (hdec : ∀ s : PanSemStateFiniteExact 64 σ, InCtx s X → I s → CondTrue s c → 0 < s.clock →
      ¬ Doomed s →
      ((evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none ∨
        (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = some .continue) →
      I (evaluateHOLFiniteState (decClockHOLFinite s) body).2 ∧
        μ (evaluateHOLFiniteState (decClockHOLFinite s) body).2 < μ s)
    (hdoom : ∀ s : PanSemStateFiniteExact 64 σ, Doomed s → CondTrue s c ∧
      (Good (evaluateHOLFiniteState (decClockHOLFinite s) body).1 →
        ((evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none ∨
          (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = some .continue) ∧
        Doomed (evaluateHOLFiniteState (decClockHOLFinite s) body).2)) :
    CostP σ X I (.while c body) ((M + 1) * (Bb + 1)) := by
  have never : ∀ k (s : PanSemStateFiniteExact 64 σ), s.clock = k → Doomed s →
      ¬ Good (evaluateHOLFiniteState s (.while c body)).1 := by
    intro k
    induction k using Nat.strongRecOn with
    | _ k ih =>
    intro s hk hd
    obtain ⟨⟨w, hw, hne⟩, hstep⟩ := hdoom s hd
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c body)]
    dsimp only
    rw [hw]
    simp only [ne_eq, hne, not_false_eq_true, if_true]
    split
    · simp [Good]
    · have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) body).2.clock < k := by
        have := evaluateHOLFiniteState_clock_le (decClockHOLFinite s) body
        simp only [decClockHOLFinite] at this ⊢
        omega
      by_cases hg : Good (evaluateHOLFiniteState (decClockHOLFinite s) body).1
      · obtain ⟨hex, hd'⟩ := hstep hg
        rcases hex with h | h
        · rw [h]; exact ih _ hlt _ rfl hd'
        · rw [h]; exact ih _ hlt _ rfl hd'
      · cases ho : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 with
        | none => rw [ho] at hg; exact absurd good_none hg
        | some r =>
            rw [ho] at hg
            cases r with
            | «continue» => exact absurd (by simp [Good]) hg
            | «break» => exact absurd (by simp [Good]) hg
            | _ => simpa using hg
  suffices H : ∀ n (s : PanSemStateFiniteExact 64 σ), InCtx s X → I s →
      (CondTrue s c → ¬ Doomed s → μ s < n) →
      Good (evaluateHOLFiniteState s (.while c body)).1 →
      s.clock ≤ (evaluateHOLFiniteState s (.while c body)).2.clock + n * (Bb + 1) ∧
        InCtx (evaluateHOLFiniteState s (.while c body)).2 X by
    intro s hs hI hg
    exact H (M + 1) s hs hI (fun h hd => by have := hM s hs hI h hd; omega) hg
  intro n
  induction n with
  | zero =>
      intro s hs hI hμ hg
      have hnd : ¬ Doomed s := fun hd => never _ s rfl hd hg
      revert hg
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c body)]
      dsimp only
      split
      · rename_i w hw
        split
        · rename_i hne
          exact absurd (hμ ⟨w, hw, hne⟩ hnd) (Nat.not_lt_zero _)
        · intro _; exact ⟨by (try dsimp only); omega, hs⟩
      · intro _; exact ⟨by (try dsimp only); omega, hs⟩
  | succ n ih =>
      intro s hs hI hμ hg
      have hnd : ¬ Doomed s := fun hd => never _ s rfl hd hg
      revert hg
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c body)]
      dsimp only
      split
      · rename_i w hw
        split
        · rename_i hne
          have hcond : CondTrue s c := ⟨w, hw, hne⟩
          split
          · intro hto; exact absurd rfl hto.1
          · rename_i hclock
            have hpos : 0 < s.clock := Nat.pos_of_ne_zero hclock
            have hdecs : InCtx (decClockHOLFinite s) X := hs
            have hcl : (decClockHOLFinite s).clock + 1 = s.clock := by
              simp [decClockHOLFinite]; omega
            have hμs : μ s < n + 1 := hμ hcond hnd
            cases ho : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 with
            | none =>
              simp only []
              intro hto
              obtain ⟨b1, b2⟩ := hbody _ hdecs (by rw [ho]; simp [Good])
              obtain ⟨hI', hlt⟩ := hdec s hs hI hcond hpos hnd (Or.inl ho)
              obtain ⟨r1, r2⟩ := ih _ b2 hI' (fun _ _ => by omega) hto
              exact ⟨by rw [Nat.succ_mul]; omega, r2⟩
            | some r =>
              cases r with
              | «continue» =>
                simp only []
                intro hto
                obtain ⟨b1, b2⟩ := hbody _ hdecs (by rw [ho]; simp [Good])
                obtain ⟨hI', hlt⟩ := hdec s hs hI hcond hpos hnd (Or.inr ho)
                obtain ⟨r1, r2⟩ := ih _ b2 hI' (fun _ _ => by omega) hto
                exact ⟨by rw [Nat.succ_mul]; omega, r2⟩
              | «break» =>
                simp only []
                intro _
                obtain ⟨b1, b2⟩ := hbody _ hdecs (by rw [ho]; simp [Good])
                exact ⟨by (try dsimp only); rw [Nat.succ_mul]; omega, b2⟩
              | _ =>
                simp only []
                intro hto
                obtain ⟨b1, b2⟩ := hbody _ hdecs (by rw [ho]; exact hto)
                exact ⟨by (try dsimp only); rw [Nat.succ_mul]; omega, b2⟩
        · intro _; exact ⟨by (try dsimp only); omega, hs⟩
      · intro _; exact ⟨by (try dsimp only); omega, hs⟩

/-- The `hdec` premise from a Hoare triple of the body. -/
theorem hdecI_of_hoare {c : ExpHOL 64} {body : ProgHOL 64}
    (I : PanSemStateFiniteExact 64 σ → Prop) (μ : PanSemStateFiniteExact 64 σ → Nat)
    (E : PanSemStateFiniteExact 64 σ → Prop)
    (hI : ∀ s, I s → I (decClockHOLFinite s)) (hμ : ∀ s, μ (decClockHOLFinite s) = μ s)
    (hE : ∀ s, E s → E (decClockHOLFinite s))
    (h : ∀ k, Hoare σ X (fun s => I s ∧ E s ∧ CondTrue s c ∧ μ s = k) body
      (fun r t => r = none ∨ r = some .continue → I t ∧ μ t < k)) :
    ∀ s : PanSemStateFiniteExact 64 σ, InCtx s X → I s → CondTrue s c → E s →
      ((evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none ∨
        (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = some .continue) →
      I (evaluateHOLFiniteState (decClockHOLFinite s) body).2 ∧
        μ (evaluateHOLFiniteState (decClockHOLFinite s) body).2 < μ s := by
  intro s hs hIs hc he hexit
  have hc' : CondTrue (decClockHOLFinite s) c := condTrue_decClock.mpr hc
  have := h (μ s) (decClockHOLFinite s) hs ⟨hI s hIs, hE s he, hc', hμ s⟩
    (by rcases hexit with h | h <;> rw [h] <;> simp)
  exact this hexit

/-! ## The nonzero-word count -/

open Classical in
/-- Number of addresses holding something other than the zero word. -/
noncomputable def phi (M : BitVec 64 → HolWordLab 64) : Nat :=
  (Finset.univ.filter (fun a : BitVec 64 => M a ≠ .word 0)).card

theorem phi_le (M : BitVec 64 → HolWordLab 64) : phi M ≤ 2 ^ 64 := by
  classical
  unfold phi
  calc _ ≤ (Finset.univ : Finset (BitVec 64)).card := Finset.card_filter_le _ _
    _ = Fintype.card (BitVec 64) := Finset.card_univ
    _ = FinEnum.card (BitVec 64) := FinEnum.card_eq_fintypeCard.symm
    _ = 2 ^ 64 := rfl

/-- A change that only writes zero words: `phi` does not grow, and stays only if nothing
changed. -/
theorem phi_mono {M M' : BitVec 64 → HolWordLab 64} (h : ∀ a, M' a ≠ M a → M' a = .word 0) :
    phi M' ≤ phi M ∧ (phi M' = phi M → M' = M) := by
  classical
  have hsub : Finset.univ.filter (fun a : BitVec 64 => M' a ≠ .word 0) ⊆
      Finset.univ.filter (fun a : BitVec 64 => M a ≠ .word 0) := by
    intro a ha
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at ha ⊢
    intro h0
    by_cases hd : M' a = M a
    · exact ha (hd.trans h0)
    · exact ha (h a hd)
  refine ⟨by unfold phi; exact Finset.card_le_card hsub, fun heq => ?_⟩
  have hset := Finset.eq_of_subset_of_card_le hsub (by unfold phi at heq; omega)
  funext a
  by_contra hd
  have h0 := h a hd
  have hMa : M a ≠ .word 0 := fun e => hd (h0.trans e.symm)
  have : a ∈ Finset.univ.filter (fun a : BitVec 64 => M a ≠ .word 0) := by
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]; exact hMa
  rw [← hset] at this
  simp only [Finset.mem_filter, Finset.mem_univ, true_and] at this
  exact this h0

end InitECandidate.Solver.Spec.Mpt
