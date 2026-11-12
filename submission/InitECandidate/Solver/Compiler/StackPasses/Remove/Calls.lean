import InitECandidate.Solver.Compiler.StackPasses.Remove.StackAlloc
import Flapjack.Compiler.Backend.StackAlloc.Proofs.ProgComp

/-!
# Bounded `stack_remove` `comp_correct`: `JumpLower`, `RawCall`, `Call`

Copies of Flapjack's `JumpLower`, `RawCall`, `CallTail`, `CallReturnNone` and
`CallReturnHandler` cases (`StackRemove/Proofs/CompCorrect/*.lean`) with the clock witness
bounded by `extraR` of the result: a callee that returns normally contributes `0`, so the
continuation's allowance is the whole allowance.
-/

namespace InitECandidate.Solver.Compiler.StackPasses.Remove

open Flapjack Flapjack.Compiler.Backend.StackLang Flapjack.StackSemEvaluate
open Flapjack.StackSemStateOps Flapjack.StackSemControl Flapjack.StackSemMeasure
open Flapjack.Compiler.Backend.StackProps Flapjack.Compiler.Backend.StackProps.EvaluateAddClock
open Flapjack.Compiler.Backend.StackRemove
open Flapjack.Compiler.Backend.StackRemove.CompCorrect
open Flapjack.Compiler.Backend.StackRemove.CompCorrect.CallReturnNone
open Flapjack.Compiler.Backend.StackRemove.CompCorrect.CallReturnHandler

set_option autoImplicit false

section
variable {width : Nat} [NeZero width] {C F : Type}

theorem okP_of_findCode {X : List Nat} {dest : Sum Nat Nat}
    {regs : HolFiniteMapExact Nat (WordLocW width)}
    {s : StackSemStateFiniteExact width C F} {program : HolProg width} (hcode : CodeOk X s)
    (hd : destOk X dest = true)
    (h : StackSemControl.findCode dest regs s.code = some program) : okP X program = true := by
  obtain ⟨n, rfl, hn⟩ := destOk_inl hd
  exact hcode.1 n program hn h

theorem notMem_of_contains {X : List Nat} {n : Nat} (h : (!X.contains n) = true) : n ∉ X := by
  simpa using h

theorem extraR_none : extraR (none : Option (StackSemResult width)) = 0 := rfl
theorem extraR_result (v : WordLocW width) : extraR (some (.result v)) = 0 := rfl
theorem extraR_exception (v : WordLocW width) : extraR (some (.exception v)) = 0 := rfl

