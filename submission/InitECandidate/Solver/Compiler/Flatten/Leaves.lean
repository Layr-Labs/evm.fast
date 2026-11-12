import InitECandidate.Solver.Compiler.Flatten.Basic

/-!
# Bounded `flatten_correct`: leaf cases

Bounded copies of the leaf cases of Flapjack's
`StackToLab/Proofs/FlattenCorrect/{Statement,Leaves,Guarded}.lean`. Every witness is `0` or
`1`, below `2 * psize p = 2`.
-/

namespace InitECandidate.Solver.Compiler.Flatten

open Flapjack hiding flattenHOL findLabHOL
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.StackToLab.Proofs
open Flapjack.Compiler.Backend.StackToLab (flattenHOL findLabHOL negateHOL compileJumpHOL isSeqHOL
  progToSectionHOL stackIsSkip)
open Flapjack.Compiler.Backend.LabLang Flapjack.Compiler.Backend.LabSem
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.StackToLab.Proofs.CodeInstalled
open Flapjack.Compiler.Backend.StackToLab.Proofs.StateRel
open Flapjack.Compiler.Backend.StackToLab.Proofs.FlattenHelpers
open Flapjack.Compiler.Backend.StackToLab.Proofs.FlattenCorrect

set_option autoImplicit false

section
variable {width : Nat} [NeZero width] {C F : Type}

/-- A witness of at most `2` is within the bound of any program. -/
theorem le_flatBound_leaf {S Δ ck : Nat} {p : HolProg width} (h : ck ≤ 2) :
    ck ≤ flatBound S Δ p := by
  have := psize_pos p
  unfold flatBound
  omega

/-- `Skip` case. -/
theorem flattenCorrectSkipB (S : Nat) (s1 : StackSemStateFiniteExact width C F) :
    FlattenPropB S (.skip : HolProg width) s1 := by
  rintro t r s2 n l cs bs t1 ⟨ev, -, rel, -, -, -⟩ - -
  rw [StackSemEvaluate.evaluate_skip] at ev
  cases ev
  exact flattenConclStayB rel (by simp [flattenHOL, (appListAppend_thm .nil .nil []).2.1])

/-- `Halt` case. -/
theorem flattenCorrectHaltB (S : Nat) (s1 : StackSemStateFiniteExact width C F) (v : Nat) :
    FlattenPropB S (.halt v : HolProg width) s1 := by
  rintro t r s2 n l cs bs t1 ⟨ev, nerr, rel, ca, inst, -⟩ - -
  rw [StackSemEvaluate.evaluate_halt] at ev
  have fetch : asmFetchAux t1.pc t1.code = some (.labAsm .halt 0 [] 0) :=
    fetchSingle rfl (by simpa [flattenHOL, appListAppendList] using inst)
  simp only [StackProps.callArgs] at ca
  have clk := relClock rel
  split at ev
  · rename_i w hw
    simp only [Prod.mk.injEq] at ev
    obtain ⟨rfl, rfl⟩ := ev
    have hreg : t1.regs t1.ptrReg = w := by
      rw [← ca]; exact InstCorrect.regOfLookup rel hw
    refine ⟨1, { t1 with clock := t1.clock + 1 }, le_flatBound_leaf (by decide), ?_, ?_, ?_⟩
    · rw [evaluate]
      simp only [Nat.add_one_ne_zero, if_false, asmFetch, fetch, hreg]
      cases w with
      | word value =>
        by_cases hv : value = 0#width
        · simp [haltWordView, hv]
        · simp [haltWordView, hv]
      | loc a b => simp [haltWordView]
    · simp [StackSemStateOps.emptyEnv, relFfi rel]
    · simp only [StackSemStateOps.emptyEnv]; omega
  · simp only [Prod.mk.injEq] at ev
    exact absurd ev.1.symm nerr

