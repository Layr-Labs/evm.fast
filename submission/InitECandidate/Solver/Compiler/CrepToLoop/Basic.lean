import Flapjack.Pancake.CrepToLoop.Proofs.NCompileCorrect.Assembly
import Flapjack.Pancake.Semantics.CrepProps

/-!
# Bounded crep → loop `ncompile_correct`: sizes, code bound, motive

Bounded counterpart of Flapjack's `NCompileCorrect.PropertyAt`
(`Flapjack/Pancake/CrepToLoop/Proofs/NCompileCorrect/Property.lean`), pinned flapjack rev
034bb5a1ed0b757082768d5406206bd2f8e31b7c.

* `esize e` counts the nodes of a crep expression (`1` per constructor, children added);
  `esizeL` sums a list. The compiled code of `e` contains at most `esize e` clock-ticking
  `If`s (one per `Cmp`), see `Straight.lean`.
* `csize p` counts crep program nodes *including* expression nodes. `While` counts `2`,
  `Call` counts `3`, every other constructor `1`.
* `CodeBoundedC S s`: every body of `s.code` has `csize ≤ S`. Crep evaluation never changes
  `code` (`evaluateCodeInvariantHOL`), so the bound is preserved (`CodeBoundedC.of_eval`).
* `PropertyAtB S p s` is `PropertyAt p s` (same premises, same conclusion) under
  `csize p ≤ S` and `CodeBoundedC S s`, with the extra loop clock bounded in potential form
  `extra + (S + 1) * sourceFinal.clock ≤ (S + 1) * source.clock + csize p`.
-/

namespace InitECandidate.Solver.Compiler.CrepToLoop

open Flapjack Flapjack.Pancake.CrepToLoop.Proofs.NCompileCorrect

set_option autoImplicit false

section Sizes
variable {width : Nat} [NeZero width]

mutual
/-- Node count of a crep expression. -/
def esize : CrepExpHOL width → Nat
  | .load a => esize a + 1
  | .load32 a => esize a + 1
  | .loadByte a => esize a + 1
  | .op _ es => esizeL es + 1
  | .crepOp _ es => esizeL es + 1
  | .cmp _ a b => esize a + esize b + 1
  | .shift _ a b => esize a + esize b + 1
  | .const _ => 1
  | .var _ => 1
  | .loadGlob _ => 1
  | .baseAddr => 1
  | .topAddr => 1

/-- Summed node count of a list of crep expressions. -/
def esizeL : List (CrepExpHOL width) → Nat
  | [] => 0
  | e :: es => esize e + esizeL es
end

/-- Node count of a crep program, including its expression nodes. -/
def csize : CrepProgHOL width → Nat
  | .skip => 1
  | .dec _ e b => esize e + csize b + 1
  | .assign _ e => esize e + 1
  | .primitive _ _ _ => 1
  | .store a v => esize a + esize v + 1
  | .store32 a v => esize a + esize v + 1
  | .storeByte a v => esize a + esize v + 1
  | .storeGlob _ e => esize e + 1
  | .seq a b => csize a + csize b + 1
  | .ite e a b => esize e + csize a + csize b + 1
  | .while e b => esize e + csize b + 2
  | .break _ => 1
  | .continue _ => 1
  | .call none _ args => esizeL args + 3
  | .call (some (_, none)) _ args => esizeL args + 3
  | .call (some (_, some (_, h))) _ args => esizeL args + csize h + 3
  | .extCall _ _ _ _ _ => 1
  | .raise _ => 1
  | .return es => esizeL es + 1
  | .shMem _ _ e => esize e + 1
  | .tick => 1

theorem one_le_esize (e : CrepExpHOL width) : 1 ≤ esize e := by
  cases e <;> simp [esize]

theorem one_le_csize (p : CrepProgHOL width) : 1 ≤ csize p := by
  cases p with
  | call ret f args =>
    rcases ret with _ | ⟨_, _ | ⟨_, h⟩⟩ <;> simp [csize]
  | _ => simp [csize]

theorem csize_call_ge (c : Option (List Nat × Option (BitVec width × CrepProgHOL width)))
    (f : Flapjack.Basis.Pure.MlString.MlString) (args : List (CrepExpHOL width)) :
    esizeL args + 3 ≤ csize (.call c f args) := by
  rcases c with _ | ⟨_, _ | ⟨_, h⟩⟩ <;> simp [csize]

end Sizes

section Motive
variable {width : Nat} [NeZero width] {σ : Type}

