import InitECandidate.Solver.Compiler.StackPasses.Common
import Flapjack.Compiler.Backend.StackRawCall.Proofs.CompileSemantics

/-!
# Bounded `stack_rawcall` `comp_correct`: statement, leaves, `If`, `Seq` (standard), `Loop`,
`JumpLower`, `RawCall`

Bounded counterpart of Flapjack's `StackRawCall.FullCompCorrect.compCorrect`
(`StackRawCall/Proofs/CompCorrect.lean`): the extra target clock is at most the source clock
consumed, `clock ≤ s.clock - post.clock`. The only clock-adding construct is the optimised
tail call of `compSeq` in the greater-frame branch (`Tick; StackAlloc; RawCall`), one extra tick
per optimised call, each of which consumes one source tick (the replaced `Call`).

Leaves reuse Flapjack's simulation: rawcall leaves are not rewritten, the relation ties the
final clocks, and every leaf is clock free or ticks once (`Common.lean`), so the witness is
forced to `0`.
-/

namespace InitECandidate.Solver.Compiler.StackPasses.RawCall

open Flapjack Flapjack.Compiler.Backend.StackLang Flapjack.StackSemEvaluate
open Flapjack.StackSemStateOps Flapjack.StackSemControl Flapjack.StackSemMeasure
open Flapjack.Compiler.Backend.StackProps Flapjack.Compiler.Backend.StackProps.EvaluateAddClock
open Flapjack.Compiler.Backend.StackRawCall
open Flapjack.Compiler.Backend.StackRawCall.IfCase
open Flapjack.Compiler.Backend.StackRawCall.LoopCase
open Flapjack.Compiler.Backend.StackRawCall.RawCallCase

set_option autoImplicit false

section
variable {width : Nat} [NeZero width] {C F : Type}

/-- Flapjack's `SimulationResult` with the clock witness bounded by `bnd`. -/
def SimB (bnd : Nat) (compiled : HolProg width) (info : Spt Nat)
    (target resultState : StackSemStateFiniteExact width C F)
    (result : Option (StackSemResult width)) : Prop :=
  ∃ clock targetState stackSpace, clock ≤ bnd ∧
    stateRel info resultState targetState ∧
    evaluate (compiled, { target with clock := target.clock + clock }) =
      (result, { targetState with stackSpace := stackSpace }) ∧
    (result ≠ some .timeOut ∧ result ≠ some (.halt (.word (BitVec.ofNat width 2))) →
      stackSpace = targetState.stackSpace)

theorem SimB.toSim {bnd : Nat} {compiled : HolProg width} {info : Spt Nat}
    {target resultState : StackSemStateFiniteExact width C F}
    {result : Option (StackSemResult width)}
    (h : SimB bnd compiled info target resultState result) :
    SimulationResult compiled info target resultState result := by
  obtain ⟨clock, T, sp, -, h⟩ := h
  exact ⟨clock, T, sp, h⟩