/-- `Inst` case. -/
theorem flattenCorrectInstB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (i : HolInst width) : FlattenPropB S (.inst i : HolProg width) s1 := by
  rintro t r s2 n l cs bs t1 ⟨ev, nerr, rel, -, inst, -⟩ - -
  rw [StackSemEvaluate.evaluate_inst] at ev
  have fetch : asmFetchAux t1.pc t1.code = some (.asm (.asmi (.inst i)) [] 0) :=
    fetchSingle rfl (by simpa [flattenHOL, appListAppendList] using inst)
  split at ev
  · rename_i s1' hi
    simp only [Prod.mk.injEq] at ev
    obtain ⟨rfl, rfl⟩ := ev
    have rel2 := InstCorrect.instCorrect ⟨hi, rel⟩
    obtain ⟨cpc, ccode, cclock, -, -, -, -, -, cptr, clen, cptr2, clen2, clink⟩ :=
      asmInstConsts i t1
    have nf := InstCorrect.notFailed rel2
    refine ⟨1, incPc (asmInst i t1), le_flatBound_leaf (by decide), fun ck1 => ?_, ?_, ?_, ?_,
      ?_, ?_, ?_, ?_, rel2⟩
    · rw [evaluate]
      simp only [show t1.clock + 1 + ck1 ≠ 0 by omega, if_false, asmFetch, fetch,
        LabProps.asmInstWithClock, nf, Bool.false_eq_true]
      congr 1
      simp only [incPc, decClock, cclock, cpc]
      congr 1 <;> first | omega | exact nf.symm
    all_goals simp [incPc, cptr, clen, cptr2, clen2, clink, ccode, cpc, flattenHOL,
      appListAppendList, isLabelHOL]
  · simp only [Prod.mk.injEq] at ev
    exact absurd ev.1.symm nerr

/-- `Tick` case. -/
theorem flattenCorrectTickB (S : Nat) (s1 : StackSemStateFiniteExact width C F) :
    FlattenPropB S (.tick : HolProg width) s1 := by
  rintro t r s2 n l cs bs t1 ⟨ev, nerr, rel, -, inst, -⟩ - -
  rw [StackSemEvaluate.evaluate_tick] at ev
  have fetch : asmFetchAux t1.pc t1.code = some (.asm (.asmi (.inst .skip)) [] 0) :=
    fetchSingle rfl (by simpa [flattenHOL, appListAppendList] using inst)
  have nf := InstCorrect.notFailed rel
  have clk := relClock rel
  split_ifs at ev with h0
  · simp only [Prod.mk.injEq] at ev
    obtain ⟨rfl, rfl⟩ := ev
    refine ⟨1, incPc t1, le_flatBound_leaf (by decide), fun ck1 => ?_, rfl, rfl, rfl, rfl, rfl,
      List.prefix_refl _, ?_, ?_⟩
    · rw [evaluate]
      simp only [show t1.clock + 1 + ck1 ≠ 0 by omega, if_false, asmFetch, fetch, asmInst, nf,
        Bool.false_eq_true]
      congr 1
      simp only [incPc, decClock]
      congr 1 <;> first | omega | exact nf.symm
    · simp [incPc, StackSemStateOps.emptyEnv, relFfi rel]
    · simp [incPc]; omega
  · simp only [Prod.mk.injEq] at ev
    obtain ⟨rfl, rfl⟩ := ev
    refine ⟨0, incPc (decClock t1), Nat.zero_le _, fun ck1 => ?_, rfl, rfl, rfl, rfl, rfl,
      List.prefix_refl _, ?_, StateRel.stateRelDecClock rel⟩
    · rw [evaluate]
      simp only [show t1.clock + 0 + ck1 ≠ 0 by omega, if_false, asmFetch, fetch, asmInst, nf,
        Bool.false_eq_true]
      congr 1
      simp only [incPc, decClock]
      congr 1 <;> first | omega | exact nf.symm
    · simp [incPc, decClock, flattenHOL, appListAppendList, isLabelHOL]

