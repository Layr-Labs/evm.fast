import InitECandidate.Solver.SourceCost.LoopExtra.ShiftLoops

/-!
# Flag loops with a decreasing witness

`while again == 1 { again = 0; ... }` (the Knuth-D `qhat` correction in `divmnu`
and `bn_divmnu`) re-enters the loop only on paths that decrement `qhat` under a
condition forcing `qhat ≠ 0`. The measure is `qhat + 1` while the condition holds
and `0` otherwise.

The body facts are proved with a small normal-exit Hoare logic (`HoareN`).
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-! ## Basic facts -/

theorem wordOf_lt (s : PanSemStateFiniteExact width σ) (i : MlS) : wordOf s i < 2 ^ width := by
  unfold wordOf
  split
  · exact BitVec.isLt _
  · exact Nat.two_pow_pos _

theorem condTrue_decClock {s : PanSemStateFiniteExact width σ} {c : ExpHOL width} :
    CondTrue (decClockHOLFinite s) c ↔ CondTrue s c := by
  unfold CondTrue decClockHOLFinite
  rw [evalHOLFinite_upd_clock_eq]

theorem wordOf_setVar_ne {s : PanSemStateFiniteExact width σ} {n q : MlS} (v : ValueHOL width)
    (h : n ≠ q) : wordOf (setVarHOLFinite n v s) q = wordOf s q := by
  unfold wordOf
  simp [setVarHOLFinite, FUPDATE, h]

theorem lookup_setVar_self {s : PanSemStateFiniteExact width σ} {n : MlS} (v : ValueHOL width) :
    (setVarHOLFinite n v s).locals.lookup n = some v := by
  simp [setVarHOLFinite, FUPDATE]

theorem lookup_setVar_ne {s : PanSemStateFiniteExact width σ} {n q : MlS} (v : ValueHOL width)
    (h : n ≠ q) : (setVarHOLFinite n v s).locals.lookup q = s.locals.lookup q := by
  simp [setVarHOLFinite, FUPDATE, h]

/-! ## Normal-exit Hoare triples -/

/-- If `p` ends normally from a state satisfying `P`, the final state satisfies `Q`. -/
def HoareN (σ : Type) (P : PanSemStateFiniteExact width σ → Prop) (p : ProgHOL width)
    (Q : PanSemStateFiniteExact width σ → Prop) : Prop :=
  ∀ s, P s → (evaluateHOLFiniteState s p).1 = none → Q (evaluateHOLFiniteState s p).2

theorem hoare_skip {P Q : PanSemStateFiniteExact width σ → Prop} (h : ∀ s, P s → Q s) :
    HoareN σ P (.skip : ProgHOL width) Q := by
  intro s hs _
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  exact h s hs

theorem hoare_seq {P R Q : PanSemStateFiniteExact width σ → Prop} {a b : ProgHOL width}
    (ha : HoareN σ P a R) (hb : HoareN σ R b Q) : HoareN σ P (.seq a b) Q := by
  intro s hs
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none =>
      intro h2
      exact hb _ (ha s hs h1) h2
  | some r =>
      intro h2
      simp only [h1] at h2
      cases h2

theorem hoare_ite {P Q : PanSemStateFiniteExact width σ → Prop} {c : ExpHOL width}
    {a b : ProgHOL width}
    (ha : HoareN σ (fun s => P s ∧ CondTrue s c) a Q) (hb : HoareN σ P b Q) :
    HoareN σ P (.ite c a b) Q := by
  intro s hs
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
  dsimp only
  split
  · rename_i w hw
    split
    · exact hb s hs
    · rename_i hne
      exact ha s ⟨hs, w, hw, hne⟩
  · intro h; cases h

theorem hoare_assign {P Q : PanSemStateFiniteExact width σ → Prop} {n : MlS} {e : ExpHOL width}
    (h : ∀ s, P s → ∀ v, @evalHOLFinite width σ _ s
      (fun a => Classical.propDecidable (s.memaddrs a)) e = some v →
        Q (setVarHOLFinite n v s)) :
    HoareN σ P (.assign .local n e) Q := by
  intro s hs
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.assign .local n e)]
  dsimp only
  split
  · intro h; cases h
  · rename_i v hv
    split
    · intro _
      exact h s hs v hv
    · intro h; cases h

/-- A local assignment that leaves `q` alone keeps any fact about `wordOf _ q`. -/
theorem hoare_assign_keep {R : Nat → Prop} {n q : MlS} {e : ExpHOL width} (hn : n ≠ q) :
    HoareN σ (fun s => R (wordOf s q)) (.assign .local n e) (fun s => R (wordOf s q)) :=
  hoare_assign fun s hs v _ => by rw [wordOf_setVar_ne v hn]; exact hs

/-! ## Conditions -/

