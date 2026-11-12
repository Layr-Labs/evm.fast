import InitECandidate.Solver.SourceCost.Frame

/-!
# Counter-loop instances of the measure rule

Generic cost lemmas for the syntactic loop shapes that occur in the guest.
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-- Unsigned value of a word local, `0` if it is absent or not a word. -/
def wordOf (s : PanSemStateFiniteExact width σ) (i : MlS) : Nat :=
  match s.locals.lookup i with
  | some (.val (.word w)) => w.toNat
  | _ => 0

theorem wordOf_le (s : PanSemStateFiniteExact width σ) (i : MlS) : wordOf s i ≤ 2 ^ width := by
  unfold wordOf
  split
  · exact Nat.le_of_lt (BitVec.isLt _)
  · exact Nat.zero_le _

/-- The countdown condition `0 < i` (signed) forces `i` to hold a nonzero word. -/
theorem countdown_cond {s : PanSemStateFiniteExact width σ} {i : MlS}
    (h : CondTrue s (.cmp .less (.const 0) (.var .local i))) :
    ∃ v : BitVec width, s.locals.lookup i = some (.val (.word v)) ∧ v ≠ 0 := by
  obtain ⟨w, hw, hne⟩ := h
  simp only [evalHOLFinite, evalHOLExact] at hw
  split at hw
  · rename_i l r hl hr
    refine ⟨r, hr, ?_⟩
    rintro rfl
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hl hw
    subst hl
    have hcmp : Compiler.Encoders.Asm.wordCmpHOL Cmp.less (0 : BitVec width) 0 = false := by
      simp only [Compiler.Encoders.Asm.wordCmpHOL, Compiler.Encoders.Asm.holAsmSignedLess]
      split <;> simp
    rw [hcmp] at hw
    exact hne (by simpa using hw.symm)
  · simp at hw

theorem eval_decrement {t : PanSemStateFiniteExact width σ} {i : MlS} {v : BitVec width}
    (hv : t.locals.lookup i = some (.val (.word v))) :
    evaluateHOLFiniteState t (.assign .local i (.op .sub [.var .local i, .const 1])) =
      (none, setVarHOLFinite i (.val (.word (v - 1))) t) := by
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  simp [evalHOLExact, evalListHOLExact, hv, wordOpHOL, wordOp, valueIsWord, valueWord,
    isValidValueHOLFinite, lookupKvarHOLFinite, setKvarHOLFinite, shapeOfHOLExact, shapeEqHOL]

/-- `while (0 < i) { i = i - 1; rest }` with `rest` not touching `i` runs at
most `2 ^ width + 1` iterations. -/
theorem cost_while_countdown {i : MlS} {rest : ProgHOL width} {Br : Nat}
    (hrest : Cost σ X rest Br) (hkeep : Keeps σ i rest) :
    Cost σ X (.while (.cmp .less (.const 0) (.var .local i))
      (.seq (.assign .local i (.op .sub [.var .local i, .const 1])) rest))
      ((2 ^ width + 1) * (0 + Br + 1)) := by
  refine cost_while (fun s => wordOf s i) (2 ^ width) (cost_seq (cost_assign _ _ _) hrest)
    (fun s _ _ => wordOf_le s i) ?_
  intro s _ hcond _ hexit
  obtain ⟨v, hv, hv0⟩ := countdown_cond hcond
  have hv' : (decClockHOLFinite s).locals.lookup i = some (.val (.word v)) := hv
  have hseq : evaluateHOLFiniteState (decClockHOLFinite s)
      (.seq (.assign .local i (.op .sub [.var .local i, .const 1])) rest) =
      evaluateHOLFiniteState (setVarHOLFinite i (.val (.word (v - 1))) (decClockHOLFinite s))
        rest := by
    rw [evaluateHOLFiniteState_eq_evaluate_def _ (.seq _ _)]
    dsimp only
    rw [eval_decrement hv']
  rw [hseq] at hexit ⊢
  have hk := hkeep (setVarHOLFinite i (.val (.word (v - 1))) (decClockHOLFinite s))
    (by rcases hexit with h | h
        · exact Or.inl h
        · exact Or.inr (Or.inl h))
  show wordOf _ i < wordOf s i
  unfold wordOf
  rw [hk, hv]
  simp only [setVarHOLFinite, HolFiniteMapExact.lookup_update, FUPDATE, beq_self_eq_true,
    if_true]
  have hpow : 1 < 2 ^ width := Nat.one_lt_two_pow (NeZero.ne width)
  have h1mod : 1 % 2 ^ width = 1 := Nat.mod_eq_of_lt hpow
  have hvn : v.toNat ≠ 0 := fun h => hv0 (BitVec.eq_of_toNat_eq (by simpa using h))
  have h1 : (1 : BitVec width) ≤ v := by
    rw [BitVec.le_def]
    simp [h1mod]; omega
  rw [BitVec.toNat_sub_of_le h1]
  simp [h1mod]; omega

end InitECandidate.Solver.SourceCost
