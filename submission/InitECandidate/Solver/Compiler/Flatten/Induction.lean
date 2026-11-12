import InitECandidate.Solver.Compiler.Flatten.Control
import InitECandidate.Solver.Compiler.Flatten.Call
import InitECandidate.Solver.Compiler.Flatten.Ffi

/-!
# Bounded `flatten_correct`

The constructor cases of `Flatten/{Leaves,Control,Call,Ffi}.lean` assembled by Flapjack's
well-founded induction on the StackSem `(clock, sizeOf)` measure (`measureLtWf`), exactly as
Flapjack's `flattenPropAll` (`StackToLab/Proofs/FlattenCorrect.lean`).
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

/-- Every constructor case, given the induction hypothesis. -/
theorem flattenPropBOfIH (S : Nat) (prog : HolProg width)
    (s1 : StackSemStateFiniteExact width C F) (ih : FlattenIHB S prog s1) :
    FlattenPropB S prog s1 := by
  cases prog with
  | skip => exact flattenCorrectSkipB S s1
  | inst i => exact flattenCorrectInstB S s1 i
  | get v name => exact flattenCorrectGetB S s1 v name
  | set name v => exact flattenCorrectSetB S s1 v name
  | opCurrHeap op v src => exact flattenCorrectOpCurrHeapB S s1 op v src
  | call ret dest handler =>
    rcases ret with _ | ⟨rp, link, l1, l2⟩
    · exact flattenCorrectCallTailB S s1 dest handler ih
    · exact flattenCorrectCallRetB S s1 rp link l1 l2 dest handler ih
  | seq c1 c2 => exact flattenCorrectSeqB S s1 c1 c2 ih
  | ite cmp reg ri c1 c2 => exact flattenCorrectIfB S s1 cmp reg ri c1 c2 ih
  | loop body => exact flattenCorrectLoopB S s1 body ih
  | jumpLower r1 r2 dest => exact flattenCorrectJumpLowerB S s1 r1 r2 dest ih
  | alloc k => exact flattenCorrectAllocB S s1 k
  | storeConsts a b stub => exact flattenCorrectStoreConstsB S s1 a b stub
  | raise v => exact flattenCorrectRaiseB S s1 v
  | ret v => exact flattenCorrectRetB S s1 v
  | «break» k => exact flattenCorrectBreakB S s1 k
  | «continue» k => exact flattenCorrectContinueB S s1 k
  | ffi f ptr len ptr2 len2 ret => exact flattenCorrectFfiB S s1 f ptr len ptr2 len2 ret
  | tick => exact flattenCorrectTickB S s1
  | locValue reg l1 l2 => exact flattenCorrectLocValueB S s1 reg l1 l2
  | install ptr len dptr dlen ret => exact flattenCorrectInstallB S s1 ptr len dptr dlen ret
  | shMemOp op reg addr =>
    rcases addr with ⟨a, w⟩
    exact flattenCorrectShMemOpB S s1 op reg a w
  | codeBufferWrite r1 r2 => exact flattenCorrectCodeBufferWriteB S s1 r1 r2
  | dataBufferWrite r1 r2 => exact flattenCorrectDataBufferWriteB S s1 r1 r2
  | rawCall dest => exact flattenCorrectRawCallB S s1 dest ih
  | stackAlloc k => exact flattenCorrectStackAllocB S s1 k
  | stackFree k => exact flattenCorrectStackFreeB S s1 k
  | stackStore r k => exact flattenCorrectStackStoreB S s1 r k
  | stackStoreAny r rn => exact flattenCorrectStackStoreAnyB S s1 r rn
  | stackLoad r k => exact flattenCorrectStackLoadB S s1 r k
  | stackLoadAny r rn => exact flattenCorrectStackLoadAnyB S s1 r rn
  | stackGetSize r => exact flattenCorrectStackGetSizeB S s1 r
  | stackSetSize r => exact flattenCorrectStackSetSizeB S s1 r
  | bitmapLoad r v => exact flattenCorrectBitmapLoadB S s1 r v
  | halt v => exact flattenCorrectHaltB S s1 v

