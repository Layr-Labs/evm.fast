import InitECandidate.Solver.Compiler.FrontEnd.WordToWord

/-!
# Chain (b): Loop (output of `crep_to_loop`) → Word (input of `word_to_stack`), clock level

The baseline composes `loop_to_word` (`LoopToWord.stateRelImpSemantics`, from the loop state to
the source-code word state `wst0`, `Pancake/Proofs/PanToWord/StateRelImpSemantics.lean`) with
`word_to_word` (`WordToWord.word_to_word_compile_semantics`, from `wst0` to
`{ wst0 with code := sptFromAList wprog }`, `Pancake/Proofs/PanToTarget/AssemblyWordToStack.lean`
`panToTargetWordChain` and `AssemblyLabChain.lean`).

`frontEnd_chainB`: every Loop entry run at clock `k` that is neither `Error`, `TimeOut` nor an
exception is matched by the compiled Word entry run at the **same clock** `k`, with the
`loopWordRes` result, equal final FFI state, and equal final clock unless the result is
`FinalFFI`. For `FinalFFI` Flapjack's `loop_to_word` `resultCase` keeps only the result, and
neither loopSem nor wordSem has an `evaluate_clock_sub` port to recover the clock; from a minimal
Loop run (final clock `0`, which chain (a) and `crep_to_loop`'s clock-equal state relation
provide) the Word run consumes at most as much clock (`frontEnd_chainB_min`).
-/

namespace InitECandidate.Solver.Compiler.FrontEnd

open Flapjack Flapjack.WordProps Flapjack.Compiler.Encoders.Asm

set_option autoImplicit false

variable {width : Nat} [NeZero width]

theorem loopWordRes_ne_error {r : Option (LoopSemStateFiniteExact.LoopResultExact width)}
    {r' : Option (WordSemResult width)} (h : loopWordRes r r')
    (hexn : ∀ v, r ≠ some (.exception v)) : r' ≠ some .error := by
  rcases r with _ | (_ | v | _ | _ | _ | _ | _) <;> simp only [loopWordRes] at h
  all_goals first
    | (subst h; simp)
    | exact (hexn v rfl).elim

/-- **Chain (b), Loop → Word.** Offset `0`. Hypotheses: those of Flapjack's
`LoopToWord.stateRelImpSemantics` (except the start lookup and non-`Fail`) for `s` and `wst0`, and
those of `WordToWord.word_to_word_compile_semantics` (except non-`Fail`) for `wst0` (code
`wprog0`) and the compiled code `wprog`. -/
theorem frontEnd_chainB {C F : Type} (s : LoopSemStateFiniteExact width F)
    (wst0 : WordSemStateFiniteExact width C F) (start : Nat)
    (wconf : Compiler.Backend.WordToWord.Config) (ac : AsmConfigExact width)
    (wprog0 wprog : List (Nat × Nat × WordLangProgHOL (BitVec width)))
    (col : List (Option (Spt Nat)))
    (hsr : loopToWordStateRelHOLExact s wst0) (hemp : sptIsEmpty s.locals = true)
    (hdim : goodDimindex width) (hret : sptLookup 0 wst0.locals = some (WordLocW.loc 1 0))
    (hwtw : Compiler.Backend.WordToWord.compile wconf ac wprog0 = (col, wprog))
    (hgc : Compiler.Backend.WordSimp.gcFunConstOk wst0.gcFun)
    (hni0 : noInstallCode (sptFromAList wprog0)) (hna0 : noAllocCode (sptFromAList wprog0))
    (hnm0 : noMtCode (sptFromAList wprog0))
    (hcode0 : wst0.code = sptFromAList wprog0) (hstack : wst0.stack = []) :
    ∀ k r s1, loopRun s start k = (r, s1) → r ≠ some .error → r ≠ some .timeOut →
      (∀ v, r ≠ some (.exception v)) →
      ∃ r' t1, wordRun { wst0 with code := sptFromAList wprog } start k = (r', t1) ∧
        loopWordRes r r' ∧ t1.ffi = s1.ffi ∧
        ((∀ f, r ≠ some (.finalFfi f)) → t1.clock = s1.clock) := by
  intro k r s1 hrun hne hnt hexn
  obtain ⟨r', t1, ht, hrel, hffi, hclk⟩ := loopToWord_runStep s wst0 start hsr hemp hdim hret
    k r s1 hrun hne
  have hww := wordToWord_lockStep wconf ac wprog0 col wprog wst0 start
    { wst0 with code := sptFromAList wprog } hwtw hgc (hcode0 ▸ hni0) (hcode0 ▸ hna0) hnm0
    hstack rfl rfl hcode0
  obtain ⟨u1, hu, hc', hf'⟩ := hww k r' t1 ht (loopWordRes_ne_error hrel hexn)
  exact ⟨r', u1, hu, hrel, hf'.trans hffi, fun hnf => hc'.trans (hclk hnf hnt)⟩

/-- **Chain (b) from a minimal Loop run.** If the Loop run at clock `k` ends with clock `0`, the
compiled Word run at clock `k` consumes at most `k` (= the Loop consumption) ticks, exactly as
many unless the result is `FinalFFI`. -/
theorem frontEnd_chainB_min {C F : Type} {s : LoopSemStateFiniteExact width F}
    {t : WordSemStateFiniteExact width C F} {start : Nat} {k : Nat}
    {r : Option (LoopSemStateFiniteExact.LoopResultExact width)}
    {s1 : LoopSemStateFiniteExact width F} {r' : Option (WordSemResult width)}
    {t1 : WordSemStateFiniteExact width C F}
    (_hrun : loopRun s start k = (r, s1)) (_ht : wordRun t start k = (r', t1))
    (hmin : s1.clock = 0) (hclk : (∀ f, r ≠ some (.finalFfi f)) → t1.clock = s1.clock) :
    k - t1.clock ≤ k - s1.clock ∧ ((∀ f, r ≠ some (.finalFfi f)) → k - t1.clock = k - s1.clock) :=
  ⟨by omega, fun h => by rw [hclk h]⟩

end InitECandidate.Solver.Compiler.FrontEnd