/-- `f == k` is true only when `f` holds the word `k`. -/
theorem condEq_lookup {s : PanSemStateFiniteExact width σ} {f : MlS} {k : BitVec width}
    (h : CondTrue s (.cmp .equal (.var .local f) (.const k))) :
    s.locals.lookup f = some (.val (.word k)) := by
  obtain ⟨v, hv, hc⟩ := (condB2_iff s .equal f k).mp h
  simp [wordCmpHOL] at hc
  rw [hv, hc]

/-- `x <+ z` forces `z` to evaluate to a nonzero word. -/
theorem condLower_right {s : PanSemStateFiniteExact width σ} {x z : ExpHOL width}
    (h : CondTrue s (.cmp .lower x z)) :
    ∃ r : BitVec width, @evalHOLFinite width σ _ s
      (fun a => Classical.propDecidable (s.memaddrs a)) z = some (.val (.word r)) ∧ r ≠ 0 := by
  obtain ⟨w, hw, hne⟩ := h
  simp only [evalHOLFinite, evalHOLExact] at hw
  split at hw
  · rename_i l r hl hr
    refine ⟨r, hr, ?_⟩
    rintro rfl
    simp [wordCmpHOL, BitVec.lt_def] at hw
    exact hne hw.symm
  · simp at hw

/-- A nonzero product `q * y` has a nonzero word factor `q`. -/
theorem evalMul_nz {s : PanSemStateFiniteExact width σ} {y : ExpHOL width} {q : MlS}
    {r : BitVec width}
    (h : @evalHOLFinite width σ _ s (fun a => Classical.propDecidable (s.memaddrs a))
      (.panop .mul [.var .local q, y]) = some (.val (.word r))) (hr : r ≠ 0) :
    ∃ w : BitVec width, s.locals.lookup q = some (.val (.word w)) ∧ w ≠ 0 := by
  simp only [evalHOLFinite, evalHOLExact, evalListHOLExact] at h
  cases hq : s.locals.lookup q with
  | none => simp [hq] at h
  | some vq =>
    cases hy : @evalHOLExact width σ _ s.toExact
        (fun a => Classical.propDecidable (s.memaddrs a)) y with
    | none => simp [hq, hy] at h
    | some vy =>
      rcases vq with ⟨⟨a⟩⟩ | _ | _ <;> rcases vy with ⟨⟨b⟩⟩ | _ | _ <;>
        simp [hq, hy, valueIsWord, valueWord, panOpHOL] at h
      refine ⟨a, rfl, ?_⟩
      rintro rfl
      simp at h
      exact hr h.symm

/-- `X <+ q * Y` forces `q ≠ 0`. -/
theorem condLowerMul_nz {s : PanSemStateFiniteExact width σ} {x y : ExpHOL width} {q : MlS}
    (h : CondTrue s (.cmp .lower x (.panop .mul [.var .local q, y]))) :
    ∃ w : BitVec width, s.locals.lookup q = some (.val (.word w)) ∧ w ≠ 0 := by
  obtain ⟨r, hr, hr0⟩ := condLower_right h
  exact evalMul_nz hr hr0

/-! ## The flag-loop measure rule -/

/-- A loop that re-enters only when `wordOf _ q` has strictly decreased. -/
theorem cost_while_flag {c : ExpHOL width} {body : ProgHOL width} {B : Nat} (q : MlS)
    (hb : Cost σ X body B) (hnc : NoCont σ body)
    (hpost : ∀ V, HoareN σ (fun s => CondTrue s c ∧ wordOf s q = V) body
      (fun t => ¬ CondTrue t c ∨ wordOf t q < V)) :
    Cost σ X (.while c body) ((2 ^ width + 1) * (B + 1)) := by
  classical
  refine cost_while (fun s => if CondTrue s c then wordOf s q + 1 else 0) (2 ^ width) hb ?_ ?_
  · intro s _ _
    split <;> (have := wordOf_lt s q; omega)
  · intro s _ hcond _ hexit
    have hexit' : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none := by
      rcases hexit with h | h
      · exact h
      · exact absurd h (hnc _)
    have hpo := hpost (wordOf s q) (decClockHOLFinite s)
      ⟨condTrue_decClock.mpr hcond, rfl⟩ hexit'
    rw [if_pos hcond]
    split
    · rename_i hc'
      rcases hpo with h | h
      · exact absurd hc' h
      · omega
    · omega

/-! ## The Knuth-D correction body -/

