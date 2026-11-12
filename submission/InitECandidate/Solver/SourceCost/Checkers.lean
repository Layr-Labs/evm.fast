import InitECandidate.Solver.SourceCost.CounterLoops

/-!
# Syntactic checkers for `NoCont` and `Steps`
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type}

def noContB : ProgHOL width → Bool
  | .continue => false
  | .seq a b => noContB a && noContB b
  | .ite _ a b => noContB a && noContB b
  | .dec _ _ _ b => noContB b
  | .call (some (_, some (_, _, hp))) _ _ => noContB hp
  | .decCall _ _ _ _ k => noContB k
  | _ => true

theorem noContB_sound : ∀ p : ProgHOL width, noContB p = true → NoCont σ p
  | .skip, _ => noCont_skip
  | .break, _ => noCont_break
  | .continue, h => by simp [noContB] at h
  | .annot _ _, _ => noCont_annot _ _
  | .tick, _ => noCont_tick
  | .assign _ _ _, _ => noCont_assign _ _ _
  | .primitive _ _ _, _ => noCont_primitive _ _ _
  | .store _ _, _ => noCont_store _ _
  | .store32 _ _, _ => noCont_store32 _ _
  | .storeByte _ _, _ => noCont_storeByte _ _
  | .extCall _ _ _ _ _, _ => noCont_extCall _ _ _ _ _
  | .raise _ _, _ => noCont_raise _ _
  | .return _, _ => noCont_return _
  | .shMemLoad _ _ _ _, _ => noCont_shMemLoad _ _ _ _
  | .shMemStore _ _ _, _ => noCont_shMemStore _ _ _
  | .while _ _, _ => noCont_while
  | .seq a b, h => by
      simp only [noContB, Bool.and_eq_true] at h
      exact noCont_seq (noContB_sound a h.1) (noContB_sound b h.2)
  | .ite _ a b, h => by
      simp only [noContB, Bool.and_eq_true] at h
      exact noCont_ite (noContB_sound a h.1) (noContB_sound b h.2)
  | .dec _ _ _ b, h => noCont_dec (noContB_sound b h)
  | .decCall _ _ _ _ k, h => noCont_decCall (noContB_sound k h)
  | .call none _ _, _ => noCont_call (by intro _ _ _ _ h; cases h)
  | .call (some (_, none)) _ _, _ => noCont_call (by intro _ _ _ _ h; cases h)
  | .call (some (_, some (_, _, hp))) _ _, h =>
      noCont_call (by
        intro _ _ _ _ he
        simp only [Option.some.injEq, Prod.mk.injEq] at he
        obtain ⟨-, -, -, rfl⟩ := he
        exact noContB_sound hp h)

/-- Recognize `i = i + 1` (`inc = true`) or `i = i - 1` (`inc = false`). -/
def isStepExp (i : MlS) (inc : Bool) : ExpHOL width → Bool
  | .op .add [.var .local k, .const c] => inc && decide (k = i) && decide (c = 1)
  | .op .sub [.var .local k, .const c] => !inc && decide (k = i) && decide (c = 1)
  | _ => false

def stepFun (inc : Bool) : BitVec width → BitVec width :=
  if inc then (· + 1) else (· - 1)

theorem isStepExp_sound {i : MlS} {inc : Bool} {e : ExpHOL width}
    (h : isStepExp i inc e = true) :
    Steps σ i (stepFun inc) (.assign .local i e) := by
  unfold isStepExp at h
  split at h
  · simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨⟨hinc, rfl⟩, rfl⟩ := h
    subst hinc
    exact steps_add_one _
  · simp only [Bool.and_eq_true, decide_eq_true_eq, Bool.not_eq_true'] at h
    obtain ⟨⟨hinc, rfl⟩, rfl⟩ := h
    subst hinc
    exact steps_sub_one _
  · simp at h

def stepsB (i : MlS) (inc : Bool) : ProgHOL width → Bool
  | .assign .local j e => decide (j = i) && isStepExp i inc e
  | .seq a b => (stepsB i inc a && keepsB i b) || (keepsB i a && noContB a && stepsB i inc b)
  | .dec n _ _ b => decide (n ≠ i) && stepsB i inc b
  | .decCall rn _ _ _ k => decide (rn ≠ i) && stepsB i inc k
  | _ => false

theorem stepsB_sound (i : MlS) (inc : Bool) :
    ∀ p : ProgHOL width, stepsB i inc p = true → Steps σ i (stepFun inc) p
  | .assign .local j e, h => by
      simp only [stepsB, Bool.and_eq_true, decide_eq_true_eq] at h
      obtain ⟨rfl, h⟩ := h
      exact isStepExp_sound h
  | .seq a b, h => by
      simp only [stepsB, Bool.or_eq_true, Bool.and_eq_true] at h
      rcases h with ⟨ha, hb⟩ | ⟨⟨ha, hc⟩, hb⟩
      · exact steps_seq_left (stepsB_sound i inc a ha) (keepsB_sound i b hb)
      · exact steps_seq_right (keepsB_sound i a ha) (noContB_sound a hc) (stepsB_sound i inc b hb)
  | .dec n _ _ b, h => by
      simp only [stepsB, Bool.and_eq_true, decide_eq_true_eq] at h
      exact steps_dec h.1 (stepsB_sound i inc b h.2)
  | .decCall rn _ _ _ k, h => by
      simp only [stepsB, Bool.and_eq_true, decide_eq_true_eq] at h
      exact steps_decCall h.1 (stepsB_sound i inc k h.2)
  | .assign .global _ _, h => by simp [stepsB] at h
  | .skip, h | .break, h | .continue, h | .annot _ _, h | .tick, h => by simp [stepsB] at h
  | .primitive _ _ _, h | .store _ _, h | .store32 _ _, h | .storeByte _ _, h => by
      simp [stepsB] at h
  | .extCall _ _ _ _ _, h | .raise _ _, h | .return _, h => by simp [stepsB] at h
  | .shMemLoad _ _ _ _, h | .shMemStore _ _ _, h | .ite _ _ _, h | .while _ _, h => by
      simp [stepsB] at h
  | .call _ _ _, h => by simp [stepsB] at h

end InitECandidate.Solver.SourceCost
