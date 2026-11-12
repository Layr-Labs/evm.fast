import InitECandidate.Solver.Compiler.WordToStack.Preserve

/-!
# Bounded word → stack `comp_correct`: `Seq`, `If`, `Loop`

Copies of Flapjack's `Seq.lean`, `If.lean`, `Loop.lean` constructor cases (pinned flapjack rev
034bb5a1ed0b757082768d5406206bd2f8e31b7c) with the bounded motive `SimB`: `Seq` sums the two
witnesses, `If` passes the selected branch witness through, `Loop` sums the body and recursive
witnesses; the extra tick of each loop iteration pays for the body size (`wsize body < S + 1`).
-/

set_option autoImplicit false

namespace Flapjack.WordToStackProofs.CompCorrect.Seq
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack

theorem compCorrectSeqFirstNonNoneB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (first second : WordLangProgHOL (BitVec width))
    (source : WordSemStateFiniteExact width (Nat × C) F)
    (ih : (∀ result middle,
      (result, middle) = WordSemStateFiniteExact.evaluate first source ∧ result = none →
        SimB ac S second middle) ∧ SimB ac S first source)
    (firstNonNone : (WordSemStateFiniteExact.evaluate first source).1 ≠ none) :
    SimB ac S (.seq first second) source := by
  intro k f frame sourcePost target result bs bsPost n nPost compiled lens premises hsize hcode
  simp only [wsize] at hsize
  rcases premises with ⟨execution, notError, related, conventions, flat,
    compilation, lengthBound, bitmapBound, bitmapPrefix, labels, maxBound⟩
  rcases firstCompile : compNative ac false first (bs, n) (k, f, frame) with
    ⟨firstCode, middleBitmaps⟩
  rcases secondCompile : compNative ac false second middleBitmaps (k, f, frame) with
    ⟨secondCode, finalBitmaps⟩
  simp only [compNative, firstCompile, secondCompile] at compilation
  obtain ⟨compiledEq, bitmapEq⟩ := Prod.mk.inj compilation
  subst compiled
  have firstPrefix := compImpIsPrefix ac false second middleBitmaps (k, f, frame)
    secondCode finalBitmaps secondCompile
  rw [bitmapEq] at firstPrefix
  have firstLabels : ∀ loc, StackSem.getLabelsExact firstCode loc →
      StackSem.locCheckExact target.code loc := by
    intro loc member
    apply labels loc
    rw [StackSem.getLabelsExact]
    exact Or.inl member
  have firstConventions : postAllocConventionsHOL k first = true := by
    simp only [postAllocConventionsHOL, everyVarHOL, everyStackVarHOL,
      callArgConventionHOL, Bool.and_eq_true] at conventions ⊢
    exact ⟨conventions.1.1, conventions.2.1.1, conventions.2.2.1⟩
  have firstFlat : flatExpConventions first = true := by
    simp only [flatExpConventions, Bool.and_eq_true] at flat
    exact flat.1
  have firstMax : maxVarHOL first < 2 * frame + 2 * k := by
    simp only [maxVarHOL] at maxBound
    omega
  rw [WordSemStateFiniteExact.evaluate, WordSemStateFiniteExact.fix_clock_evaluate] at execution
  rcases firstRun : WordSemStateFiniteExact.evaluate first source with ⟨firstResult, middle⟩
  rw [firstRun] at firstNonNone execution
  cases firstResult with
  | none => exact False.elim (firstNonNone rfl)
  | some value =>
    obtain ⟨resultEq, sourceEq⟩ := Prod.mk.inj execution
    subst result
    subst sourcePost
    obtain ⟨clock, targetPost, targetResult, targetRun, conclusion, bound⟩ :=
      ih.2 k f frame middle target (some value) bs middleBitmaps.1 n middleBitmaps.2
        firstCode lens ⟨firstRun, notError, related, firstConventions, firstFlat,
          firstCompile, lengthBound, bitmapBound, firstPrefix.trans bitmapPrefix,
          firstLabels, firstMax⟩ (by omega) hcode
    have targetNonNone : targetResult ≠ none := by
      intro eq
      subst targetResult
      simp [compCorrectResult] at conclusion
    refine ⟨clock, targetPost, targetResult, ?_, conclusion, by simp only [wsize]; omega⟩
    rw [StackSemEvaluate.evaluate_seq, StackSemEvaluateClock.fixClockEvaluate, targetRun]
    cases targetResult with
    | none => exact False.elim (targetNonNone rfl)
    | some output => rfl

