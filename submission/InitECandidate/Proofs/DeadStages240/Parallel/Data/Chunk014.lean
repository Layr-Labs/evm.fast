import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadStages240.Parallel.Data.Chunk013
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages240.Parallel
@[irreducible, cbv_opaque] def input3584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3583 input3580)).val
theorem input3584_def : input3584 = (.seq input3583 input3580) := by
  unfold input3584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3583 output3580)).val
theorem output3584_def : output3584 = (.seq output3583 output3580) := by
  unfold output3584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3584_skip : Flapjack.WordAlloc.isSkip output3584 = false := by
  rw [output3584_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3584 input3579)).val
theorem input3585_def : input3585 = (.seq input3584 input3579) := by
  unfold input3585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3584 output3579)).val
theorem output3585_def : output3585 = (.seq output3584 output3579) := by
  unfold output3585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3585_skip : Flapjack.WordAlloc.isSkip output3585 = false := by
  rw [output3585_def]
  kernel_rfl


def value1797 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 253 (Flapjack.WordLangAddr.addr 257 0#64)))).val
theorem input3586_def : input3586 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 253 (Flapjack.WordLangAddr.addr 257 0#64))) := by
  unfold input3586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 253 (Flapjack.WordLangAddr.addr 257 0#64)))).val
theorem output3586_def : output3586 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 253 (Flapjack.WordLangAddr.addr 257 0#64))) := by
  unfold output3586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3586_skip : Flapjack.WordAlloc.isSkip output3586 = false := by
  rw [output3586_def]
  kernel_rfl


def value1798 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(257, 245)])).val
theorem input3587_def : input3587 = (Flapjack.WordLangProgHOL.move 0 [(257, 245)]) := by
  unfold input3587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(257, 245)])).val
theorem output3587_def : output3587 = (Flapjack.WordLangProgHOL.move 0 [(257, 245)]) := by
  unfold output3587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3587_skip : Flapjack.WordAlloc.isSkip output3587 = false := by
  rw [output3587_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3587 input3586)).val
theorem input3588_def : input3588 = (.seq input3587 input3586) := by
  unfold input3588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3587 output3586)).val
theorem output3588_def : output3588 = (.seq output3587 output3586) := by
  unfold output3588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3588_skip : Flapjack.WordAlloc.isSkip output3588 = false := by
  rw [output3588_def]
  kernel_rfl


def value1799 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(253, 249)])).val
theorem input3589_def : input3589 = (Flapjack.WordLangProgHOL.move 0 [(253, 249)]) := by
  unfold input3589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(253, 249)])).val
theorem output3589_def : output3589 = (Flapjack.WordLangProgHOL.move 0 [(253, 249)]) := by
  unfold output3589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3589_skip : Flapjack.WordAlloc.isSkip output3589 = false := by
  rw [output3589_def]
  kernel_rfl


def value1800 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(249, 225)])).val
theorem input3590_def : input3590 = (Flapjack.WordLangProgHOL.move 0 [(249, 225)]) := by
  unfold input3590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(249, 225)])).val
theorem output3590_def : output3590 = (Flapjack.WordLangProgHOL.move 0 [(249, 225)]) := by
  unfold output3590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3590_skip : Flapjack.WordAlloc.isSkip output3590 = false := by
  rw [output3590_def]
  kernel_rfl


def value1801 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 245 241 (Flapjack.WordRegImm.imm 18446744073709551520#64))))).val
theorem input3591_def : input3591 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 245 241 (Flapjack.WordRegImm.imm 18446744073709551520#64)))) := by
  unfold input3591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 245 241 (Flapjack.WordRegImm.imm 18446744073709551520#64))))).val
theorem output3591_def : output3591 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 245 241 (Flapjack.WordRegImm.imm 18446744073709551520#64)))) := by
  unfold output3591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3591_skip : Flapjack.WordAlloc.isSkip output3591 = false := by
  rw [output3591_def]
  kernel_rfl


def value1802 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 241 237)).val
theorem input3592_def : input3592 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 241 237) := by
  unfold input3592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 241 237)).val
theorem output3592_def : output3592 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 241 237) := by
  unfold output3592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3592_skip : Flapjack.WordAlloc.isSkip output3592 = false := by
  rw [output3592_def]
  kernel_rfl


def value1803 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 237 233 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3593_def : input3593 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 237 233 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 237 233 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3593_def : output3593 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 237 233 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3593_skip : Flapjack.WordAlloc.isSkip output3593 = false := by
  rw [output3593_def]
  kernel_rfl


def value1804 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 233 Flapjack.WordStore.heapLength)).val
theorem input3594_def : input3594 = (Flapjack.WordLangProgHOL.get 233 Flapjack.WordStore.heapLength) := by
  unfold input3594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 233 Flapjack.WordStore.heapLength)).val
theorem output3594_def : output3594 = (Flapjack.WordLangProgHOL.get 233 Flapjack.WordStore.heapLength) := by
  unfold output3594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3594_skip : Flapjack.WordAlloc.isSkip output3594 = false := by
  rw [output3594_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3594 input3593)).val
theorem input3595_def : input3595 = (.seq input3594 input3593) := by
  unfold input3595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3594 output3593)).val
theorem output3595_def : output3595 = (.seq output3594 output3593) := by
  unfold output3595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3595_skip : Flapjack.WordAlloc.isSkip output3595 = false := by
  rw [output3595_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3595 input3592)).val
theorem input3596_def : input3596 = (.seq input3595 input3592) := by
  unfold input3596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3595 output3592)).val
theorem output3596_def : output3596 = (.seq output3595 output3592) := by
  unfold output3596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3596_skip : Flapjack.WordAlloc.isSkip output3596 = false := by
  rw [output3596_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3596 input3591)).val
theorem input3597_def : input3597 = (.seq input3596 input3591) := by
  unfold input3597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3596 output3591)).val
theorem output3597_def : output3597 = (.seq output3596 output3591) := by
  unfold output3597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3597_skip : Flapjack.WordAlloc.isSkip output3597 = false := by
  rw [output3597_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3598_def : input3598 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3598_def : output3598 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3598_skip : Flapjack.WordAlloc.isSkip output3598 = false := by
  rw [output3598_def]
  kernel_rfl


def value1805 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))))

@[irreducible, cbv_opaque] def input3599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(213, 207)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(217, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(225, 217)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 229 0#64)))),
      240, 6))
  (some 68) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(213, 207)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(221, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 221)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(229, 221)]))),
      240, 7)))).val
theorem input3599_def : input3599 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(213, 207)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(217, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(225, 217)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 229 0#64)))),
      240, 6))
  (some 68) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(213, 207)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(221, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 221)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(229, 221)]))),
      240, 7))) := by
  unfold input3599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(213, 207)])
          (Flapjack.WordLangProgHOL.move 1 [(217, 2)]))
        (Flapjack.WordLangProgHOL.move 1 [(225, 217)]),
      240, 6))
  (some 68) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(213, 207)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(221, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 221)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 0#64)),
      240, 7)))).val
theorem output3599_def : output3599 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(213, 207)])
          (Flapjack.WordLangProgHOL.move 1 [(217, 2)]))
        (Flapjack.WordLangProgHOL.move 1 [(225, 217)]),
      240, 6))
  (some 68) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(213, 207)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(221, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 221)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 0#64)),
      240, 7))) := by
  unfold output3599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3599_skip : Flapjack.WordAlloc.isSkip output3599 = false := by
  rw [output3599_def]
  kernel_rfl


def value1806 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))))

@[irreducible, cbv_opaque] def input3600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 201)])).val
theorem input3600_def : input3600 = (Flapjack.WordLangProgHOL.move 1 [(2, 201)]) := by
  unfold input3600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 201)])).val
theorem output3600_def : output3600 = (Flapjack.WordLangProgHOL.move 1 [(2, 201)]) := by
  unfold output3600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3600_skip : Flapjack.WordAlloc.isSkip output3600 = false := by
  rw [output3600_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3600 input3599)).val
theorem input3601_def : input3601 = (.seq input3600 input3599) := by
  unfold input3601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3600 output3599)).val
theorem output3601_def : output3601 = (.seq output3600 output3599) := by
  unfold output3601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3601_skip : Flapjack.WordAlloc.isSkip output3601 = false := by
  rw [output3601_def]
  kernel_rfl


def value1807 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(207, 149)])).val
theorem input3602_def : input3602 = (Flapjack.WordLangProgHOL.move 0 [(207, 149)]) := by
  unfold input3602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(207, 149)])).val
theorem output3602_def : output3602 = (Flapjack.WordLangProgHOL.move 0 [(207, 149)]) := by
  unfold output3602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3602_skip : Flapjack.WordAlloc.isSkip output3602 = false := by
  rw [output3602_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3602 input3601)).val
theorem input3603_def : input3603 = (.seq input3602 input3601) := by
  unfold input3603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3602 output3601)).val
theorem output3603_def : output3603 = (.seq output3602 output3601) := by
  unfold output3603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3603_skip : Flapjack.WordAlloc.isSkip output3603 = false := by
  rw [output3603_def]
  kernel_rfl


def value1808 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 2048#64))).val
theorem input3604_def : input3604 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 2048#64)) := by
  unfold input3604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 2048#64))).val
theorem output3604_def : output3604 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 2048#64)) := by
  unfold output3604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3604_skip : Flapjack.WordAlloc.isSkip output3604 = false := by
  rw [output3604_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3604 input3603)).val
theorem input3605_def : input3605 = (.seq input3604 input3603) := by
  unfold input3605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3604 output3603)).val
theorem output3605_def : output3605 = (.seq output3604 output3603) := by
  unfold output3605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3605_skip : Flapjack.WordAlloc.isSkip output3605 = false := by
  rw [output3605_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 2048#64))).val
theorem input3606_def : input3606 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 2048#64)) := by
  unfold input3606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3606_def : output3606 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3606_skip : Flapjack.WordAlloc.isSkip output3606 = true := by
  rw [output3606_def]
  kernel_rfl


def value1809 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 189 (Flapjack.WordLangAddr.addr 193 0#64)))).val
theorem input3607_def : input3607 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 189 (Flapjack.WordLangAddr.addr 193 0#64))) := by
  unfold input3607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 189 (Flapjack.WordLangAddr.addr 193 0#64)))).val
theorem output3607_def : output3607 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 189 (Flapjack.WordLangAddr.addr 193 0#64))) := by
  unfold output3607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3607_skip : Flapjack.WordAlloc.isSkip output3607 = false := by
  rw [output3607_def]
  kernel_rfl


def value1810 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(193, 181)])).val
theorem input3608_def : input3608 = (Flapjack.WordLangProgHOL.move 0 [(193, 181)]) := by
  unfold input3608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(193, 181)])).val
theorem output3608_def : output3608 = (Flapjack.WordLangProgHOL.move 0 [(193, 181)]) := by
  unfold output3608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3608_skip : Flapjack.WordAlloc.isSkip output3608 = false := by
  rw [output3608_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3608 input3607)).val
theorem input3609_def : input3609 = (.seq input3608 input3607) := by
  unfold input3609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3608 output3607)).val
theorem output3609_def : output3609 = (.seq output3608 output3607) := by
  unfold output3609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3609_skip : Flapjack.WordAlloc.isSkip output3609 = false := by
  rw [output3609_def]
  kernel_rfl


def value1811 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(189, 185)])).val
theorem input3610_def : input3610 = (Flapjack.WordLangProgHOL.move 0 [(189, 185)]) := by
  unfold input3610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(189, 185)])).val
