import InitECandidate.Solver.SourceCost.Steps

/-!
# Loops whose counter orbit decides termination

If a loop's condition depends only on a counter `i` (and on context the body keeps
fixed), the body adds a constant `k` to `i`, and the body can only leave the loop by
an error or a time-out, then a covered run makes at most `2 ^ width` iterations: after
`2 ^ width` steps the counter orbit repeats, so a loop that has not exited by then
never exits. Such "doomed" loops never produce a good result, so they need no bound.
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-- Generic measure rule with a "doomed" escape: doomed states keep the loop running
forever, so they never yield a good result. -/
theorem cost_while_doomed {c : ExpHOL width} {body : ProgHOL width} {Bb : Nat}
    (μ : PanSemStateFiniteExact width σ → Nat) (M : Nat)
    (Doomed : PanSemStateFiniteExact width σ → Prop)
    (hbody : Cost σ X body Bb)
    (hM : ∀ s : PanSemStateFiniteExact width σ, InCtx s X → CondTrue s c → ¬ Doomed s →
      μ s ≤ M)
    (hdec : ∀ s : PanSemStateFiniteExact width σ, InCtx s X → CondTrue s c → 0 < s.clock →
      ¬ Doomed s →
      ((evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none ∨
        (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = some .continue) →
      μ (evaluateHOLFiniteState (decClockHOLFinite s) body).2 < μ s)
    (hdoom : ∀ s : PanSemStateFiniteExact width σ, Doomed s → CondTrue s c ∧
      (Good (evaluateHOLFiniteState (decClockHOLFinite s) body).1 →
        ((evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none ∨
          (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = some .continue) ∧
        Doomed (evaluateHOLFiniteState (decClockHOLFinite s) body).2)) :
    Cost σ X (.while c body) ((M + 1) * (Bb + 1)) := by
  -- Part 1: doomed states never give a good result.
  have never : ∀ k (s : PanSemStateFiniteExact width σ), s.clock = k → Doomed s →
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
  -- Part 2: measure induction on non-doomed states.
  suffices H : ∀ n (s : PanSemStateFiniteExact width σ), InCtx s X →
      (CondTrue s c → ¬ Doomed s → μ s < n) →
      Good (evaluateHOLFiniteState s (.while c body)).1 →
      s.clock ≤ (evaluateHOLFiniteState s (.while c body)).2.clock + n * (Bb + 1) ∧
        InCtx (evaluateHOLFiniteState s (.while c body)).2 X by
    intro s hs hg
    exact H (M + 1) s hs (fun h hd => by have := hM s hs h hd; omega) hg
  intro n
  induction n with
  | zero =>
      intro s hs hμ hg
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
      intro s hs hμ hg
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
              have hlt := hdec s hs hcond hpos hnd (Or.inl ho)
              obtain ⟨r1, r2⟩ := ih _ b2 (fun _ _ => by omega) hto
              exact ⟨by rw [Nat.succ_mul]; omega, r2⟩
            | some r =>
              cases r with
              | «continue» =>
                simp only []
                intro hto
                obtain ⟨b1, b2⟩ := hbody _ hdecs (by rw [ho]; simp [Good])
                have hlt := hdec s hs hcond hpos hnd (Or.inr ho)
                obtain ⟨r1, r2⟩ := ih _ b2 (fun _ _ => by omega) hto
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

/-- Number of consecutive orbit points `v, v + k, v + 2k, ...` (at most `N`) satisfying `P`. -/
def runLen (P : BitVec width → Bool) (k : BitVec width) : Nat → BitVec width → Nat
  | 0, _ => 0
  | N + 1, v => if P v then runLen P k N (v + k) + 1 else 0

theorem runLen_le (P : BitVec width → Bool) (k : BitVec width) :
    ∀ N v, runLen P k N v ≤ N
  | 0, _ => Nat.le_refl _
  | N + 1, v => by
      unfold runLen
      split
      · have := runLen_le P k N (v + k); omega
      · omega

/-- Orbit point `m` steps after `v`. -/
def orbit (k v : BitVec width) : Nat → BitVec width
  | 0 => v
  | m + 1 => orbit k v m + k

theorem orbit_zero (k v : BitVec width) : orbit k v 0 = v := rfl

theorem orbit_succ (k v : BitVec width) : ∀ m, orbit k (v + k) m = orbit k v (m + 1)
  | 0 => rfl
  | m + 1 => by
      show orbit k (v + k) m + k = orbit k v (m + 1) + k
      rw [orbit_succ k v m]

theorem orbit_toNat (k v : BitVec width) :
    ∀ m, (orbit k v m).toNat = (v.toNat + m * k.toNat) % 2 ^ width
  | 0 => by simp [orbit, Nat.mod_eq_of_lt v.isLt]
  | m + 1 => by
      show (orbit k v m + k).toNat = _
      rw [BitVec.toNat_add, orbit_toNat k v m, Nat.mod_add_mod, Nat.succ_mul]
      congr 1
      omega

theorem orbit_period (k v : BitVec width) : orbit k v (2 ^ width) = v := by
  apply BitVec.eq_of_toNat_eq
  rw [orbit_toNat, Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt v.isLt]

theorem runLen_eq_iff (P : BitVec width → Bool) (k : BitVec width) :
    ∀ N v, runLen P k N v = N ↔ ∀ m < N, P (orbit k v m) = true
  | 0, v => by simp [runLen]
  | N + 1, v => by
      unfold runLen
      split
      · rename_i hp
        rw [Nat.add_right_cancel_iff, runLen_eq_iff P k N (v + k)]
        constructor
        · intro h m hm
          cases m with
          | zero => rw [orbit_zero]; exact hp
          | succ m => rw [← orbit_succ]; exact h m (by omega)
        · intro h m hm
          rw [orbit_succ]; exact h (m + 1) (by omega)
      · rename_i hp
        constructor
        · intro h; omega
        · intro h; exact absurd (by simpa [orbit_zero] using h 0 (by omega)) hp

theorem runLen_succ_of_lt (P : BitVec width → Bool) (k : BitVec width) :
    ∀ N v, runLen P k N v < N → runLen P k (N + 1) v = runLen P k N v
  | 0, v, h => by simp at h
  | N + 1, v, h => by
      unfold runLen at h ⊢
      split
      · rename_i hp
        simp only [hp, if_true] at h
        rw [runLen_succ_of_lt P k N (v + k) (by omega)]
      · rfl

/-- The body leaves the loop only by an error or a time-out. -/
def NoExit (σ : Type) (p : ProgHOL width) : Prop :=
  ∀ s : PanSemStateFiniteExact width σ, Good (evaluateHOLFiniteState s p).1 →
    (evaluateHOLFiniteState s p).1 = none ∨ (evaluateHOLFiniteState s p).1 = some .continue

end InitECandidate.Solver.SourceCost
