import InitECandidate.Solver.Compiler.StackPasses.Remove.Basic

/-!
# Bounded `stack_remove` `StackAlloc`

Copies of Flapjack's `StackAllocSimulation.evaluateSingleStackAlloc` / `runAlloc`
(`StackRemove/Proofs/StackAllocSimulation.lean`) with the clock witness bounded by `1` on
overflow (the `JumpLower` to `stackErrLab`, or the `If` to `halt_inst 2`) and `0` otherwise.
-/

namespace InitECandidate.Solver.Compiler.StackPasses.Remove

open Flapjack Flapjack.Compiler.Backend.StackLang Flapjack.StackSemEvaluate
open Flapjack.StackSemStateOps Flapjack.StackSemControl Flapjack.StackSemMeasure
open Flapjack.Compiler.Backend.StackProps
open Flapjack.Compiler.Backend.StackRemove
open Flapjack.Compiler.Backend.StackRemove.StackAllocSimulation

set_option autoImplicit false

theorem singleB {width : Nat} [NeZero width] {C F : Type}
    (jump : Bool) (bounds : BitVec width × BitVec width) (pointer count : Nat)
    (source target postSource : StackSemStateFiniteExact width C F)
    (result : Option (StackSemResult width))
    (hypothesis : stateRelHOL jump bounds pointer source target ∧
      (result, postSource) = (if source.stackSpace < count then
        (some (.halt (.word 2)), StackSemStateOps.emptyEnv source)
        else (none, {source with stackSpace := source.stackSpace - count})) ∧
      count ≠ 0 ∧ count ≤ maxStackAlloc) :
    ∃ clock postTarget, clock ≤ (if source.stackSpace < count then 1 else 0) ∧
      StackSemEvaluate.evaluate (singleStackAlloc jump pointer count,
        {target with clock := target.clock + clock}) = (result, postTarget) ∧
      (if source.stackSpace < count then postTarget.ffi = postSource.ffi
       else stateRelHOL jump bounds pointer postSource postTarget) ∧
      (source.stackSpace < count → postTarget.clock = source.clock) := by
  classical
  rcases hypothesis with ⟨relation, output, _nonzero, countBound⟩
  obtain ⟨base, baseLookup, lower, upper, pointerLookup, _heap⟩ :=
    StackPointer.stateRelGetVarK jump bounds pointer source target relation
  change target.regs.lookup (pointer + 1) = some (.word base) at baseLookup
  change target.regs.lookup pointer =
    some (.word (base + bytesInWord width * BitVec.ofNat width source.stackSpace)) at pointerLookup
  have good : goodDimindex width := relation.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have spaceBound : source.stackSpace ≤ source.stack.length :=
    relation.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have comparison := AllocationArithmetic.allocationGuard base source.stackSpace
    source.stack.length count good lower upper spaceBound countBound
  have guard : Compiler.Encoders.Asm.wordCmpHOL .lower
      (base + bytesInWord width * BitVec.ofNat width source.stackSpace - wordOffset count) base =
      decide (source.stackSpace < count) := by
    simp only [Compiler.Encoders.Asm.wordCmpHOL, comparison]
  have codeLookup : sptLookup stackErrLab target.code = some (haltInst (BitVec.ofNat width 2)) :=
    relation.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have baseNe : pointer + 1 ≠ pointer := by omega
  by_cases overflow : source.stackSpace < count
  · rw [if_pos overflow] at output
    rcases Prod.mk.inj output with ⟨resultEq, stateEq⟩
    subst result
    subst postSource
    simp only [overflow, decide_true] at guard
    cases jump with
    | false =>
      refine ⟨0, StackSemStateOps.emptyEnv target,
        by simp [overflow], ?_, ?_, fun _ => by
          simp [StackSemStateOps.emptyEnv, stateRelHOL_clock relation]⟩
      · simp [singleStackAlloc,  StackSemStateOps.emptyEnv, StackSemEvaluate.evaluate_seq,
          StackSemEvaluate.evaluate_inst,
          StackSemInst.instHOL, StackSemIntegerInstructions.instInteger,
          StackSemExpressions.assign, StackSemExpressions.wordExp, pointerLookup,
          wordOpHOL, wordOp, StackSemControl.fixClock,
          StackSemStateOps.setVar, HolFiniteMapExact.lookup_updateEq, FUPDATE_HOL,
          StackSemEvaluate.evaluate_ite,
          StackSemStateOps.getVar, StackSemStateOps.getVarImm,
          Compiler.Encoders.Asm.HolRegImm.toWordRegImm,
          wordSemWordCmp, baseLookup, guard,
            haltInst,
          StackSemEvaluate.evaluate_halt]
      · simpa [overflow, StackSemStateOps.emptyEnv] using relation.2.2.2.2.2.2.2.2.2.1
    | true =>
      refine ⟨1, StackSemStateOps.emptyEnv target, by simp [overflow], ?_, ?_, fun _ => by
        simp [StackSemStateOps.emptyEnv, stateRelHOL_clock relation]⟩
      · simp [singleStackAlloc,  StackSemStateOps.emptyEnv, StackSemEvaluate.evaluate_seq,
          StackSemEvaluate.evaluate_inst,
          StackSemInst.instHOL, StackSemIntegerInstructions.instInteger,
          StackSemExpressions.assign, StackSemExpressions.wordExp, pointerLookup,
          wordOpHOL, wordOp, StackSemControl.fixClock,
          StackSemStateOps.setVar, HolFiniteMapExact.lookup_updateEq, FUPDATE_HOL,
           StackSemEvaluate.evaluate_jumpLower,
          StackSemStateOps.getVar,
           baseLookup, guard,
          StackSemControl.findCode, codeLookup, haltInst,
          StackSemEvaluate.evaluate_halt, StackSemStateOps.decClock,
          StackSemControl.badFunReturn]
      · simpa [overflow, StackSemStateOps.emptyEnv] using relation.2.2.2.2.2.2.2.2.2.1
  · rw [if_neg overflow] at output
    rcases Prod.mk.inj output with ⟨resultEq, stateEq⟩
    subst result
    subst postSource
    refine ⟨0, StackSemStateOps.setVar pointer
      (.word (base + bytesInWord width * BitVec.ofNat width source.stackSpace - wordOffset count))
      target, by simp [overflow], ?_, ?_, fun h => absurd h overflow⟩
    · cases jump <;> simp [singleStackAlloc,  StackSemEvaluate.evaluate_seq,
        StackSemEvaluate.evaluate_inst, StackSemInst.instHOL,
        StackSemIntegerInstructions.instInteger,
        StackSemExpressions.assign, StackSemExpressions.wordExp, pointerLookup, wordOpHOL, wordOp,
        StackSemControl.fixClock, StackSemStateOps.setVar, HolFiniteMapExact.lookup_updateEq,
        FUPDATE_HOL,
        StackSemEvaluate.evaluate_ite, StackSemEvaluate.evaluate_jumpLower,
        StackSemEvaluate.evaluate_skip,
        StackSemStateOps.getVar, StackSemStateOps.getVarImm,
        Compiler.Encoders.Asm.HolRegImm.toWordRegImm, wordSemWordCmp, baseLookup, guard, overflow]
    · rw [if_neg overflow]
      simpa only [pointerLookup] using
        stateRelAllocStep jump bounds pointer count source target relation
          (Nat.le_of_not_gt overflow)