/-- Every body of the crep code table has `csize ≤ S`. -/
def CodeBoundedC (S : Nat) (s : CrepSemHOLState width σ) : Prop :=
  ∀ f ns p, s.code.lookup f = some (ns, p) → csize p ≤ S

theorem CodeBoundedC.of_code {S : Nat} {s t : CrepSemHOLState width σ}
    (hc : t.code = s.code) (h : CodeBoundedC S s) : CodeBoundedC S t := by
  intro f ns p hl; rw [hc] at hl; exact h f ns p hl

/-- Crep evaluation preserves the code bound (it never changes `code`). -/
theorem CodeBoundedC.of_eval {S : Nat} {s s1 : CrepSemHOLState width σ}
    {p : CrepProgHOL width} {r : Option (CrepResultHOLExact width)}
    (he : evalCrepSemHOLProgExact s p = (r, s1)) (h : CodeBoundedC S s) : CodeBoundedC S s1 :=
  CodeBoundedC.of_code (evaluateCodeInvariantHOL p s r s1 he) h

/-- The bounded `ncompile_correct` motive: Flapjack's `PropertyAt` with the size and
code-bound hypotheses and the potential-form bound on the extra loop clock. -/
def PropertyAtB (S : Nat) (program : CrepProgHOL width) (source : CrepSemHOLState width σ) :
    Prop :=
  csize program ≤ S → CodeBoundedC S source →
  ∀ (result : Option (CrepResultHOLExact width))
    (sourceFinal : CrepSemHOLState width σ),
    ∀ (target : LoopSemStateFiniteExact width σ)
    (context : CrepToLoopContextExact) (live : NumSet),
    evalCrepSemHOLProgExact source program = (result, sourceFinal) →
    result ≠ some .error →
    crepToLoopStateRelExact source target →
    crepToLoopMemRelHOLExact source.memory target.memory source.memaddrs →
    crepToLoopGlobalsRelHOLExact source.globals target.globals →
    crepToLoopCodeRelExact context source.code target.code →
    crepToLoopLocalsRelExact context live source.locals target.locals →
    ∃ (extra : Nat) (targetResult : Option (LoopSemStateFiniteExact.LoopResultExact width))
      (targetFinal : LoopSemStateFiniteExact width σ),
      LoopSemStateFiniteExact.evaluate (compileHOLExact context live program)
        { target with clock := target.clock + extra } = (targetResult, targetFinal) ∧
      crepToLoopStateRelExact sourceFinal targetFinal ∧
      crepToLoopMemRelHOLExact sourceFinal.memory targetFinal.memory sourceFinal.memaddrs ∧
      crepToLoopGlobalsRelHOLExact sourceFinal.globals targetFinal.globals ∧
      crepToLoopCodeRelExact context sourceFinal.code targetFinal.code ∧
      targetResult = resultToLoop result ∧
      localsResultRel context live result sourceFinal targetFinal ∧
      extra + (S + 1) * sourceFinal.clock ≤ (S + 1) * source.clock + csize program

end Motive

/-! Arithmetic helpers for the potential form (products are atoms for `omega`). -/

theorem mul_le_of_le {S a b : Nat} (h : b ≤ a) : (S + 1) * b ≤ (S + 1) * a :=
  Nat.mul_le_mul_left _ h

/-- A tick: `(S + 1) * c = (S + 1) * (c - 1) + (S + 1)` for `c ≠ 0`. -/
theorem mul_pred {S c : Nat} (h : c ≠ 0) : (S + 1) * c = (S + 1) * (c - 1) + (S + 1) := by
  obtain ⟨d, rfl⟩ := Nat.exists_eq_succ_of_ne_zero h
  simp [Nat.mul_succ]

/-- `extra + c' ≤ c + w` with `c' ≤ c` gives the potential form. -/
theorem pot_of_le {S e c c' w : Nat} (hcc : c' ≤ c) (h : e + c' ≤ c + w) :
    e + (S + 1) * c' ≤ (S + 1) * c + w := by
  have h1 : S * c' ≤ S * c := Nat.mul_le_mul_left _ hcc
  rw [Nat.succ_mul, Nat.succ_mul]
  omega

/-- The potential form gives the `Δ` form. -/
theorem bound_sub {S e a b w : Nat} (h : e + (S + 1) * b ≤ (S + 1) * a + w) :
    e ≤ (S + 1) * (a - b) + w := by
  rw [Nat.mul_sub]
  omega

end InitECandidate.Solver.Compiler.CrepToLoop