/-- Shared step of `Return` and `Raise`: a register jump to a `Loc`, with witness `1`. -/
theorem jumpRegLocB {s : StackSemStateFiniteExact width C F}
    {t1 : Flapjack.Compiler.Backend.LabSem.State width C F} {reg l1 l2 : Nat}
    (rel : stateRel s t1)
    (fetch : asmFetchAux t1.pc t1.code = some (.asm (.asmi (.jumpReg reg)) [] 0))
    (hreg : t1.regs reg = .loc l1 l2) :
    ∃ (ck : Nat) (t2 : Flapjack.Compiler.Backend.LabSem.State width C F), ck ≤ 1 ∧
      (∀ ck1, evaluate { t1 with clock := t1.clock + ck + ck1 } =
        evaluate { t2 with clock := t2.clock + ck1 }) ∧
      t2.lenReg = t1.lenReg ∧ t2.ptrReg = t1.ptrReg ∧ t2.len2Reg = t1.len2Reg ∧
      t2.ptr2Reg = t1.ptr2Reg ∧ t2.linkReg = t1.linkReg ∧ t1.code <+: t2.code ∧
      (∀ k, (sptLookup k s.code).isSome → (locToPc k 0 t2.code).isSome) ∧
      ∀ w, locToPc l1 l2 t2.code = some w → w = t2.pc ∧ stateRel s t2 := by
  cases hpc : locToPc l1 l2 t1.code with
  | none =>
    refine ⟨1, { t1 with clock := t1.clock + 1 }, le_refl _, fun ck1 => ?_, rfl, rfl, rfl, rfl,
      rfl, List.prefix_refl _, fun k hk => codeLookupLocToPc rel k hk, ?_⟩
    · simp only [Nat.add_assoc]
    · intro w hw; simp [hpc] at hw
  | some pc =>
    refine ⟨1, updPc pc t1, le_refl _, fun ck1 => ?_, rfl, rfl, rfl, rfl, rfl,
      List.prefix_refl _, codeLookupLocToPc rel, fun w hw => ?_⟩
    · rw [evaluate]
      simp only [show t1.clock + 1 + ck1 ≠ 0 by omega, if_false, asmFetch, fetch, hreg, hpc]
      congr 1
      simp only [updPc, decClock]
      congr 1
      omega
    · simp only [updPc] at hw ⊢
      rw [hpc] at hw
      exact ⟨(Option.some.inj hw).symm, rel⟩

/-- `Return` case. -/
theorem flattenCorrectRetB (S : Nat) (s1 : StackSemStateFiniteExact width C F) (v : Nat) :
    FlattenPropB S (.ret v : HolProg width) s1 := by
  rintro t r s2 n l cs bs t1 ⟨ev, nerr, rel, -, inst, -⟩ - -
  rw [StackSemEvaluate.evaluate_ret] at ev
  have fetch : asmFetchAux t1.pc t1.code = some (.asm (.asmi (.jumpReg v)) [] 0) :=
    fetchSingle rfl (by simpa [flattenHOL, appListAppendList] using inst)
  split at ev
  · rename_i l1 l2 hv
    simp only [Prod.mk.injEq] at ev
    obtain ⟨rfl, rfl⟩ := ev
    obtain ⟨ck, t2, hck, h⟩ := jumpRegLocB rel fetch (InstCorrect.regOfLookup rel hv)
    exact ⟨ck, t2, le_flatBound_leaf (by omega), h⟩
  · simp only [Prod.mk.injEq] at ev
    exact absurd ev.1.symm nerr

/-- `Raise` case. -/
theorem flattenCorrectRaiseB (S : Nat) (s1 : StackSemStateFiniteExact width C F) (v : Nat) :
    FlattenPropB S (.raise v : HolProg width) s1 := by
  rintro t r s2 n l cs bs t1 ⟨ev, nerr, rel, -, inst, -⟩ - -
  rw [StackSemEvaluate.evaluate_raise] at ev
  have fetch : asmFetchAux t1.pc t1.code = some (.asm (.asmi (.jumpReg v)) [] 0) :=
    fetchSingle rfl (by simpa [flattenHOL, appListAppendList] using inst)
  split at ev
  · rename_i l1 l2 hv
    simp only [Prod.mk.injEq] at ev
    obtain ⟨rfl, rfl⟩ := ev
    obtain ⟨ck, t2, hck, h⟩ := jumpRegLocB rel fetch (InstCorrect.regOfLookup rel hv)
    exact ⟨ck, t2, le_flatBound_leaf (by omega), h⟩
  · simp only [Prod.mk.injEq] at ev
    exact absurd ev.1.symm nerr

