import InitECandidate.Solver.Compiler.StackPasses.RawCall.Basic

/-!
# Bounded `stack_rawcall` `comp_correct`: `Call` and the optimised `Seq`

The tail call is proved with the tighter bound `s.clock - 1 - post.clock` (the callee body's
consumption): the optimised `Seq` adds one tick in its greater-frame branch, paid for by the
replaced call's own tick.
-/

namespace InitECandidate.Solver.Compiler.StackPasses.RawCall

open Flapjack Flapjack.Compiler.Backend.StackLang Flapjack.StackSemEvaluate
open Flapjack.StackSemStateOps Flapjack.StackSemControl Flapjack.StackSemMeasure
open Flapjack.Compiler.Backend.StackProps Flapjack.Compiler.Backend.StackProps.EvaluateAddClock
open Flapjack.Compiler.Backend.StackRawCall
open Flapjack.Compiler.Backend.StackRawCall.IfCase
open Flapjack.Compiler.Backend.StackRawCall.LoopCase
open Flapjack.Compiler.Backend.StackRawCall.RawCallCase
open Flapjack.Compiler.Backend.StackRawCall.CallCase

set_option autoImplicit false

section
variable {width : Nat} [NeZero width] {C F : Type}

/-- The tail call (`ret = none`), with the callee's consumption as bound. -/
theorem tailB (dest : Sum Nat Nat) (handler : Option (HolProg width × Nat × Nat))
    (info : Spt Nat) (s t post : StackSemStateFiniteExact width C F)
    (r : Option (StackSemResult width))
    (calleeIH : ∀ program, findCode dest s.regs s.code = some program → s.clock ≠ 0 →
      PropB program (decClock s))
    (hyp : evaluate (.call none dest handler, s) = (r, post) ∧ r ≠ some .error ∧
      stateRel info s t) :
    SimB (s.clock - 1 - post.clock) (.call none dest handler) info t post r ∧
      (s.clock ≠ 0 → post.clock < s.clock) := by
  obtain ⟨execution, nonerror, relation⟩ := hyp
  rw [evaluate_call] at execution
  cases lookup : findCode dest s.regs s.code with
  | none => simp [lookup] at execution; exact False.elim (nonerror execution.1.symm)
  | some program =>
      rw [lookup] at execution
      cases handler with
      | some handler =>
          simp only [Prod.mk.injEq] at execution
          exact False.elim (nonerror execution.1.symm)
      | none =>
          obtain ⟨entryInfo, entryRelation, targetLookup⟩ :=
            callEntry info s t relation dest program lookup
          have clockEq := stateRel_clock info s t relation
          by_cases zero : s.clock = 0
          · simp only [zero, if_true, Prod.mk.injEq] at execution
            obtain ⟨rfl, rfl⟩ := execution
            refine ⟨⟨0, emptyEnv t, (emptyEnv t).stackSpace, Nat.zero_le _,
              stateRel_emptyEnv info s t relation, ?_, ?_⟩, fun h => absurd zero h⟩
            · have targetZero : t.clock = 0 := clockEq.trans zero
              simp only [Nat.add_zero, evaluate_call, targetLookup, targetZero, if_true]
              have update : {t with clock := 0} = t := by rw [← targetZero]
              rw [update]
            · simp
          · simp only [zero, if_false, StackSemEvaluateClock.fixClockEvaluate] at execution
            rcases bodyExecution : evaluate (program, decClock s) with ⟨bodyResult, bodyPost⟩
            rw [bodyExecution] at execution
            have hb' : bodyPost.clock ≤ (decClock s).clock :=
              StackSemEvaluateClock.evaluateClock _ _ _ _ bodyExecution
            have hdc : (decClock s).clock = s.clock - 1 := rfl
            by_cases bad : badFunReturn bodyResult = true
            · simp only [bad, if_true, Prod.mk.injEq] at execution
              exact False.elim (nonerror execution.1.symm)
            · simp only [bad, Bool.false_eq_true, if_false, Prod.mk.injEq] at execution
              obtain ⟨rfl, rfl⟩ := execution
              obtain ⟨clock, targetPost, space, hb, postRelation, targetExecution, guard⟩ :=
                (calleeIH program lookup zero entryInfo (decClock t) bodyPost bodyResult
                  ⟨bodyExecution, nonerror,
                    stateRel_decClock entryInfo s t entryRelation⟩).1
              have frames : stateOk info s.code := by
                obtain ⟨_, _, _, frames, _⟩ := relation
                exact frames
              have postFrames := stateOk_afterEvaluate info program (decClock s)
                bodyPost bodyResult frames bodyExecution
              refine ⟨⟨clock, targetPost, space, by omega,
                stateRel_changeInfo entryInfo info bodyPost targetPost postRelation postFrames,
                ?_, guard⟩, fun _ => by omega⟩
              have targetNonzero : t.clock ≠ 0 := by omega
              have addedNonzero : t.clock + clock ≠ 0 := by omega
              rw [evaluate_call]
              simp only [targetLookup, addedNonzero, if_false]
              rw [StackSemEvaluateClock.fixClockEvaluate]
              simp only [decClock_addClock t clock targetNonzero,
                targetExecution, bad, Bool.false_eq_true, if_false]