set_option maxRecDepth 2048 in
theorem runAllocB {width : Nat} [NeZero width] {C F : Type}
    (count : Nat) (jump : Bool) (bounds : BitVec width × BitVec width) (pointer : Nat)
    (source target : StackSemStateFiniteExact width C F)
    (relation : stateRelHOL jump bounds pointer source target) :
    ∃ clock postTarget, clock ≤ (if source.stackSpace < count then 1 else 0) ∧
      StackSemEvaluate.evaluate (stackAlloc jump pointer count,
          {target with clock := clock + target.clock}) =
        ((if source.stackSpace < count then some (.halt (.word 2)) else none), postTarget) ∧
      (if source.stackSpace < count then postTarget.ffi = source.ffi
       else stateRelHOL jump bounds pointer {source with stackSpace := source.stackSpace - count}
         postTarget) ∧
      (source.stackSpace < count → postTarget.clock = source.clock) := by
  classical
  induction count using Nat.strongRecOn generalizing source target with
  | ind count ih =>
    by_cases zero : count = 0
    · subst count
      exact ⟨0, target, Nat.zero_le _, by simp [stackAlloc, StackSemEvaluate.evaluate_skip],
        by simpa using relation, fun h => absurd h (Nat.not_lt_zero _)⟩
    by_cases small : count ≤ maxStackAlloc
    · let expectedSource := if source.stackSpace < count then StackSemStateOps.emptyEnv source
        else {source with stackSpace := source.stackSpace - count}
      obtain ⟨clock, postTarget, hb, run, post, hclk⟩ := singleB jump bounds pointer count
        source target expectedSource
        (if source.stackSpace < count then some (.halt (.word 2)) else none)
        ⟨relation, by dsimp [expectedSource]; split <;> rfl, zero, small⟩
      refine ⟨clock, postTarget, hb, ?_, ?_, hclk⟩
      · rw [stackAlloc, if_neg zero, if_pos small]
        simpa only [Nat.add_comm] using run
      · by_cases overflow : source.stackSpace < count
        · simpa [overflow, expectedSource, StackSemStateOps.emptyEnv] using post
        · simpa [overflow, expectedSource] using post
    by_cases firstOverflow : source.stackSpace < maxStackAlloc
    · have overflow : source.stackSpace < count := by omega
      obtain ⟨clock, postTarget, hb, run, post, hclk⟩ := singleB jump bounds pointer
        maxStackAlloc source target (StackSemStateOps.emptyEnv source) (some (.halt (.word 2)))
        ⟨relation, by rw [if_pos firstOverflow], by decide, Nat.le_refl _⟩
      have firstRun : StackSemEvaluate.evaluate (singleStackAlloc jump pointer maxStackAlloc,
          {target with clock := clock + target.clock}) = (some (.halt (.word 2)),postTarget) := by
        simpa only [Nat.add_comm] using run
      refine ⟨clock, (StackSemControl.fixClock {target with clock := clock + target.clock}
        ((some (.halt (.word 2)) : Option (StackSemResult width)), postTarget)).2, ?_, ?_, ?_,
        fun _ => ?_⟩
      · rw [if_pos overflow]; rw [if_pos firstOverflow] at hb; exact hb
      · rw [stackAlloc, if_neg zero, if_neg small, StackSemEvaluate.evaluate_seq, firstRun]
        simp [StackSemControl.fixClock, overflow]
      · simpa [overflow, firstOverflow, StackSemControl.fixClock, StackSemStateOps.emptyEnv]
          using post
      · have hc := hclk firstOverflow
        have := stateRelHOL_clock relation
        simp only [StackSemControl.fixClock]
        omega
    · have available : maxStackAlloc ≤ source.stackSpace := Nat.le_of_not_gt firstOverflow
      let nextSource := {source with stackSpace := source.stackSpace - maxStackAlloc}
      let nextTarget := StackSemStateOps.setVar pointer
        (.word ((match target.regs.lookup pointer with | some (.word word) => word | _ => 0) -
          wordOffset maxStackAlloc)) target
      have nextRelation : stateRelHOL jump bounds pointer nextSource nextTarget :=
        stateRelAllocStep jump bounds pointer maxStackAlloc source target relation available
      obtain ⟨clock, postTarget, hb, run, post, hclk⟩ := ih (count - maxStackAlloc)
        (by simp only [maxStackAlloc] at *; omega) nextSource nextTarget nextRelation
      have overflowEq : nextSource.stackSpace < count - maxStackAlloc ↔
          source.stackSpace < count := by
        dsimp [nextSource]; omega
      have subtractionEq : (source.stackSpace - maxStackAlloc) - (count - maxStackAlloc) =
          source.stackSpace - count := by omega
      refine ⟨clock, postTarget, by simpa only [overflowEq] using hb, ?_, ?_,
        fun h => hclk (overflowEq.mpr h)⟩
      · rw [stackAlloc, if_neg zero, if_neg small, StackSemEvaluate.evaluate_seq]
        have firstRun := runSingleAvailable jump bounds pointer maxStackAlloc (clock + target.clock)
          source target relation available (Nat.le_refl _)
        have presented : StackSemEvaluate.evaluate (singleStackAlloc jump pointer maxStackAlloc,
          {target with clock := clock + target.clock}) =
            (none, {nextTarget with clock := clock + nextTarget.clock}) := firstRun
        rw [presented]
        have clamp : StackSemControl.fixClock {target with clock := clock + target.clock}
            ((none : Option (StackSemResult width)),
              {nextTarget with clock := clock + nextTarget.clock}) =
            (none, {nextTarget with clock := clock + nextTarget.clock}) := by
          simp [StackSemControl.fixClock, nextTarget, StackSemStateOps.setVar]
        rw [clamp]
        simpa only [overflowEq] using run
      · simpa only [overflowEq, nextSource, subtractionEq] using post