theorem output3610_def : output3610 = (Flapjack.WordLangProgHOL.move 0 [(189, 185)]) := by
  unfold output3610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3610_skip : Flapjack.WordAlloc.isSkip output3610 = false := by
  rw [output3610_def]
  kernel_rfl


def value1812 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(185, 161)])).val
theorem input3611_def : input3611 = (Flapjack.WordLangProgHOL.move 0 [(185, 161)]) := by
  unfold input3611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(185, 161)])).val
theorem output3611_def : output3611 = (Flapjack.WordLangProgHOL.move 0 [(185, 161)]) := by
  unfold output3611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3611_skip : Flapjack.WordAlloc.isSkip output3611 = false := by
  rw [output3611_def]
  kernel_rfl


def value1813 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 177 (Flapjack.WordRegImm.imm 18446744073709551504#64))))).val
theorem input3612_def : input3612 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 177 (Flapjack.WordRegImm.imm 18446744073709551504#64)))) := by
  unfold input3612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 177 (Flapjack.WordRegImm.imm 18446744073709551504#64))))).val
theorem output3612_def : output3612 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 177 (Flapjack.WordRegImm.imm 18446744073709551504#64)))) := by
  unfold output3612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3612_skip : Flapjack.WordAlloc.isSkip output3612 = false := by
  rw [output3612_def]
  kernel_rfl


def value1814 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 177 173)).val
theorem input3613_def : input3613 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 177 173) := by
  unfold input3613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 177 173)).val
theorem output3613_def : output3613 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 177 173) := by
  unfold output3613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3613_skip : Flapjack.WordAlloc.isSkip output3613 = false := by
  rw [output3613_def]
  kernel_rfl


def value1815 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 173 169 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3614_def : input3614 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 173 169 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 173 169 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3614_def : output3614 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 173 169 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3614_skip : Flapjack.WordAlloc.isSkip output3614 = false := by
  rw [output3614_def]
  kernel_rfl


def value1816 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 169 Flapjack.WordStore.heapLength)).val
theorem input3615_def : input3615 = (Flapjack.WordLangProgHOL.get 169 Flapjack.WordStore.heapLength) := by
  unfold input3615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 169 Flapjack.WordStore.heapLength)).val
theorem output3615_def : output3615 = (Flapjack.WordLangProgHOL.get 169 Flapjack.WordStore.heapLength) := by
  unfold output3615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3615_skip : Flapjack.WordAlloc.isSkip output3615 = false := by
  rw [output3615_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3615 input3614)).val
theorem input3616_def : input3616 = (.seq input3615 input3614) := by
  unfold input3616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3615 output3614)).val
theorem output3616_def : output3616 = (.seq output3615 output3614) := by
  unfold output3616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3616_skip : Flapjack.WordAlloc.isSkip output3616 = false := by
  rw [output3616_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3616 input3613)).val
theorem input3617_def : input3617 = (.seq input3616 input3613) := by
  unfold input3617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3616 output3613)).val
theorem output3617_def : output3617 = (.seq output3616 output3613) := by
  unfold output3617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3617_skip : Flapjack.WordAlloc.isSkip output3617 = false := by
  rw [output3617_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3617 input3612)).val
theorem input3618_def : input3618 = (.seq input3617 input3612) := by
  unfold input3618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3617 output3612)).val
theorem output3618_def : output3618 = (.seq output3617 output3612) := by
  unfold output3618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3618_skip : Flapjack.WordAlloc.isSkip output3618 = false := by
  rw [output3618_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3619_def : input3619 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3619_def : output3619 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3619_skip : Flapjack.WordAlloc.isSkip output3619 = false := by
  rw [output3619_def]
  kernel_rfl


def value1817 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))))

@[irreducible, cbv_opaque] def input3620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(149, 143)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(153, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(161, 153)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)))),
      240, 4))
  (some 68) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(149, 143)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(157, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 157)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(165, 157)]))),
      240, 5)))).val
theorem input3620_def : input3620 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(149, 143)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(153, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(161, 153)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 165 0#64)))),
      240, 4))
  (some 68) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(149, 143)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(157, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 157)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(165, 157)]))),
      240, 5))) := by
  unfold input3620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(149, 143)])
          (Flapjack.WordLangProgHOL.move 1 [(153, 2)]))
        (Flapjack.WordLangProgHOL.move 1 [(161, 153)]),
      240, 4))
  (some 68) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(149, 143)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(157, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 157)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)),
      240, 5)))).val
theorem output3620_def : output3620 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(149, 143)])
          (Flapjack.WordLangProgHOL.move 1 [(153, 2)]))
        (Flapjack.WordLangProgHOL.move 1 [(161, 153)]),
      240, 4))
  (some 68) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(149, 143)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(157, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 157)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)),
      240, 5))) := by
  unfold output3620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3620_skip : Flapjack.WordAlloc.isSkip output3620 = false := by
  rw [output3620_def]
  kernel_rfl


def value1818 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        Flapjack.Spt.ln))
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))))

@[irreducible, cbv_opaque] def input3621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 137)])).val
theorem input3621_def : input3621 = (Flapjack.WordLangProgHOL.move 1 [(2, 137)]) := by
  unfold input3621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 137)])).val
theorem output3621_def : output3621 = (Flapjack.WordLangProgHOL.move 1 [(2, 137)]) := by
  unfold output3621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3621_skip : Flapjack.WordAlloc.isSkip output3621 = false := by
  rw [output3621_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3621 input3620)).val
theorem input3622_def : input3622 = (.seq input3621 input3620) := by
  unfold input3622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3621 output3620)).val
theorem output3622_def : output3622 = (.seq output3621 output3620) := by
  unfold output3622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3622_skip : Flapjack.WordAlloc.isSkip output3622 = false := by
  rw [output3622_def]
  kernel_rfl


def value1819 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(143, 85)])).val
theorem input3623_def : input3623 = (Flapjack.WordLangProgHOL.move 0 [(143, 85)]) := by
  unfold input3623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(143, 85)])).val
theorem output3623_def : output3623 = (Flapjack.WordLangProgHOL.move 0 [(143, 85)]) := by
  unfold output3623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3623_skip : Flapjack.WordAlloc.isSkip output3623 = false := by
  rw [output3623_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3623 input3622)).val
theorem input3624_def : input3624 = (.seq input3623 input3622) := by
  unfold input3624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3623 output3622)).val
theorem output3624_def : output3624 = (.seq output3623 output3622) := by
  unfold output3624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3624_skip : Flapjack.WordAlloc.isSkip output3624 = false := by
  rw [output3624_def]
  kernel_rfl


def value1820 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 64#64))).val
theorem input3625_def : input3625 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 64#64)) := by
  unfold input3625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 64#64))).val
theorem output3625_def : output3625 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 137 64#64)) := by
  unfold output3625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3625_skip : Flapjack.WordAlloc.isSkip output3625 = false := by
  rw [output3625_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3625 input3624)).val
theorem input3626_def : input3626 = (.seq input3625 input3624) := by
  unfold input3626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3625 output3624)).val
theorem output3626_def : output3626 = (.seq output3625 output3624) := by
  unfold output3626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3626_skip : Flapjack.WordAlloc.isSkip output3626 = false := by
  rw [output3626_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 64#64))).val
theorem input3627_def : input3627 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 64#64)) := by
  unfold input3627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3627_def : output3627 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3627_skip : Flapjack.WordAlloc.isSkip output3627 = true := by
  rw [output3627_def]
  kernel_rfl


def value1821 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 125 (Flapjack.WordLangAddr.addr 129 0#64)))).val
theorem input3628_def : input3628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 125 (Flapjack.WordLangAddr.addr 129 0#64))) := by
  unfold input3628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 125 (Flapjack.WordLangAddr.addr 129 0#64)))).val
theorem output3628_def : output3628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 125 (Flapjack.WordLangAddr.addr 129 0#64))) := by
  unfold output3628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3628_skip : Flapjack.WordAlloc.isSkip output3628 = false := by
  rw [output3628_def]
  kernel_rfl


def value1822 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(129, 117)])).val
theorem input3629_def : input3629 = (Flapjack.WordLangProgHOL.move 0 [(129, 117)]) := by
  unfold input3629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(129, 117)])).val
theorem output3629_def : output3629 = (Flapjack.WordLangProgHOL.move 0 [(129, 117)]) := by
  unfold output3629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3629_skip : Flapjack.WordAlloc.isSkip output3629 = false := by
  rw [output3629_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3629 input3628)).val
theorem input3630_def : input3630 = (.seq input3629 input3628) := by
  unfold input3630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3629 output3628)).val
theorem output3630_def : output3630 = (.seq output3629 output3628) := by
  unfold output3630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3630_skip : Flapjack.WordAlloc.isSkip output3630 = false := by
  rw [output3630_def]
  kernel_rfl


def value1823 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(125, 121)])).val
theorem input3631_def : input3631 = (Flapjack.WordLangProgHOL.move 0 [(125, 121)]) := by
  unfold input3631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(125, 121)])).val
theorem output3631_def : output3631 = (Flapjack.WordLangProgHOL.move 0 [(125, 121)]) := by
  unfold output3631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3631_skip : Flapjack.WordAlloc.isSkip output3631 = false := by
  rw [output3631_def]
  kernel_rfl


def value1824 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(121, 97)])).val
theorem input3632_def : input3632 = (Flapjack.WordLangProgHOL.move 0 [(121, 97)]) := by
  unfold input3632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(121, 97)])).val
theorem output3632_def : output3632 = (Flapjack.WordLangProgHOL.move 0 [(121, 97)]) := by
  unfold output3632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3632_skip : Flapjack.WordAlloc.isSkip output3632 = false := by
  rw [output3632_def]
  kernel_rfl


def value1825 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 117 113 (Flapjack.WordRegImm.imm 18446744073709551512#64))))).val
theorem input3633_def : input3633 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 117 113 (Flapjack.WordRegImm.imm 18446744073709551512#64)))) := by
  unfold input3633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 117 113 (Flapjack.WordRegImm.imm 18446744073709551512#64))))).val
theorem output3633_def : output3633 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 117 113 (Flapjack.WordRegImm.imm 18446744073709551512#64)))) := by
  unfold output3633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3633_skip : Flapjack.WordAlloc.isSkip output3633 = false := by
  rw [output3633_def]
  kernel_rfl


def value1826 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 113 109)).val
theorem input3634_def : input3634 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 113 109) := by
  unfold input3634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 113 109)).val
theorem output3634_def : output3634 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 113 109) := by
  unfold output3634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3634_skip : Flapjack.WordAlloc.isSkip output3634 = false := by
  rw [output3634_def]
  kernel_rfl


def value1827 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 109 105 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3635_def : input3635 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 109 105 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 109 105 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3635_def : output3635 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 109 105 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3635_skip : Flapjack.WordAlloc.isSkip output3635 = false := by
  rw [output3635_def]
  kernel_rfl


def value1828 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 105 Flapjack.WordStore.heapLength)).val
theorem input3636_def : input3636 = (Flapjack.WordLangProgHOL.get 105 Flapjack.WordStore.heapLength) := by
  unfold input3636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 105 Flapjack.WordStore.heapLength)).val
theorem output3636_def : output3636 = (Flapjack.WordLangProgHOL.get 105 Flapjack.WordStore.heapLength) := by
  unfold output3636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3636_skip : Flapjack.WordAlloc.isSkip output3636 = false := by
  rw [output3636_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3636 input3635)).val
theorem input3637_def : input3637 = (.seq input3636 input3635) := by
  unfold input3637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3636 output3635)).val