theorem compCorrectSeqFirstNoneB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (first second : WordLangProgHOL (BitVec width))
    (source : WordSemStateFiniteExact width (Nat × C) F)
    (ih : (∀ result middle,
      (result, middle) = WordSemStateFiniteExact.evaluate first source ∧ result = none →
        SimB ac S second middle) ∧ SimB ac S first source)
    (firstNone : (WordSemStateFiniteExact.evaluate first source).1 = none) :
    SimB ac S (.seq first second) source := by
  classical
  intro k f frame sourcePost target result bs bsPost n nPost compiled lens premises hsize hcode
  simp only [wsize] at hsize
  rcases premises with ⟨execution, notError, related, conventions, flat,
    compilation, lengthBound, bitmapBound, bitmapPrefix, labels, maxBound⟩
  rcases firstCompile : compNative ac false first (bs, n) (k, f, frame) with
    ⟨firstCode, middleBitmaps⟩
  rcases secondCompile : compNative ac false second middleBitmaps (k, f, frame) with
    ⟨secondCode, finalBitmaps⟩
  simp only [compNative, firstCompile, secondCompile] at compilation
  obtain ⟨compiledEq, bitmapEq⟩ := Prod.mk.inj compilation
  subst compiled
  have firstPrefix := compImpIsPrefix ac false second middleBitmaps (k, f, frame)
    secondCode finalBitmaps secondCompile
  rw [bitmapEq] at firstPrefix
  have firstLabels : ∀ loc, StackSem.getLabelsExact firstCode loc →
      StackSem.locCheckExact target.code loc := by
    intro loc member
    apply labels loc
    rw [StackSem.getLabelsExact]
    exact Or.inl member
  have firstConventions : postAllocConventionsHOL k first = true := by
    simp only [postAllocConventionsHOL, everyVarHOL, everyStackVarHOL,
      callArgConventionHOL, Bool.and_eq_true] at conventions ⊢
    exact ⟨conventions.1.1, conventions.2.1.1, conventions.2.2.1⟩
  have firstFlat : flatExpConventions first = true := by
    simp only [flatExpConventions, Bool.and_eq_true] at flat
    exact flat.1
  have firstMax : maxVarHOL first < 2 * frame + 2 * k := by
    simp only [maxVarHOL] at maxBound
    omega
  have secondConventions : postAllocConventionsHOL k second = true := by
    simp only [postAllocConventionsHOL, everyVarHOL, everyStackVarHOL,
      callArgConventionHOL, Bool.and_eq_true] at conventions ⊢
    exact ⟨conventions.1.2, conventions.2.1.2, conventions.2.2.2⟩
  have secondFlat : flatExpConventions second = true := by
    simp only [flatExpConventions, Bool.and_eq_true] at flat
    exact flat.2
  have secondMax : maxVarHOL second < 2 * frame + 2 * k := by
    simp only [maxVarHOL] at maxBound
    omega
  rw [WordSemStateFiniteExact.evaluate, WordSemStateFiniteExact.fix_clock_evaluate] at execution
  rcases firstRun : WordSemStateFiniteExact.evaluate first source with ⟨firstResult, middle⟩
  rw [firstRun] at firstNone execution
  cases firstResult with
  | some value => cases firstNone
  | none =>
    obtain ⟨clock, targetMiddle, firstTargetResult, targetRun, firstConclusion, bound1⟩ :=
      ih.2 k f frame middle target none bs middleBitmaps.1 n middleBitmaps.2
        firstCode lens ⟨firstRun, by simp, related, firstConventions, firstFlat,
          firstCompile, lengthBound, bitmapBound, firstPrefix.trans bitmapPrefix,
          firstLabels, firstMax⟩ (by omega) hcode
    have secondClockLe := Nat.mul_le_mul_left (S + 1)
      (WordSemStateFiniteExact.evaluate_clock _ _ _ _ execution).1
    cases firstTargetResult with
    | some value =>
      simp [compCorrectResult] at firstConclusion
      rcases firstConclusion with ⟨valueEq, events, resource⟩
      subst value
      have finalEvents := WordSemStateFiniteExact.evaluate_io_events_mono
        second middle result sourcePost execution
      have resourceThe : miscThe (middle.stackLimit + 1) middle.stackMax > middle.stackLimit := by
        cases h : middle.stackMax <;> simp_all [miscThe]
      have finalResourceThe := WordSemStateFiniteExact.evaluate_stack_limit_stack_max
        second middle result sourcePost ⟨execution, resourceThe⟩
      have finalResource : sourcePost.stackMax.getD (sourcePost.stackLimit + 1) >
          sourcePost.stackLimit := by
        cases h : sourcePost.stackMax <;> simp_all [miscThe]
      have dimension : goodDimindex width := related.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
      have mismatch : result.map compileResult ≠ some (.halt (.word 2)) := by
        cases result with
        | none => simp
        | some value =>
          simp only [Option.map_some, ne_eq, Option.some.injEq]
          exact Ne.symm ((haltEqCompileResult value).2 dimension)
      refine ⟨clock, targetMiddle, some (.halt (.word 2)), ?_, ?_, by simp only [wsize]; omega⟩
      · rw [StackSemEvaluate.evaluate_seq, StackSemEvaluateClock.fixClockEvaluate, targetRun]
        rfl
      · unfold compCorrectResult
        split
        · exact ⟨rfl, events.trans finalEvents, finalResource⟩
        · rename_i equal
          exact False.elim (mismatch (by simpa using equal))
    | none =>
      simp only [compCorrectResult, Option.map_none, ne_eq, not_true_eq_false,
        ↓reduceIte] at firstConclusion
      have accounting := compImpLength ac false first (bs, n) (k, f, frame)
        firstCode middleBitmaps ⟨firstCompile, lengthBound⟩
      have mono := Flapjack.Compiler.Backend.StackProps.EvaluateMono.evaluateMono
        firstCode {target with clock := target.clock + clock} targetMiddle none targetRun
      have gap := accounting.2
      have secondBitmapBound : middleBitmaps.2 - (appListAppend middleBitmaps.1).length ≤
          targetMiddle.bitmaps.length := by
        rw [← gap]
        exact bitmapBound.trans mono.1.length_le
      have secondPrefix : (appListAppend finalBitmaps.1).IsPrefix
          (targetMiddle.bitmaps.drop
            (middleBitmaps.2 - (appListAppend middleBitmaps.1).length)) := by
        rw [← gap, bitmapEq]
        exact bitmapPrefix.trans (mono.1.drop _)
      have secondLabels : ∀ loc, StackSem.getLabelsExact secondCode loc →
          StackSem.locCheckExact targetMiddle.code loc := by
        intro loc member
        apply LocationLabels.locCheckSubset target.code targetMiddle.code mono.2 loc
        apply labels loc
        rw [StackSem.getLabelsExact]
        exact Or.inr member
      obtain ⟨secondClock, targetPost, targetResult, secondRun, conclusion, bound2⟩ :=
        ih.1 none middle ⟨firstRun.symm, rfl⟩ k f frame sourcePost targetMiddle
          result middleBitmaps.1 finalBitmaps.1 middleBitmaps.2 finalBitmaps.2
          secondCode lens ⟨execution, notError, firstConclusion, secondConventions,
            secondFlat, secondCompile, accounting.1, secondBitmapBound, secondPrefix,
            secondLabels, secondMax⟩ (by omega) (codeBoundedW_evaluate S firstRun hcode)
      have extendedFirst := Flapjack.Compiler.Backend.StackProps.evaluateAddClock
        secondClock firstCode {target with clock := target.clock + clock}
        none targetMiddle ⟨targetRun, by simp⟩
      have handlerEq : middle.handler = source.handler := by
        have preserved := WordSemStackEq.evaluateStackSwap first source
        unfold WordSemStackEq.stackSwapPost at preserved
        rw [firstRun] at preserved
        exact preserved.2.1
      have finalConclusion : compCorrectResult ac k f frame source sourcePost
          targetPost result targetResult lens := by
        unfold compCorrectResult at conclusion ⊢
        rw [handlerEq] at conclusion
        exact conclusion
      refine ⟨clock + secondClock, targetPost, targetResult, ?_, finalConclusion,
        by simp only [wsize]; omega⟩
      rw [StackSemEvaluate.evaluate_seq, StackSemEvaluateClock.fixClockEvaluate]
      have clockEq : {target with clock := target.clock + (clock + secondClock)} =
          {{target with clock := target.clock + clock} with
            clock := (target.clock + clock) + secondClock} := by
        simp only [Nat.add_assoc]
      rw [clockEq, extendedFirst]
      exact secondRun