theorem jumpLowerR {X : List Nat} (first second label : Nat)
    (s : StackSemStateFiniteExact width C F)
    (ih : IHR X (.jumpLower first second label) s) :
    PropR X (.jumpLower first second label) s := by
  intro result postSource target pointer bounds jump hyp hno hcode
  have hlabel : label ∉ X := notMem_of_contains (by simpa only [okP_jumpLower] using hno)
  rcases hyp with ⟨sourceRun, notError, relation, bound⟩
  change first < pointer ∧ second < pointer at bound
  have readFirst := RelationLaws.stateRelGetVar jump bounds pointer first s target
    ⟨relation, bound.1⟩
  have readSecond := RelationLaws.stateRelGetVar jump bounds pointer second s target
    ⟨relation, bound.2⟩
  change s.regs.lookup first = target.regs.lookup first at readFirst
  change s.regs.lookup second = target.regs.lookup second at readSecond
  have clocks : target.clock = s.clock := stateRelHOL_clock relation
  rw [evaluate_jumpLower] at sourceRun
  cases hFirst : getVar first s with
  | none =>
    simp only [hFirst] at sourceRun
    exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
  | some left =>
    cases left with
    | loc name offset =>
      simp only [hFirst] at sourceRun
      exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
    | word left =>
      cases hSecond : getVar second s with
      | none =>
        simp only [hFirst, hSecond] at sourceRun
        exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
      | some right =>
        cases right with
        | loc name offset =>
          simp only [hFirst, hSecond] at sourceRun
          exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
        | word right =>
          simp only [hFirst, hSecond] at sourceRun
          have targetFirst : target.regs.lookup first = some (.word left) :=
            readFirst.symm.trans hFirst
          have targetSecond : target.regs.lookup second = some (.word right) :=
            readSecond.symm.trans hSecond
          by_cases lower : Compiler.Encoders.Asm.wordCmpHOL .lower left right = true
          · simp only [lower, if_true, StackSemControl.findCode] at sourceRun
            cases lookup : sptLookup label s.code with
            | none =>
              simp only [lookup] at sourceRun
              exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
            | some program =>
              simp only [lookup] at sourceRun
              obtain ⟨targetLookup, bodyBound⟩ := FindCode.codeLookup jump bounds pointer label
                s target program relation lookup
              by_cases zero : s.clock = 0
              · simp only [zero, if_true] at sourceRun
                rcases Prod.mk.inj sourceRun with ⟨resultEq, postEq⟩
                subst result
                subst postSource
                refine ⟨0, emptyEnv target, Nat.zero_le _, ?_, ?_, by simp only [emptyEnv]; exact clocks⟩
                · simpa only [comp, Nat.zero_add] using
                    (evaluate_jumpLower first second label target).trans (by
                      simp only [getVar, targetFirst, targetSecond, lower, if_true,
                        StackSemControl.findCode, targetLookup, clocks, zero])
                · exact (RelationLaws.stateRelConst jump bounds pointer s target relation).2.2.2.2.1
              · simp only [zero, if_false] at sourceRun
                rcases bodyRun : evaluate (program, decClock s) with ⟨bodyResult, middle⟩
                rw [bodyRun] at sourceRun
                by_cases bad : StackSemControl.badFunReturn bodyResult = true
                · simp only [bad, if_true] at sourceRun
                  exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
                · simp [bad] at sourceRun
                  rcases sourceRun with ⟨resultEq, postEq⟩
                  subst result
                  subst postSource
                  obtain ⟨clock, postTarget, hb, targetRun, postRelation, hc⟩ :=
                    ih program (decClock s) (callee_measure_lt program _ s zero) bodyResult middle
                      (decClock target) pointer bounds jump
                      ⟨bodyRun, notError, RelationLaws.stateRelDecClock jump bounds pointer s target
                        relation, bodyBound⟩ (hcode.1 label program hlabel lookup) hcode
                  refine ⟨clock, postTarget, hb, ?_, postRelation, hc⟩
                  have nonzero : clock + target.clock ≠ 0 := by omega
                  have clockEq : decClock {target with clock := clock + target.clock} =
                      {decClock target with clock := clock + (decClock target).clock} := by
                    simp only [decClock]
                    congr 1
                    omega
                  simp only [comp]
                  rw [evaluate_jumpLower]
                  simp only [getVar, targetFirst, targetSecond, StackSemControl.findCode,
                    targetLookup, lower, if_true, nonzero, if_false]
                  rw [clockEq, targetRun]
                  simp [bad]
          · simp [lower] at sourceRun
            rcases sourceRun with ⟨resultEq, postEq⟩
            subst result
            subst postSource
            refine ⟨0, target, Nat.zero_le _, ?_, relation, clocks⟩
            simpa only [comp, Nat.zero_add] using
              (evaluate_jumpLower first second label target).trans (by
                simp [getVar, targetFirst, targetSecond, lower])