/-- The returning call (`ret = some _`). -/
theorem returnB (ret : HolProg width) (link l1 l2 : Nat) (dest : Sum Nat Nat)
    (handler : Option (HolProg width × Nat × Nat))
    (s : StackSemStateFiniteExact width C F)
    (ih : IHB (.call (some (ret, link, l1, l2)) dest handler) s) :
    PropB (.call (some (ret, link, l1, l2)) dest handler) s := by
  classical
  intro info t post r hyp
  obtain ⟨execution, nonerror, relation⟩ := hyp
  suffices simulation :
      SimB (s.clock - post.clock) (comp info (.call (some (ret, link, l1, l2)) dest handler))
        info t post r by
    exact ⟨by simpa only [compTop] using simulation, simulation⟩
  rw [evaluate_call] at execution
  dsimp only at execution
  cases lookup : findCode dest (s.regs.eraseEq link) s.code with
  | none => simp [lookup] at execution; exact False.elim (nonerror execution.1.symm)
  | some program =>
      rw [lookup] at execution
      have clockEq := stateRel_clock info s t relation
      by_cases zero : s.clock = 0
      · simp only [zero, if_true, Prod.mk.injEq] at execution
        obtain ⟨rfl, rfl⟩ := execution
        obtain ⟨entryInfo, _, targetLookup⟩ :=
          callEntryErased info s t relation dest link program lookup
        refine ⟨0, emptyEnv t, (emptyEnv t).stackSpace, Nat.zero_le _,
          stateRel_emptyEnv info s t relation, ?_, by simp⟩
        have targetZero : t.clock = 0 := clockEq.trans zero
        have update : {t with clock := 0} = t := by rw [← targetZero]
        cases handler with
        | none =>
            simp only [comp, Nat.add_zero, targetZero, update,
              evaluate_call, targetLookup, if_true]
        | some triple =>
            obtain ⟨h, hl1, hl2⟩ := triple
            simp only [comp, Nat.add_zero, targetZero, update,
              evaluate_call, targetLookup, if_true]
      · simp only [zero, if_false] at execution
        rw [StackSemEvaluateClock.fixClockEvaluate] at execution
        rcases bodyExecution : evaluate
          (program, decClock (setVar link (.loc l1 l2) s)) with ⟨bodyResult, middle⟩
        rw [bodyExecution] at execution
        have hmid : middle.clock ≤ s.clock - 1 :=
          StackSemEvaluateClock.evaluateClock _ _ _ _ bodyExecution
        have bodyNonerror : bodyResult ≠ some .error := by
          intro equal
          rw [equal] at execution
          simp only [Prod.mk.injEq] at execution
          exact nonerror execution.1.symm
        -- the callee
        have h0' : (setVar link (.loc l1 l2) s).clock ≠ 0 := zero
        have hmc : LexNat (stackSemMeasure program (decClock (setVar link (.loc l1 l2) s)))
            (stackSemMeasure (.call (some (ret, link, l1, l2)) dest handler) s) :=
          callee_measure_lt program _ (setVar link (.loc l1 l2) s) h0'
        obtain ⟨entryInfo, entryRelation, targetLookup⟩ :=
          callEntryErased info s t relation dest link program lookup
        obtain ⟨firstClock, targetMiddle, firstSpace, hb1, middleRelation0, calleeExecution,
          firstGuard⟩ :=
          (ih program _ hmc entryInfo (decClock (setVar link (.loc l1 l2) t)) middle bodyResult
            ⟨bodyExecution, bodyNonerror, stateRel_decClock entryInfo
              (setVar link (.loc l1 l2) s) (setVar link (.loc l1 l2) t)
              (stateRel_setVar entryInfo s t entryRelation link (.loc l1 l2))⟩).1
        have frames : stateOk info s.code := by
          obtain ⟨_, _, _, frames, _⟩ := relation
          exact frames
        have middleFrames := stateOk_afterEvaluate info program
          (decClock (setVar link (.loc l1 l2) s)) middle bodyResult frames bodyExecution
        have middleRelation :=
          stateRel_changeInfo entryInfo info middle targetMiddle middleRelation0 middleFrames
        have hb1' : firstClock ≤ s.clock - 1 - middle.clock := hb1
        have targetNonzero : t.clock ≠ 0 := by omega
        have addedNonzero : t.clock + firstClock ≠ 0 := by omega
        have calleeNative : evaluate
            (compTop entryInfo program, decClock (setVar link (.loc l1 l2)
              {t with clock := t.clock + firstClock})) =
            (bodyResult, {targetMiddle with stackSpace := firstSpace}) := by
          rw [returningInput_addClock t link l1 l2 firstClock targetNonzero]
          exact calleeExecution
        have hcont : ∀ (q : HolProg width), LexNat (stackSemMeasure q middle)
            (stackSemMeasure (.call (some (ret, link, l1, l2)) dest handler) s) := by
          intro q
          have := call_continuation_measure_lt q (.call (some (ret, link, l1, l2)) dest handler)
            s link l1 l2 (evaluate (program, decClock (setVar link (.loc l1 l2) s))) zero
          rwa [StackSemEvaluateClock.fixClockEvaluate, bodyExecution] at this
        cases bodyResult with
        | none =>
            simp only [Prod.mk.injEq] at execution
            exact False.elim (nonerror execution.1.symm)
        | some value =>
            cases value with
            | error => exact False.elim (bodyNonerror rfl)
            | «break» label =>
                simp only [Prod.mk.injEq] at execution
                exact False.elim (nonerror execution.1.symm)
            | «continue» label =>
                simp only [Prod.mk.injEq] at execution
                exact False.elim (nonerror execution.1.symm)
            | halt value =>
                simp only [Prod.mk.injEq] at execution
                obtain ⟨rfl, rfl⟩ := execution
                refine ⟨firstClock, targetMiddle, firstSpace, by omega, middleRelation, ?_,
                  firstGuard⟩
                cases handler with
                | none =>
                    simp only [comp, evaluate_call, targetLookup, addedNonzero, if_false]
                    rw [StackSemEvaluateClock.fixClockEvaluate, calleeNative]
                | some triple =>
                    obtain ⟨h, hl1, hl2⟩ := triple
                    simp only [comp, evaluate_call, targetLookup, addedNonzero, if_false]
                    rw [StackSemEvaluateClock.fixClockEvaluate, calleeNative]
            | timeOut =>
                simp only [Prod.mk.injEq] at execution
                obtain ⟨rfl, rfl⟩ := execution
                refine ⟨firstClock, targetMiddle, firstSpace, by omega, middleRelation, ?_,
                  firstGuard⟩
                cases handler with
                | none =>
                    simp only [comp, evaluate_call, targetLookup, addedNonzero, if_false]
                    rw [StackSemEvaluateClock.fixClockEvaluate, calleeNative]
                | some triple =>
                    obtain ⟨h, hl1, hl2⟩ := triple
                    simp only [comp, evaluate_call, targetLookup, addedNonzero, if_false]
                    rw [StackSemEvaluateClock.fixClockEvaluate, calleeNative]
            | finalFFI event =>
                simp only [Prod.mk.injEq] at execution
                obtain ⟨rfl, rfl⟩ := execution
                refine ⟨firstClock, targetMiddle, firstSpace, by omega, middleRelation, ?_,
                  firstGuard⟩
                cases handler with
                | none =>
                    simp only [comp, evaluate_call, targetLookup, addedNonzero, if_false]
                    rw [StackSemEvaluateClock.fixClockEvaluate, calleeNative]
                | some triple =>
                    obtain ⟨h, hl1, hl2⟩ := triple
                    simp only [comp, evaluate_call, targetLookup, addedNonzero, if_false]
                    rw [StackSemEvaluateClock.fixClockEvaluate, calleeNative]
            | result value =>
                by_cases equal : value = .loc l1 l2
                · subst value
                  simp only [ne_eq, not_true_eq_false, if_false] at execution
                  have hpost : post.clock ≤ middle.clock :=
                    StackSemEvaluateClock.evaluateClock _ _ _ _ execution
                  have spaceEq := firstGuard (by simp)
                  subst firstSpace
                  have selfSpace : {targetMiddle with stackSpace := targetMiddle.stackSpace} =
                      targetMiddle := rfl
                  rw [selfSpace] at calleeExecution
                  obtain ⟨secondClock, targetPost, finalSpace, hb2, postRelation,
                    continuationExecution, finalGuard⟩ :=
                    (ih ret middle (hcont ret) info targetMiddle post r
                      ⟨execution, nonerror, middleRelation⟩).2
                  have extended := extendReturningCallee (compTop entryInfo program) t
                    targetMiddle (some (.result (.loc l1 l2))) link l1 l2 firstClock secondClock
                    targetNonzero calleeExecution (by simp)
                  have totalNonzero : t.clock + (firstClock + secondClock) ≠ 0 := by omega
                  refine ⟨firstClock + secondClock, targetPost, finalSpace, by omega,
                    postRelation, ?_, finalGuard⟩
                  cases handler with
                  | none =>
                      simp only [comp, evaluate_call, targetLookup, totalNonzero, if_false]
                      rw [StackSemEvaluateClock.fixClockEvaluate, extended]
                      simpa only [ne_eq, not_true_eq_false, if_false] using continuationExecution
                  | some triple =>
                      obtain ⟨h, hl1, hl2⟩ := triple
                      simp only [comp, evaluate_call, targetLookup, totalNonzero, if_false]
                      rw [StackSemEvaluateClock.fixClockEvaluate, extended]
                      simpa only [ne_eq, not_true_eq_false, if_false] using continuationExecution
                · simp only [ne_eq, equal, not_false_eq_true, if_true, Prod.mk.injEq] at execution
                  exact False.elim (nonerror execution.1.symm)
            | exception value =>
                cases handler with
                | none =>
                    simp only [Prod.mk.injEq] at execution
                    obtain ⟨rfl, rfl⟩ := execution
                    refine ⟨firstClock, targetMiddle, firstSpace, by omega, middleRelation, ?_,
                      firstGuard⟩
                    simp only [comp, evaluate_call, targetLookup, addedNonzero, if_false]
                    rw [StackSemEvaluateClock.fixClockEvaluate, calleeNative]
                | some triple =>
                    obtain ⟨h, hl1, hl2⟩ := triple
                    by_cases equal : value = .loc hl1 hl2
                    · subst value
                      simp only [ne_eq, not_true_eq_false, if_false] at execution
                      have hpost : post.clock ≤ middle.clock :=
                        StackSemEvaluateClock.evaluateClock _ _ _ _ execution
                      have spaceEq := firstGuard (by simp)
                      subst firstSpace
                      have selfSpace : {targetMiddle with stackSpace := targetMiddle.stackSpace} =
                          targetMiddle := rfl
                      rw [selfSpace] at calleeExecution
                      obtain ⟨secondClock, targetPost, finalSpace, hb2, postRelation,
                        continuationExecution, finalGuard⟩ :=
                        (ih h middle (hcont h) info targetMiddle post r
                          ⟨execution, nonerror, middleRelation⟩).2
                      have extended := extendReturningCallee (compTop entryInfo program) t
                        targetMiddle (some (.exception (.loc hl1 hl2))) link l1 l2
                        firstClock secondClock targetNonzero calleeExecution (by simp)
                      have totalNonzero : t.clock + (firstClock + secondClock) ≠ 0 := by omega
                      refine ⟨firstClock + secondClock, targetPost, finalSpace, by omega,
                        postRelation, ?_, finalGuard⟩
                      simp only [comp, evaluate_call, targetLookup, totalNonzero, if_false]
                      rw [StackSemEvaluateClock.fixClockEvaluate, extended]
                      simpa only [ne_eq, not_true_eq_false, if_false] using continuationExecution
                    · simp only [ne_eq, equal, not_false_eq_true, if_true, Prod.mk.injEq] at execution
                      exact False.elim (nonerror execution.1.symm)