/-- `Break` case. -/
theorem flattenCorrectBreakB (S : Nat) (s1 : StackSemStateFiniteExact width C F) (k : Nat) :
    FlattenPropB S (.break k : HolProg width) s1 := by
  rintro t r s2 n l cs bs t1 ⟨ev, -, rel, -, inst, labs⟩ - -
  rw [StackSemEvaluate.evaluate_break] at ev
  simp only [Prod.mk.injEq] at ev
  obtain ⟨rfl, rfl⟩ := ev
  have fetch : asmFetchAux t1.pc t1.code =
      some (.labAsm (.jump (.lab n (findLabHOL k bs))) 0 [] 0) :=
    fetchSingle rfl (by simpa [flattenHOL, appListAppendList] using inst)
  have some_ : (locToPc n (findLabHOL k bs) t1.code).isSome := by
    by_cases hm : findLabHOL k bs ∈ bs
    · exact labs _ (by simp [hm])
    · rw [notMemFindLabImp bs k hm]; exact labs 0 (by simp)
  obtain ⟨pc, hpc⟩ := Option.isSome_iff_exists.mp some_
  refine ⟨1, updPc pc t1, le_flatBound_leaf (by decide), fun ck1 => ?_, rfl, rfl, rfl, rfl, rfl,
    List.prefix_refl _, codeLookupLocToPc rel, fun w hw => ?_⟩
  · rw [evaluate]
    simp only [show t1.clock + 1 + ck1 ≠ 0 by omega, if_false, asmFetch, fetch, getPcValue, hpc]
    congr 1
    simp only [updPc, decClock]
    congr 1
    omega
  · simp only [updPc] at hw ⊢
    rw [hpc] at hw
    exact ⟨(Option.some.inj hw).symm, rel⟩

/-- `LocValue` case. -/
theorem flattenCorrectLocValueB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (reg l1 l2 : Nat) : FlattenPropB S (.locValue reg l1 l2 : HolProg width) s1 := by
  rintro t r s2 n l cs bs t1 ⟨ev, nerr, rel, -, inst, -⟩ - -
  rw [StackSemEvaluate.evaluate_locValue] at ev
  have fetch : asmFetchAux t1.pc t1.code =
      some (.labAsm (.locValue reg (.lab l1 l2)) 0 [] 0) :=
    fetchSingle rfl (by simpa [flattenHOL, appListAppendList] using inst)
  split_ifs at ev with check
  · simp only [Prod.mk.injEq] at ev
    obtain ⟨rfl, rfl⟩ := ev
    obtain ⟨pc, hpc⟩ := StateRel.locCheckImpLocToPc ⟨check, rel⟩
    refine ⟨1, incPc (updReg reg (.loc l1 l2) t1), le_flatBound_leaf (by decide), fun ck1 => ?_,
      rfl, rfl, rfl, rfl, rfl, List.prefix_refl _, ?_, StateRel.setVarUpdReg rel⟩
    · rw [evaluate]
      simp only [show t1.clock + 1 + ck1 ≠ 0 by omega, if_false, asmFetch, fetch, getPcValue,
        hpc, reduceCtorEq]
      congr 1
      simp only [incPc, decClock, updReg, labToLoc]
      congr 1
      omega
    · simp [incPc, updReg, flattenHOL, appListAppendList, isLabelHOL]
  · simp only [Prod.mk.injEq] at ev
    exact absurd ev.1.symm nerr