theorem rawCallR {X : List Nat} (label : Nat) (s : StackSemStateFiniteExact width C F)
    (ih : IHR X (.rawCall label) s) : PropR X (.rawCall label) s := by
  intro result postSource target pointer bounds jump hyp hno hcode
  have hlabel : label ∉ X := notMem_of_contains (by simpa only [okP_rawCall] using hno)
  rcases hyp with ⟨sourceRun, notError, relation, _bound⟩
  have clocks : target.clock = s.clock := stateRelHOL_clock relation
  rw [evaluate_rawCall] at sourceRun
  cases lookup : sptLookup label s.code with
  | none =>
    simp only [lookup] at sourceRun
    exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
  | some program =>
    simp only [lookup] at sourceRun
    cases shape : StackSemControl.destSeq program with
    | none =>
      simp only [shape] at sourceRun
      exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
    | some pair =>
      rcases pair with ⟨frame, body⟩
      have programEq : program = .seq frame body := by
        cases program <;> simp [StackSemControl.destSeq] at shape ⊢
        exact ⟨shape.1, shape.2⟩
      subst program
      have hnoB : okP X body = true := by
        have := hcode.1 label _ hlabel lookup
        simp only [okP_seq, Bool.and_eq_true] at this
        exact this.2
      simp only [StackSemControl.destSeq] at sourceRun
      obtain ⟨targetLookup, programBound⟩ := FindCode.findCodeLemma jump bounds pointer
        s target (.inl label) (.seq frame body) ⟨relation, True.intro, lookup⟩
      change sptLookup label target.code = some (comp jump bounds pointer (.seq frame body))
        at targetLookup
      simp only [comp] at targetLookup
      change Flapjack.Compiler.Backend.StackProps.regBound frame pointer ∧
        Flapjack.Compiler.Backend.StackProps.regBound body pointer at programBound
      by_cases zero : s.clock = 0
      · simp only [zero, if_true] at sourceRun
        rcases Prod.mk.inj sourceRun with ⟨resultEq, postEq⟩
        subst result
        subst postSource
        refine ⟨0, emptyEnv target, Nat.zero_le _, ?_, ?_, by simp only [emptyEnv]; exact clocks⟩
        · simpa only [comp, Nat.zero_add] using
            (evaluate_rawCall label target).trans (by
              simp only [targetLookup, StackSemControl.destSeq, clocks, zero, if_true])
        · exact (RelationLaws.stateRelConst jump bounds pointer s target relation).2.2.2.2.1
      · simp only [zero, if_false] at sourceRun
        rcases bodyRun : evaluate (body, decClock s) with ⟨bodyResult, middle⟩
        rw [bodyRun] at sourceRun
        by_cases bad : StackSemControl.badFunReturn bodyResult = true
        · simp only [bad, if_true] at sourceRun
          exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
        · simp [bad] at sourceRun
          rcases sourceRun with ⟨resultEq, postEq⟩
          subst result
          subst postSource
          obtain ⟨clock, postTarget, hb, targetRun, postRelation, hc⟩ :=
            ih body (decClock s) (callee_measure_lt body _ s zero) bodyResult middle
              (decClock target) pointer bounds jump
              ⟨bodyRun, notError, RelationLaws.stateRelDecClock jump bounds pointer s target
                relation, programBound.2⟩ hnoB hcode
          refine ⟨clock, postTarget, hb, ?_, postRelation, hc⟩
          have nonzero : clock + target.clock ≠ 0 := by omega
          have clockEq : decClock {target with clock := clock + target.clock} =
              {decClock target with clock := clock + (decClock target).clock} := by
            simp only [decClock]
            congr 1
            omega
          simp only [comp]
          rw [evaluate_rawCall]
          simp only [targetLookup, StackSemControl.destSeq, nonzero, if_false]
          rw [clockEq, targetRun]
          simp [bad]