theorem compCorrectSeqB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (first second : WordLangProgHOL (BitVec width))
    (source : WordSemStateFiniteExact width (Nat × C) F)
    (ih : (∀ result middle,
      (result, middle) = WordSemStateFiniteExact.evaluate first source ∧ result = none →
        SimB ac S second middle) ∧ SimB ac S first source) :
    SimB ac S (.seq first second) source := by
  by_cases guard : (WordSemStateFiniteExact.evaluate first source).1 = none
  · exact compCorrectSeqFirstNoneB ac S first second source ih guard
  · exact compCorrectSeqFirstNonNoneB ac S first second source ih guard

end Flapjack.WordToStackProofs.CompCorrect.Seq

namespace Flapjack.WordToStackProofs.CompCorrect.If
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open Flapjack.Compiler.Backend.WordToStackRegFormat
open InitECandidate.Solver.Compiler.WordToStack
open private physicalOperandEven from Flapjack.Compiler.Backend.WordToStack.Proofs.CompCorrect.If

def OriginalInductionHypothesesB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (comparison : Cmp) (register : Nat)
    (operand : WordRegImm (BitVec width))
    (first second : WordLangProgHOL (BitVec width))
    (source : WordSemStateFiniteExact width (Nat × C) F) : Prop :=
  (∀ v3 v4 x y value,
    (WordSemStateFiniteExact.getVar register source,
      WordSemStateFiniteExact.getVarImm operand source) = (v3, v4) ∧
    v3 = some x ∧ v4 = some y ∧ wordSemWordCmp comparison x y = some value ∧
    value = true → SimB ac S first source) ∧
  (∀ v3 v4 x y value,
    (WordSemStateFiniteExact.getVar register source,
      WordSemStateFiniteExact.getVarImm operand source) = (v3, v4) ∧
    v3 = some x ∧ v4 = some y ∧ wordSemWordCmp comparison x y = some value ∧
    ¬ value = true → SimB ac S second source)

theorem selectedSourceBranchB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (comparison : Cmp) (register : Nat)
    (operand : WordRegImm (BitVec width))
    (first second : WordLangProgHOL (BitVec width))
    (source sourcePost : WordSemStateFiniteExact width (Nat × C) F)
    (result : Option (WordSemResult width))
    (ih : OriginalInductionHypothesesB ac S comparison register operand first second source)
    (execution : WordSemStateFiniteExact.evaluate (.ite comparison register operand first second)
      source = (result, sourcePost))
    (nonerror : result ≠ some .error) :
    ∃ x y value,
      WordSemStateFiniteExact.getVar register source = some x ∧
      WordSemStateFiniteExact.getVarImm operand source = some y ∧
      wordSemWordCmp comparison x y = some value ∧
      WordSemStateFiniteExact.evaluate (if value then first else second) source =
        (result, sourcePost) ∧
      SimB ac S (if value then first else second) source := by
  cases left : WordSemStateFiniteExact.getVar register source with
  | none => simp [WordSemStateFiniteExact.evaluate, left] at execution; cases nonerror execution.1.symm
  | some x =>
    cases right : WordSemStateFiniteExact.getVarImm operand source with
    | none => simp [WordSemStateFiniteExact.evaluate, left, right] at execution; cases nonerror execution.1.symm
    | some y =>
      cases compared : wordSemWordCmp comparison x y with
      | none => simp [WordSemStateFiniteExact.evaluate, left, right, compared] at execution; cases nonerror execution.1.symm
      | some value =>
        refine ⟨x, y, value, rfl, rfl, compared, ?_, ?_⟩
        · cases value <;> simpa [WordSemStateFiniteExact.evaluate, left, right, compared] using execution
        · cases value
          · exact ih.2 _ _ x y false ⟨by simp [left, right], rfl, rfl, compared, by decide⟩
          · exact ih.1 _ _ x y true ⟨by simp [left, right], rfl, rfl, compared, rfl⟩