/-- The `StackAlloc` constructor: at most one extra tick, on overflow (a `Halt`). -/
theorem stackAllocR {width : Nat} [NeZero width] {C F : Type} {X : List Nat} (count : Nat)
    (s : StackSemStateFiniteExact width C F) : PropR X (.stackAlloc count : HolProg width) s := by
  classical
  intro result postSource target pointer bounds jump hyp _ _
  rcases hyp with ⟨sourceRun, _notError, relation, _bound⟩
  rw [StackSemEvaluate.evaluate_stackAlloc] at sourceRun
  simp only [show (!s.useStack) = false by simp [relation.1], Bool.false_eq_true,
    if_false] at sourceRun
  obtain ⟨clock, postTarget, hb, targetRun, post, hclk⟩ :=
    runAllocB count jump bounds pointer s target relation
  have hcomp : comp jump bounds pointer (.stackAlloc count : HolProg width) =
      stackAlloc jump pointer count := by simp only [comp]
  by_cases overflow : s.stackSpace < count
  · rw [if_pos overflow] at sourceRun targetRun post hb
    rcases Prod.mk.inj sourceRun with ⟨resultEq, stateEq⟩
    subst result
    subst postSource
    refine ⟨clock, postTarget, by simpa [extraR] using hb, by rw [hcomp]; exact targetRun, ?_,
      by simpa [StackSemStateOps.emptyEnv] using hclk overflow⟩
    change postTarget.ffi = (StackSemStateOps.emptyEnv s).ffi
    simpa [StackSemStateOps.emptyEnv] using post
  · rw [if_neg overflow] at sourceRun targetRun post hb
    rcases Prod.mk.inj sourceRun with ⟨resultEq, stateEq⟩
    subst result
    subst postSource
    exact ⟨clock, postTarget, by simpa [extraR] using hb, by rw [hcomp]; exact targetRun, post,
      stateRelHOL_clock post⟩

end InitECandidate.Solver.Compiler.StackPasses.Remove
