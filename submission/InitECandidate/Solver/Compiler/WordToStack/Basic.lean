import Flapjack.Compiler.Backend.WordToStack.Proofs.CompCorrect.Assembly
import Flapjack.Compiler.Backend.Semantics.WordSem.Props.EvaluateConsts
import Flapjack.Compiler.Backend.Semantics.WordSem.Props.NoInstallEvaluate

/-!
# Bounded word → stack `comp_correct`: statement and generic lemmas

Bounded counterpart of Flapjack's `Seq.Simulation`
(`Flapjack/Compiler/Backend/WordToStack/Proofs/CompCorrect/Seq.lean`, the whole
`comp_correct` induction motive), pinned flapjack rev
034bb5a1ed0b757082768d5406206bd2f8e31b7c.

* `wsize p` is a hand-made node count of a word program: every constructor counts `1`, and
  `Seq`, `If`, `Loop`, `MustTerminate` and the return/exception handlers of `Call` add the
  sizes of their sub-programs. Numeric payloads are ignored (unlike `sizeOf`).
* `CodeBoundedW S s`: every procedure body in `s.code`, and every program the compile oracle
  of `s` can install, has `wsize ≤ S`. It is preserved by evaluation
  (`codeBoundedW_evaluate`, `CodeBoundedW/Preserve.lean`).
* `SimB ac S p s` is `Seq.Simulation ac p s` (same premises, same conclusion) under the extra
  hypotheses `wsize p ≤ S` and `CodeBoundedW S s`, with the extra stack clock bounded in
  potential form:
  `extraClock + (S + 1) * sourcePost.clock ≤ (S + 1) * source.clock + wsize p`.
  Since the word clock never increases, this is
  `extraClock ≤ (S + 1) * (source.clock - sourcePost.clock) + wsize p`.
-/

namespace InitECandidate.Solver.Compiler.WordToStack

open Flapjack Flapjack.WordToStackProofs Flapjack.WordToStackProofs.CompCorrect
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native

set_option autoImplicit false

/-- Node count of a word program. -/
def wsize {α : Type} : WordLangProgHOL α → Nat
  | .mustTerminate p => wsize p + 1
  | .call none _ _ none => 1
  | .call (some (_, _, r, _, _)) _ _ none => wsize r + 1
  | .call none _ _ (some (_, h, _, _)) => wsize h + 1
  | .call (some (_, _, r, _, _)) _ _ (some (_, h, _, _)) => wsize r + wsize h + 1
  | .seq a b => wsize a + wsize b + 1
  | .ite _ _ _ a b => wsize a + wsize b + 1
  | .loop _ b _ => wsize b + 1
  | _ => 1

theorem one_le_wsize {α : Type} (p : WordLangProgHOL α) : 1 ≤ wsize p := by
  cases p with
  | call ret dest args handler =>
    rcases ret with _ | ⟨_, _, r, _, _⟩ <;> rcases handler with _ | ⟨_, h, _, _⟩ <;>
      simp [wsize]
  | _ => simp [wsize]

section
variable {width : Nat} [NeZero width] {C F : Type}

/-- Every procedure body of the code table, and every program the compile oracle can
install, has `wsize ≤ S`. -/
def CodeBoundedW (S : Nat) (s : WordSemStateFiniteExact width C F) : Prop :=
  (∀ n a p, sptLookup n s.code = some (a, p) → wsize p ≤ S) ∧
  (∀ i, ∀ e ∈ (s.compileOracle i).2, wsize e.2.2 ≤ S)

theorem CodeBoundedW.of_eq {S : Nat} {s t : WordSemStateFiniteExact width C F}
    (hc : t.code = s.code) (ho : t.compileOracle = s.compileOracle) (h : CodeBoundedW S s) :
    CodeBoundedW S t := by
  refine ⟨?_, ?_⟩
  · intro n a p hl; rw [hc] at hl; exact h.1 n a p hl
  · intro i e he; rw [ho] at he; exact h.2 i e he

/-- `CodeBoundedW` only reads `code` and `compileOracle`. -/
theorem CodeBoundedW.congr {S : Nat} {s t : WordSemStateFiniteExact width C F}
    (hc : t.code = s.code) (ho : t.compileOracle = s.compileOracle) :
    CodeBoundedW S t ↔ CodeBoundedW S s :=
  ⟨fun h => CodeBoundedW.of_eq hc.symm ho.symm h, fun h => CodeBoundedW.of_eq hc ho h⟩