theorem output3637_def : output3637 = (.seq output3636 output3635) := by
  unfold output3637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3637_skip : Flapjack.WordAlloc.isSkip output3637 = false := by
  rw [output3637_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3637 input3634)).val
theorem input3638_def : input3638 = (.seq input3637 input3634) := by
  unfold input3638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3637 output3634)).val
theorem output3638_def : output3638 = (.seq output3637 output3634) := by
  unfold output3638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3638_skip : Flapjack.WordAlloc.isSkip output3638 = false := by
  rw [output3638_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3638 input3633)).val
theorem input3639_def : input3639 = (.seq input3638 input3633) := by
  unfold input3639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3638 output3633)).val
theorem output3639_def : output3639 = (.seq output3638 output3633) := by
  unfold output3639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3639_skip : Flapjack.WordAlloc.isSkip output3639 = false := by
  rw [output3639_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3640_def : input3640 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3640_def : output3640 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3640_skip : Flapjack.WordAlloc.isSkip output3640 = false := by
  rw [output3640_def]
  kernel_rfl


def value1829 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))

@[irreducible, cbv_opaque] def input3641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(85, 79)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(89, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(97, 89)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 0#64)))),
      240, 2))
  (some 68) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(85, 79)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(93, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 93)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(101, 93)]))),
      240, 3)))).val
theorem input3641_def : input3641 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(85, 79)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(89, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(97, 89)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 0#64)))),
      240, 2))
  (some 68) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(85, 79)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(93, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 93)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(101, 93)]))),
      240, 3))) := by
  unfold input3641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(85, 79)])
          (Flapjack.WordLangProgHOL.move 1 [(89, 2)]))
        (Flapjack.WordLangProgHOL.move 1 [(97, 89)]),
      240, 2))
  (some 68) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(85, 79)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(93, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 93)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)),
      240, 3)))).val
theorem output3641_def : output3641 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(85, 79)])
          (Flapjack.WordLangProgHOL.move 1 [(89, 2)]))
        (Flapjack.WordLangProgHOL.move 1 [(97, 89)]),
      240, 2))
  (some 68) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(85, 79)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(93, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 93)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)),
      240, 3))) := by
  unfold output3641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3641_skip : Flapjack.WordAlloc.isSkip output3641 = false := by
  rw [output3641_def]
  kernel_rfl


def value1830 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))

@[irreducible, cbv_opaque] def input3642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 73)])).val
theorem input3642_def : input3642 = (Flapjack.WordLangProgHOL.move 1 [(2, 73)]) := by
  unfold input3642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 73)])).val
theorem output3642_def : output3642 = (Flapjack.WordLangProgHOL.move 1 [(2, 73)]) := by
  unfold output3642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3642_skip : Flapjack.WordAlloc.isSkip output3642 = false := by
  rw [output3642_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3642 input3641)).val
theorem input3643_def : input3643 = (.seq input3642 input3641) := by
  unfold input3643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3642 output3641)).val
theorem output3643_def : output3643 = (.seq output3642 output3641) := by
  unfold output3643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3643_skip : Flapjack.WordAlloc.isSkip output3643 = false := by
  rw [output3643_def]
  kernel_rfl


def value1831 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(79, 13)])).val
theorem input3644_def : input3644 = (Flapjack.WordLangProgHOL.move 0 [(79, 13)]) := by
  unfold input3644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(79, 13)])).val
theorem output3644_def : output3644 = (Flapjack.WordLangProgHOL.move 0 [(79, 13)]) := by
  unfold output3644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3644_skip : Flapjack.WordAlloc.isSkip output3644 = false := by
  rw [output3644_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3644 input3643)).val
theorem input3645_def : input3645 = (.seq input3644 input3643) := by
  unfold input3645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3644 output3643)).val
theorem output3645_def : output3645 = (.seq output3644 output3643) := by
  unfold output3645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3645_skip : Flapjack.WordAlloc.isSkip output3645 = false := by
  rw [output3645_def]
  kernel_rfl


def value1832 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 32#64))).val
theorem input3646_def : input3646 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 32#64)) := by
  unfold input3646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 32#64))).val
theorem output3646_def : output3646 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 32#64)) := by
  unfold output3646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3646_skip : Flapjack.WordAlloc.isSkip output3646 = false := by
  rw [output3646_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3646 input3645)).val
theorem input3647_def : input3647 = (.seq input3646 input3645) := by
  unfold input3647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3646 output3645)).val
theorem output3647_def : output3647 = (.seq output3646 output3645) := by
  unfold output3647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3647_skip : Flapjack.WordAlloc.isSkip output3647 = false := by
  rw [output3647_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 69 32#64))).val
theorem input3648_def : input3648 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 69 32#64)) := by
  unfold input3648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3648_def : output3648 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3648_skip : Flapjack.WordAlloc.isSkip output3648 = true := by
  rw [output3648_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3649_def : input3649 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3649_def : output3649 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3649_skip : Flapjack.WordAlloc.isSkip output3649 = false := by
  rw [output3649_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64))).val
theorem input3650_def : input3650 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)) := by
  unfold input3650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3650_def : output3650 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3650_skip : Flapjack.WordAlloc.isSkip output3650 = true := by
  rw [output3650_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3651_def : input3651 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3651_def : output3651 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3651_skip : Flapjack.WordAlloc.isSkip output3651 = false := by
  rw [output3651_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64))).val
theorem input3652_def : input3652 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64)) := by
  unfold input3652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3652_def : output3652 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3652_skip : Flapjack.WordAlloc.isSkip output3652 = true := by
  rw [output3652_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3652 input3651)).val
theorem input3653_def : input3653 = (.seq input3652 input3651) := by
  unfold input3653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3651)).val
theorem output3653_def : output3653 = (output3651) := by
  unfold output3653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3653_skip : Flapjack.WordAlloc.isSkip output3653 = false := by
  rw [output3653_def]
  exact output3651_skip


@[irreducible, cbv_opaque] def input3654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3653 input3650)).val
theorem input3654_def : input3654 = (.seq input3653 input3650) := by
  unfold input3654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3653)).val
theorem output3654_def : output3654 = (output3653) := by
  unfold output3654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3654_skip : Flapjack.WordAlloc.isSkip output3654 = false := by
  rw [output3654_def]
  exact output3653_skip


@[irreducible, cbv_opaque] def input3655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(57, 45)])).val
theorem input3655_def : input3655 = (Flapjack.WordLangProgHOL.move 1 [(57, 45)]) := by
  unfold input3655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3655_def : output3655 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3655_skip : Flapjack.WordAlloc.isSkip output3655 = true := by
  rw [output3655_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(53, 41)])).val
theorem input3656_def : input3656 = (Flapjack.WordLangProgHOL.move 1 [(53, 41)]) := by
  unfold input3656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3656_def : output3656 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3656_skip : Flapjack.WordAlloc.isSkip output3656 = true := by
  rw [output3656_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3657_def : input3657 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3657_def : output3657 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3657_skip : Flapjack.WordAlloc.isSkip output3657 = true := by
  rw [output3657_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3657 input3656)).val
theorem input3658_def : input3658 = (.seq input3657 input3656) := by
  unfold input3658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3656)).val
theorem output3658_def : output3658 = (output3656) := by
  unfold output3658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3658_skip : Flapjack.WordAlloc.isSkip output3658 = true := by
  rw [output3658_def]
  exact output3656_skip


@[irreducible, cbv_opaque] def input3659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3658 input3655)).val
theorem input3659_def : input3659 = (.seq input3658 input3655) := by
  unfold input3659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3655)).val
theorem output3659_def : output3659 = (output3655) := by
  unfold output3659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3659_skip : Flapjack.WordAlloc.isSkip output3659 = true := by
  rw [output3659_def]
  exact output3655_skip


@[irreducible, cbv_opaque] def input3660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(49, 37)])).val
theorem input3660_def : input3660 = (Flapjack.WordLangProgHOL.move 1 [(49, 37)]) := by
  unfold input3660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3660_def : output3660 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3660_skip : Flapjack.WordAlloc.isSkip output3660 = true := by
  rw [output3660_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3660 input3659)).val
theorem input3661_def : input3661 = (.seq input3660 input3659) := by
  unfold input3661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3659)).val
theorem output3661_def : output3661 = (output3659) := by
  unfold output3661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3661_skip : Flapjack.WordAlloc.isSkip output3661 = true := by
  rw [output3661_def]
  exact output3659_skip


def value1833 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 13 [2])).val
theorem input3662_def : input3662 = (Flapjack.WordLangProgHOL.return 13 [2]) := by
  unfold input3662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 13 [2])).val
theorem output3662_def : output3662 = (Flapjack.WordLangProgHOL.return 13 [2]) := by
  unfold output3662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3662_skip : Flapjack.WordAlloc.isSkip output3662 = false := by
  rw [output3662_def]
  kernel_rfl


def value1834 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 45)])).val
theorem input3663_def : input3663 = (Flapjack.WordLangProgHOL.move 0 [(2, 45)]) := by
  unfold input3663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 45)])).val
theorem output3663_def : output3663 = (Flapjack.WordLangProgHOL.move 0 [(2, 45)]) := by
  unfold output3663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3663_skip : Flapjack.WordAlloc.isSkip output3663 = false := by
  rw [output3663_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3663 input3662)).val
theorem input3664_def : input3664 = (.seq input3663 input3662) := by
  unfold input3664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3663 output3662)).val
theorem output3664_def : output3664 = (.seq output3663 output3662) := by
  unfold output3664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3664_skip : Flapjack.WordAlloc.isSkip output3664 = false := by
  rw [output3664_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64))).val
theorem input3665_def : input3665 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64)) := by
  unfold input3665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64))).val
theorem output3665_def : output3665 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64)) := by
  unfold output3665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3665_skip : Flapjack.WordAlloc.isSkip output3665 = false := by
  rw [output3665_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64))).val
theorem input3666_def : input3666 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64)) := by
  unfold input3666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3666_def : output3666 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3666_skip : Flapjack.WordAlloc.isSkip output3666 = true := by
  rw [output3666_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3667_def : input3667 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3667_def : output3667 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3667_skip : Flapjack.WordAlloc.isSkip output3667 = false := by
  rw [output3667_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 1#64))).val
theorem input3668_def : input3668 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 1#64)) := by
  unfold input3668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3668_def : output3668 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3668_skip : Flapjack.WordAlloc.isSkip output3668 = true := by
  rw [output3668_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3668 input3667)).val
theorem input3669_def : input3669 = (.seq input3668 input3667) := by
  unfold input3669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3667)).val
theorem output3669_def : output3669 = (output3667) := by
  unfold output3669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3669_skip : Flapjack.WordAlloc.isSkip output3669 = false := by
  rw [output3669_def]
  exact output3667_skip


@[irreducible, cbv_opaque] def input3670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3669 input3666)).val
theorem input3670_def : input3670 = (.seq input3669 input3666) := by
  unfold input3670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3669)).val
theorem output3670_def : output3670 = (output3669) := by
  unfold output3670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3670_skip : Flapjack.WordAlloc.isSkip output3670 = false := by
  rw [output3670_def]
  exact output3669_skip


@[irreducible, cbv_opaque] def input3671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3670 input3665)).val
theorem input3671_def : input3671 = (.seq input3670 input3665) := by
  unfold input3671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3670 output3665)).val
theorem output3671_def : output3671 = (.seq output3670 output3665) := by
  unfold output3671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3671_skip : Flapjack.WordAlloc.isSkip output3671 = false := by
  rw [output3671_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3671 input3664)).val
theorem input3672_def : input3672 = (.seq input3671 input3664) := by
  unfold input3672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3671 output3664)).val
