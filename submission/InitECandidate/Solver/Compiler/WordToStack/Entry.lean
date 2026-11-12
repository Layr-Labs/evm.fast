import InitECandidate.Solver.Compiler.WordToStack.Assembly
import Flapjack.Compiler.Backend.WordToStack.Proofs.CompileSemantics

/-!
# Bounded word → stack entry simulation

* `compCall_bounded`: Flapjack's `CompCall.compCall` (the top-level entry call
  `Call NONE (SOME start) [0] NONE`, `WordToStack/Proofs/CompCall.lean`) with the extra stack
  clock `ck ≤ (S + 1) * (s.clock - s1.clock) + 1`.
* `EntrySimulationB S s t start`: Flapjack's per-clock `StateRelSemantics.EntrySimulation` with
  the witness bounded, `ck ≤ (S + 1) * (k - s1.clock) + 1` for the word entry run from clock
  `k` ending in `s1`, and the final clocks equal (`s1.clock = t1.clock`) in the matching branch,
  so the stack entry run from clock `k + ck` consumes `(k - s1.clock) + ck` ticks.
  `EntrySimulationB.toEntrySimulation` forgets the bound, so all of Flapjack's
  `StateRelSemantics` semantics lemmas apply.
* `entrySimulationB_ofStateRel` (from `stateRel … 0 0 … 0`, `CodeBoundedW S s`) and
  `entrySimulationB_makeInit` (at `word_to_stack$make_init`, under the hypotheses of Flapjack's
  `CompileSemantics.compileSemantics` plus `wsize ≤ S` for every procedure of the word program
  and of the compile oracle).
-/

set_option autoImplicit false

namespace InitECandidate.Solver.Compiler.WordToStack

open Flapjack Flapjack.WordToStackProofs Flapjack.WordToStackProofs.CompCorrect
open Flapjack.WordToStackProofs.StateRelSemantics
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native

