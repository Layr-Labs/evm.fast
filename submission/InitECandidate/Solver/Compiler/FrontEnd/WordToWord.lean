import InitECandidate.Solver.Compiler.FrontEnd.LoopToWord
import Flapjack.Compiler.Backend.WordToWord.Proofs.CompileSemantics

/-!
# `word_to_word` at the clock level

Flapjack's `WordToWord.compile_runs_agree` (`Compiler/Backend/WordToWord/Proofs/CompileSemantics.lean`)
keeps only result and FFI equality of `panLang_compile_word_to_word_thm`, which also gives
`rst1.clock = rst.clock`; `permute_swap_lemma3` changes only `permute`/`stack` of the final state.
`wordToWord_runStep` is `compile_runs_agree` with the clock kept (all word_to_word sub-passes at
once: `compile` = `full_compile_single` on every function), and `wordToWord_lockStep` has the
hypotheses of `word_to_word_compile_semantics` except non-`Fail`: lock-step, identical results,
offset `0`.
-/

namespace InitECandidate.Solver.Compiler.FrontEnd

open Flapjack Flapjack.WordSemStateFiniteExact Flapjack.WordProps Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Backend.WordToWord

set_option autoImplicit false

variable {width : Nat} [NeZero width]

/-- **Uniform per-clock statement, Word → Word** (identical results). -/
def WordRunStep {C F : Type} (s : WordSemStateFiniteExact width C F) (start : Nat)
    (t : WordSemStateFiniteExact width C F) (start' : Nat) (c : Nat) : Prop :=
  ∀ k r s1, wordRun s start k = (r, s1) → r ≠ some .error →
    ∃ t1, wordRun t start' (k + c) = (r, t1) ∧ t1.clock = s1.clock ∧ t1.ffi = s1.ffi

/-- `compile_runs_agree` with the final clock. -/
theorem wordToWord_runStep {C F : Type} (s : WordSemStateFiniteExact width C F)
    (l : Spt (Nat × WordLangProgHOL (BitVec width))) (start : Nat)
    (hrel : codeRel s.code l) (hnic : noInstallCode s.code)
    (hnac : noAllocCode s.code) (hnmc : noMtCode s.code) (hdom : sptDomain s.code = sptDomain l)
    (hgc : Compiler.Backend.WordSimp.gcFunConstOk s.gcFun) (hstack : s.stack = []) :
    WordRunStep s start { s with code := l } start 0 := by
  intro k q r hrun hne
  dsimp only [wordRun] at hrun ⊢
  let prog : WordLangProgHOL (BitVec width) := .call none (some start) [0] none
  let sk : WordSemStateFiniteExact width C F := { s with clock := k }
  obtain ⟨perm', H⟩ := panLang_compile_word_to_word_thm sk l start
    ⟨hrel, hnic, hnac, hnmc, hdom, hgc⟩
  have P3 := permute_swap_lemma3 prog sk perm' []
  change evaluate prog sk = (q, r) at hrun
  rw [hrun] at P3
  dsimp only at P3
  obtain ⟨perm'', stack', hP, -⟩ := P3 ⟨hne, hnac, rfl, hnic, rfl, by
    intro fr hfr
    change fr ∈ s.stack at hfr
    rw [hstack] at hfr
    cases hfr⟩
  dsimp only at H
  rw [hP] at H
  dsimp only at H
  rw [if_neg hne] at H
  rcases hT : evaluate prog { sk with code := l } with ⟨q1, r1⟩
  rw [hT] at H
  dsimp only at H
  obtain ⟨h1, h2, h3, -⟩ := H
  refine ⟨r1, ?_, h2, h3⟩
  subst h1
  rfl

/-- **`word_to_word`, clock level.** Hypotheses of Flapjack's `word_to_word_compile_semantics`
except non-`Fail` (and its unused conjuncts): every entry run of `s` (code `wprog0`) that is not
`Error` is matched by the entry run of `t` (code `wprog`) at the same clock, with identical
result, final clock and FFI state. -/
theorem wordToWord_lockStep {C F : Type} (wconf : Config) (acomf : AsmConfigExact width)
    (wprog0 : List (Nat × Nat × WordLangProgHOL (BitVec width))) (col : List (Option (Spt Nat)))
    (wprog : List (Nat × Nat × WordLangProgHOL (BitVec width)))
    (s : WordSemStateFiniteExact width C F) (start : Nat) (t : WordSemStateFiniteExact width C F)
    (hcomp : Compiler.Backend.WordToWord.compile wconf acomf wprog0 = (col, wprog))
    (hgc : Compiler.Backend.WordSimp.gcFunConstOk s.gcFun)
    (hnic : noInstallCode s.code) (hnac : noAllocCode s.code)
    (hnmc : noMtCode (sptFromAList wprog0)) (hstack : s.stack = [])
    (htc : t.code = sptFromAList wprog) (ht : t = { s with code := t.code })
    (hsc : s.code = sptFromAList wprog0) :
    WordRunStep s start t start 0 := by
  have hext := code_rel_ext_word_to_word acomf wprog0 wconf col wprog hcomp
  have hrel0 := no_mt_code_rel_ext _ _ ⟨hnmc, hext⟩
  have hdom0 : sptDomain (sptFromAList wprog0) = sptDomain (sptFromAList wprog) := by
    simp only [Compiler.Backend.WordToWord.compile, Prod.mk.injEq] at hcomp
    obtain ⟨-, rfl⟩ := hcomp
    funext n
    simp only [sptDomain, sptLookup_sptFromAList]
    rw [sptAListLookup_isSome_map_fullCompileSingle _ _ _ _ wprog0 _
      (compile_zip_length wconf wprog0)]
  rw [htc] at ht
  subst ht
  rw [← hsc] at hrel0 hdom0 hnmc
  exact wordToWord_runStep s (sptFromAList wprog) start hrel0 hnic hnac hnmc hdom0 hgc hstack

end InitECandidate.Solver.Compiler.FrontEnd