/-- `CodeBufferWrite` case. -/
theorem flattenCorrectCodeBufferWriteB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (r1 r2 : Nat) : FlattenPropB S (.codeBufferWrite r1 r2 : HolProg width) s1 := by
  rintro t r s2 n l cs bs t1 ⟨ev, nerr, rel, -, inst, -⟩ - -
  rw [StackSemEvaluate.evaluate_codeBufferWrite] at ev
  have fetch : asmFetchAux t1.pc t1.code = some (.asm (.cbw r1 r2) [] 0) :=
    fetchSingle rfl (by simpa [flattenHOL, appListAppendList] using inst)
  have cbEq : s1.codeBuffer = t1.codeBuffer := rel.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  split at ev
  · rename_i w1 w2 h1 h2
    split at ev
    · rename_i cb hcb
      simp only [Prod.mk.injEq] at ev
      obtain ⟨rfl, rfl⟩ := ev
      refine ⟨1, incPc { t1 with codeBuffer := cb }, le_flatBound_leaf (by decide),
        fun ck1 => ?_, rfl, rfl, rfl, rfl, rfl, List.prefix_refl _, ?_,
        stateRelWithCodeBuffer rel cb⟩
      · rw [evaluate]
        simp only [show t1.clock + 1 + ck1 ≠ 0 by omega, if_false, asmFetch, fetch,
          InstCorrect.regOfLookup rel h1, InstCorrect.regOfLookup rel h2, ← cbEq, hcb]
        congr 1
        simp only [incPc, decClock]
        congr 1
        omega
      · simp [incPc, flattenHOL, appListAppendList, isLabelHOL]
    · simp only [Prod.mk.injEq] at ev
      exact absurd ev.1.symm nerr
  · simp only [Prod.mk.injEq] at ev
    exact absurd ev.1.symm nerr

/-- `Continue` case. -/
theorem flattenCorrectContinueB (S : Nat) (s1 : StackSemStateFiniteExact width C F) (k : Nat) :
    FlattenPropB S (.continue k : HolProg width) s1 := by
  rintro t r s2 n l cs bs t1 ⟨ev, -, rel, -, inst, -⟩ - -
  rw [StackSemEvaluate.evaluate_continue] at ev
  simp only [Prod.mk.injEq] at ev
  obtain ⟨rfl, rfl⟩ := ev
  refine ⟨0, t1, Nat.zero_le _, fun ck1 => rfl, rfl, rfl, rfl, rfl, rfl, List.prefix_refl _,
    rel, ?_⟩
  simpa [flattenHOL, appListAppendList] using inst

/-- Shared shape of the clauses that return `SOME Error` under `state_rel`. -/
theorem guardedB {S : Nat} {prog : HolProg width} {s1 : StackSemStateFiniteExact width C F}
    (h : ∀ (t : Flapjack.Compiler.Backend.LabSem.State width C F), stateRel s1 t →
      (StackSemEvaluate.evaluate (prog, s1)).1 = some .error) :
    FlattenPropB S prog s1 := by
  rintro t r s2 n l cs bs t1 ⟨ev, nerr, rel, -⟩ - -
  have := h t1 rel
  rw [ev] at this
  exact absurd this nerr

theorem flattenCorrectAllocB (S : Nat) (s1 : StackSemStateFiniteExact width C F) (k : Nat) :
    FlattenPropB S (.alloc k : HolProg width) s1 :=
  guardedB fun t rel => by
    rw [StackSemEvaluate.evaluate_alloc]; simp [(relNoStack rel).2.2]

theorem flattenCorrectStoreConstsB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (a b : Nat) (stub : Option Nat) :
    FlattenPropB S (.storeConsts a b stub : HolProg width) s1 :=
  guardedB fun t rel => by
    rw [StackSemEvaluate.evaluate_storeConsts]; simp [(relNoStack rel).2.1]