theorem output3672_def : output3672 = (.seq output3671 output3664) := by
  unfold output3672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3672_skip : Flapjack.WordAlloc.isSkip output3672 = false := by
  rw [output3672_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3672 input3661)).val
theorem input3673_def : input3673 = (.seq input3672 input3661) := by
  unfold input3673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3672)).val
theorem output3673_def : output3673 = (output3672) := by
  unfold output3673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3673_skip : Flapjack.WordAlloc.isSkip output3673 = false := by
  rw [output3673_def]
  exact output3672_skip


@[irreducible, cbv_opaque] def input3674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 0#64))).val
theorem input3674_def : input3674 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 0#64)) := by
  unfold input3674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3674_def : output3674 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3674_skip : Flapjack.WordAlloc.isSkip output3674 = true := by
  rw [output3674_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64))).val
theorem input3675_def : input3675 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64)) := by
  unfold input3675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3675_def : output3675 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3675_skip : Flapjack.WordAlloc.isSkip output3675 = true := by
  rw [output3675_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3676_def : input3676 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3676_def : output3676 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3676_skip : Flapjack.WordAlloc.isSkip output3676 = true := by
  rw [output3676_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3676 input3675)).val
theorem input3677_def : input3677 = (.seq input3676 input3675) := by
  unfold input3677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3675)).val
theorem output3677_def : output3677 = (output3675) := by
  unfold output3677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3677_skip : Flapjack.WordAlloc.isSkip output3677 = true := by
  rw [output3677_def]
  exact output3675_skip


@[irreducible, cbv_opaque] def input3678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3677 input3674)).val
theorem input3678_def : input3678 = (.seq input3677 input3674) := by
  unfold input3678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3674)).val
theorem output3678_def : output3678 = (output3674) := by
  unfold output3678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3678_skip : Flapjack.WordAlloc.isSkip output3678 = true := by
  rw [output3678_def]
  exact output3674_skip


@[irreducible, cbv_opaque] def input3679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(49, 29)])).val
theorem input3679_def : input3679 = (Flapjack.WordLangProgHOL.move 2 [(49, 29)]) := by
  unfold input3679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3679_def : output3679 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3679_skip : Flapjack.WordAlloc.isSkip output3679 = true := by
  rw [output3679_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3679 input3678)).val
theorem input3680_def : input3680 = (.seq input3679 input3678) := by
  unfold input3680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3678)).val
theorem output3680_def : output3680 = (output3678) := by
  unfold output3680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3680_skip : Flapjack.WordAlloc.isSkip output3680 = true := by
  rw [output3680_def]
  exact output3678_skip


@[irreducible, cbv_opaque] def input3681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3681_def : input3681 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3681_def : output3681 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3681_skip : Flapjack.WordAlloc.isSkip output3681 = true := by
  rw [output3681_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3681 input3680)).val
theorem input3682_def : input3682 = (.seq input3681 input3680) := by
  unfold input3682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3680)).val
theorem output3682_def : output3682 = (output3680) := by
  unfold output3682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3682_skip : Flapjack.WordAlloc.isSkip output3682 = true := by
  rw [output3682_def]
  exact output3680_skip


def value1835 : Flapjack.Cmp :=
Flapjack.Cmp.notEqual

def value1836 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 33

def value1837 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value1835 29 value1836 input3673 input3682)).val
theorem input3683_def : input3683 = (.ite value1835 29 value1836 input3673 input3682) := by
  unfold input3683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value1835 29 value1836 output3673 output3682)).val
theorem output3683_def : output3683 = (.ite value1835 29 value1836 output3673 output3682) := by
  unfold output3683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3683_skip : Flapjack.WordAlloc.isSkip output3683 = false := by
  rw [output3683_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3683 input3654)).val
theorem input3684_def : input3684 = (.seq input3683 input3654) := by
  unfold input3684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3683 output3654)).val
theorem output3684_def : output3684 = (.seq output3683 output3654) := by
  unfold output3684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3684_skip : Flapjack.WordAlloc.isSkip output3684 = false := by
  rw [output3684_def]
  kernel_rfl


def value1838 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 0#64))).val
theorem input3685_def : input3685 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 0#64)) := by
  unfold input3685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 0#64))).val
theorem output3685_def : output3685 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 0#64)) := by
  unfold output3685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3685_skip : Flapjack.WordAlloc.isSkip output3685 = false := by
  rw [output3685_def]
  kernel_rfl


def value1839 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29 (Flapjack.WordLangAddr.addr 25 18446744073709551520#64)))).val
theorem input3686_def : input3686 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29 (Flapjack.WordLangAddr.addr 25 18446744073709551520#64))) := by
  unfold input3686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29 (Flapjack.WordLangAddr.addr 25 18446744073709551520#64)))).val
theorem output3686_def : output3686 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29 (Flapjack.WordLangAddr.addr 25 18446744073709551520#64))) := by
  unfold output3686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3686_skip : Flapjack.WordAlloc.isSkip output3686 = false := by
  rw [output3686_def]
  kernel_rfl


def value1840 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25 21)).val
theorem input3687_def : input3687 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25 21) := by
  unfold input3687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25 21)).val
theorem output3687_def : output3687 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25 21) := by
  unfold output3687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3687_skip : Flapjack.WordAlloc.isSkip output3687 = false := by
  rw [output3687_def]
  kernel_rfl


def value1841 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21 17 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3688_def : input3688 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21 17 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21 17 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3688_def : output3688 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21 17 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3688_skip : Flapjack.WordAlloc.isSkip output3688 = false := by
  rw [output3688_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17 Flapjack.WordStore.heapLength)).val
theorem input3689_def : input3689 = (Flapjack.WordLangProgHOL.get 17 Flapjack.WordStore.heapLength) := by
  unfold input3689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17 Flapjack.WordStore.heapLength)).val
theorem output3689_def : output3689 = (Flapjack.WordLangProgHOL.get 17 Flapjack.WordStore.heapLength) := by
  unfold output3689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3689_skip : Flapjack.WordAlloc.isSkip output3689 = false := by
  rw [output3689_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3689 input3688)).val
theorem input3690_def : input3690 = (.seq input3689 input3688) := by
  unfold input3690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3689 output3688)).val
theorem output3690_def : output3690 = (.seq output3689 output3688) := by
  unfold output3690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3690_skip : Flapjack.WordAlloc.isSkip output3690 = false := by
  rw [output3690_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3690 input3687)).val
theorem input3691_def : input3691 = (.seq input3690 input3687) := by
  unfold input3691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3690 output3687)).val
theorem output3691_def : output3691 = (.seq output3690 output3687) := by
  unfold output3691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3691_skip : Flapjack.WordAlloc.isSkip output3691 = false := by
  rw [output3691_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3691 input3686)).val
theorem input3692_def : input3692 = (.seq input3691 input3686) := by
  unfold input3692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3691 output3686)).val
theorem output3692_def : output3692 = (.seq output3691 output3686) := by
  unfold output3692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3692_skip : Flapjack.WordAlloc.isSkip output3692 = false := by
  rw [output3692_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3692 input3685)).val
theorem input3693_def : input3693 = (.seq input3692 input3685) := by
  unfold input3693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3692 output3685)).val
theorem output3693_def : output3693 = (.seq output3692 output3685) := by
  unfold output3693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3693_skip : Flapjack.WordAlloc.isSkip output3693 = false := by
  rw [output3693_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3693 input3684)).val
theorem input3694_def : input3694 = (.seq input3693 input3684) := by
  unfold input3694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3693 output3684)).val
theorem output3694_def : output3694 = (.seq output3693 output3684) := by
  unfold output3694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3694_skip : Flapjack.WordAlloc.isSkip output3694 = false := by
  rw [output3694_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3694 input3649)).val
theorem input3695_def : input3695 = (.seq input3694 input3649) := by
  unfold input3695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3694 output3649)).val
theorem output3695_def : output3695 = (.seq output3694 output3649) := by
  unfold output3695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3695_skip : Flapjack.WordAlloc.isSkip output3695 = false := by
  rw [output3695_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3695 input3648)).val
theorem input3696_def : input3696 = (.seq input3695 input3648) := by
  unfold input3696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3695)).val
theorem output3696_def : output3696 = (output3695) := by
  unfold output3696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3696_skip : Flapjack.WordAlloc.isSkip output3696 = false := by
  rw [output3696_def]
  exact output3695_skip


@[irreducible, cbv_opaque] def input3697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3696 input3647)).val
theorem input3697_def : input3697 = (.seq input3696 input3647) := by
  unfold input3697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3696 output3647)).val
theorem output3697_def : output3697 = (.seq output3696 output3647) := by
  unfold output3697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3697_skip : Flapjack.WordAlloc.isSkip output3697 = false := by
  rw [output3697_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3697 input3640)).val
theorem input3698_def : input3698 = (.seq input3697 input3640) := by
  unfold input3698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3697 output3640)).val
theorem output3698_def : output3698 = (.seq output3697 output3640) := by
  unfold output3698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3698_skip : Flapjack.WordAlloc.isSkip output3698 = false := by
  rw [output3698_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3698 input3639)).val
theorem input3699_def : input3699 = (.seq input3698 input3639) := by
  unfold input3699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3698 output3639)).val
theorem output3699_def : output3699 = (.seq output3698 output3639) := by
  unfold output3699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3699_skip : Flapjack.WordAlloc.isSkip output3699 = false := by
  rw [output3699_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3699 input3632)).val
theorem input3700_def : input3700 = (.seq input3699 input3632) := by
  unfold input3700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3699 output3632)).val
theorem output3700_def : output3700 = (.seq output3699 output3632) := by
  unfold output3700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3700_skip : Flapjack.WordAlloc.isSkip output3700 = false := by
  rw [output3700_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3700 input3631)).val
theorem input3701_def : input3701 = (.seq input3700 input3631) := by
  unfold input3701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3700 output3631)).val
theorem output3701_def : output3701 = (.seq output3700 output3631) := by
  unfold output3701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3701_skip : Flapjack.WordAlloc.isSkip output3701 = false := by
  rw [output3701_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3701 input3630)).val
theorem input3702_def : input3702 = (.seq input3701 input3630) := by
  unfold input3702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3701 output3630)).val
theorem output3702_def : output3702 = (.seq output3701 output3630) := by
  unfold output3702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3702_skip : Flapjack.WordAlloc.isSkip output3702 = false := by
  rw [output3702_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3702 input3627)).val
theorem input3703_def : input3703 = (.seq input3702 input3627) := by
  unfold input3703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3702)).val
theorem output3703_def : output3703 = (output3702) := by
  unfold output3703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3703_skip : Flapjack.WordAlloc.isSkip output3703 = false := by
  rw [output3703_def]
  exact output3702_skip


@[irreducible, cbv_opaque] def input3704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3703 input3626)).val
theorem input3704_def : input3704 = (.seq input3703 input3626) := by
  unfold input3704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3703 output3626)).val
theorem output3704_def : output3704 = (.seq output3703 output3626) := by
  unfold output3704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3704_skip : Flapjack.WordAlloc.isSkip output3704 = false := by
  rw [output3704_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3704 input3619)).val
theorem input3705_def : input3705 = (.seq input3704 input3619) := by
  unfold input3705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3704 output3619)).val
theorem output3705_def : output3705 = (.seq output3704 output3619) := by
  unfold output3705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3705_skip : Flapjack.WordAlloc.isSkip output3705 = false := by
  rw [output3705_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3705 input3618)).val
theorem input3706_def : input3706 = (.seq input3705 input3618) := by
  unfold input3706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3705 output3618)).val