theorem compCorrectIfB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (comparison : Cmp) (register : Nat)
    (operand : WordRegImm (BitVec width))
    (first second : WordLangProgHOL (BitVec width))
    (source : WordSemStateFiniteExact width (Nat × C) F)
    (ih : OriginalInductionHypothesesB ac S comparison register operand first second source) :
    SimB ac S (.ite comparison register operand first second) source := by
  intro k f frame sourcePost target result bs bsPost n nPost compiled lens premises hsize hcode
  rcases premises with ⟨execution, notError, related, conventions, flat,
    compilation, lengthBound, bitmapBound, bitmapPrefix, labels, maxBound⟩
  obtain ⟨x,y,value,left,right,compared,selectedRun,selectedIH⟩ :=
    selectedSourceBranchB ac S comparison register operand first second source sourcePost result ih execution notError
  have conventionParts := conventions
  simp only [postAllocConventionsHOL,everyVarHOL,everyStackVarHOL,
    callArgConventionHOL,Bool.and_eq_true] at conventionParts
  rcases conventionParts with ⟨⟨⟨⟨leftPhy,rightPhy⟩,firstVar⟩,secondVar⟩,
    ⟨⟨firstStack,secondStack⟩,⟨firstCall,secondCall⟩⟩⟩
  have leftEven : register % 2 = 0 := by simpa [isPhyVar] using leftPhy
  have rightEven := physicalOperandEven operand rightPhy
  obtain ⟨loaded,loadedRel,sameClock,bitmapMono,codeMono,routing⟩ :=
    prepareCondition ac comparison register operand k f frame source target lens x y value
      related leftEven rightEven left right compared
  rcases firstCompile : compNative ac false first (bs,n) (k,f,frame) with ⟨q1,middle⟩
  rcases secondCompile : compNative ac false second middle (k,f,frame) with ⟨q2,after⟩
  have compiledFactor := compileCondition ac comparison register operand (k,f,frame)
    first second (bs,n) middle after q1 q2 firstCompile secondCompile
  obtain ⟨compiledEq,bitmapEq⟩ := Prod.mk.inj (compiledFactor.symm.trans compilation)
  subst compiled
  have firstAccounting := compImpLength ac false first (bs,n) (k,f,frame) q1 middle
    ⟨firstCompile,lengthBound⟩
  have selectedConventions : postAllocConventionsHOL k (if value then first else second) = true := by
    cases value <;> simp [postAllocConventionsHOL,firstVar,secondVar,firstStack,secondStack,firstCall,secondCall]
  have selectedFlat : flatExpConventions (if value then first else second) = true := by
    simp only [flatExpConventions,Bool.and_eq_true] at flat
    cases value <;> simp [flat.1,flat.2]
  have selectedMax : maxVarHOL (if value then first else second) < 2*frame+2*k := by
    unfold maxVarHOL at maxBound
    have max3Eq (a b c : Nat) : max3HOL a b c = max a (max b c) := by
      unfold max3HOL
      split_ifs <;> omega
    rw [max3Eq] at maxBound
    cases value <;> simp only [Bool.false_eq_true,if_false,if_true] <;> omega
  have selectedCompile :
      compNative ac false (if value then first else second)
        (if value then (bs,n) else middle) (k,f,frame) =
      (if value then q1 else q2, if value then middle else after) := by
    cases value <;> simp [firstCompile,secondCompile]
  have selectedLength : (appListAppend (if value then (bs,n) else middle).1).length ≤
      (if value then (bs,n) else middle).2 := by
    cases value <;> simp [lengthBound,firstAccounting.1]
  have selectedGap : (if value then (bs,n) else middle).2 -
      (appListAppend (if value then (bs,n) else middle).1).length = n-(appListAppend bs).length := by
    cases value <;> simp [firstAccounting.2]
  have selectedBitmapBound : (if value then (bs,n) else middle).2 -
      (appListAppend (if value then (bs,n) else middle).1).length ≤ loaded.bitmaps.length := by
    rw [selectedGap]
    exact bitmapBound.trans bitmapMono.length_le
  have selectedPrefix : (appListAppend (if value then middle else after).1).IsPrefix
      (loaded.bitmaps.drop ((if value then (bs,n) else middle).2 -
        (appListAppend (if value then (bs,n) else middle).1).length)) := by
    rw [selectedGap]
    have finalPrefix : (appListAppend after.1).IsPrefix
        (loaded.bitmaps.drop (n-(appListAppend bs).length)) := by
      rw [bitmapEq]
      exact bitmapPrefix.trans (bitmapMono.drop _)
    cases value
    · exact finalPrefix
    · exact (compImpIsPrefix ac false second middle (k,f,frame) q2 after secondCompile).trans finalPrefix
  have selectedLabels : ∀ loc, StackSem.getLabelsExact (if value then q1 else q2) loc →
      StackSem.locCheckExact loaded.code loc := by
    intro loc member
    apply LocationLabels.locCheckSubset target.code loaded.code codeMono loc
    apply labels loc
    apply (conditionLabels ac comparison register operand (k,f,frame) q1 q2 loc).2
    cases value
    · exact Or.inr member
    · exact Or.inl member
  have selectedSize : wsize (if value then first else second) ≤ S := by
    simp only [wsize] at hsize
    cases value <;> simp only [Bool.false_eq_true, if_false, if_true] <;> omega
  obtain ⟨extraClock,post,targetResult,targetRun,conclusion,bound⟩ :=
    selectedIH k f frame sourcePost loaded result
      (if value then (bs,n) else middle).1 (if value then middle else after).1
      (if value then (bs,n) else middle).2 (if value then middle else after).2
      (if value then q1 else q2) lens
      ⟨selectedRun,notError,loadedRel,selectedConventions,selectedFlat,selectedCompile,
        selectedLength,selectedBitmapBound,selectedPrefix,selectedLabels,selectedMax⟩
      selectedSize hcode
  refine ⟨extraClock,post,targetResult,?_,conclusion,?_⟩
  swap
  · have : wsize (if value then first else second) ≤ wsize first + wsize second := by
      cases value <;> simp only [Bool.false_eq_true, if_false, if_true] <;> omega
    simp only [wsize]
    omega
  rw [routing q1 q2 (target.clock+extraClock),sameClock]
  exact targetRun