theorem SimB.mono {bnd bnd' : Nat} {compiled : HolProg width} {info : Spt Nat}
    {target resultState : StackSemStateFiniteExact width C F}
    {result : Option (StackSemResult width)}
    (h : SimB bnd compiled info target resultState result) (hle : bnd ≤ bnd') :
    SimB bnd' compiled info target resultState result := by
  obtain ⟨clock, T, sp, hb, h⟩ := h
  exact ⟨clock, T, sp, Nat.le_trans hb hle, h⟩

/-- The bounded `comp_correct` for one program and source state. -/
def PropB (p : HolProg width) (s : StackSemStateFiniteExact width C F) : Prop :=
  ∀ (info : Spt Nat) (t post : StackSemStateFiniteExact width C F)
    (r : Option (StackSemResult width)),
    evaluate (p, s) = (r, post) ∧ r ≠ some .error ∧ stateRel info s t →
    SimB (s.clock - post.clock) (compTop info p) info t post r ∧
    SimB (s.clock - post.clock) (comp info p) info t post r

/-- The induction hypothesis: `PropB` at every smaller evaluation measure. -/
def IHB (p : HolProg width) (s : StackSemStateFiniteExact width C F) : Prop :=
  ∀ (q : HolProg width) (u : StackSemStateFiniteExact width C F),
    LexNat (stackSemMeasure q u) (stackSemMeasure p s) → PropB q u

/-! ## Leaves -/

/-- A leaf (unchanged by `comp`/`compTop`) that is clock free: the simulation clock is `0`. -/
theorem leafB_clockFree {p : HolProg width} (hcf : ClockFree (C := C) (F := F) p)
    (hc : ∀ info : Spt Nat, comp info p = p) (ht : ∀ info : Spt Nat, compTop info p = p)
    {s : StackSemStateFiniteExact width C F} : PropB p s := by
  intro info t post r hyp
  obtain ⟨h, hne, rel⟩ := hyp
  obtain ⟨⟨clock, T, sp, prel, run, guard⟩, -⟩ :=
    FullCompCorrect.compCorrect p s t info r post ⟨h, hne, rel⟩
  rw [ht] at run
  have h0 : clock = 0 :=
    clockFree_extra hcf hcf h run (stateRel_clock info s t rel)
      (by simpa using stateRel_clock info post T prel)
  subst h0
  have hs : SimB (s.clock - post.clock) p info t post r :=
    ⟨0, T, sp, Nat.zero_le _, prel, run, guard⟩
  exact ⟨by rw [ht]; exact hs, by rw [hc]; exact hs⟩

/-- A ticking leaf (unchanged by `comp`/`compTop`): the simulation clock is `0`. -/
theorem leafB_tickLike {p : HolProg width} (hcf : TickLike (C := C) (F := F) p)
    (hc : ∀ info : Spt Nat, comp info p = p) (ht : ∀ info : Spt Nat, compTop info p = p)
    {s : StackSemStateFiniteExact width C F} : PropB p s := by
  intro info t post r hyp
  obtain ⟨h, hne, rel⟩ := hyp
  obtain ⟨⟨clock, T, sp, prel, run, guard⟩, -⟩ :=
    FullCompCorrect.compCorrect p s t info r post ⟨h, hne, rel⟩
  rw [ht] at run
  have h0 : clock = 0 :=
    tickLike_extra hcf h run hne (stateRel_clock info s t rel)
      (by simpa using stateRel_clock info post T prel)
  subst h0
  have hs : SimB (s.clock - post.clock) p info t post r :=
    ⟨0, T, sp, Nat.zero_le _, prel, run, guard⟩
  exact ⟨by rw [ht]; exact hs, by rw [hc]; exact hs⟩

/-! ## `If` -/

theorem iteB (cmp : Compiler.Encoders.Asm.HolCmp) (register : Nat)
    (operand : Compiler.Encoders.Asm.HolRegImm width) (first second : HolProg width)
    (s : StackSemStateFiniteExact width C F) (ih : IHB (.ite cmp register operand first second) s) :
    PropB (.ite cmp register operand first second) s := by
  intro info t post r hyp
  obtain ⟨execution, nonerror, relation⟩ := hyp
  have same : compTop info (.ite cmp register operand first second) =
      comp info (.ite cmp register operand first second) := rfl
  rw [same]
  suffices simulation : SimB (s.clock - post.clock)
      (comp info (.ite cmp register operand first second)) info t post r by
    exact ⟨simulation, simulation⟩
  rw [evaluate_ite] at execution
  split at execution
  · rename_i left right leftRead rightRead
    split at execution
    · rename_i compared
      obtain ⟨clock, T, sp, hb, prel, run, guard⟩ :=
        (ih first s (if_first_measure_lt cmp register operand first second s)
          info t post r ⟨execution, nonerror, relation⟩).2
      refine ⟨clock, T, sp, hb, prel, ?_, guard⟩
      rw [evaluateCompiledIf info s t relation, leftRead, rightRead]
      simp only [compared]
      exact run
    · rename_i compared
      obtain ⟨clock, T, sp, hb, prel, run, guard⟩ :=
        (ih second s (if_second_measure_lt cmp register operand first second s)
          info t post r ⟨execution, nonerror, relation⟩).2
      refine ⟨clock, T, sp, hb, prel, ?_, guard⟩
      rw [evaluateCompiledIf info s t relation, leftRead, rightRead]
      simp only [compared]
      exact run
    · exact absurd (Prod.mk.inj execution).1.symm nonerror
  · exact absurd (Prod.mk.inj execution).1.symm nonerror

/-! ## Standard `Seq` -/

theorem seqStandardB (first second : HolProg width) (info : Spt Nat)
    (s t post : StackSemStateFiniteExact width C F) (r : Option (StackSemResult width))
    (ih : IHB (.seq first second) s)
    (hyp : evaluate (.seq first second, s) = (r, post) ∧ r ≠ some .error ∧ stateRel info s t) :
    SimB (s.clock - post.clock) (.seq (comp info first) (comp info second)) info t post r := by
  obtain ⟨execution, nonerror, relation⟩ := hyp
  rcases firstRun : evaluate (first, s) with ⟨firstResult, middle⟩
  have hmid : middle.clock ≤ s.clock :=
    StackSemEvaluateClock.evaluateClock first s firstResult middle firstRun
  cases firstResult with
  | none =>
      rw [SeqCase.evaluateSeqUnclamped, firstRun] at execution
      have hpost : post.clock ≤ middle.clock :=
        StackSemEvaluateClock.evaluateClock second middle r post execution
      obtain ⟨firstClock, targetMiddle, firstSpace, hb1, middleRelation, firstTargetRun,
        firstGuard⟩ :=
        (ih first s (seq_first_measure_lt first second s) info t middle none
          ⟨firstRun, by simp, relation⟩).2
      have spaceEq := firstGuard (by simp)
      subst firstSpace
      have spaceSelf : { targetMiddle with stackSpace := targetMiddle.stackSpace } =
          targetMiddle := rfl
      rw [spaceSelf] at firstTargetRun
      have hm := seq_second_measure_lt first second s (evaluate (first, s))
      rw [StackSemEvaluateClock.fixClockEvaluate, firstRun] at hm
      obtain ⟨secondClock, targetPost, finalSpace, hb2, postRelation, secondTargetRun,
        finalGuard⟩ :=
        (ih second middle hm info targetMiddle post r
          ⟨execution, nonerror, middleRelation⟩).2
      have extendedFirst := evaluateAddClock secondClock
        (comp info first) { t with clock := t.clock + firstClock }
        none targetMiddle ⟨firstTargetRun, by simp⟩
      have inputEq : { { t with clock := t.clock + firstClock } with
          clock := ({ t with clock := t.clock + firstClock }).clock + secondClock } =
          { t with clock := t.clock + (firstClock + secondClock) } := by
        simp only [Nat.add_assoc]
      rw [inputEq] at extendedFirst
      have hclk : targetMiddle.clock = middle.clock :=
        stateRel_clock info middle targetMiddle middleRelation
      refine ⟨firstClock + secondClock, targetPost, finalSpace, by omega, postRelation, ?_,
        finalGuard⟩
      rw [SeqCase.evaluateSeqUnclamped, extendedFirst]
      exact secondTargetRun
  | some firstResult =>
      rw [SeqCase.evaluateSeqUnclamped, firstRun] at execution
      obtain ⟨rfl, rfl⟩ := Prod.mk.inj execution
      obtain ⟨clock, targetPost, finalSpace, hb, postRelation, targetRun, guard⟩ :=
        (ih first s (seq_first_measure_lt first second s) info t middle (some firstResult)
          ⟨firstRun, nonerror, relation⟩).2
      refine ⟨clock, targetPost, finalSpace, hb, postRelation, ?_, guard⟩
      rw [SeqCase.evaluateSeqUnclamped, targetRun]

/-! ## `Loop` -/

theorem loopB (body : HolProg width) (s : StackSemStateFiniteExact width C F)
    (ih : IHB (.loop body) s) : PropB (.loop body) s := by
  intro info t post r hyp
  obtain ⟨execution, nonerror, relation⟩ := hyp
  have bodyNonerror := loopBodyNonError body s post r execution nonerror
  have same : compTop info (.loop body) = comp info (.loop body) := rfl
  rw [same]
  suffices simulation : SimB (s.clock - post.clock) (comp info (.loop body)) info t post r by
    exact ⟨simulation, simulation⟩
  rw [evaluateLoopUnclamped] at execution
  rcases bodyExecution : evaluate (body, s) with ⟨bodyResult, bodyPost⟩
  rw [bodyExecution] at execution bodyNonerror
  change bodyResult ≠ some .error at bodyNonerror
  have hbody : bodyPost.clock ≤ s.clock :=
    StackSemEvaluateClock.evaluateClock body s bodyResult bodyPost bodyExecution
  obtain ⟨clock, targetBody, stackSpace, hb1, bodyRelation, targetBodyExecution, bodyGuard⟩ :=
    (ih body s (loop_body_measure_lt body s) info t bodyPost bodyResult
      ⟨bodyExecution, bodyNonerror, relation⟩).2
  by_cases continuing : contLoop bodyResult = true
  · simp only [continuing, if_true] at execution
    have continuationGuard := contLoopGuard bodyResult continuing
    have spaceEq := bodyGuard continuationGuard
    subst stackSpace
    have stackSelf : { targetBody with stackSpace := targetBody.stackSpace } = targetBody := rfl
    rw [stackSelf] at targetBodyExecution
    have targetClockEq := stateRel_clock info bodyPost targetBody bodyRelation
    by_cases zero : bodyPost.clock = 0
    · rw [if_pos zero] at execution
      obtain ⟨rfl, rfl⟩ := Prod.mk.inj execution
      have targetZero : targetBody.clock = 0 := targetClockEq.trans zero
      refine ⟨clock, emptyEnv targetBody, (emptyEnv targetBody).stackSpace, ?_,
        stateRel_emptyEnv info bodyPost targetBody bodyRelation, ?_, fun h => absurd rfl h.1⟩
      · simp only [emptyEnv]; omega
      · rw [comp, evaluateLoopUnclamped, targetBodyExecution]
        simp only [continuing, if_true]
        rw [if_pos targetZero]
    · rw [if_neg zero] at execution
      have hm := loop_reentry_measure_lt body s (evaluate (body, s))
      rw [StackSemEvaluateClock.fixClockEvaluate, bodyExecution] at hm
      have hpost : post.clock ≤ (decClock bodyPost).clock :=
        StackSemEvaluateClock.evaluateClock _ _ r post execution
      have recursiveRelation := stateRel_decClock info bodyPost targetBody bodyRelation
      obtain ⟨recursiveClock, targetPost, finalSpace, hb2, postRelation, targetExecution,
        guard⟩ :=
        (ih (.loop body) (decClock bodyPost) (hm zero) info (decClock targetBody) post r
          ⟨execution, nonerror, recursiveRelation⟩).2
      have targetNonzero : targetBody.clock ≠ 0 := by
        simpa only [targetClockEq] using zero
      have extendedBody := evaluateAddClock recursiveClock
        (comp info body) { t with clock := t.clock + clock }
        bodyResult targetBody ⟨targetBodyExecution, continuationGuard.1⟩
      have inputEq : { { t with clock := t.clock + clock } with
          clock := ({ t with clock := t.clock + clock }).clock + recursiveClock } =
          { t with clock := t.clock + (clock + recursiveClock) } := by
        simp only [Nat.add_assoc]
      rw [inputEq] at extendedBody
      have reentryEq : decClock { targetBody with clock := targetBody.clock + recursiveClock } =
          { decClock targetBody with clock := (decClock targetBody).clock + recursiveClock } := by
        simp only [decClock]
        congr 1
        omega
      have hdc : (decClock bodyPost).clock = bodyPost.clock - 1 := rfl
      refine ⟨clock + recursiveClock, targetPost, finalSpace, by omega, postRelation, ?_,
        guard⟩
      rw [comp, evaluateLoopUnclamped, extendedBody]
      simp only [continuing, if_true]
      rw [if_neg (show targetBody.clock + recursiveClock ≠ 0 by omega), reentryEq]
      exact targetExecution
  · have exit : contLoop bodyResult = false := by
      cases h : contLoop bodyResult <;> simp_all
    simp only [exit, Bool.false_eq_true, if_false] at execution
    obtain ⟨rfl, rfl⟩ := Prod.mk.inj execution
    refine ⟨clock, targetBody, stackSpace, hb1, bodyRelation, ?_, ?_⟩
    · rw [comp, evaluateLoopUnclamped, targetBodyExecution]
      simp only [exit, Bool.false_eq_true, if_false]
    · intro exitGuard
      exact bodyGuard (exitLoopGuard bodyResult exitGuard)

/-! ## `JumpLower` -/

theorem jumpLowerB (r1 r2 dest : Nat) (s : StackSemStateFiniteExact width C F)
    (ih : IHB (.jumpLower r1 r2 dest) s) : PropB (.jumpLower r1 r2 dest) s := by
  intro info t post r hyp
  obtain ⟨execution, nonerror, relation⟩ := hyp
  change SimB _ (.jumpLower r1 r2 dest) info t post r ∧
    SimB _ (.jumpLower r1 r2 dest) info t post r
  suffices simulation : SimB (s.clock - post.clock) (.jumpLower r1 r2 dest) info t post r by
    exact ⟨simulation, simulation⟩
  rw [evaluate_jumpLower] at execution
  split at execution
  · rename_i left right firstRead secondRead
    split at execution
    · rename_i lower
      simp only [findCode] at execution
      cases lookup : sptLookup dest s.code with
      | none =>
        simp only [lookup, Prod.mk.injEq] at execution
        exact False.elim (nonerror execution.1.symm)
      | some program =>
        rw [lookup] at execution
        obtain ⟨entryInfo, entryRelation, targetLookup⟩ :=
          JumpLowerCase.calleeEntry info s t relation dest program lookup
        have clockEq := stateRel_clock info s t relation
        by_cases zero : s.clock = 0
        · simp only [zero, if_true, Prod.mk.injEq] at execution
          obtain ⟨rfl, rfl⟩ := execution
          refine ⟨0, emptyEnv t, (emptyEnv t).stackSpace, Nat.zero_le _,
            stateRel_emptyEnv info s t relation, ?_, ?_⟩
          · simp only [Nat.add_zero, evaluate_jumpLower,
              getVar_targetClock info s t relation, firstRead, secondRead,
              lower, if_true, findCode, targetLookup]
            have tz : t.clock = 0 := clockEq.trans zero
            simp only [tz, if_true]
            have update : { t with clock := 0 } = t := by rw [← tz]
            rw [update]
          · simp
        · simp only [zero, if_false] at execution
          rcases bodyExecution : evaluate (program, decClock s) with ⟨bodyResult, bodyPost⟩
          rw [bodyExecution] at execution
          have hb' : bodyPost.clock ≤ (decClock s).clock :=
            StackSemEvaluateClock.evaluateClock _ _ _ _ bodyExecution
          by_cases bad : badFunReturn bodyResult = true
          · simp only [bad, if_true, Prod.mk.injEq] at execution
            exact False.elim (nonerror execution.1.symm)
          · simp only [bad, Bool.false_eq_true, if_false, Prod.mk.injEq] at execution
            obtain ⟨rfl, rfl⟩ := execution
            obtain ⟨clock, targetState, stackSpace, hb, postRelation, targetExecution, guard⟩ :=
              (ih program (decClock s) (callee_measure_lt program _ s zero)
                entryInfo (decClock t) bodyPost bodyResult
                ⟨bodyExecution, nonerror,
                  stateRel_decClock entryInfo s t entryRelation⟩).1
            have frames : stateOk info s.code := by
              obtain ⟨_, _, _, frames, _⟩ := relation
              exact frames
            have postFrames := stateOk_afterEvaluate info program (decClock s) bodyPost
              bodyResult frames bodyExecution
            have hdc : (decClock s).clock = s.clock - 1 := rfl
            refine ⟨clock, targetState, stackSpace, by omega,
              stateRel_changeInfo entryInfo info bodyPost targetState postRelation postFrames,
              ?_, guard⟩
            have targetNonzero : t.clock ≠ 0 := by omega
            have addedNonzero : t.clock + clock ≠ 0 := by omega
            simp only [evaluate_jumpLower,
              getVar_targetClock info s t relation, firstRead, secondRead,
              lower, if_true, findCode, targetLookup, addedNonzero, if_false,
              decClock_addClock t clock targetNonzero,
              targetExecution, bad, Bool.false_eq_true, if_false]
    · rename_i notLower
      obtain ⟨rfl, rfl⟩ := Prod.mk.inj execution
      refine ⟨0, t, t.stackSpace, Nat.zero_le _, relation, ?_, fun _ => rfl⟩
      simp only [evaluate_jumpLower,
        getVar_targetClock info s t relation, firstRead, secondRead,
        notLower, Bool.false_eq_true, if_false]
      rfl
  · exact False.elim (nonerror (Prod.mk.inj execution).1.symm)

/-! ## `RawCall` -/

theorem rawCallB (dest : Nat) (s : StackSemStateFiniteExact width C F)
    (ih : IHB (.rawCall dest) s) : PropB (.rawCall dest) s := by
  intro info t post r hyp
  obtain ⟨execution, nonerror, relation⟩ := hyp
  change SimB _ (.rawCall dest) info t post r ∧ SimB _ (.rawCall dest) info t post r
  suffices simulation : SimB (s.clock - post.clock) (.rawCall dest) info t post r by
    exact ⟨simulation, simulation⟩
  rw [evaluate_rawCall] at execution
  cases lookup : sptLookup dest s.code with
  | none => simp [lookup] at execution; exact False.elim (nonerror execution.1.symm)
  | some program =>
    rw [lookup] at execution
    cases program <;> simp only [destSeq] at execution
    all_goals try (exact False.elim (nonerror (Prod.mk.inj execution).1.symm))
    rename_i first body
    obtain ⟨entryInfo, entryRelation, targetLookup⟩ :=
      rawCallEntry info s t relation dest first body lookup
    have clockEq := stateRel_clock info s t relation
    by_cases zero : s.clock = 0
    · simp only [zero, if_true, Prod.mk.injEq] at execution
      obtain ⟨rfl, rfl⟩ := execution
      refine ⟨0, emptyEnv t, (emptyEnv t).stackSpace, Nat.zero_le _,
        stateRel_emptyEnv info s t relation, ?_, ?_⟩
      · simp only [Nat.add_zero, evaluate_rawCall, targetLookup, destSeq]
        have tz : t.clock = 0 := clockEq.trans zero
        simp only [tz, if_true]
        have update : { t with clock := 0 } = t := by rw [← tz]
        rw [update]
      · simp
    · simp only [zero, if_false] at execution
      rcases bodyExecution : evaluate (body, decClock s) with ⟨bodyResult, bodyPost⟩
      rw [bodyExecution] at execution
      have hb' : bodyPost.clock ≤ (decClock s).clock :=
        StackSemEvaluateClock.evaluateClock _ _ _ _ bodyExecution
      by_cases bad : badFunReturn bodyResult = true
      · simp only [bad, if_true, Prod.mk.injEq] at execution
        exact False.elim (nonerror execution.1.symm)
      · simp only [bad, Bool.false_eq_true, if_false, Prod.mk.injEq] at execution
        obtain ⟨rfl, rfl⟩ := execution
        obtain ⟨clock, targetState, stackSpace, hb, postRelation, targetExecution, guard⟩ :=
          (ih body (decClock s) (callee_measure_lt body _ s zero) entryInfo (decClock t)
            bodyPost bodyResult
            ⟨bodyExecution, nonerror, stateRel_decClock entryInfo s t entryRelation⟩).2
        have frames : stateOk info s.code := by
          obtain ⟨_, _, _, frames, _⟩ := relation
          exact frames
        have postFrames := stateOk_afterEvaluate info body (decClock s) bodyPost
          bodyResult frames bodyExecution
        have hdc : (decClock s).clock = s.clock - 1 := rfl
        refine ⟨clock, targetState, stackSpace, by omega,
          stateRel_changeInfo entryInfo info bodyPost targetState postRelation postFrames,
          ?_, guard⟩
        have targetNonzero : t.clock ≠ 0 := by omega
        have addedNonzero : t.clock + clock ≠ 0 := by omega
        simp only [evaluate_rawCall, targetLookup, destSeq,
          addedNonzero, if_false,
          decClock_addClock t clock targetNonzero,
          targetExecution, bad, Bool.false_eq_true, if_false]

end

end InitECandidate.Solver.Compiler.StackPasses.RawCall