theorem output3706_def : output3706 = (.seq output3705 output3618) := by
  unfold output3706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3706_skip : Flapjack.WordAlloc.isSkip output3706 = false := by
  rw [output3706_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3706 input3611)).val
theorem input3707_def : input3707 = (.seq input3706 input3611) := by
  unfold input3707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3706 output3611)).val
theorem output3707_def : output3707 = (.seq output3706 output3611) := by
  unfold output3707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3707_skip : Flapjack.WordAlloc.isSkip output3707 = false := by
  rw [output3707_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3707 input3610)).val
theorem input3708_def : input3708 = (.seq input3707 input3610) := by
  unfold input3708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3707 output3610)).val
theorem output3708_def : output3708 = (.seq output3707 output3610) := by
  unfold output3708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3708_skip : Flapjack.WordAlloc.isSkip output3708 = false := by
  rw [output3708_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3708 input3609)).val
theorem input3709_def : input3709 = (.seq input3708 input3609) := by
  unfold input3709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3708 output3609)).val
theorem output3709_def : output3709 = (.seq output3708 output3609) := by
  unfold output3709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3709_skip : Flapjack.WordAlloc.isSkip output3709 = false := by
  rw [output3709_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3709 input3606)).val
theorem input3710_def : input3710 = (.seq input3709 input3606) := by
  unfold input3710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3709)).val
theorem output3710_def : output3710 = (output3709) := by
  unfold output3710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3710_skip : Flapjack.WordAlloc.isSkip output3710 = false := by
  rw [output3710_def]
  exact output3709_skip


@[irreducible, cbv_opaque] def input3711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3710 input3605)).val
theorem input3711_def : input3711 = (.seq input3710 input3605) := by
  unfold input3711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3710 output3605)).val
theorem output3711_def : output3711 = (.seq output3710 output3605) := by
  unfold output3711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3711_skip : Flapjack.WordAlloc.isSkip output3711 = false := by
  rw [output3711_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3711 input3598)).val
theorem input3712_def : input3712 = (.seq input3711 input3598) := by
  unfold input3712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3711 output3598)).val
theorem output3712_def : output3712 = (.seq output3711 output3598) := by
  unfold output3712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3712_skip : Flapjack.WordAlloc.isSkip output3712 = false := by
  rw [output3712_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3712 input3597)).val
theorem input3713_def : input3713 = (.seq input3712 input3597) := by
  unfold input3713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3712 output3597)).val
theorem output3713_def : output3713 = (.seq output3712 output3597) := by
  unfold output3713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3713_skip : Flapjack.WordAlloc.isSkip output3713 = false := by
  rw [output3713_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3713 input3590)).val
theorem input3714_def : input3714 = (.seq input3713 input3590) := by
  unfold input3714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3713 output3590)).val
theorem output3714_def : output3714 = (.seq output3713 output3590) := by
  unfold output3714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3714_skip : Flapjack.WordAlloc.isSkip output3714 = false := by
  rw [output3714_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3714 input3589)).val
theorem input3715_def : input3715 = (.seq input3714 input3589) := by
  unfold input3715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3714 output3589)).val
theorem output3715_def : output3715 = (.seq output3714 output3589) := by
  unfold output3715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3715_skip : Flapjack.WordAlloc.isSkip output3715 = false := by
  rw [output3715_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3715 input3588)).val
theorem input3716_def : input3716 = (.seq input3715 input3588) := by
  unfold input3716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3715 output3588)).val
theorem output3716_def : output3716 = (.seq output3715 output3588) := by
  unfold output3716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3716_skip : Flapjack.WordAlloc.isSkip output3716 = false := by
  rw [output3716_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3716 input3585)).val
theorem input3717_def : input3717 = (.seq input3716 input3585) := by
  unfold input3717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3716 output3585)).val
theorem output3717_def : output3717 = (.seq output3716 output3585) := by
  unfold output3717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3717_skip : Flapjack.WordAlloc.isSkip output3717 = false := by
  rw [output3717_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3717 input3578)).val
theorem input3718_def : input3718 = (.seq input3717 input3578) := by
  unfold input3718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3717)).val
theorem output3718_def : output3718 = (output3717) := by
  unfold output3718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3718_skip : Flapjack.WordAlloc.isSkip output3718 = false := by
  rw [output3718_def]
  exact output3717_skip


@[irreducible, cbv_opaque] def input3719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3718 input3577)).val
theorem input3719_def : input3719 = (.seq input3718 input3577) := by
  unfold input3719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3718 output3577)).val
theorem output3719_def : output3719 = (.seq output3718 output3577) := by
  unfold output3719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3719_skip : Flapjack.WordAlloc.isSkip output3719 = false := by
  rw [output3719_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3719 input3576)).val
theorem input3720_def : input3720 = (.seq input3719 input3576) := by
  unfold input3720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3719 output3576)).val
theorem output3720_def : output3720 = (.seq output3719 output3576) := by
  unfold output3720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3720_skip : Flapjack.WordAlloc.isSkip output3720 = false := by
  rw [output3720_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3720 input3573)).val
theorem input3721_def : input3721 = (.seq input3720 input3573) := by
  unfold input3721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3720 output3573)).val
theorem output3721_def : output3721 = (.seq output3720 output3573) := by
  unfold output3721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3721_skip : Flapjack.WordAlloc.isSkip output3721 = false := by
  rw [output3721_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3721 input3564)).val
theorem input3722_def : input3722 = (.seq input3721 input3564) := by
  unfold input3722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3721)).val
theorem output3722_def : output3722 = (output3721) := by
  unfold output3722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3722_skip : Flapjack.WordAlloc.isSkip output3722 = false := by
  rw [output3722_def]
  exact output3721_skip


@[irreducible, cbv_opaque] def input3723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3722 input3563)).val
theorem input3723_def : input3723 = (.seq input3722 input3563) := by
  unfold input3723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3722 output3563)).val
theorem output3723_def : output3723 = (.seq output3722 output3563) := by
  unfold output3723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3723_skip : Flapjack.WordAlloc.isSkip output3723 = false := by
  rw [output3723_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3723 input3562)).val
theorem input3724_def : input3724 = (.seq input3723 input3562) := by
  unfold input3724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3723 output3562)).val
theorem output3724_def : output3724 = (.seq output3723 output3562) := by
  unfold output3724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3724_skip : Flapjack.WordAlloc.isSkip output3724 = false := by
  rw [output3724_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3724 input3559)).val
theorem input3725_def : input3725 = (.seq input3724 input3559) := by
  unfold input3725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3724 output3559)).val
theorem output3725_def : output3725 = (.seq output3724 output3559) := by
  unfold output3725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3725_skip : Flapjack.WordAlloc.isSkip output3725 = false := by
  rw [output3725_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3725 input3550)).val
theorem input3726_def : input3726 = (.seq input3725 input3550) := by
  unfold input3726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3725)).val
theorem output3726_def : output3726 = (output3725) := by
  unfold output3726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3726_skip : Flapjack.WordAlloc.isSkip output3726 = false := by
  rw [output3726_def]
  exact output3725_skip


@[irreducible, cbv_opaque] def input3727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3726 input3549)).val
theorem input3727_def : input3727 = (.seq input3726 input3549) := by
  unfold input3727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3726 output3549)).val
theorem output3727_def : output3727 = (.seq output3726 output3549) := by
  unfold output3727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3727_skip : Flapjack.WordAlloc.isSkip output3727 = false := by
  rw [output3727_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3727 input3548)).val
theorem input3728_def : input3728 = (.seq input3727 input3548) := by
  unfold input3728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3727 output3548)).val
theorem output3728_def : output3728 = (.seq output3727 output3548) := by
  unfold output3728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3728_skip : Flapjack.WordAlloc.isSkip output3728 = false := by
  rw [output3728_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3728 input3545)).val
theorem input3729_def : input3729 = (.seq input3728 input3545) := by
  unfold input3729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3728 output3545)).val
theorem output3729_def : output3729 = (.seq output3728 output3545) := by
  unfold output3729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3729_skip : Flapjack.WordAlloc.isSkip output3729 = false := by
  rw [output3729_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3729 input3536)).val
theorem input3730_def : input3730 = (.seq input3729 input3536) := by
  unfold input3730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3729)).val
theorem output3730_def : output3730 = (output3729) := by
  unfold output3730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3730_skip : Flapjack.WordAlloc.isSkip output3730 = false := by
  rw [output3730_def]
  exact output3729_skip


@[irreducible, cbv_opaque] def input3731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3730 input3535)).val
theorem input3731_def : input3731 = (.seq input3730 input3535) := by
  unfold input3731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3730 output3535)).val
theorem output3731_def : output3731 = (.seq output3730 output3535) := by
  unfold output3731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3731_skip : Flapjack.WordAlloc.isSkip output3731 = false := by
  rw [output3731_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3731 input3534)).val
theorem input3732_def : input3732 = (.seq input3731 input3534) := by
  unfold input3732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3731 output3534)).val
theorem output3732_def : output3732 = (.seq output3731 output3534) := by
  unfold output3732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3732_skip : Flapjack.WordAlloc.isSkip output3732 = false := by
  rw [output3732_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3732 input3531)).val
theorem input3733_def : input3733 = (.seq input3732 input3531) := by
  unfold input3733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3732 output3531)).val
theorem output3733_def : output3733 = (.seq output3732 output3531) := by
  unfold output3733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3733_skip : Flapjack.WordAlloc.isSkip output3733 = false := by
  rw [output3733_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3733 input3522)).val
theorem input3734_def : input3734 = (.seq input3733 input3522) := by
  unfold input3734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3733)).val
theorem output3734_def : output3734 = (output3733) := by
  unfold output3734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3734_skip : Flapjack.WordAlloc.isSkip output3734 = false := by
  rw [output3734_def]
  exact output3733_skip


@[irreducible, cbv_opaque] def input3735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3734 input3521)).val
theorem input3735_def : input3735 = (.seq input3734 input3521) := by
  unfold input3735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3734 output3521)).val
theorem output3735_def : output3735 = (.seq output3734 output3521) := by
  unfold output3735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3735_skip : Flapjack.WordAlloc.isSkip output3735 = false := by
  rw [output3735_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3735 input3520)).val
theorem input3736_def : input3736 = (.seq input3735 input3520) := by
  unfold input3736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3735 output3520)).val
theorem output3736_def : output3736 = (.seq output3735 output3520) := by
  unfold output3736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3736_skip : Flapjack.WordAlloc.isSkip output3736 = false := by
  rw [output3736_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3736 input3517)).val
theorem input3737_def : input3737 = (.seq input3736 input3517) := by
  unfold input3737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3736 output3517)).val
theorem output3737_def : output3737 = (.seq output3736 output3517) := by
  unfold output3737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3737_skip : Flapjack.WordAlloc.isSkip output3737 = false := by
  rw [output3737_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3737 input3508)).val
theorem input3738_def : input3738 = (.seq input3737 input3508) := by
  unfold input3738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3737)).val
theorem output3738_def : output3738 = (output3737) := by
  unfold output3738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3738_skip : Flapjack.WordAlloc.isSkip output3738 = false := by
  rw [output3738_def]
  exact output3737_skip


@[irreducible, cbv_opaque] def input3739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3738 input3507)).val
theorem input3739_def : input3739 = (.seq input3738 input3507) := by
  unfold input3739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3738 output3507)).val
theorem output3739_def : output3739 = (.seq output3738 output3507) := by
  unfold output3739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3739_skip : Flapjack.WordAlloc.isSkip output3739 = false := by
  rw [output3739_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3739 input3506)).val