end Flapjack.WordToStackProofs.CompCorrect.If

namespace Flapjack.WordToStackProofs.CompCorrect.Loop
open Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack

def InductionHypothesesB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (names exitNames : Spt Unit)
    (body : WordLangProgHOL (BitVec width))
    (source : WordSemStateFiniteExact width (Nat × C) F) : Prop :=
  (∀ cutSource bodyResult bodyPost,
    WordSemStateFiniteExact.cutState (names,.ln) source = some cutSource ∧
    (bodyResult,bodyPost) = WordSemStateFiniteExact.evaluate body cutSource ∧
    wordSemContLoop bodyResult = true ∧ bodyPost.clock ≠ 0 →
    SimB ac S (wordSemSTOP (.loop names body exitNames))
      (WordSemStateFiniteExact.decClock bodyPost)) ∧
  (∀ cutSource, WordSemStateFiniteExact.cutState (names,.ln) source = some cutSource →
    SimB ac S body cutSource)

theorem loopTailClockB {width : Nat} [NeZero width] {C F : Type}
    (names exitNames : Spt Unit) (body : WordLangProgHOL (BitVec width))
    (source cutSource bodyPost finalPost : WordSemStateFiniteExact width C F)
    (bodyResult finalResult : Option (WordSemResult width))
    (cut : WordSemStateFiniteExact.cutState (names,.ln) source = some cutSource)
    (bodyRun : WordSemStateFiniteExact.evaluate body cutSource = (bodyResult,bodyPost))
    (loopRun : WordSemStateFiniteExact.evaluate (.loop names body exitNames) source = (finalResult,finalPost)) :
    finalPost.clock ≤ bodyPost.clock := by
  rw [WordSemStateFiniteExact.evaluate,cut] at loopRun
  simp only [] at loopRun
  rw [WordSemStateFiniteExact.fix_clock_evaluate,bodyRun] at loopRun
  by_cases continues : wordSemContLoop bodyResult = true
  · simp only [continues,if_true] at loopRun
    by_cases zero : bodyPost.clock = 0
    · simp only [zero] at loopRun
      obtain ⟨rfl,rfl⟩ := loopRun
      simp [WordSemStateFiniteExact.flushState]
    · simp only [zero] at loopRun
      have := (WordSemStateFiniteExact.evaluate_clock _ _ _ _ loopRun).1
      simp only [WordSemStateFiniteExact.decClock] at this
      omega
  · simp only [continues] at loopRun
    cases bodyResult with
    | none => simp only [wordSemExitLoop] at loopRun; obtain ⟨rfl,rfl⟩ := loopRun; exact le_rfl
    | some result =>
      cases result <;> try (simp only [wordSemExitLoop] at loopRun; obtain ⟨rfl,rfl⟩ := loopRun; exact le_rfl)
      next depth =>
        cases depth with
        | zero =>
          cases exitCut : WordSemStateFiniteExact.cutState (exitNames,.ln) bodyPost with
          | none => simp [exitCut] at loopRun; obtain ⟨rfl,rfl⟩ := loopRun; exact le_rfl
          | some exitPost =>
            simp only [exitCut] at loopRun
            obtain ⟨rfl,rfl⟩ := loopRun
            unfold WordSemStateFiniteExact.cutState at exitCut
            cases env : wordSemCutEnv (exitNames,.ln) bodyPost.locals <;> simp [env] at exitCut
            next locals => subst finalPost; exact le_rfl
        | succ depth =>
          simp only [wordSemExitLoop] at loopRun
          obtain ⟨rfl,rfl⟩ := loopRun
          exact le_rfl