/-- Bounded `flatten_correct` for every program and initial state. -/
theorem flattenPropBAll (S : Nat) (prog : HolProg width)
    (s1 : StackSemStateFiniteExact width C F) : FlattenPropB S prog s1 :=
  (measureLtWf.induction (C := fun a => FlattenPropB S a.1 a.2) (prog, s1)
    fun a ih => flattenPropBOfIH S a.1 a.2 fun p' s' h => ih (p', s') h :)

end

/-- **Bounded `flatten_correct`.** Flapjack's `flattenCorrect` (same hypotheses, same
conclusion) with two extra hypotheses — every procedure body of `s1.code` and every program
the compile oracle can install has `psize ≤ S` (`CodeBounded S s1`), and `psize prog ≤ S` —
and the extra LabSem clock `ck` bounded by

  `ck ≤ (2 * S + 2) * (s1.clock - s2.clock) + 2 * psize prog`,

where `psize` is the node count of the stack program. For a halting result the LabSem run
also ends with `s2.clock ≤ t2.clock`, so it consumes at most `(s1.clock - s2.clock) + ck`
LabSem ticks; otherwise it consumes exactly `(s1.clock - s2.clock) + ck` (`stateRel` ties the
clocks, or both end at `0` on a timeout). -/
theorem flattenCorrect_bounded {width : Nat} [NeZero width] {C F : Type} (S : Nat) :
    ∀ (prog : HolProg width) (s1 : StackSemStateFiniteExact width C F) (t : Bool)
      (r : Option (StackSemResult width)) (s2 : StackSemStateFiniteExact width C F)
      (n l : Nat) (cs bs : List Nat) (t1 : Flapjack.Compiler.Backend.LabSem.State width C F),
      StackSemEvaluate.evaluate (prog, s1) = (r, s2) ∧ r ≠ some .error ∧
      stateRel s1 t1 ∧
      StackProps.callArgs prog t1.ptrReg t1.lenReg t1.ptr2Reg t1.len2Reg t1.linkReg ∧
      codeInstalled t1.pc (appListAppend (flattenHOL t prog n l cs bs).1) t1.code ∧
      (∀ k ∈ cs ++ bs ++ [0], (locToPc n k t1.code).isSome) →
      CodeBounded S s1 → psize prog ≤ S →
      ∃ (ck : Nat) (t2 : Flapjack.Compiler.Backend.LabSem.State width C F),
      ck ≤ (2 * S + 2) * (s1.clock - s2.clock) + 2 * psize prog ∧
      match haltView r with
      | some res =>
        evaluate { t1 with clock := t1.clock + ck } = (res, t2) ∧ t2.ffi = s2.ffi ∧
          s2.clock ≤ t2.clock
      | none =>
        (∀ ck1, evaluate { t1 with clock := t1.clock + ck + ck1 } =
          evaluate { t2 with clock := t2.clock + ck1 }) ∧
        t2.lenReg = t1.lenReg ∧
        t2.ptrReg = t1.ptrReg ∧
        t2.len2Reg = t1.len2Reg ∧
        t2.ptr2Reg = t1.ptr2Reg ∧
        t2.linkReg = t1.linkReg ∧
        t1.code <+: t2.code ∧
        match r.map (fun w => resultView w n cs bs) with
        | none =>
          t2.pc = t1.pc + ((appListAppend (flattenHOL t prog n l cs bs).1).filter
            (fun x => !isLabelHOL x)).length ∧
          stateRel s2 t2
        | some (.vloc n1 n2) =>
          (∀ k, (sptLookup k s2.code).isSome → (locToPc k 0 t2.code).isSome) ∧
            ∀ w, locToPc n1 n2 t2.code = some w → w = t2.pc ∧ stateRel s2 t2
        | some (.vcont n1 n2) =>
          stateRel s2 t2 ∧ codeInstalled t2.pc [.labAsm (.jump (.lab n1 n2)) 0 [] 0] t2.code
        | some .vtimeout => t2.ffi = s2.ffi ∧ t2.clock = 0
        | some .verr => False :=
  fun prog s1 t r s2 n l cs bs t1 h hcb hsz =>
    flattenPropBAll S prog s1 t r s2 n l cs bs t1 h hcb hsz

end InitECandidate.Solver.Compiler.Flatten