theorem tailR {X : List Nat} (dest : Sum Nat Nat) (handler : Option (HolProg width × Nat × Nat))
    (s : StackSemStateFiniteExact width C F) (ih : IHR X (.call none dest handler) s) :
    PropR X (.call none dest handler) s := by
  intro result postSource target pointer bounds jump hyp hno hcode
  rcases hyp with ⟨sourceRun, notError, relation, bound⟩
  have clocks : target.clock = s.clock := stateRelHOL_clock relation
  rw [evaluate_call] at sourceRun
  cases lookup : StackSemControl.findCode dest s.regs s.code with
  | none =>
    simp only [lookup] at sourceRun
    exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
  | some program =>
    simp only [lookup] at sourceRun
    cases handler with
    | some h =>
      exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
    | none =>
      obtain ⟨targetLookup, bodyBound⟩ := FindCode.findCodeLemma jump bounds pointer
        s target dest program ⟨relation, by
          simp only [Flapjack.Compiler.Backend.StackProps.regBound] at bound
          cases dest <;> exact bound.1, lookup⟩
      by_cases zero : s.clock = 0
      · simp only [zero, if_true] at sourceRun
        rcases Prod.mk.inj sourceRun with ⟨resultEq, postEq⟩
        subst result
        subst postSource
        refine ⟨0, emptyEnv target, Nat.zero_le _, ?_, ?_, by simp only [emptyEnv]; exact clocks⟩
        · simpa only [comp, Nat.zero_add] using
            (evaluate_call none dest none target).trans (by
              simp only [targetLookup, clocks, zero, if_true])
        · exact (RelationLaws.stateRelConst jump bounds pointer s target relation).2.2.2.2.1
      · simp only [zero, if_false, StackSemEvaluateClock.fixClockEvaluate] at sourceRun
        rcases bodyRun : evaluate (program, decClock s) with ⟨bodyResult, middle⟩
        rw [bodyRun] at sourceRun
        by_cases bad : StackSemControl.badFunReturn bodyResult = true
        · simp only [bad, if_true] at sourceRun
          exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
        · simp [bad] at sourceRun
          rcases sourceRun with ⟨resultEq, postEq⟩
          subst result
          subst postSource
          obtain ⟨clock, postTarget, hb, targetRun, postRelation, hc⟩ :=
            ih program (decClock s) (callee_measure_lt program _ s zero) bodyResult middle
              (decClock target) pointer bounds jump
              ⟨bodyRun, notError, RelationLaws.stateRelDecClock jump bounds pointer s target
                relation, bodyBound⟩ (okP_of_findCode hcode (okP_call hno).1 lookup) hcode
          refine ⟨clock, postTarget, hb, ?_, postRelation, hc⟩
          have nonzero : clock + target.clock ≠ 0 := by omega
          have clockEq : decClock {target with clock := clock + target.clock} =
              {decClock target with clock := clock + (decClock target).clock} := by
            simp only [decClock]
            congr 1
            omega
          simp only [comp]
          rw [evaluate_call]
          simp only [targetLookup, nonzero, if_false, StackSemEvaluateClock.fixClockEvaluate]
          rw [clockEq, targetRun]
          simp [bad]