/-- `f = z; if c1 { if X <+ q * Y { q = q - 1; r = E; f = k } }` with `z ≠ k`. -/
theorem hoare_knuthD {f q r : MlS} {k z : BitVec width} {c1 x y e : ExpHOL width}
    (hz : z ≠ k) (hfq : f ≠ q) (hrq : r ≠ q) (V : Nat) :
    HoareN σ (fun s => CondTrue s (.cmp .equal (.var .local f) (.const k)) ∧ wordOf s q = V)
      (.seq (.assign .local f (.const z))
        (.ite c1
          (.ite (.cmp .lower x (.panop .mul [.var .local q, y]))
            (.seq (.assign .local q (.op .sub [.var .local q, .const 1]))
              (.seq (.assign .local r e) (.assign .local f (.const k))))
            .skip)
          .skip))
      (fun t => ¬ CondTrue t (.cmp .equal (.var .local f) (.const k)) ∨ wordOf t q < V) := by
  -- after `f = z`: the condition is false and `q` is unchanged
  let P1 : PanSemStateFiniteExact width σ → Prop := fun s =>
    s.locals.lookup f = some (.val (.word z)) ∧ wordOf s q = V
  have stop : ∀ s, P1 s → ¬ CondTrue s (.cmp .equal (.var .local f) (.const k)) := by
    intro s hs hc
    have := condEq_lookup hc
    rw [hs.1] at this
    simp at this
    exact hz this
  refine hoare_seq (R := P1) ?_ ?_
  · refine hoare_assign fun s hs v hv => ?_
    simp only [evalHOLFinite, evalHOLExact, Option.some.injEq] at hv
    subst hv
    exact ⟨lookup_setVar_self _, by rw [wordOf_setVar_ne _ hfq]; exact hs.2⟩
  refine hoare_ite ?_ (hoare_skip fun s hs => Or.inl (stop s hs))
  refine hoare_ite ?_ (hoare_skip fun s hs => Or.inl (stop s hs.1))
  refine hoare_seq (R := fun s => wordOf s q < V) ?_ ?_
  · refine hoare_assign fun s hs v hv => ?_
    obtain ⟨⟨⟨-, hV⟩, -⟩, hc2⟩ := hs
    obtain ⟨w, hw, hw0⟩ := condLowerMul_nz hc2
    simp only [evalHOLFinite, evalHOLExact, evalListHOLExact] at hv
    simp [hw, valueIsWord, valueWord, wordOpHOL, wordOp] at hv
    subst hv
    unfold wordOf
    rw [lookup_setVar_self]
    unfold wordOf at hV
    rw [hw] at hV
    subst hV
    have hpow : 1 < 2 ^ width := Nat.one_lt_two_pow (NeZero.ne width)
    have h1mod : 1 % 2 ^ width = 1 := Nat.mod_eq_of_lt hpow
    have hvn : w.toNat ≠ 0 := fun h => hw0 (BitVec.eq_of_toNat_eq (by simpa using h))
    have h1 : (1 : BitVec width) ≤ w := by
      rw [BitVec.le_def]
      simp [h1mod]; omega
    have h1' : 1#width ≤ w := h1
    show (w - 1#width).toNat < w.toNat
    rw [BitVec.toNat_sub_of_le h1']
    simp [h1mod]; omega
  refine hoare_seq (hoare_assign_keep (R := fun n => n < V) hrq) ?_
  exact hoare_assign fun s hs v _ => Or.inr (by rw [wordOf_setVar_ne v hfq]; exact hs)

/-- Recognise the Knuth-D correction loop. -/
def loopOkKnuthD (c : ExpHOL width) (b : ProgHOL width) : Bool :=
  match c, b with
  | .cmp .equal (.var .local f) (.const k),
    .seq (.assign .local f1 (.const z))
      (.ite _
        (.ite (.cmp .lower _ (.panop .mul [.var .local q, _]))
          (.seq (.assign .local q1 (.op .sub [.var .local q2, .const one]))
            (.seq (.assign .local r _) (.assign .local f2 (.const k2))))
          .skip)
        .skip) =>
      decide (f1 = f) && decide (f2 = f) && decide (q1 = q) && decide (q2 = q) &&
        decide (one = 1) && decide (k2 = k) && decide (z ≠ k) && decide (f ≠ q) &&
        decide (r ≠ q)
  | _, _ => false

theorem loopOkKnuthD_sound {c : ExpHOL width} {b : ProgHOL width} {B : Nat}
    (h : loopOkKnuthD c b = true) (hb : Cost σ X b B) :
    Cost σ X (.while c b) ((2 ^ width + 1) * (B + 1)) := by
  unfold loopOkKnuthD at h
  split at h
  · simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨⟨⟨⟨⟨⟨⟨⟨rfl, rfl⟩, rfl⟩, rfl⟩, rfl⟩, rfl⟩, hz⟩, hfq⟩, hrq⟩ := h
    exact cost_while_flag _ hb (noContB_sound _ rfl) (hoare_knuthD hz hfq hrq)
  · simp at h

end InitECandidate.Solver.SourceCost
