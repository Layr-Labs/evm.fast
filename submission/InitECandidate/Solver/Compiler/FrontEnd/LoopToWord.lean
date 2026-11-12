import Flapjack.Pancake.LoopToWord.Proofs.StateRelImpSemantics

/-!
# `loop_to_word` at the clock level

Flapjack's `LoopToWord.CompileCorrect.compileCorrect` (`PropertyAt`,
`Pancake/LoopToWord/Proofs/CompileCorrect/Property.lean`) matches a Loop run with the Word run of
the compiled program from the related state at the **same clock**, with equal final FFI state;
its `resultCase` keeps `loopToWordStateRel` (hence equal final clocks) for every result except
`TimeOut` and `FinalFFI`, where only the result is related. `stateRelImpSemantics` uses this at
the entry call with `refine ⟨0, _⟩`.

`loopToWord_runStep` restates that per-clock fact for the entry runs (`loopRun`, `wordRun`, the
run families of `LoopSemStateFiniteExact.semantics` and `WordSemStateFiniteExact.semantics`):
same clock, related result (`loopWordRes`), equal final FFI state, and equal final clock unless
the result is `FinalFFI` (see `Loop.lean`/`ChainB.lean` for that case).
-/

namespace InitECandidate.Solver.Compiler.FrontEnd

open Flapjack Flapjack.LoopToWord.CompileCorrect

set_option autoImplicit false

variable {width : Nat} [NeZero width]

/-- The entry run of `LoopSemStateFiniteExact.semantics s start` at clock `k`. -/
noncomputable abbrev loopRun {F : Type} (s : LoopSemStateFiniteExact width F) (start : Nat)
    (k : Nat) : Option (LoopSemStateFiniteExact.LoopResultExact width) ×
      LoopSemStateFiniteExact width F :=
  LoopSemStateFiniteExact.evaluate (.call none (some start) [] none : HolLoopProg width)
    { s with clock := k }

/-- The entry run of `WordSemStateFiniteExact.semantics t start` at clock `k`. -/
noncomputable abbrev wordRun {C F : Type} (t : WordSemStateFiniteExact width C F) (start : Nat)
    (k : Nat) : Option (WordSemResult width) × WordSemStateFiniteExact width C F :=
  WordSemStateFiniteExact.evaluate (.call none (some start) [0] none : WordLangProgHOL (BitVec width))
    { t with clock := k }

/-- The result correspondence of `resultCase` at the entry call (return value `Loc 1 0`). -/
def loopWordRes : Option (LoopSemStateFiniteExact.LoopResultExact width) →
    Option (WordSemResult width) → Prop
  | none, r' => r' = none
  | some (.result v), r' => r' = some (.result (.loc 1 0) v)
  | some (.exception _), r' => r' ≠ some .error → ∃ u1 u2, r' = some (.exception u1 u2)
  | some (.break n), r' => r' = some (.break n)
  | some (.continue n), r' => r' = some (.continue n)
  | some .timeOut, r' => r' = some .timeOut
  | some (.finalFfi f), r' => r' = some (.finalFfi f)
  | some .error, _ => False

/-- **`loop_to_word`, clock level.** Hypotheses of Flapjack's `stateRelImpSemantics` except the
start lookup and non-`Fail`. -/
theorem loopToWord_runStep {C F : Type} (s : LoopSemStateFiniteExact width F)
    (t : WordSemStateFiniteExact width C F) (start : Nat)
    (hsr : loopToWordStateRelHOLExact s t) (hemp : sptIsEmpty s.locals = true)
    (hdim : goodDimindex width) (hret : sptLookup 0 t.locals = some (WordLocW.loc 1 0)) :
    ∀ k r s1, loopRun s start k = (r, s1) → r ≠ some .error →
      ∃ r' t1, wordRun t start k = (r', t1) ∧ loopWordRes r r' ∧ t1.ffi = s1.ffi ∧
        ((∀ f, r ≠ some (.finalFfi f)) → r ≠ some .timeOut → t1.clock = s1.clock) := by
  have hloc : s.locals = .ln := by
    cases h : s.locals <;> simp_all [sptIsEmpty]
  intro k res s1 hev hne
  dsimp only [loopRun, wordRun] at hev ⊢
  have hlocals : LoopToWord.localsRelHOL (makeCtxtHOL 2 [] .ln)
      ({ s with clock := k } : LoopSemStateFiniteExact width F).locals
      ({ t with clock := k } : WordSemStateFiniteExact width C F).locals := by
    show LoopToWord.localsRelHOL _ s.locals t.locals
    rw [hloc]
    exact LoopToWord.localsRelHOLMkCtxtLn 2 [] _ ⟨by decide, by decide⟩
  obtain ⟨t1, res1, hrun, hffi, hrc⟩ :=
    compileCorrect (C := C) (.call none (some start) [] none) { s with clock := k } res s1
      { t with clock := k } (makeCtxtHOL 2 [] .ln) (WordLocW.loc 1 0) (0, 0)
      ⟨hev, hne, loopToWordStateRelWithClockHOLExact s t k hsr, hlocals, hret, hdim,
        by simp [wordSemIsWordLoc], by intro x hx; simp [accVarsHOL, sptMem, sptDomain] at hx⟩
  have hcomp : (LoopToWord.compHOL (makeCtxtHOL 2 [] .ln)
      (.call none (some start) [] none : HolLoopProg width) (0, 0)).1 =
      .call none (some start) [0] none := by simp [LoopToWord.compHOL]
  rw [hcomp] at hrun
  refine ⟨res1, t1, hrun, ?_, hffi, ?_⟩
  · rcases res with _ | (_ | _ | _ | _ | _ | _ | _) <;> simp only [resultCase] at hrc <;>
      simp only [loopWordRes]
    all_goals first
      | exact hrc.2.1
      | exact hrc.2.1.symm ▸ rfl
      | exact hrc
      | exact hrc.elim
  · intro hnf hnt
    rcases res with _ | (_ | _ | _ | _ | _ | _ | _) <;> simp only [resultCase] at hrc
    all_goals first
      | exact (hnt rfl).elim
      | exact (hnf _ rfl).elim
      | exact (hrc.1.elim fun _ h => h.2.2.2.1)
      | exact (hrc.elim fun _ h => h.2.2.2.1)
      | exact (hnt rfl).elim
      | exact (hnf _ rfl).elim
      | exact hrc.elim

end InitECandidate.Solver.Compiler.FrontEnd