/-- The optimised `Seq` (`StackFree k; Call` to a procedure with entry frame `l`): one extra
tick in the greater-frame branch, paid for by the replaced call's tick. -/
theorem optimizedB (released allocated dest : Nat) (info : Spt Nat)
    (s t post : StackSemStateFiniteExact width C F)
    (r : Option (StackSemResult width))
    (frame : sptLookup dest info = some allocated)
    (ih : IHB (.seq (.stackFree released) (.call none (.inl dest) none)) s)
    (hyp : evaluate (.seq (.stackFree released) (.call none (.inl dest) none), s) = (r, post) ∧
      r ≠ some .error ∧ stateRel info s t) :
    SimB (s.clock - post.clock) (SeqCase.optimizedSeq released allocated dest) info t post r := by
  obtain ⟨execution, nonerror, relation⟩ := hyp
  have originalRelation := relation
  obtain ⟨code, domain, targetEq, frames, entries⟩ := relation
  have targetSpace : t.stackSpace = s.stackSpace := by rw [targetEq]
  have targetClock : t.clock = s.clock := by rw [targetEq]
  have clockSelf : {t with clock := t.clock + 0} = t := rfl
  rw [SeqCase.evaluateSeqUnclamped, evaluate_stackFree] at execution
  by_cases enabled : s.useStack = true
  · simp only [enabled, Bool.not_true, Bool.false_eq_true, if_false] at execution
    by_cases badBounds : s.stack.length < s.stackSpace + released
    · simp only [badBounds, if_true, Prod.mk.injEq] at execution
      exact False.elim (nonerror execution.1.symm)
    · simp only [badBounds, if_false] at execution
      have shiftedRelation := SeqCase.stateRel_setStackSpace info s t originalRelation
        (s.stackSpace + released)
      have targetEnabled : t.useStack = true := by simpa only [targetEq] using enabled
      have targetBounds : t.stackSpace + released ≤ t.stack.length := by
        simpa only [targetEq] using (show s.stackSpace + released ≤ s.stack.length by omega)
      obtain ⟨body, sourceEntry⟩ := frames dest allocated frame
      obtain ⟨entryInfo, _, targetLookup⟩ := rawCallEntry info s t originalRelation
        dest (.stackAlloc allocated) body sourceEntry
      have targetEntry : sptLookup dest t.code =
          some (.seq (.stackAlloc allocated) (comp entryInfo body)) := by
        simpa only [comp] using targetLookup
      replace execution : evaluate (.call none (.inl dest) none,
          {s with stackSpace := s.stackSpace + released}) = (r, post) := by
        simpa only [enabled] using execution
      have callExecution := execution
      rw [SeqCase.evaluateCallAlloc dest allocated body
        {s with stackSpace := s.stackSpace + released} sourceEntry] at execution
      by_cases zero : s.clock = 0
      · simp only [zero, if_true, Prod.mk.injEq] at execution
        obtain ⟨rfl, rfl⟩ := execution
        let targetPost := emptyEnv {t with stackSpace := s.stackSpace + released}
        refine ⟨0, targetPost,
          (if allocated < released then t.stackSpace + (released - allocated)
           else t.stackSpace), Nat.zero_le _, ?_, ?_, by simp⟩
        · simpa only [zero] using stateRel_emptyEnv info
            {s with stackSpace := s.stackSpace + released}
            {t with stackSpace := s.stackSpace + released} shiftedRelation
        · rw [clockSelf]
          simpa only [targetPost, emptyEnv] using
            SeqCase.zeroOptimization released allocated dest (comp entryInfo body) t
              targetEntry targetEnabled targetBounds (targetClock.trans zero)
      · simp only [zero, if_false,
          if_neg (show ¬ (!s.useStack) = true by simp [enabled])] at execution
        by_cases failure : s.stackSpace + released < allocated
        · simp only [failure, if_true, Prod.mk.injEq] at execution
          obtain ⟨rfl, rfl⟩ := execution
          let targetPost := emptyEnv (decClock {t with stackSpace := s.stackSpace + released})
          refine ⟨0, targetPost, t.stackSpace, Nat.zero_le _,
            stateRel_emptyEnv info _ _ (stateRel_decClock info _ _ shiftedRelation), ?_,
            by simp⟩
          rw [clockSelf]
          simpa only [targetPost, emptyEnv, decClock] using
            SeqCase.failedOptimization released allocated dest t targetEnabled
              (by simpa only [targetSpace] using failure) (by simpa only [targetClock] using zero)
        · -- the call, simulated through its callee body with the tighter bound
          have hcallee : ∀ program, findCode (.inl dest)
              ({s with stackSpace := s.stackSpace + released} :
                StackSemStateFiniteExact width C F).regs
              ({s with stackSpace := s.stackSpace + released} :
                StackSemStateFiniteExact width C F).code = some program →
              ({s with stackSpace := s.stackSpace + released} :
                StackSemStateFiniteExact width C F).clock ≠ 0 →
              PropB program (decClock {s with stackSpace := s.stackSpace + released}) := by
            intro program _ nz
            exact ih program _ (lexNat_of_clock_lt (by simp only [decClock]; omega))
          obtain ⟨⟨clock, targetPost, finalSpace, hb, postRelation, targetRun, guard⟩, hlt⟩ :=
            tailB (.inl dest) none info {s with stackSpace := s.stackSpace + released}
              {t with stackSpace := s.stackSpace + released} post r hcallee
              ⟨callExecution, nonerror, shiftedRelation⟩
          have hlt' : post.clock < s.clock := hlt zero
          change evaluate (.call none (.inl dest) none,
            {{t with stackSpace := s.stackSpace + released} with
              clock := t.clock + clock}) = (r, {targetPost with stackSpace := finalSpace})
            at targetRun
          have callInput : {{t with stackSpace := s.stackSpace + released} with
              clock := t.clock + clock} =
              {{t with clock := t.clock + clock} with
                stackSpace := t.stackSpace + released} := by rw [targetSpace]
          rw [callInput] at targetRun
          have transport := SeqCase.successfulOptimization released allocated dest
            (comp entryInfo body)
            {t with clock := t.clock + clock} targetEntry targetEnabled targetBounds
            (by simpa only [targetSpace] using
              (show allocated ≤ s.stackSpace + released by omega))
            (by simp only; rw [targetClock]; omega)
          have combinedInput : {{t with clock := t.clock + clock} with
              clock := ({t with clock := t.clock + clock}).clock +
                (if released < allocated then 1 else 0)} =
              {t with clock := t.clock + (clock + (if released < allocated then 1 else 0))} := by
            simp only [Nat.add_assoc]
          rw [combinedInput] at transport
          have hb' : clock ≤ s.clock - 1 - post.clock := hb
          refine ⟨clock + (if released < allocated then 1 else 0), targetPost, finalSpace,
            ?_, postRelation, ?_, guard⟩
          · split <;> omega
          · rw [transport]
            exact targetRun
  · have disabled : s.useStack = false := by cases h : s.useStack <;> simp_all
    simp only [disabled, Bool.not_false, if_true, Prod.mk.injEq] at execution
    exact False.elim (nonerror execution.1.symm)

/-- The full `Seq` case: standard composition or one of the optimised forms. -/
theorem seqB (first second : HolProg width) (s : StackSemStateFiniteExact width C F)
    (ih : IHB (.seq first second) s) : PropB (.seq first second) s := by
  intro info t post r hyp
  have standard := seqStandardB first second info s t post r ih hyp
  constructor
  · simpa only [compTop] using standard
  · change SimB _ (compSeq first second info (.seq (comp info first) (comp info second)))
      info t post r
    by_cases fallback : compSeq first second info (.seq (comp info first) (comp info second)) =
        .seq (comp info first) (comp info second)
    · rw [fallback]
      exact standard
    · obtain ⟨released, dest, rfl, rfl⟩ := compSeqNeqImp first second
        (.seq (comp info first) (comp info second)) info fallback
      cases frame : sptLookup dest info with
      | none => simp [compSeq, destCase, frame] at fallback
      | some allocated =>
          simpa only [compSeq, destCase, frame] using
            optimizedB released allocated dest info s t post r frame ih hyp

end

end InitECandidate.Solver.Compiler.StackPasses.RawCall