/-- The bounded `comp_correct` motive: Flapjack's `Seq.Simulation` with the code-size
hypotheses and the potential-form bound on the extra stack clock. -/
def SimB (ac : AsmConfigExact width) (S : Nat) (program : WordLangProgHOL (BitVec width))
    (source : WordSemStateFiniteExact width (Nat × C) F) : Prop :=
  ∀ (k f frame : Nat)
    (sourcePost : WordSemStateFiniteExact width (Nat × C) F)
    (target : StackSemStateFiniteExact width C F)
    (result : Option (WordSemResult width))
    (bs bsPost : AppList (BitVec width)) (n nPost : Nat)
    (compiled : HolProg width) (lens : List Nat),
    (WordSemStateFiniteExact.evaluate program source = (result, sourcePost) ∧
      result ≠ some .error ∧ stateRel ac k f frame source target lens 0 ∧
      postAllocConventionsHOL k program = true ∧ flatExpConventions program = true ∧
      compNative ac false program (bs, n) (k, f, frame) = (compiled, (bsPost, nPost)) ∧
      (appListAppend bs).length ≤ n ∧
      n - (appListAppend bs).length ≤ target.bitmaps.length ∧
      List.IsPrefix (appListAppend bsPost) (target.bitmaps.drop (n - (appListAppend bs).length)) ∧
      (∀ loc, StackSem.getLabelsExact compiled loc → StackSem.locCheckExact target.code loc) ∧
      maxVarHOL program < 2 * frame + 2 * k) →
    wsize program ≤ S → CodeBoundedW S source →
    ∃ (extraClock : Nat) (targetPost : StackSemStateFiniteExact width C F)
      (targetResult : Option (StackSemResult width)),
      StackSemEvaluate.evaluate (compiled, {target with clock := target.clock + extraClock}) =
        (targetResult, targetPost) ∧
      compCorrectResult ac k f frame source sourcePost targetPost result targetResult lens ∧
      extraClock + (S + 1) * sourcePost.clock ≤ (S + 1) * source.clock + wsize program

/-- The unbounded motive holds everywhere (Flapjack's `compCorrect`); used to feed the
Flapjack helpers whose IH arguments are only used for source-side facts. -/
theorem simAll (ac : AsmConfigExact width) (program : WordLangProgHOL (BitVec width))
    (source : WordSemStateFiniteExact width (Nat × C) F) : Seq.Simulation ac program source :=
  fun k f frame sourcePost target result bs bsPost n nPost compiled lens h =>
    CompCorrect.compCorrect ac program source k f frame sourcePost target result bs bsPost n nPost
      compiled lens h

/-- Witness `0` satisfies the bound (the word clock never increases). -/
theorem boundZero (S : Nat) {p : WordLangProgHOL (BitVec width)}
    {s s' : WordSemStateFiniteExact width (Nat × C) F} {r : Option (WordSemResult width)}
    (h : WordSemStateFiniteExact.evaluate p s = (r, s')) :
    0 + (S + 1) * s'.clock ≤ (S + 1) * s.clock + wsize p := by
  have := (WordSemStateFiniteExact.evaluate_clock p s r s' h).1
  have := Nat.mul_le_mul_left (S + 1) this
  omega

/-- Witness `1` satisfies the bound (every program has `wsize ≥ 1`). -/
theorem boundOne (S : Nat) {p : WordLangProgHOL (BitVec width)}
    {s s' : WordSemStateFiniteExact width (Nat × C) F} {r : Option (WordSemResult width)}
    (h : WordSemStateFiniteExact.evaluate p s = (r, s')) :
    1 + (S + 1) * s'.clock ≤ (S + 1) * s.clock + wsize p := by
  have := (WordSemStateFiniteExact.evaluate_clock p s r s' h).1
  have := Nat.mul_le_mul_left (S + 1) this
  have := one_le_wsize p
  omega

/-- The potential form gives the `Δ` form. -/
theorem bound_sub {S e a b w : Nat} (h : e + (S + 1) * b ≤ (S + 1) * a + w) :
    e ≤ (S + 1) * (a - b) + w := by
  rw [Nat.mul_sub]
  omega

example (S a b c e1 e2 w1 w2 : Nat) (h1 : e1 + (S + 1) * b ≤ (S + 1) * a + w1)
    (h2 : e2 + (S + 1) * c ≤ (S + 1) * b + w2) :
    e1 + e2 + (S + 1) * c ≤ (S + 1) * a + (w1 + w2 + 1) := by
  omega

end

end InitECandidate.Solver.Compiler.WordToStack