theorem input3740_def : input3740 = (.seq input3739 input3506) := by
  unfold input3740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3739 output3506)).val
theorem output3740_def : output3740 = (.seq output3739 output3506) := by
  unfold output3740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3740_skip : Flapjack.WordAlloc.isSkip output3740 = false := by
  rw [output3740_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3740 input3503)).val
theorem input3741_def : input3741 = (.seq input3740 input3503) := by
  unfold input3741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3740 output3503)).val
theorem output3741_def : output3741 = (.seq output3740 output3503) := by
  unfold output3741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3741_skip : Flapjack.WordAlloc.isSkip output3741 = false := by
  rw [output3741_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3741 input3494)).val
theorem input3742_def : input3742 = (.seq input3741 input3494) := by
  unfold input3742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3741)).val
theorem output3742_def : output3742 = (output3741) := by
  unfold output3742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3742_skip : Flapjack.WordAlloc.isSkip output3742 = false := by
  rw [output3742_def]
  exact output3741_skip


@[irreducible, cbv_opaque] def input3743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3742 input3493)).val
theorem input3743_def : input3743 = (.seq input3742 input3493) := by
  unfold input3743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3742 output3493)).val
theorem output3743_def : output3743 = (.seq output3742 output3493) := by
  unfold output3743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3743_skip : Flapjack.WordAlloc.isSkip output3743 = false := by
  rw [output3743_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3743 input3492)).val
theorem input3744_def : input3744 = (.seq input3743 input3492) := by
  unfold input3744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3743 output3492)).val
theorem output3744_def : output3744 = (.seq output3743 output3492) := by
  unfold output3744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3744_skip : Flapjack.WordAlloc.isSkip output3744 = false := by
  rw [output3744_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3744 input3489)).val
theorem input3745_def : input3745 = (.seq input3744 input3489) := by
  unfold input3745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3744 output3489)).val
theorem output3745_def : output3745 = (.seq output3744 output3489) := by
  unfold output3745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3745_skip : Flapjack.WordAlloc.isSkip output3745 = false := by
  rw [output3745_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3745 input3480)).val
theorem input3746_def : input3746 = (.seq input3745 input3480) := by
  unfold input3746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3745)).val
theorem output3746_def : output3746 = (output3745) := by
  unfold output3746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3746_skip : Flapjack.WordAlloc.isSkip output3746 = false := by
  rw [output3746_def]
  exact output3745_skip


@[irreducible, cbv_opaque] def input3747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3746 input3479)).val
theorem input3747_def : input3747 = (.seq input3746 input3479) := by
  unfold input3747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3746 output3479)).val
theorem output3747_def : output3747 = (.seq output3746 output3479) := by
  unfold output3747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3747_skip : Flapjack.WordAlloc.isSkip output3747 = false := by
  rw [output3747_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3747 input3478)).val
theorem input3748_def : input3748 = (.seq input3747 input3478) := by
  unfold input3748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3747 output3478)).val
theorem output3748_def : output3748 = (.seq output3747 output3478) := by
  unfold output3748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3748_skip : Flapjack.WordAlloc.isSkip output3748 = false := by
  rw [output3748_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3748 input3475)).val
theorem input3749_def : input3749 = (.seq input3748 input3475) := by
  unfold input3749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3748 output3475)).val
theorem output3749_def : output3749 = (.seq output3748 output3475) := by
  unfold output3749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3749_skip : Flapjack.WordAlloc.isSkip output3749 = false := by
  rw [output3749_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3749 input3466)).val
theorem input3750_def : input3750 = (.seq input3749 input3466) := by
  unfold input3750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3749)).val
theorem output3750_def : output3750 = (output3749) := by
  unfold output3750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3750_skip : Flapjack.WordAlloc.isSkip output3750 = false := by
  rw [output3750_def]
  exact output3749_skip


@[irreducible, cbv_opaque] def input3751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3750 input3465)).val
theorem input3751_def : input3751 = (.seq input3750 input3465) := by
  unfold input3751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3750 output3465)).val
theorem output3751_def : output3751 = (.seq output3750 output3465) := by
  unfold output3751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3751_skip : Flapjack.WordAlloc.isSkip output3751 = false := by
  rw [output3751_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3751 input3464)).val
theorem input3752_def : input3752 = (.seq input3751 input3464) := by
  unfold input3752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3751 output3464)).val
theorem output3752_def : output3752 = (.seq output3751 output3464) := by
  unfold output3752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3752_skip : Flapjack.WordAlloc.isSkip output3752 = false := by
  rw [output3752_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3752 input3461)).val
theorem input3753_def : input3753 = (.seq input3752 input3461) := by
  unfold input3753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3752 output3461)).val
theorem output3753_def : output3753 = (.seq output3752 output3461) := by
  unfold output3753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3753_skip : Flapjack.WordAlloc.isSkip output3753 = false := by
  rw [output3753_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3753 input3452)).val
theorem input3754_def : input3754 = (.seq input3753 input3452) := by
  unfold input3754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3753)).val
theorem output3754_def : output3754 = (output3753) := by
  unfold output3754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3754_skip : Flapjack.WordAlloc.isSkip output3754 = false := by
  rw [output3754_def]
  exact output3753_skip


@[irreducible, cbv_opaque] def input3755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3754 input3451)).val
theorem input3755_def : input3755 = (.seq input3754 input3451) := by
  unfold input3755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3754 output3451)).val
theorem output3755_def : output3755 = (.seq output3754 output3451) := by
  unfold output3755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3755_skip : Flapjack.WordAlloc.isSkip output3755 = false := by
  rw [output3755_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3755 input3450)).val
theorem input3756_def : input3756 = (.seq input3755 input3450) := by
  unfold input3756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3755 output3450)).val
theorem output3756_def : output3756 = (.seq output3755 output3450) := by
  unfold output3756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3756_skip : Flapjack.WordAlloc.isSkip output3756 = false := by
  rw [output3756_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3756 input3447)).val
theorem input3757_def : input3757 = (.seq input3756 input3447) := by
  unfold input3757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3756 output3447)).val
theorem output3757_def : output3757 = (.seq output3756 output3447) := by
  unfold output3757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3757_skip : Flapjack.WordAlloc.isSkip output3757 = false := by
  rw [output3757_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3757 input3438)).val
theorem input3758_def : input3758 = (.seq input3757 input3438) := by
  unfold input3758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3757)).val
theorem output3758_def : output3758 = (output3757) := by
  unfold output3758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3758_skip : Flapjack.WordAlloc.isSkip output3758 = false := by
  rw [output3758_def]
  exact output3757_skip


@[irreducible, cbv_opaque] def input3759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3758 input3437)).val
theorem input3759_def : input3759 = (.seq input3758 input3437) := by
  unfold input3759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3758 output3437)).val
theorem output3759_def : output3759 = (.seq output3758 output3437) := by
  unfold output3759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3759_skip : Flapjack.WordAlloc.isSkip output3759 = false := by
  rw [output3759_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3759 input3436)).val
theorem input3760_def : input3760 = (.seq input3759 input3436) := by
  unfold input3760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3759 output3436)).val
theorem output3760_def : output3760 = (.seq output3759 output3436) := by
  unfold output3760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3760_skip : Flapjack.WordAlloc.isSkip output3760 = false := by
  rw [output3760_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3760 input3433)).val
theorem input3761_def : input3761 = (.seq input3760 input3433) := by
  unfold input3761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3760 output3433)).val
theorem output3761_def : output3761 = (.seq output3760 output3433) := by
  unfold output3761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3761_skip : Flapjack.WordAlloc.isSkip output3761 = false := by
  rw [output3761_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3761 input3424)).val
theorem input3762_def : input3762 = (.seq input3761 input3424) := by
  unfold input3762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3761)).val
theorem output3762_def : output3762 = (output3761) := by
  unfold output3762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3762_skip : Flapjack.WordAlloc.isSkip output3762 = false := by
  rw [output3762_def]
  exact output3761_skip


@[irreducible, cbv_opaque] def input3763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3762 input3423)).val
theorem input3763_def : input3763 = (.seq input3762 input3423) := by
  unfold input3763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3762 output3423)).val
theorem output3763_def : output3763 = (.seq output3762 output3423) := by
  unfold output3763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3763_skip : Flapjack.WordAlloc.isSkip output3763 = false := by
  rw [output3763_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3763 input3422)).val
theorem input3764_def : input3764 = (.seq input3763 input3422) := by
  unfold input3764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3763 output3422)).val
theorem output3764_def : output3764 = (.seq output3763 output3422) := by
  unfold output3764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3764_skip : Flapjack.WordAlloc.isSkip output3764 = false := by
  rw [output3764_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3764 input3419)).val
theorem input3765_def : input3765 = (.seq input3764 input3419) := by
  unfold input3765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3764 output3419)).val
theorem output3765_def : output3765 = (.seq output3764 output3419) := by
  unfold output3765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3765_skip : Flapjack.WordAlloc.isSkip output3765 = false := by
  rw [output3765_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3765 input3410)).val
theorem input3766_def : input3766 = (.seq input3765 input3410) := by
  unfold input3766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3765)).val
theorem output3766_def : output3766 = (output3765) := by
  unfold output3766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3766_skip : Flapjack.WordAlloc.isSkip output3766 = false := by
  rw [output3766_def]
  exact output3765_skip


@[irreducible, cbv_opaque] def input3767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3766 input3409)).val
theorem input3767_def : input3767 = (.seq input3766 input3409) := by
  unfold input3767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3766 output3409)).val
theorem output3767_def : output3767 = (.seq output3766 output3409) := by
  unfold output3767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3767_skip : Flapjack.WordAlloc.isSkip output3767 = false := by
  rw [output3767_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3767 input3408)).val
theorem input3768_def : input3768 = (.seq input3767 input3408) := by
  unfold input3768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3767 output3408)).val
theorem output3768_def : output3768 = (.seq output3767 output3408) := by
  unfold output3768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3768_skip : Flapjack.WordAlloc.isSkip output3768 = false := by
  rw [output3768_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3768 input3405)).val
theorem input3769_def : input3769 = (.seq input3768 input3405) := by
  unfold input3769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3768 output3405)).val
theorem output3769_def : output3769 = (.seq output3768 output3405) := by
  unfold output3769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3769_skip : Flapjack.WordAlloc.isSkip output3769 = false := by
  rw [output3769_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3769 input3396)).val
theorem input3770_def : input3770 = (.seq input3769 input3396) := by
  unfold input3770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3769)).val
theorem output3770_def : output3770 = (output3769) := by
  unfold output3770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3770_skip : Flapjack.WordAlloc.isSkip output3770 = false := by
  rw [output3770_def]
  exact output3769_skip


@[irreducible, cbv_opaque] def input3771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3770 input3395)).val
theorem input3771_def : input3771 = (.seq input3770 input3395) := by
  unfold input3771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3770 output3395)).val
theorem output3771_def : output3771 = (.seq output3770 output3395) := by
  unfold output3771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3771_skip : Flapjack.WordAlloc.isSkip output3771 = false := by
  rw [output3771_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3771 input3394)).val
theorem input3772_def : input3772 = (.seq input3771 input3394) := by
  unfold input3772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3771 output3394)).val
theorem output3772_def : output3772 = (.seq output3771 output3394) := by
  unfold output3772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3772_skip : Flapjack.WordAlloc.isSkip output3772 = false := by
  rw [output3772_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3772 input3391)).val
theorem input3773_def : input3773 = (.seq input3772 input3391) := by
  unfold input3773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3772 output3391)).val