theorem enterBodyB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (names exitNames : Spt Unit)
    (body : WordLangProgHOL (BitVec width))
    (source cutSource bodyPost : WordSemStateFiniteExact width (Nat × C) F)
    (target : StackSemStateFiniteExact width C F) (k f frame : Nat) (lens : List Nat)
    (bs bsPost : AppList (BitVec width)) (n nPost : Nat)
    (compiled : Compiler.Backend.StackLang.HolProg width) (bodyResult : Option (WordSemResult width))
    (ih : InductionHypothesesB ac S names exitNames body source)
    (cut : WordSemStateFiniteExact.cutState (names,.ln) source = some cutSource)
    (execution : WordSemStateFiniteExact.evaluate body cutSource = (bodyResult,bodyPost))
    (notError : bodyResult ≠ some .error)
    (related : stateRel ac k f frame source target lens 0)
    (conventions : postAllocConventionsHOL k (.loop names body exitNames) = true)
    (flat : flatExpConventions (.loop names body exitNames) = true)
    (compilation : compNative ac false (.loop names body exitNames) (bs,n) (k,f,frame) = (compiled,(bsPost,nPost)))
    (lengthBound : (appListAppend bs).length ≤ n)
    (bitmapBound : n-(appListAppend bs).length ≤ target.bitmaps.length)
    (bitmapPrefix : List.IsPrefix (appListAppend bsPost) (target.bitmaps.drop (n-(appListAppend bs).length)))
    (labels : ∀ loc, StackSem.getLabelsExact compiled loc → StackSem.locCheckExact target.code loc)
    (maxBound : maxVarHOL (.loop names body exitNames) < 2*frame+2*k)
    (hsize : wsize body ≤ S) (hcode : CodeBoundedW S cutSource) :
    ∃ compiledBody ck targetPost targetResult,
      compiled = .loop compiledBody ∧
      StackSemEvaluate.evaluate (compiledBody,{target with clock := target.clock+ck}) = (targetResult,targetPost) ∧
      compCorrectResult ac k f frame cutSource bodyPost targetPost bodyResult targetResult lens ∧
      ck + (S + 1) * bodyPost.clock ≤ (S + 1) * cutSource.clock + wsize body := by
  rcases bodyComp : compNative ac false body (bs,n) (k,f,frame) with ⟨compiledBody,next⟩
  simp only [compNative,bodyComp,Prod.mk.injEq] at compilation
  obtain ⟨rfl,nextEq⟩ := compilation
  have cutRel := StateRelCutState.stateRelCutState ac k f frame source cutSource target lens names related cut
  have bodyConventions : postAllocConventionsHOL k body = true := by
    simp [postAllocConventionsHOL,everyVarHOL,everyStackVarHOL,callArgConventionHOL] at conventions ⊢
    exact ⟨conventions.1.1.2,conventions.2⟩
  have bodyFlat : flatExpConventions body = true := by simpa [flatExpConventions] using flat
  have bodyBound : maxVarHOL body < 2*frame+2*k := by
    simp only [maxVarHOL,max3HOL] at maxBound
    split at maxBound <;> split at maxBound <;> omega
  have bodyLabels : ∀ loc, StackSem.getLabelsExact compiledBody loc → StackSem.locCheckExact target.code loc := by
    simpa [StackSem.getLabelsExact] using labels
  have compilationBody : compNative ac false body (bs,n) (k,f,frame) = (compiledBody,(bsPost,nPost)) := by
    simpa [nextEq] using bodyComp
  obtain ⟨ck,post,res,actual,resultRel,bound⟩ := ih.2 cutSource cut k f frame bodyPost target
    bodyResult bs bsPost n nPost compiledBody lens
    ⟨execution,notError,cutRel,bodyConventions,bodyFlat,compilationBody,
      lengthBound,bitmapBound,bitmapPrefix,bodyLabels,bodyBound⟩ hsize hcode
  exact ⟨compiledBody,ck,post,res,rfl,actual,resultRel,bound⟩