theorem flattenCorrectGetB (S : Nat) (s1 : StackSemStateFiniteExact width C F) (v : Nat)
    (name : StoreName) : FlattenPropB S (.get v name : HolProg width) s1 :=
  guardedB fun t rel => by
    rw [StackSemEvaluate.evaluate_get]; simp [(relNoStack rel).2.1]

theorem flattenCorrectSetB (S : Nat) (s1 : StackSemStateFiniteExact width C F) (v : Nat)
    (name : StoreName) : FlattenPropB S (.set name v : HolProg width) s1 :=
  guardedB fun t rel => by
    rw [StackSemEvaluate.evaluate_set]; simp [(relNoStack rel).2.1]

theorem flattenCorrectOpCurrHeapB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (op : HolBinop) (v src : Nat) :
    FlattenPropB S (.opCurrHeap op v src : HolProg width) s1 :=
  guardedB fun t rel => by
    rw [StackSemEvaluate.evaluate_opCurrHeap]; simp [(relNoStack rel).2.1]

theorem flattenCorrectStackAllocB (S : Nat) (s1 : StackSemStateFiniteExact width C F) (k : Nat) :
    FlattenPropB S (.stackAlloc k : HolProg width) s1 :=
  guardedB fun t rel => by
    rw [StackSemEvaluate.evaluate_stackAlloc]; simp [(relNoStack rel).1]

theorem flattenCorrectStackFreeB (S : Nat) (s1 : StackSemStateFiniteExact width C F) (k : Nat) :
    FlattenPropB S (.stackFree k : HolProg width) s1 :=
  guardedB fun t rel => by
    rw [StackSemEvaluate.evaluate_stackFree]; simp [(relNoStack rel).1]

theorem flattenCorrectStackLoadB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (r k : Nat) : FlattenPropB S (.stackLoad r k : HolProg width) s1 :=
  guardedB fun t rel => by
    rw [StackSemEvaluate.evaluate_stackLoad]; simp [(relNoStack rel).1]

theorem flattenCorrectStackLoadAnyB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (r rn : Nat) : FlattenPropB S (.stackLoadAny r rn : HolProg width) s1 :=
  guardedB fun t rel => by
    rw [StackSemEvaluate.evaluate_stackLoadAny]; simp [(relNoStack rel).1]

theorem flattenCorrectStackStoreB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (r k : Nat) : FlattenPropB S (.stackStore r k : HolProg width) s1 :=
  guardedB fun t rel => by
    rw [StackSemEvaluate.evaluate_stackStore]; simp [(relNoStack rel).1]

theorem flattenCorrectStackStoreAnyB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (r rn : Nat) : FlattenPropB S (.stackStoreAny r rn : HolProg width) s1 :=
  guardedB fun t rel => by
    rw [StackSemEvaluate.evaluate_stackStoreAny]; simp [(relNoStack rel).1]

theorem flattenCorrectStackGetSizeB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (r : Nat) : FlattenPropB S (.stackGetSize r : HolProg width) s1 :=
  guardedB fun t rel => by
    rw [StackSemEvaluate.evaluate_stackGetSize]; simp [(relNoStack rel).1]

theorem flattenCorrectStackSetSizeB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (r : Nat) : FlattenPropB S (.stackSetSize r : HolProg width) s1 :=
  guardedB fun t rel => by
    rw [StackSemEvaluate.evaluate_stackSetSize]; simp [(relNoStack rel).1]

theorem flattenCorrectBitmapLoadB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (r v : Nat) : FlattenPropB S (.bitmapLoad r v : HolProg width) s1 :=
  guardedB fun t rel => by
    rw [StackSemEvaluate.evaluate_bitmapLoad]; simp [(relNoStack rel).1]

theorem flattenCorrectDataBufferWriteB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (r1 r2 : Nat) : FlattenPropB S (.dataBufferWrite r1 r2 : HolProg width) s1 :=
  guardedB fun t rel => by
    rw [StackSemEvaluate.evaluate_dataBufferWrite]; simp [(relNoStack rel).1]

end

end InitECandidate.Solver.Compiler.Flatten