theorem compCall_bounded {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (hS : 1 ≤ S) :
    ∀ (start : Nat) (s : WordSemStateFiniteExact width (Nat × C) F) (k : Nat)
      (res : Option (WordSemResult width)) (s1 : WordSemStateFiniteExact width (Nat × C) F)
      (t : StackSemStateFiniteExact width C F) (lens : List Nat),
      WordSemStateFiniteExact.evaluate (.call none (some start) [0] none) s = (res, s1) ∧
      res ≠ some .error ∧ stateRel ac k 0 0 s t lens 0 → CodeBoundedW S s →
      ∃ (ck : Nat) (t1 : StackSemStateFiniteExact width C F) (res1 : Option (StackSemResult width)),
        ck ≤ (S + 1) * (s.clock - s1.clock) + 1 ∧
        StackSemEvaluate.evaluate (.call none (.inl start) none, {t with clock := t.clock + ck}) =
          (res1, t1) ∧ (1 : BitVec width) ≠ 0 ∧ (2 : BitVec width) ≠ 0 ∧
        (open Classical in if res.map compileResult = res1 then s1.ffi = t1.ffi ∧ s1.clock = t1.clock
         else res1 = some (.halt (.word 2)) ∧ List.IsPrefix t1.ffi.ioEvents s1.ffi.ioEvents ∧
           s1.stackMax.getD (s1.stackLimit + 1) > s1.stackLimit) := by
  intro start s k res s1 t lens ⟨run, notError, related⟩ hcb
  have kBound : 4 < k := related.2.2.2.2.2.2.2.2.2.1
  obtain ⟨ck, t1, res1, targetRun, resultRel, bound⟩ :=
    compCorrect_bounded ac S (.call none (some start) [0] none) s k 0 0 s1 t res
      .nil .nil t.bitmaps.length t.bitmaps.length (.seq .skip (.call none (.inl start) none)) lens
      ⟨run, notError, related, by simp [postAllocConventionsHOL, everyVarHOL, everyStackVarHOL, callArgConventionHOL, isPhyVar], by simp [flatExpConventions], by
        simp [compNative, callDestNative, seqStackFreeNative, Compiler.Backend.WordToStack.stackFree],
        by simp [appListAppend, appendAux], by simp [appListAppend, appendAux], by simp [appListAppend, appendAux],
        by simp [StackSem.getLabelsExact], by simp [maxVarHOL, maxList]; omega⟩
      (by simp only [wsize]; omega) hcb
  have wide : 8 ≤ width := by
    unfold stateRel at related
    obtain ⟨_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,h,_⟩ := related
    exact h
  have oneLt : 1 < 2 ^ width := Nat.one_lt_two_pow (by omega)
  have twoLt : 2 < 2 ^ width :=
    calc 2 < 2 ^ 8 := by norm_num
      _ ≤ 2 ^ width := Nat.pow_le_pow_right (by norm_num) wide
  refine ⟨ck, t1, res1, by simpa only [wsize] using bound,
    (CompCall.evaluateSeqSkip _ _).symm.trans targetRun, ?_, ?_, ?_⟩
  · intro h
    have := congrArg BitVec.toNat h
    simp [Nat.mod_eq_of_lt oneLt] at this
  · intro h
    have := congrArg BitVec.toNat h
    simp [Nat.mod_eq_of_lt twoLt] at this
  · unfold compCorrectResult at resultRel
    by_cases same : res.map compileResult = res1
    · rw [if_pos same]
      rw [if_neg (not_not.mpr same)] at resultRel
      have ffiClock : ∀ {f frame lens' extra} {s' : WordSemStateFiniteExact width (Nat × C) F},
          stateRel ac k f frame s' t1 lens' extra → s'.ffi = t1.ffi ∧ s'.clock = t1.clock :=
        fun rel => ⟨rel.2.2.2.1.symm, rel.1⟩
      rcases res with _ | r
      · exact ffiClock resultRel
      · cases r with
        | result _ values => exact ffiClock resultRel.1
        | exception _ value =>
          obtain ⟨nonGc, gc, rel, _, _⟩ := resultRel
          exact ffiClock (s' := pushLocals nonGc gc s1) rel
        | «break» _ => exact ffiClock resultRel
        | «continue» _ => exact ffiClock resultRel
        | _ => exact resultRel
    · rw [if_neg same]
      rw [if_pos same] at resultRel
      exact resultRel

section
variable {width : Nat} [NeZero width] {C F : Type}

/-- Bounded per-clock entry simulation. -/
def EntrySimulationB (S : Nat) (s : WordSemStateFiniteExact width (Nat × C) F)
    (t : StackSemStateFiniteExact width C F) (start : Nat) : Prop :=
  ∀ k res s1, wordEntry s start k = (res, s1) → res ≠ some .error →
    ∃ ck res1 t1, ck ≤ (S + 1) * (k - s1.clock) + 1 ∧ stackEntry t start (k + ck) = (res1, t1) ∧
      (res.map compileResult = res1 ∧ s1.ffi = t1.ffi ∧ s1.clock = t1.clock ∨
        res.map compileResult ≠ res1 ∧ res1 = some (.halt (.word 2)) ∧
          t1.ffi.ioEvents <+: s1.ffi.ioEvents ∧
          s1.stackMax.getD (s1.stackLimit + 1) > s1.stackLimit)

theorem EntrySimulationB.toEntrySimulation {S : Nat} {s : WordSemStateFiniteExact width (Nat × C) F}
    {t : StackSemStateFiniteExact width C F} {start : Nat} (h : EntrySimulationB S s t start) :
    EntrySimulation s t start := by
  intro k res s1 run notError
  obtain ⟨ck, res1, t1, -, run1, out⟩ := h k res s1 run notError
  refine ⟨ck, res1, t1, run1, ?_⟩
  rcases out with ⟨a, b, -⟩ | b
  · exact Or.inl ⟨a, b⟩
  · exact Or.inr b

/-- In the matching branch the stack entry run from clock `k + ck` consumes
`(k - s1.clock) + ck ≤ (S + 2) * (k - s1.clock) + 1` ticks. -/
theorem EntrySimulationB.consumed {S k ck : Nat} {s1 : WordSemStateFiniteExact width (Nat × C) F}
    {t1 : StackSemStateFiniteExact width C F} (hck : ck ≤ (S + 1) * (k - s1.clock) + 1)
    (hclk : s1.clock = t1.clock) (hle : s1.clock ≤ k) :
    k + ck - t1.clock ≤ (S + 2) * (k - s1.clock) + 1 := by
  rw [← hclk, show S + 2 = (S + 1) + 1 from rfl, Nat.add_mul, Nat.one_mul]
  omega

/-- The bounded entry simulation from the whole state relation at frame `0`/`0`. -/
theorem entrySimulationB_ofStateRel (ac : AsmConfigExact width) (k : Nat) (S : Nat) (hS : 1 ≤ S)
    (s : WordSemStateFiniteExact width (Nat × C) F) (t : StackSemStateFiniteExact width C F)
    (lens : List Nat) (start : Nat) (related : stateRel ac k 0 0 s t lens 0)
    (hcb : CodeBoundedW S s) :
    EntrySimulationB S s t start := by
  intro clock res s1 run notError
  have moved := SemanticsHelpers.stateRelWithClock ac k clock s t lens 0 related
  obtain ⟨ck, t1, res1, bound, targetRun, _, _, outcome⟩ :=
    compCall_bounded ac S hS start {s with clock := clock} k res s1 {t with clock := clock} lens
      ⟨run, notError, moved⟩ (CodeBoundedW.of_eq rfl rfl hcb)
  refine ⟨ck, res1, t1, bound, by simpa only [stackEntry] using targetRun, ?_⟩
  by_cases same : res.map compileResult = res1
  · rw [if_pos same] at outcome
    exact Or.inl ⟨same, outcome.1, outcome.2⟩
  · rw [if_neg same] at outcome
    exact Or.inr ⟨same, outcome⟩

end

end InitECandidate.Solver.Compiler.WordToStack

namespace Flapjack.WordToStackProofs.CompileSemantics
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open Flapjack.Compiler.Backend.WordToStack.Native.Initialization
open Flapjack.WordToStackProofs.InitializationStateRel
open InitECandidate.Solver.Compiler.WordToStack
open private sptAListLookup_eq mem_of_lookup from Flapjack.Compiler.Backend.WordToStack.Proofs.CompileSemantics

/-- **Bounded entry simulation at `word_to_stack$make_init`.** Under the hypotheses of
Flapjack's `CompileSemantics.compileSemantics` (without its non-`Fail` premise), if every
procedure of the word program `code` and every program of the compile oracle has
`wsize ≤ S` (`1 ≤ S`), then the stack entry call simulates the word entry call at every clock
`k` with extra stack clock `ck ≤ (S + 1) * (k - s1.clock) + 1`. -/
theorem entrySimulationB_makeInit {width : Nat} [NeZero width] {C F : Type}
    (asmConf : AsmConfigExact width) (code : List (Nat × Nat × WordLangProgHOL (BitVec width)))
    (t : StackSemStateFiniteExact width C F) (k : Nat)
    (coracle : Nat → (Nat × C) × List (Nat × Nat × WordLangProgHOL (BitVec width)))
    (start S : Nat) (hS : 1 ≤ S)
    (h : t.code = sptFromAList (compileNative asmConf false code).2.2.2 ∧
      k = asmConf.regCount - (5 + asmConf.avoidRegs.length) ∧
      initStateOk asmConf k t coracle ∧
      panPropsALookupEq raiseStubLocation code = none ∧
      panPropsALookupEq storeConstsStubLocation code = none ∧
      (compileNative asmConf false code).1 <+: t.bitmaps ∧
      (∀ entry ∈ code, flatExpConventions entry.2.2 = true ∧
        postAllocConventionsHOL (asmConf.regCount - (5 + asmConf.avoidRegs.length))
          entry.2.2 = true))
    (hcode : ∀ entry ∈ code, wsize entry.2.2 ≤ S)
    (horacle : ∀ i, ∀ e ∈ (coracle i).2, wsize e.2.2 ≤ S) :
    EntrySimulationB S (makeInit asmConf k t (sptFromAList code) coracle) t start := by
  classical
  obtain ⟨codeEq, kEq, ok, noRaise, noStore, bitmapsPrefix, conventions⟩ := h
  subst kEq
  rcases compiled : compileWordToStackNative asmConf false
      (asmConf.regCount - (5 + asmConf.avoidRegs.length)) code (.list [4], 1) with
    ⟨bodies, frames, output, nextIndex⟩
  simp only [compileNative, Bool.false_eq_true, if_false, compiled] at codeEq bitmapsPrefix
  have keys := mapFstCompileWordToStack asmConf false _ code (.list [4], 1) bodies
    (frames, (output, nextIndex)) compiled
  have stubsDistinct : raiseStubLocation ≠ storeConstsStubLocation := by
    simp [raiseStubLocation, storeConstsStubLocation, wordNumStubs]
  have related : stateRel asmConf (asmConf.regCount - (5 + asmConf.avoidRegs.length)) 0 0
      (makeInit asmConf (asmConf.regCount - (5 + asmConf.avoidRegs.length)) t (sptFromAList code)
        coracle : WordSemStateFiniteExact width (Nat × C) F)
      t [] 0 := by
    apply initStateOkImpliesStateRel
    refine ⟨?_, ?_, ?_, ?_, ok⟩
    · rw [codeEq, sptLookup_sptFromAList, sptAListLookup_eq]
      simp [panPropsALookupEq]
    · rw [codeEq, sptLookup_sptFromAList, sptAListLookup_eq]
      simp [panPropsALookupEq, stubsDistinct]
    · intro n wordProg argumentCount lookup
      rw [sptLookup_sptFromAList, sptAListLookup_eq] at lookup
      have member := mem_of_lookup lookup
      obtain ⟨flat, allocated⟩ := conventions _ member
      obtain ⟨bs, i, bs2, i2, frame, body, compileRun, b1, b2, b3, bodyLookup⟩ :=
        compileWordToStackImpALookup asmConf false _ code (.list [4]) 1 bodies frames output
          nextIndex n argumentCount wordProg t.bitmaps compiled lookup
          (by simp [appListAppend, appendAux]) (by simp [appListAppend, appendAux])
          (by simpa [appListAppend, appendAux] using bitmapsPrefix)
      refine ⟨allocated, flat, bs, i, bs2, i2, frame, body, compileRun, b1, b2, b3, ?_⟩
      have notRaise : n ≠ raiseStubLocation := by
        rintro rfl
        rw [noRaise] at lookup
        cases lookup
      have notStore : n ≠ storeConstsStubLocation := by
        rintro rfl
        rw [noStore] at lookup
        cases lookup
      rw [codeEq, sptLookup_sptFromAList, sptAListLookup_eq]
      simp [panPropsALookupEq, Ne.symm notRaise, Ne.symm notStore, bodyLookup]
    · rw [codeEq, sptDomainFromAList, sptDomainFromAList]
      funext x
      simp only [List.map_cons, List.mem_cons, keys]
  have hcb : CodeBoundedW S (makeInit asmConf (asmConf.regCount - (5 + asmConf.avoidRegs.length)) t
      (sptFromAList code) coracle : WordSemStateFiniteExact width (Nat × C) F) := by
    refine ⟨?_, horacle⟩
    intro n a p hl
    change sptLookup n (sptFromAList code) = some (a, p) at hl
    rw [sptLookup_sptFromAList] at hl
    exact hcode (n, a, p) (sptAListLookup_mem _ _ _ hl)
  exact entrySimulationB_ofStateRel asmConf _ S hS _ t [] start related hcb

end Flapjack.WordToStackProofs.CompileSemantics

namespace InitECandidate.Solver.Compiler.WordToStack
export Flapjack.WordToStackProofs.CompileSemantics (entrySimulationB_makeInit)
end InitECandidate.Solver.Compiler.WordToStack