theorem enterRecursiveB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (names exitNames : Spt Unit)
    (body : WordLangProgHOL (BitVec width))
    (source cutSource bodyPost finalSource : WordSemStateFiniteExact width (Nat × C) F)
    (target targetBody : StackSemStateFiniteExact width C F) (k f frame : Nat) (lens : List Nat)
    (bs bsPost : AppList (BitVec width)) (n nPost bodyClock : Nat)
    (compiledBody : Compiler.Backend.StackLang.HolProg width)
    (bodyResult finalResult : Option (WordSemResult width))
    (ih : InductionHypothesesB ac S names exitNames body source)
    (cut : WordSemStateFiniteExact.cutState (names,.ln) source = some cutSource)
    (sourceBody : WordSemStateFiniteExact.evaluate body cutSource = (bodyResult,bodyPost))
    (continues : wordSemContLoop bodyResult = true) (nonzero : bodyPost.clock ≠ 0)
    (sourceRecursive : WordSemStateFiniteExact.evaluate (.loop names body exitNames)
      (WordSemStateFiniteExact.decClock bodyPost) = (finalResult,finalSource))
    (notError : finalResult ≠ some .error)
    (targetRun : StackSemEvaluate.evaluate (compiledBody,{target with clock := target.clock+bodyClock}) =
      (bodyResult.map compileResult,targetBody))
    (bodyConclusion : compCorrectResult ac k f frame cutSource bodyPost targetBody
      bodyResult (bodyResult.map compileResult) lens)
    (conventions : postAllocConventionsHOL k (.loop names body exitNames) = true)
    (flat : flatExpConventions (.loop names body exitNames) = true)
    (compilation : compNative ac false (.loop names body exitNames) (bs,n) (k,f,frame) =
      (.loop compiledBody,(bsPost,nPost)))
    (lengthBound : (appListAppend bs).length ≤ n)
    (bitmapBound : n-(appListAppend bs).length ≤ target.bitmaps.length)
    (bitmapPrefix : (appListAppend bsPost).IsPrefix (target.bitmaps.drop (n-(appListAppend bs).length)))
    (labels : ∀ loc, StackSem.getLabelsExact (.loop compiledBody) loc → StackSem.locCheckExact target.code loc)
    (maxBound : maxVarHOL (.loop names body exitNames) < 2*frame+2*k)
    (hsize : wsize (.loop names body exitNames) ≤ S)
    (hcode : CodeBoundedW S (WordSemStateFiniteExact.decClock bodyPost)) :
    ∃ clock targetPost result,
      StackSemEvaluate.evaluate (.loop compiledBody,
        {StackSemStateOps.decClock targetBody with clock := (StackSemStateOps.decClock targetBody).clock+clock}) =
        (result,targetPost) ∧
      compCorrectResult ac k f frame (WordSemStateFiniteExact.decClock bodyPost)
        finalSource targetPost finalResult result lens ∧
      clock + (S + 1) * finalSource.clock ≤
        (S + 1) * (WordSemStateFiniteExact.decClock bodyPost).clock +
          wsize (.loop names body exitNames) := by
  have recursiveIH := ih.1 cutSource bodyResult bodyPost ⟨cut,sourceBody.symm,continues,nonzero⟩
  have metadata := recursiveMetadata compiledBody target targetBody (bodyResult.map compileResult)
    bodyClock (n-(appListAppend bs).length) (appListAppend bsPost) targetRun bitmapBound bitmapPrefix labels
  have relation := recursiveRelation ac k f frame cutSource bodyPost targetBody lens bodyResult continues bodyConclusion
  refine recursiveIH k f frame finalSource (StackSemStateOps.decClock targetBody)
    finalResult bs bsPost n nPost (.loop compiledBody) lens ?_ hsize hcode
  simpa only [wordSemSTOP,StackSemStateOps.decClock] using
    (show WordSemStateFiniteExact.evaluate (.loop names body exitNames)
      (WordSemStateFiniteExact.decClock bodyPost) = (finalResult,finalSource) ∧
      finalResult ≠ some .error ∧ stateRel ac k f frame
        (WordSemStateFiniteExact.decClock bodyPost) (StackSemStateOps.decClock targetBody) lens 0 ∧
      postAllocConventionsHOL k (.loop names body exitNames) = true ∧
      flatExpConventions (.loop names body exitNames) = true ∧
      compNative ac false (.loop names body exitNames) (bs,n) (k,f,frame) = (.loop compiledBody,(bsPost,nPost)) ∧
      (appListAppend bs).length ≤ n ∧ n-(appListAppend bs).length ≤ targetBody.bitmaps.length ∧
      (appListAppend bsPost).IsPrefix (targetBody.bitmaps.drop (n-(appListAppend bs).length)) ∧
      (∀ loc,StackSem.getLabelsExact (.loop compiledBody) loc → StackSem.locCheckExact targetBody.code loc) ∧
      maxVarHOL (.loop names body exitNames) < 2*frame+2*k from
      ⟨sourceRecursive,notError,relation,conventions,flat,compilation,lengthBound,
        metadata.1,metadata.2.1,metadata.2.2,maxBound⟩)