theorem output3773_def : output3773 = (.seq output3772 output3391) := by
  unfold output3773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3773_skip : Flapjack.WordAlloc.isSkip output3773 = false := by
  rw [output3773_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3773 input3382)).val
theorem input3774_def : input3774 = (.seq input3773 input3382) := by
  unfold input3774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3773)).val
theorem output3774_def : output3774 = (output3773) := by
  unfold output3774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3774_skip : Flapjack.WordAlloc.isSkip output3774 = false := by
  rw [output3774_def]
  exact output3773_skip


@[irreducible, cbv_opaque] def input3775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3774 input3381)).val
theorem input3775_def : input3775 = (.seq input3774 input3381) := by
  unfold input3775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3774 output3381)).val
theorem output3775_def : output3775 = (.seq output3774 output3381) := by
  unfold output3775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3775_skip : Flapjack.WordAlloc.isSkip output3775 = false := by
  rw [output3775_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3775 input3380)).val
theorem input3776_def : input3776 = (.seq input3775 input3380) := by
  unfold input3776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3775 output3380)).val
theorem output3776_def : output3776 = (.seq output3775 output3380) := by
  unfold output3776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3776_skip : Flapjack.WordAlloc.isSkip output3776 = false := by
  rw [output3776_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3776 input3377)).val
theorem input3777_def : input3777 = (.seq input3776 input3377) := by
  unfold input3777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3776 output3377)).val
theorem output3777_def : output3777 = (.seq output3776 output3377) := by
  unfold output3777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3777_skip : Flapjack.WordAlloc.isSkip output3777 = false := by
  rw [output3777_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3777 input3368)).val
theorem input3778_def : input3778 = (.seq input3777 input3368) := by
  unfold input3778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3777)).val
theorem output3778_def : output3778 = (output3777) := by
  unfold output3778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3778_skip : Flapjack.WordAlloc.isSkip output3778 = false := by
  rw [output3778_def]
  exact output3777_skip


@[irreducible, cbv_opaque] def input3779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3778 input3367)).val
theorem input3779_def : input3779 = (.seq input3778 input3367) := by
  unfold input3779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3778 output3367)).val
theorem output3779_def : output3779 = (.seq output3778 output3367) := by
  unfold output3779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3779_skip : Flapjack.WordAlloc.isSkip output3779 = false := by
  rw [output3779_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3779 input3366)).val
theorem input3780_def : input3780 = (.seq input3779 input3366) := by
  unfold input3780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3779 output3366)).val
theorem output3780_def : output3780 = (.seq output3779 output3366) := by
  unfold output3780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3780_skip : Flapjack.WordAlloc.isSkip output3780 = false := by
  rw [output3780_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3780 input3363)).val
theorem input3781_def : input3781 = (.seq input3780 input3363) := by
  unfold input3781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3780 output3363)).val
theorem output3781_def : output3781 = (.seq output3780 output3363) := by
  unfold output3781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3781_skip : Flapjack.WordAlloc.isSkip output3781 = false := by
  rw [output3781_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3781 input3354)).val
theorem input3782_def : input3782 = (.seq input3781 input3354) := by
  unfold input3782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3781)).val
theorem output3782_def : output3782 = (output3781) := by
  unfold output3782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3782_skip : Flapjack.WordAlloc.isSkip output3782 = false := by
  rw [output3782_def]
  exact output3781_skip


@[irreducible, cbv_opaque] def input3783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3782 input3353)).val
theorem input3783_def : input3783 = (.seq input3782 input3353) := by
  unfold input3783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3782 output3353)).val
theorem output3783_def : output3783 = (.seq output3782 output3353) := by
  unfold output3783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3783_skip : Flapjack.WordAlloc.isSkip output3783 = false := by
  rw [output3783_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3783 input3352)).val
theorem input3784_def : input3784 = (.seq input3783 input3352) := by
  unfold input3784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3783 output3352)).val
theorem output3784_def : output3784 = (.seq output3783 output3352) := by
  unfold output3784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3784_skip : Flapjack.WordAlloc.isSkip output3784 = false := by
  rw [output3784_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3784 input3349)).val
theorem input3785_def : input3785 = (.seq input3784 input3349) := by
  unfold input3785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3784 output3349)).val
theorem output3785_def : output3785 = (.seq output3784 output3349) := by
  unfold output3785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3785_skip : Flapjack.WordAlloc.isSkip output3785 = false := by
  rw [output3785_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3785 input3340)).val
theorem input3786_def : input3786 = (.seq input3785 input3340) := by
  unfold input3786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3785)).val
theorem output3786_def : output3786 = (output3785) := by
  unfold output3786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3786_skip : Flapjack.WordAlloc.isSkip output3786 = false := by
  rw [output3786_def]
  exact output3785_skip


@[irreducible, cbv_opaque] def input3787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3786 input3339)).val
theorem input3787_def : input3787 = (.seq input3786 input3339) := by
  unfold input3787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3786 output3339)).val
theorem output3787_def : output3787 = (.seq output3786 output3339) := by
  unfold output3787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3787_skip : Flapjack.WordAlloc.isSkip output3787 = false := by
  rw [output3787_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3787 input3338)).val
theorem input3788_def : input3788 = (.seq input3787 input3338) := by
  unfold input3788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3787 output3338)).val
theorem output3788_def : output3788 = (.seq output3787 output3338) := by
  unfold output3788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3788_skip : Flapjack.WordAlloc.isSkip output3788 = false := by
  rw [output3788_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3788 input3335)).val
theorem input3789_def : input3789 = (.seq input3788 input3335) := by
  unfold input3789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3788 output3335)).val
theorem output3789_def : output3789 = (.seq output3788 output3335) := by
  unfold output3789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3789_skip : Flapjack.WordAlloc.isSkip output3789 = false := by
  rw [output3789_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3789 input3326)).val
theorem input3790_def : input3790 = (.seq input3789 input3326) := by
  unfold input3790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3789)).val
theorem output3790_def : output3790 = (output3789) := by
  unfold output3790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3790_skip : Flapjack.WordAlloc.isSkip output3790 = false := by
  rw [output3790_def]
  exact output3789_skip


@[irreducible, cbv_opaque] def input3791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3790 input3325)).val
theorem input3791_def : input3791 = (.seq input3790 input3325) := by
  unfold input3791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3790 output3325)).val
theorem output3791_def : output3791 = (.seq output3790 output3325) := by
  unfold output3791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3791_skip : Flapjack.WordAlloc.isSkip output3791 = false := by
  rw [output3791_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3791 input3324)).val
theorem input3792_def : input3792 = (.seq input3791 input3324) := by
  unfold input3792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3791 output3324)).val
theorem output3792_def : output3792 = (.seq output3791 output3324) := by
  unfold output3792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3792_skip : Flapjack.WordAlloc.isSkip output3792 = false := by
  rw [output3792_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3792 input3321)).val
theorem input3793_def : input3793 = (.seq input3792 input3321) := by
  unfold input3793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3792 output3321)).val
theorem output3793_def : output3793 = (.seq output3792 output3321) := by
  unfold output3793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3793_skip : Flapjack.WordAlloc.isSkip output3793 = false := by
  rw [output3793_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3793 input3312)).val
theorem input3794_def : input3794 = (.seq input3793 input3312) := by
  unfold input3794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3793)).val
theorem output3794_def : output3794 = (output3793) := by
  unfold output3794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3794_skip : Flapjack.WordAlloc.isSkip output3794 = false := by
  rw [output3794_def]
  exact output3793_skip


@[irreducible, cbv_opaque] def input3795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3794 input3311)).val
theorem input3795_def : input3795 = (.seq input3794 input3311) := by
  unfold input3795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3794 output3311)).val
theorem output3795_def : output3795 = (.seq output3794 output3311) := by
  unfold output3795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3795_skip : Flapjack.WordAlloc.isSkip output3795 = false := by
  rw [output3795_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3795 input3310)).val
theorem input3796_def : input3796 = (.seq input3795 input3310) := by
  unfold input3796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3795 output3310)).val
theorem output3796_def : output3796 = (.seq output3795 output3310) := by
  unfold output3796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3796_skip : Flapjack.WordAlloc.isSkip output3796 = false := by
  rw [output3796_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3796 input3307)).val
theorem input3797_def : input3797 = (.seq input3796 input3307) := by
  unfold input3797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3796 output3307)).val
theorem output3797_def : output3797 = (.seq output3796 output3307) := by
  unfold output3797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3797_skip : Flapjack.WordAlloc.isSkip output3797 = false := by
  rw [output3797_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3797 input3298)).val
theorem input3798_def : input3798 = (.seq input3797 input3298) := by
  unfold input3798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3797)).val
theorem output3798_def : output3798 = (output3797) := by
  unfold output3798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3798_skip : Flapjack.WordAlloc.isSkip output3798 = false := by
  rw [output3798_def]
  exact output3797_skip


@[irreducible, cbv_opaque] def input3799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3798 input3297)).val
theorem input3799_def : input3799 = (.seq input3798 input3297) := by
  unfold input3799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3798 output3297)).val
theorem output3799_def : output3799 = (.seq output3798 output3297) := by
  unfold output3799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3799_skip : Flapjack.WordAlloc.isSkip output3799 = false := by
  rw [output3799_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3799 input3296)).val
theorem input3800_def : input3800 = (.seq input3799 input3296) := by
  unfold input3800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3799 output3296)).val
theorem output3800_def : output3800 = (.seq output3799 output3296) := by
  unfold output3800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3800_skip : Flapjack.WordAlloc.isSkip output3800 = false := by
  rw [output3800_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3800 input3293)).val
theorem input3801_def : input3801 = (.seq input3800 input3293) := by
  unfold input3801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3800 output3293)).val
theorem output3801_def : output3801 = (.seq output3800 output3293) := by
  unfold output3801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3801_skip : Flapjack.WordAlloc.isSkip output3801 = false := by
  rw [output3801_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3801 input3284)).val
theorem input3802_def : input3802 = (.seq input3801 input3284) := by
  unfold input3802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3801)).val
theorem output3802_def : output3802 = (output3801) := by
  unfold output3802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3802_skip : Flapjack.WordAlloc.isSkip output3802 = false := by
  rw [output3802_def]
  exact output3801_skip


@[irreducible, cbv_opaque] def input3803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3802 input3283)).val
theorem input3803_def : input3803 = (.seq input3802 input3283) := by
  unfold input3803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3802 output3283)).val
theorem output3803_def : output3803 = (.seq output3802 output3283) := by
  unfold output3803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3803_skip : Flapjack.WordAlloc.isSkip output3803 = false := by
  rw [output3803_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3803 input3282)).val
theorem input3804_def : input3804 = (.seq input3803 input3282) := by
  unfold input3804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3803 output3282)).val
theorem output3804_def : output3804 = (.seq output3803 output3282) := by
  unfold output3804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3804_skip : Flapjack.WordAlloc.isSkip output3804 = false := by
  rw [output3804_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3804 input3279)).val
theorem input3805_def : input3805 = (.seq input3804 input3279) := by
  unfold input3805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3804 output3279)).val
theorem output3805_def : output3805 = (.seq output3804 output3279) := by
  unfold output3805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3805_skip : Flapjack.WordAlloc.isSkip output3805 = false := by
  rw [output3805_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3805 input3270)).val
theorem input3806_def : input3806 = (.seq input3805 input3270) := by
  unfold input3806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3805)).val
theorem output3806_def : output3806 = (output3805) := by
  unfold output3806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3806_skip : Flapjack.WordAlloc.isSkip output3806 = false := by
  rw [output3806_def]
  exact output3805_skip