/-- The returning-call case shared by `handler = none` and `handler = some _`: the callee's
result is either passed through (with the callee's allowance) or continued by `body`/`hbody`
(the callee returned normally, allowance `0`). -/
theorem returnNoneR {X : List Nat} (body : HolProg width) (link l1 l2 : Nat)
    (dest : Sum Nat Nat) (s : StackSemStateFiniteExact width C F)
    (ih : IHR X (.call (some (body, link, l1, l2)) dest none) s) :
    PropR X (.call (some (body, link, l1, l2)) dest none) s := by
  intro result postSource target pointer bounds jump hyp hno hcode
  have hnoBody : okP X body = true := (okP_call hno).2.1 body link l1 l2 rfl
  rcases hyp with ⟨sourceRun, notError, relation, bound⟩
  have clocks : target.clock = s.clock := stateRelHOL_clock relation
  rw [evaluateCallReturnNoneUnclamped] at sourceRun
  cases lookup : StackSemControl.findCode dest (s.regs.eraseEq link) s.code with
  | none =>
    simp only [lookup] at sourceRun
    exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
  | some program =>
    simp only [lookup] at sourceRun
    have hnoP := okP_of_findCode hcode (okP_call hno).1 lookup
    obtain ⟨targetLookup, programBound⟩ := FindCode.findCodeLemmaErased jump bounds pointer
      s target dest program link ⟨relation, by
        simp only [Flapjack.Compiler.Backend.StackProps.regBound] at bound
        cases dest <;> exact bound.1, lookup⟩
    have bodyBound : Flapjack.Compiler.Backend.StackProps.regBound body pointer := by
      simp only [Flapjack.Compiler.Backend.StackProps.regBound] at bound
      exact bound.2.1
    have linkBound : link < pointer := by
      simp only [Flapjack.Compiler.Backend.StackProps.regBound] at bound
      exact bound.2.2.1
    by_cases zero : s.clock = 0
    · simp only [zero, if_true] at sourceRun
      rcases Prod.mk.inj sourceRun with ⟨resultEq, postEq⟩
      subst result
      subst postSource
      refine ⟨0, emptyEnv target, Nat.zero_le _, ?_, ?_, by simp only [emptyEnv]; exact clocks⟩
      · simpa only [comp, Nat.zero_add] using
          (evaluateCallReturnNoneUnclamped (comp jump bounds pointer body) link l1 l2 dest
            target).trans (by simp only [targetLookup, clocks, zero, if_true])
      · exact (RelationLaws.stateRelConst jump bounds pointer s target relation).2.2.2.2.1
    · simp only [zero, if_false] at sourceRun
      have targetNonzero : target.clock ≠ 0 := by omega
      have entry := entryRelation jump bounds pointer link l1 l2 s target relation linkBound
      have h0' : (setVar link (.loc l1 l2) s).clock ≠ 0 := zero
      have hmc := callee_measure_lt program (.call (some (body, link, l1, l2)) dest none)
        (setVar link (.loc l1 l2) s) h0'
      have hcodeC : CodeOk X (decClock (setVar link (.loc l1 l2) s)) := hcode
      rcases bodyRun : evaluate (program, decClock (setVar link (.loc l1 l2) s)) with
        ⟨bodyResult, middle⟩
      rw [bodyRun] at sourceRun
      have hcont : ∀ (q : HolProg width), LexNat (stackSemMeasure q middle)
          (stackSemMeasure (.call (some (body, link, l1, l2)) dest none) s) := by
        intro q
        have := call_continuation_measure_lt q (.call (some (body, link, l1, l2)) dest none)
          s link l1 l2 (evaluate (program, decClock (setVar link (.loc l1 l2) s))) zero
        rwa [StackSemEvaluateClock.fixClockEvaluate, bodyRun] at this
      have calleeIH := fun r => ih program _ hmc r middle
        (decClock (setVar link (.loc l1 l2) target)) pointer bounds jump
      cases bodyResult with
      | none =>
        exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
      | some value =>
        cases value with
        | error => exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
        | «break» n => exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
        | «continue» n => exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
        | result value =>
          change (if value ≠ .loc l1 l2 then (some .error, middle)
            else evaluate (body, middle)) = (result, postSource) at sourceRun
          split at sourceRun
          · exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
          · rename_i equal
            have correct : value = .loc l1 l2 := by simpa only [ne_eq, not_not] using equal
            subst value
            obtain ⟨first, middleTarget, hb1, calleeRun, middleRelation, -⟩ :=
              calleeIH (some (.result (.loc l1 l2))) ⟨bodyRun, by simp, entry, programBound⟩
                hnoP hcodeC
            obtain ⟨second, postTarget, hb2, returnRun, postRelation, hc2⟩ :=
              ih body middle (hcont body) result postSource middleTarget pointer bounds jump
                ⟨sourceRun, notError, middleRelation, bodyBound⟩ hnoBody
                (codeOk_evaluate bodyRun hcodeC)
            have boosted := calleeAllowance (comp jump bounds pointer program) target middleTarget
              link l1 l2 first second targetNonzero calleeRun
            have hb1' : first = 0 := by simpa [extraR] using hb1
            refine ⟨first + second, postTarget, by omega, ?_, postRelation, hc2⟩
            have totalNonzero : (first + second) + target.clock ≠ 0 := by omega
            simp only [comp]
            rw [evaluateCallReturnNoneResult (comp jump bounds pointer body)
              (comp jump bounds pointer program) link l1 l2 dest
              {target with clock := (first + second) + target.clock}
              {middleTarget with clock := second + middleTarget.clock}
              targetLookup totalNonzero boosted]
            exact returnRun
        | halt n =>
          rcases Prod.mk.inj sourceRun with ⟨resultEq, postEq⟩
          subst result
          subst postSource
          obtain ⟨clock, postTarget, hb, targetRun, postRelation, hc⟩ :=
            calleeIH (some (.halt n)) ⟨bodyRun, by simp, entry, programBound⟩ hnoP hcodeC
          refine ⟨clock, postTarget, hb, ?_, postRelation, hc⟩
          have nonzero : clock + target.clock ≠ 0 := by omega
          simp only [comp]
          rw [evaluateCallReturnNoneUnclamped]
          simp only [targetLookup, nonzero, if_false]
          rw [entryClock target link l1 l2 clock targetNonzero, targetRun]
        | timeOut =>
          rcases Prod.mk.inj sourceRun with ⟨resultEq, postEq⟩
          subst result
          subst postSource
          obtain ⟨clock, postTarget, hb, targetRun, postRelation, hc⟩ :=
            calleeIH (some .timeOut) ⟨bodyRun, by simp, entry, programBound⟩ hnoP hcodeC
          refine ⟨clock, postTarget, hb, ?_, postRelation, hc⟩
          have nonzero : clock + target.clock ≠ 0 := by omega
          simp only [comp]
          rw [evaluateCallReturnNoneUnclamped]
          simp only [targetLookup, nonzero, if_false]
          rw [entryClock target link l1 l2 clock targetNonzero, targetRun]
        | finalFFI event =>
          rcases Prod.mk.inj sourceRun with ⟨resultEq, postEq⟩
          subst result
          subst postSource
          obtain ⟨clock, postTarget, hb, targetRun, postRelation, hc⟩ :=
            calleeIH (some (.finalFFI event)) ⟨bodyRun, by simp, entry, programBound⟩ hnoP hcodeC
          refine ⟨clock, postTarget, hb, ?_, postRelation, hc⟩
          have nonzero : clock + target.clock ≠ 0 := by omega
          simp only [comp]
          rw [evaluateCallReturnNoneUnclamped]
          simp only [targetLookup, nonzero, if_false]
          rw [entryClock target link l1 l2 clock targetNonzero, targetRun]
        | exception location =>
          rcases Prod.mk.inj sourceRun with ⟨resultEq, postEq⟩
          subst result
          subst postSource
          obtain ⟨clock, postTarget, hb, targetRun, postRelation, hc⟩ :=
            calleeIH (some (.exception location)) ⟨bodyRun, by simp, entry, programBound⟩ hnoP
              hcodeC
          refine ⟨clock, postTarget, hb, ?_, postRelation, hc⟩
          have nonzero : clock + target.clock ≠ 0 := by omega
          simp only [comp]
          rw [evaluateCallReturnNoneUnclamped]
          simp only [targetLookup, nonzero, if_false]
          rw [entryClock target link l1 l2 clock targetNonzero, targetRun]

theorem returnHandlerR {X : List Nat} (body handler : HolProg width) (link l1 l2 hl1 hl2 : Nat)
    (dest : Sum Nat Nat) (s : StackSemStateFiniteExact width C F)
    (ih : IHR X (.call (some (body, link, l1, l2)) dest (some (handler, hl1, hl2))) s) :
    PropR X (.call (some (body, link, l1, l2)) dest (some (handler, hl1, hl2))) s := by
  intro result postSource target pointer bounds jump hyp hno hcode
  have hnoBody : okP X body = true := (okP_call hno).2.1 body link l1 l2 rfl
  have hnoHandler : okP X handler = true := (okP_call hno).2.2 handler hl1 hl2 rfl
  rcases hyp with ⟨sourceRun, notError, relation, bound⟩
  have clocks : target.clock = s.clock := stateRelHOL_clock relation
  rw [evaluateCallReturnHandlerUnclamped] at sourceRun
  cases lookup : StackSemControl.findCode dest (s.regs.eraseEq link) s.code with
  | none =>
    simp only [lookup] at sourceRun
    exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
  | some program =>
    simp only [lookup] at sourceRun
    have hnoP := okP_of_findCode hcode (okP_call hno).1 lookup
    obtain ⟨targetLookup, programBound⟩ := FindCode.findCodeLemmaErased jump bounds pointer
      s target dest program link ⟨relation, by
        simp only [Flapjack.Compiler.Backend.StackProps.regBound] at bound
        cases dest <;> exact bound.1, lookup⟩
    have bodyBound : Flapjack.Compiler.Backend.StackProps.regBound body pointer := by
      simp only [Flapjack.Compiler.Backend.StackProps.regBound] at bound
      exact bound.2.1
    have linkBound : link < pointer := by
      simp only [Flapjack.Compiler.Backend.StackProps.regBound] at bound
      exact bound.2.2.1
    have handlerBound : Flapjack.Compiler.Backend.StackProps.regBound handler pointer := by
      simp only [Flapjack.Compiler.Backend.StackProps.regBound] at bound
      exact bound.2.2.2
    by_cases zero : s.clock = 0
    · simp only [zero, if_true] at sourceRun
      rcases Prod.mk.inj sourceRun with ⟨resultEq, postEq⟩
      subst result
      subst postSource
      refine ⟨0, emptyEnv target, Nat.zero_le _, ?_, ?_, by simp only [emptyEnv]; exact clocks⟩
      · simpa only [comp, Nat.zero_add] using
          (evaluateCallReturnHandlerUnclamped (comp jump bounds pointer body)
            (comp jump bounds pointer handler) link l1 l2 hl1 hl2 dest target).trans (by
            simp only [targetLookup, clocks, zero, if_true])
      · exact (RelationLaws.stateRelConst jump bounds pointer s target relation).2.2.2.2.1
    · simp only [zero, if_false] at sourceRun
      have targetNonzero : target.clock ≠ 0 := by omega
      have entry := entryRelation jump bounds pointer link l1 l2 s target relation linkBound
      have h0' : (setVar link (.loc l1 l2) s).clock ≠ 0 := zero
      have hmc := callee_measure_lt program
        (.call (some (body, link, l1, l2)) dest (some (handler, hl1, hl2)))
        (setVar link (.loc l1 l2) s) h0'
      have hcodeC : CodeOk X (decClock (setVar link (.loc l1 l2) s)) := hcode
      rcases bodyRun : evaluate (program, decClock (setVar link (.loc l1 l2) s)) with
        ⟨bodyResult, middle⟩
      rw [bodyRun] at sourceRun
      have hcont : ∀ (q : HolProg width), LexNat (stackSemMeasure q middle)
          (stackSemMeasure (.call (some (body, link, l1, l2)) dest (some (handler, hl1, hl2)))
            s) := by
        intro q
        have := call_continuation_measure_lt q
          (.call (some (body, link, l1, l2)) dest (some (handler, hl1, hl2)))
          s link l1 l2 (evaluate (program, decClock (setVar link (.loc l1 l2) s))) zero
        rwa [StackSemEvaluateClock.fixClockEvaluate, bodyRun] at this
      have calleeIH := fun r => ih program _ hmc r middle
        (decClock (setVar link (.loc l1 l2) target)) pointer bounds jump
      cases bodyResult with
      | none =>
        exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
      | some value =>
        cases value with
        | error => exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
        | «break» n => exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
        | «continue» n => exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
        | result value =>
          change (if value ≠ .loc l1 l2 then (some .error, middle)
            else evaluate (body, middle)) = (result, postSource) at sourceRun
          split at sourceRun
          · exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
          · rename_i equal
            have correct : value = .loc l1 l2 := by simpa only [ne_eq, not_not] using equal
            subst value
            obtain ⟨first, middleTarget, hb1, calleeRun, middleRelation, -⟩ :=
              calleeIH (some (.result (.loc l1 l2))) ⟨bodyRun, by simp, entry, programBound⟩
                hnoP hcodeC
            obtain ⟨second, postTarget, hb2, returnRun, postRelation, hc2⟩ :=
              ih body middle (hcont body) result postSource middleTarget pointer bounds jump
                ⟨sourceRun, notError, middleRelation, bodyBound⟩ hnoBody
                (codeOk_evaluate bodyRun hcodeC)
            have boosted := calleeAllowance (comp jump bounds pointer program) target middleTarget
              link l1 l2 first second targetNonzero calleeRun
            have hb1' : first = 0 := by simpa [extraR] using hb1
            refine ⟨first + second, postTarget, by omega, ?_, postRelation, hc2⟩
            have totalNonzero : (first + second) + target.clock ≠ 0 := by omega
            simp only [comp]
            rw [evaluateCallReturnHandlerResult (comp jump bounds pointer body)
              (comp jump bounds pointer handler) (comp jump bounds pointer program) link l1 l2
              hl1 hl2 dest
              {target with clock := (first + second) + target.clock}
              {middleTarget with clock := second + middleTarget.clock}
              targetLookup totalNonzero boosted]
            exact returnRun
        | halt n =>
          rcases Prod.mk.inj sourceRun with ⟨resultEq, postEq⟩
          subst result
          subst postSource
          obtain ⟨clock, postTarget, hb, targetRun, postRelation, hc⟩ :=
            calleeIH (some (.halt n)) ⟨bodyRun, by simp, entry, programBound⟩ hnoP hcodeC
          refine ⟨clock, postTarget, hb, ?_, postRelation, hc⟩
          have nonzero : clock + target.clock ≠ 0 := by omega
          simp only [comp]
          rw [evaluateCallReturnHandlerUnclamped]
          simp only [targetLookup, nonzero, if_false]
          rw [entryClock target link l1 l2 clock targetNonzero, targetRun]
        | timeOut =>
          rcases Prod.mk.inj sourceRun with ⟨resultEq, postEq⟩
          subst result
          subst postSource
          obtain ⟨clock, postTarget, hb, targetRun, postRelation, hc⟩ :=
            calleeIH (some .timeOut) ⟨bodyRun, by simp, entry, programBound⟩ hnoP hcodeC
          refine ⟨clock, postTarget, hb, ?_, postRelation, hc⟩
          have nonzero : clock + target.clock ≠ 0 := by omega
          simp only [comp]
          rw [evaluateCallReturnHandlerUnclamped]
          simp only [targetLookup, nonzero, if_false]
          rw [entryClock target link l1 l2 clock targetNonzero, targetRun]
        | finalFFI event =>
          rcases Prod.mk.inj sourceRun with ⟨resultEq, postEq⟩
          subst result
          subst postSource
          obtain ⟨clock, postTarget, hb, targetRun, postRelation, hc⟩ :=
            calleeIH (some (.finalFFI event)) ⟨bodyRun, by simp, entry, programBound⟩ hnoP hcodeC
          refine ⟨clock, postTarget, hb, ?_, postRelation, hc⟩
          have nonzero : clock + target.clock ≠ 0 := by omega
          simp only [comp]
          rw [evaluateCallReturnHandlerUnclamped]
          simp only [targetLookup, nonzero, if_false]
          rw [entryClock target link l1 l2 clock targetNonzero, targetRun]
        | exception value =>
          change (if value ≠ .loc hl1 hl2 then (some .error, middle)
            else evaluate (handler, middle)) = (result, postSource) at sourceRun
          split at sourceRun
          · exact False.elim (notError (Prod.mk.inj sourceRun).1.symm)
          · rename_i equal
            have correct : value = .loc hl1 hl2 := by simpa only [ne_eq, not_not] using equal
            subst value
            obtain ⟨first, middleTarget, hb1, calleeRun, middleRelation, -⟩ :=
              calleeIH (some (.exception (.loc hl1 hl2))) ⟨bodyRun, by simp, entry, programBound⟩
                hnoP hcodeC
            obtain ⟨second, postTarget, hb2, returnRun, postRelation, hc2⟩ :=
              ih handler middle (hcont handler) result postSource middleTarget pointer bounds jump
                ⟨sourceRun, notError, middleRelation, handlerBound⟩ hnoHandler
                (codeOk_evaluate bodyRun hcodeC)
            have boosted := exceptionAllowance (comp jump bounds pointer program) target
              middleTarget link l1 l2 hl1 hl2 first second targetNonzero calleeRun
            have hb1' : first = 0 := by simpa [extraR] using hb1
            refine ⟨first + second, postTarget, by omega, ?_, postRelation, hc2⟩
            have totalNonzero : (first + second) + target.clock ≠ 0 := by omega
            simp only [comp]
            rw [evaluateCallReturnHandlerException (comp jump bounds pointer body)
              (comp jump bounds pointer handler) (comp jump bounds pointer program) link l1 l2
              hl1 hl2 dest
              {target with clock := (first + second) + target.clock}
              {middleTarget with clock := second + middleTarget.clock}
              targetLookup totalNonzero boosted]
            exact returnRun

end

end InitECandidate.Solver.Compiler.StackPasses.Remove