theorem compCorrectLoopB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (names exitNames : Spt Unit)
    (body : WordLangProgHOL (BitVec width))
    (source : WordSemStateFiniteExact width (Nat × C) F)
    (ih : InductionHypothesesB ac S names exitNames body source) :
    SimB ac S (.loop names body exitNames) source := by
  classical
  intro k f frame finalSource target finalResult bs bsPost n nPost compiled lens premises hsize hcode
  simp only [wsize] at hsize
  rcases premises with ⟨sourceLoop,notError,related,conventions,flat,compilation,
    lengthBound,bitmapBound,bitmapPrefix,labels,maxBound⟩
  cases cut : WordSemStateFiniteExact.cutState (names,.ln) source with
  | none =>
    rw [WordSemStateFiniteExact.evaluate,cut] at sourceLoop
    have error : finalResult = some .error := congrArg Prod.fst sourceLoop.symm
    exact False.elim (notError error)
  | some cutSource =>
    rcases sourceBody : WordSemStateFiniteExact.evaluate body cutSource with ⟨bodyResult,bodyPost⟩
    have bodyError := bodyNonError names exitNames body source cutSource bodyPost finalSource
      bodyResult finalResult cut sourceBody sourceLoop notError
    have cutCode : CodeBoundedW S cutSource := by
      obtain ⟨l, rfl⟩ := WordSemStateFiniteExact.cutStateConst _ _ _ cut
      exact CodeBoundedW.of_eq rfl rfl hcode
    have cutClock := (WordSemStateFiniteExact.cutState_clock_termdep _ _ _ cut).1
    have tailLe := Nat.mul_le_mul_left (S + 1) (loopTailClockB names exitNames body source cutSource
      bodyPost finalSource bodyResult finalResult cut sourceBody sourceLoop)
    obtain ⟨compiledBody,bodyClock,targetBody,targetResult,compiledEq,targetRun,bodyConclusion,
        bound1⟩ :=
      enterBodyB ac S names exitNames body source cutSource bodyPost target k f frame lens
        bs bsPost n nPost compiled bodyResult ih cut sourceBody bodyError related conventions
        flat compilation lengthBound bitmapBound bitmapPrefix labels maxBound (by omega) cutCode
    rw [cutClock] at bound1
    have baseBound : bodyClock + (S + 1) * finalSource.clock ≤
        (S + 1) * source.clock + wsize (.loop names body exitNames) := by
      simp only [wsize]; omega
    subst compiled
    by_cases mismatch : bodyResult.map compileResult ≠ targetResult
    · have overflow := bodyOverflow ac k f frame names exitNames body source cutSource bodyPost
        finalSource target targetBody lens compiledBody bodyClock bodyResult finalResult targetResult
        related cut sourceBody sourceLoop targetRun bodyConclusion mismatch
      exact ⟨bodyClock,targetBody,some (.halt (.word 2)),overflow.1,overflow.2,baseBound⟩
    · have resultEq : targetResult = bodyResult.map compileResult := (not_ne_iff.mp mismatch).symm
      subst targetResult
      have tailRun := sourceLoop
      rw [WordSemStateFiniteExact.evaluate,cut] at tailRun
      simp only [] at tailRun
      rw [WordSemStateFiniteExact.fix_clock_evaluate,sourceBody] at tailRun
      by_cases continues : wordSemContLoop bodyResult = true
      · have bodyRel := continuationRelation ac k f frame cutSource bodyPost targetBody lens
          bodyResult continues bodyConclusion
        have clocks := bodyRel.1
        have targetContinues : StackSemControl.contLoop (bodyResult.map compileResult) = true := by
          rw [contLoopCompile,continues]
        simp only [continues] at tailRun
        by_cases zero : bodyPost.clock = 0
        · simp only [zero] at tailRun
          obtain ⟨rfl,rfl⟩ := Prod.mk.inj tailRun
          have targetZero : targetBody.clock = 0 := by omega
          exact ⟨bodyClock,StackSemStateOps.emptyEnv targetBody,some .timeOut,
            runLoopTimeout compiledBody {target with clock := target.clock+bodyClock} targetBody
              (bodyResult.map compileResult) targetRun targetContinues targetZero,
            timeoutRelation ac k f frame source bodyPost targetBody lens bodyRel,baseBound⟩
        · simp only [zero] at tailRun
          obtain ⟨recursiveClock,post,res,recursiveRun,recursiveConclusion,bound2⟩ :=
            enterRecursiveB ac S names exitNames body source cutSource bodyPost finalSource target targetBody
              k f frame lens bs bsPost n nPost bodyClock compiledBody bodyResult finalResult ih cut sourceBody
              continues zero (by simpa [wordSemSTOP] using tailRun) notError targetRun bodyConclusion
              conventions flat compilation lengthBound bitmapBound bitmapPrefix labels maxBound
              (by simp only [wsize]; omega)
              (CodeBoundedW.of_eq (s := bodyPost) rfl rfl (codeBoundedW_evaluate S sourceBody cutCode))
          have targetNonzero : targetBody.clock ≠ 0 := by omega
          have actual := runLoopRecursive compiledBody {target with clock := target.clock+bodyClock}
            targetBody post (bodyResult.map compileResult) res recursiveClock targetRun targetContinues
            targetNonzero recursiveRun
          have sourceHandler : source.handler = (WordSemStateFiniteExact.decClock bodyPost).handler := by
            have bodyHandler := LoopHandler.evaluateContLoopHandler body cutSource bodyPost bodyResult sourceBody continues
            have initialHandler := cutHandler names source cutSource cut
            simpa [WordSemStateFiniteExact.decClock] using initialHandler.trans bodyHandler.symm
          have predEq : (S + 1) * (bodyPost.clock - 1) + (S + 1) = (S + 1) * bodyPost.clock := by
            rw [← Nat.mul_succ]; congr 1; omega
          simp only [WordSemStateFiniteExact.decClock, wsize] at bound2
          refine ⟨bodyClock+recursiveClock,post,res,?_,?_,by simp only [wsize]; omega⟩
          · simpa [Nat.add_assoc] using actual
          · exact originRelation ac k f frame source (WordSemStateFiniteExact.decClock bodyPost)
              finalSource post lens finalResult res sourceHandler recursiveConclusion
      · simp only [continues] at tailRun
        by_cases breakZero : bodyResult = some (.break 0)
        · subst bodyResult
          cases exitCut : WordSemStateFiniteExact.cutState (exitNames,.ln) bodyPost with
          | none =>
            simp [exitCut] at tailRun
            obtain ⟨rfl,rfl⟩ := tailRun
            contradiction
          | some exitPost =>
            simp [exitCut] at tailRun
            obtain ⟨rfl,rfl⟩ := tailRun
            exact ⟨bodyClock,targetBody,none,
              runLoopBreakZero compiledBody {target with clock := target.clock+bodyClock} targetBody targetRun,
              breakZeroRelation ac k f frame source cutSource bodyPost exitPost targetBody lens exitNames
                bodyConclusion exitCut,baseBound⟩
        · have sourceExit : (wordSemExitLoop bodyResult,bodyPost) = (finalResult,finalSource) := by
            cases bodyResult with
            | none => exact tailRun
            | some result =>
              cases result <;> try exact tailRun
              next depth => cases depth <;> simp_all
          obtain ⟨rfl,rfl⟩ := Prod.mk.inj sourceExit
          have targetExits : StackSemControl.contLoop (bodyResult.map compileResult) = false := by
            rw [contLoopCompile]
            cases h : wordSemContLoop bodyResult <;> simp_all
          have exitEq : StackSemControl.exitLoop (bodyResult.map compileResult) =
              (wordSemExitLoop bodyResult).map compileResult := by
            rw [exitLoopCompile]
            cases bodyResult with
            | none => rfl
            | some result =>
              cases result <;> simp_all
          refine ⟨bodyClock,targetBody,(wordSemExitLoop bodyResult).map compileResult,?_,?_,baseBound⟩
          · rw [← exitEq]
            exact runLoopExit compiledBody {target with clock := target.clock+bodyClock}
              targetBody (bodyResult.map compileResult) targetRun targetExits
          · exact exitRelation ac k f frame source cutSource bodyPost targetBody lens bodyResult
              (cutHandler names source cutSource cut) bodyConclusion

end Flapjack.WordToStackProofs.CompCorrect.Loop