@[irreducible, cbv_opaque] def input3807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3806 input3269)).val
theorem input3807_def : input3807 = (.seq input3806 input3269) := by
  unfold input3807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3806 output3269)).val
theorem output3807_def : output3807 = (.seq output3806 output3269) := by
  unfold output3807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3807_skip : Flapjack.WordAlloc.isSkip output3807 = false := by
  rw [output3807_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3807 input3268)).val
theorem input3808_def : input3808 = (.seq input3807 input3268) := by
  unfold input3808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3807 output3268)).val
theorem output3808_def : output3808 = (.seq output3807 output3268) := by
  unfold output3808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3808_skip : Flapjack.WordAlloc.isSkip output3808 = false := by
  rw [output3808_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3808 input3265)).val
theorem input3809_def : input3809 = (.seq input3808 input3265) := by
  unfold input3809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3808 output3265)).val
theorem output3809_def : output3809 = (.seq output3808 output3265) := by
  unfold output3809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3809_skip : Flapjack.WordAlloc.isSkip output3809 = false := by
  rw [output3809_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3809 input3256)).val
theorem input3810_def : input3810 = (.seq input3809 input3256) := by
  unfold input3810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3809)).val
theorem output3810_def : output3810 = (output3809) := by
  unfold output3810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3810_skip : Flapjack.WordAlloc.isSkip output3810 = false := by
  rw [output3810_def]
  exact output3809_skip


@[irreducible, cbv_opaque] def input3811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3810 input3255)).val
theorem input3811_def : input3811 = (.seq input3810 input3255) := by
  unfold input3811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3810 output3255)).val
theorem output3811_def : output3811 = (.seq output3810 output3255) := by
  unfold output3811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3811_skip : Flapjack.WordAlloc.isSkip output3811 = false := by
  rw [output3811_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3811 input3254)).val
theorem input3812_def : input3812 = (.seq input3811 input3254) := by
  unfold input3812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3811 output3254)).val
theorem output3812_def : output3812 = (.seq output3811 output3254) := by
  unfold output3812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3812_skip : Flapjack.WordAlloc.isSkip output3812 = false := by
  rw [output3812_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3812 input3251)).val
theorem input3813_def : input3813 = (.seq input3812 input3251) := by
  unfold input3813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3812 output3251)).val
theorem output3813_def : output3813 = (.seq output3812 output3251) := by
  unfold output3813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3813_skip : Flapjack.WordAlloc.isSkip output3813 = false := by
  rw [output3813_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3813 input3242)).val
theorem input3814_def : input3814 = (.seq input3813 input3242) := by
  unfold input3814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3813)).val
theorem output3814_def : output3814 = (output3813) := by
  unfold output3814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3814_skip : Flapjack.WordAlloc.isSkip output3814 = false := by
  rw [output3814_def]
  exact output3813_skip


@[irreducible, cbv_opaque] def input3815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3814 input3241)).val
theorem input3815_def : input3815 = (.seq input3814 input3241) := by
  unfold input3815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3814 output3241)).val
theorem output3815_def : output3815 = (.seq output3814 output3241) := by
  unfold output3815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3815_skip : Flapjack.WordAlloc.isSkip output3815 = false := by
  rw [output3815_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3815 input3240)).val
theorem input3816_def : input3816 = (.seq input3815 input3240) := by
  unfold input3816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3815 output3240)).val
theorem output3816_def : output3816 = (.seq output3815 output3240) := by
  unfold output3816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3816_skip : Flapjack.WordAlloc.isSkip output3816 = false := by
  rw [output3816_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3816 input3237)).val
theorem input3817_def : input3817 = (.seq input3816 input3237) := by
  unfold input3817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3816 output3237)).val
theorem output3817_def : output3817 = (.seq output3816 output3237) := by
  unfold output3817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3817_skip : Flapjack.WordAlloc.isSkip output3817 = false := by
  rw [output3817_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3817 input3228)).val
theorem input3818_def : input3818 = (.seq input3817 input3228) := by
  unfold input3818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3817)).val
theorem output3818_def : output3818 = (output3817) := by
  unfold output3818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3818_skip : Flapjack.WordAlloc.isSkip output3818 = false := by
  rw [output3818_def]
  exact output3817_skip


@[irreducible, cbv_opaque] def input3819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3818 input3227)).val
theorem input3819_def : input3819 = (.seq input3818 input3227) := by
  unfold input3819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3818 output3227)).val
theorem output3819_def : output3819 = (.seq output3818 output3227) := by
  unfold output3819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3819_skip : Flapjack.WordAlloc.isSkip output3819 = false := by
  rw [output3819_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3819 input3226)).val
theorem input3820_def : input3820 = (.seq input3819 input3226) := by
  unfold input3820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3819 output3226)).val
theorem output3820_def : output3820 = (.seq output3819 output3226) := by
  unfold output3820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3820_skip : Flapjack.WordAlloc.isSkip output3820 = false := by
  rw [output3820_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3820 input3223)).val
theorem input3821_def : input3821 = (.seq input3820 input3223) := by
  unfold input3821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3820 output3223)).val
theorem output3821_def : output3821 = (.seq output3820 output3223) := by
  unfold output3821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3821_skip : Flapjack.WordAlloc.isSkip output3821 = false := by
  rw [output3821_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3821 input3214)).val
theorem input3822_def : input3822 = (.seq input3821 input3214) := by
  unfold input3822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3821)).val
theorem output3822_def : output3822 = (output3821) := by
  unfold output3822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3822_skip : Flapjack.WordAlloc.isSkip output3822 = false := by
  rw [output3822_def]
  exact output3821_skip


@[irreducible, cbv_opaque] def input3823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3822 input3213)).val
theorem input3823_def : input3823 = (.seq input3822 input3213) := by
  unfold input3823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3822 output3213)).val
theorem output3823_def : output3823 = (.seq output3822 output3213) := by
  unfold output3823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3823_skip : Flapjack.WordAlloc.isSkip output3823 = false := by
  rw [output3823_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3823 input3212)).val
theorem input3824_def : input3824 = (.seq input3823 input3212) := by
  unfold input3824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3823 output3212)).val
theorem output3824_def : output3824 = (.seq output3823 output3212) := by
  unfold output3824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3824_skip : Flapjack.WordAlloc.isSkip output3824 = false := by
  rw [output3824_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3824 input3209)).val
theorem input3825_def : input3825 = (.seq input3824 input3209) := by
  unfold input3825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3824 output3209)).val
theorem output3825_def : output3825 = (.seq output3824 output3209) := by
  unfold output3825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3825_skip : Flapjack.WordAlloc.isSkip output3825 = false := by
  rw [output3825_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3825 input3200)).val
theorem input3826_def : input3826 = (.seq input3825 input3200) := by
  unfold input3826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3825)).val
theorem output3826_def : output3826 = (output3825) := by
  unfold output3826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3826_skip : Flapjack.WordAlloc.isSkip output3826 = false := by
  rw [output3826_def]
  exact output3825_skip


@[irreducible, cbv_opaque] def input3827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3826 input3199)).val
theorem input3827_def : input3827 = (.seq input3826 input3199) := by
  unfold input3827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3826 output3199)).val
theorem output3827_def : output3827 = (.seq output3826 output3199) := by
  unfold output3827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3827_skip : Flapjack.WordAlloc.isSkip output3827 = false := by
  rw [output3827_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3827 input3198)).val
theorem input3828_def : input3828 = (.seq input3827 input3198) := by
  unfold input3828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3827 output3198)).val
theorem output3828_def : output3828 = (.seq output3827 output3198) := by
  unfold output3828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3828_skip : Flapjack.WordAlloc.isSkip output3828 = false := by
  rw [output3828_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3828 input3195)).val
theorem input3829_def : input3829 = (.seq input3828 input3195) := by
  unfold input3829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3828 output3195)).val
theorem output3829_def : output3829 = (.seq output3828 output3195) := by
  unfold output3829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3829_skip : Flapjack.WordAlloc.isSkip output3829 = false := by
  rw [output3829_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3829 input3186)).val
theorem input3830_def : input3830 = (.seq input3829 input3186) := by
  unfold input3830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3829)).val
theorem output3830_def : output3830 = (output3829) := by
  unfold output3830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3830_skip : Flapjack.WordAlloc.isSkip output3830 = false := by
  rw [output3830_def]
  exact output3829_skip


@[irreducible, cbv_opaque] def input3831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3830 input3185)).val
theorem input3831_def : input3831 = (.seq input3830 input3185) := by
  unfold input3831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3830 output3185)).val
theorem output3831_def : output3831 = (.seq output3830 output3185) := by
  unfold output3831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3831_skip : Flapjack.WordAlloc.isSkip output3831 = false := by
  rw [output3831_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3831 input3184)).val
theorem input3832_def : input3832 = (.seq input3831 input3184) := by
  unfold input3832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3831 output3184)).val
theorem output3832_def : output3832 = (.seq output3831 output3184) := by
  unfold output3832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3832_skip : Flapjack.WordAlloc.isSkip output3832 = false := by
  rw [output3832_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3832 input3181)).val
theorem input3833_def : input3833 = (.seq input3832 input3181) := by
  unfold input3833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3832 output3181)).val
theorem output3833_def : output3833 = (.seq output3832 output3181) := by
  unfold output3833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3833_skip : Flapjack.WordAlloc.isSkip output3833 = false := by
  rw [output3833_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3833 input3172)).val
theorem input3834_def : input3834 = (.seq input3833 input3172) := by
  unfold input3834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3833)).val
theorem output3834_def : output3834 = (output3833) := by
  unfold output3834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3834_skip : Flapjack.WordAlloc.isSkip output3834 = false := by
  rw [output3834_def]
  exact output3833_skip


@[irreducible, cbv_opaque] def input3835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3834 input3171)).val
theorem input3835_def : input3835 = (.seq input3834 input3171) := by
  unfold input3835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3834 output3171)).val
theorem output3835_def : output3835 = (.seq output3834 output3171) := by
  unfold output3835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3835_skip : Flapjack.WordAlloc.isSkip output3835 = false := by
  rw [output3835_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3835 input3170)).val
theorem input3836_def : input3836 = (.seq input3835 input3170) := by
  unfold input3836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3835 output3170)).val
theorem output3836_def : output3836 = (.seq output3835 output3170) := by
  unfold output3836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3836_skip : Flapjack.WordAlloc.isSkip output3836 = false := by
  rw [output3836_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3836 input3167)).val
theorem input3837_def : input3837 = (.seq input3836 input3167) := by
  unfold input3837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3836 output3167)).val
theorem output3837_def : output3837 = (.seq output3836 output3167) := by
  unfold output3837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3837_skip : Flapjack.WordAlloc.isSkip output3837 = false := by
  rw [output3837_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3837 input3158)).val
theorem input3838_def : input3838 = (.seq input3837 input3158) := by
  unfold input3838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3837)).val
theorem output3838_def : output3838 = (output3837) := by
  unfold output3838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3838_skip : Flapjack.WordAlloc.isSkip output3838 = false := by
  rw [output3838_def]
  exact output3837_skip


@[irreducible, cbv_opaque] def input3839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3838 input3157)).val
theorem input3839_def : input3839 = (.seq input3838 input3157) := by
  unfold input3839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3838 output3157)).val
theorem output3839_def : output3839 = (.seq output3838 output3157) := by
  unfold output3839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3839_skip : Flapjack.WordAlloc.isSkip output3839 = false := by
  rw [output3839_def]
  kernel_rfl



end InitECandidate.Proofs.DeadStages240.Parallel
