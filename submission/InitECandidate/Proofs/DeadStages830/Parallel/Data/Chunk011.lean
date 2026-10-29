import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadStages830.Parallel.Data.Chunk010
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages830.Parallel
@[irreducible, cbv_opaque] def input2816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2815 input2810)).val
theorem input2816_def : input2816 = (.seq input2815 input2810) := by
  unfold input2816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2815 output2810)).val
theorem output2816_def : output2816 = (.seq output2815 output2810) := by
  unfold output2816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2816_skip : Flapjack.WordAlloc.isSkip output2816 = false := by
  rw [output2816_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2816 input2809)).val
theorem input2817_def : input2817 = (.seq input2816 input2809) := by
  unfold input2817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2816 output2809)).val
theorem output2817_def : output2817 = (.seq output2816 output2809) := by
  unfold output2817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2817_skip : Flapjack.WordAlloc.isSkip output2817 = false := by
  rw [output2817_def]
  kernel_rfl


def value1413 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1909 (Flapjack.WordLangAddr.addr 1913 0#64)))).val
theorem input2818_def : input2818 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1909 (Flapjack.WordLangAddr.addr 1913 0#64))) := by
  unfold input2818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1909 (Flapjack.WordLangAddr.addr 1913 0#64)))).val
theorem output2818_def : output2818 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1909 (Flapjack.WordLangAddr.addr 1913 0#64))) := by
  unfold output2818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2818_skip : Flapjack.WordAlloc.isSkip output2818 = false := by
  rw [output2818_def]
  kernel_rfl


def value1414 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1913, 1901)])).val
theorem input2819_def : input2819 = (Flapjack.WordLangProgHOL.move 0 [(1913, 1901)]) := by
  unfold input2819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1913, 1901)])).val
theorem output2819_def : output2819 = (Flapjack.WordLangProgHOL.move 0 [(1913, 1901)]) := by
  unfold output2819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2819_skip : Flapjack.WordAlloc.isSkip output2819 = false := by
  rw [output2819_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2819 input2818)).val
theorem input2820_def : input2820 = (.seq input2819 input2818) := by
  unfold input2820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2819 output2818)).val
theorem output2820_def : output2820 = (.seq output2819 output2818) := by
  unfold output2820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2820_skip : Flapjack.WordAlloc.isSkip output2820 = false := by
  rw [output2820_def]
  kernel_rfl


def value1415 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1909 588#64))).val
theorem input2821_def : input2821 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1909 588#64)) := by
  unfold input2821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1909 588#64))).val
theorem output2821_def : output2821 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1909 588#64)) := by
  unfold output2821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2821_skip : Flapjack.WordAlloc.isSkip output2821 = false := by
  rw [output2821_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1905 588#64))).val
theorem input2822_def : input2822 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1905 588#64)) := by
  unfold input2822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2822_def : output2822 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2822_skip : Flapjack.WordAlloc.isSkip output2822 = true := by
  rw [output2822_def]
  kernel_rfl


def value1416 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1901 1897 (Flapjack.WordRegImm.imm 432#64))))).val
theorem input2823_def : input2823 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1901 1897 (Flapjack.WordRegImm.imm 432#64)))) := by
  unfold input2823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1901 1897 (Flapjack.WordRegImm.imm 432#64))))).val
theorem output2823_def : output2823 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1901 1897 (Flapjack.WordRegImm.imm 432#64)))) := by
  unfold output2823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2823_skip : Flapjack.WordAlloc.isSkip output2823 = false := by
  rw [output2823_def]
  kernel_rfl


def value1417 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1897 (Flapjack.WordLangAddr.addr 1893 18446744073709551008#64)))).val
theorem input2824_def : input2824 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1897 (Flapjack.WordLangAddr.addr 1893 18446744073709551008#64))) := by
  unfold input2824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1897 (Flapjack.WordLangAddr.addr 1893 18446744073709551008#64)))).val
theorem output2824_def : output2824 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1897 (Flapjack.WordLangAddr.addr 1893 18446744073709551008#64))) := by
  unfold output2824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2824_skip : Flapjack.WordAlloc.isSkip output2824 = false := by
  rw [output2824_def]
  kernel_rfl


def value1418 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1893 1889)).val
theorem input2825_def : input2825 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1893 1889) := by
  unfold input2825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1893 1889)).val
theorem output2825_def : output2825 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1893 1889) := by
  unfold output2825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2825_skip : Flapjack.WordAlloc.isSkip output2825 = false := by
  rw [output2825_def]
  kernel_rfl


def value1419 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1889 1885 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2826_def : input2826 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1889 1885 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1889 1885 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2826_def : output2826 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1889 1885 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2826_skip : Flapjack.WordAlloc.isSkip output2826 = false := by
  rw [output2826_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1885 Flapjack.WordStore.heapLength)).val
theorem input2827_def : input2827 = (Flapjack.WordLangProgHOL.get 1885 Flapjack.WordStore.heapLength) := by
  unfold input2827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1885 Flapjack.WordStore.heapLength)).val
theorem output2827_def : output2827 = (Flapjack.WordLangProgHOL.get 1885 Flapjack.WordStore.heapLength) := by
  unfold output2827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2827_skip : Flapjack.WordAlloc.isSkip output2827 = false := by
  rw [output2827_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2827 input2826)).val
theorem input2828_def : input2828 = (.seq input2827 input2826) := by
  unfold input2828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2827 output2826)).val
theorem output2828_def : output2828 = (.seq output2827 output2826) := by
  unfold output2828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2828_skip : Flapjack.WordAlloc.isSkip output2828 = false := by
  rw [output2828_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2828 input2825)).val
theorem input2829_def : input2829 = (.seq input2828 input2825) := by
  unfold input2829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2828 output2825)).val
theorem output2829_def : output2829 = (.seq output2828 output2825) := by
  unfold output2829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2829_skip : Flapjack.WordAlloc.isSkip output2829 = false := by
  rw [output2829_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2829 input2824)).val
theorem input2830_def : input2830 = (.seq input2829 input2824) := by
  unfold input2830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2829 output2824)).val
theorem output2830_def : output2830 = (.seq output2829 output2824) := by
  unfold output2830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2830_skip : Flapjack.WordAlloc.isSkip output2830 = false := by
  rw [output2830_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2830 input2823)).val
theorem input2831_def : input2831 = (.seq input2830 input2823) := by
  unfold input2831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2830 output2823)).val
theorem output2831_def : output2831 = (.seq output2830 output2823) := by
  unfold output2831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2831_skip : Flapjack.WordAlloc.isSkip output2831 = false := by
  rw [output2831_def]
  kernel_rfl


def value1420 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1877 (Flapjack.WordLangAddr.addr 1881 0#64)))).val
theorem input2832_def : input2832 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1877 (Flapjack.WordLangAddr.addr 1881 0#64))) := by
  unfold input2832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1877 (Flapjack.WordLangAddr.addr 1881 0#64)))).val
theorem output2832_def : output2832 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1877 (Flapjack.WordLangAddr.addr 1881 0#64))) := by
  unfold output2832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2832_skip : Flapjack.WordAlloc.isSkip output2832 = false := by
  rw [output2832_def]
  kernel_rfl


def value1421 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1881, 1869)])).val
theorem input2833_def : input2833 = (Flapjack.WordLangProgHOL.move 0 [(1881, 1869)]) := by
  unfold input2833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1881, 1869)])).val
theorem output2833_def : output2833 = (Flapjack.WordLangProgHOL.move 0 [(1881, 1869)]) := by
  unfold output2833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2833_skip : Flapjack.WordAlloc.isSkip output2833 = false := by
  rw [output2833_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2833 input2832)).val
theorem input2834_def : input2834 = (.seq input2833 input2832) := by
  unfold input2834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2833 output2832)).val
theorem output2834_def : output2834 = (.seq output2833 output2832) := by
  unfold output2834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2834_skip : Flapjack.WordAlloc.isSkip output2834 = false := by
  rw [output2834_def]
  kernel_rfl


def value1422 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1877 589#64))).val
theorem input2835_def : input2835 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1877 589#64)) := by
  unfold input2835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1877 589#64))).val
theorem output2835_def : output2835 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1877 589#64)) := by
  unfold output2835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2835_skip : Flapjack.WordAlloc.isSkip output2835 = false := by
  rw [output2835_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1873 589#64))).val
theorem input2836_def : input2836 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1873 589#64)) := by
  unfold input2836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2836_def : output2836 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2836_skip : Flapjack.WordAlloc.isSkip output2836 = true := by
  rw [output2836_def]
  kernel_rfl


def value1423 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1869 1865 (Flapjack.WordRegImm.imm 424#64))))).val
theorem input2837_def : input2837 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1869 1865 (Flapjack.WordRegImm.imm 424#64)))) := by
  unfold input2837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1869 1865 (Flapjack.WordRegImm.imm 424#64))))).val
theorem output2837_def : output2837 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1869 1865 (Flapjack.WordRegImm.imm 424#64)))) := by
  unfold output2837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2837_skip : Flapjack.WordAlloc.isSkip output2837 = false := by
  rw [output2837_def]
  kernel_rfl


def value1424 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1865 (Flapjack.WordLangAddr.addr 1861 18446744073709551008#64)))).val
theorem input2838_def : input2838 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1865 (Flapjack.WordLangAddr.addr 1861 18446744073709551008#64))) := by
  unfold input2838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1865 (Flapjack.WordLangAddr.addr 1861 18446744073709551008#64)))).val
theorem output2838_def : output2838 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1865 (Flapjack.WordLangAddr.addr 1861 18446744073709551008#64))) := by
  unfold output2838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2838_skip : Flapjack.WordAlloc.isSkip output2838 = false := by
  rw [output2838_def]
  kernel_rfl


def value1425 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1861 1857)).val
theorem input2839_def : input2839 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1861 1857) := by
  unfold input2839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1861 1857)).val
theorem output2839_def : output2839 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1861 1857) := by
  unfold output2839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2839_skip : Flapjack.WordAlloc.isSkip output2839 = false := by
  rw [output2839_def]
  kernel_rfl


def value1426 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1857 1853 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2840_def : input2840 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1857 1853 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1857 1853 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2840_def : output2840 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1857 1853 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2840_skip : Flapjack.WordAlloc.isSkip output2840 = false := by
  rw [output2840_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1853 Flapjack.WordStore.heapLength)).val
theorem input2841_def : input2841 = (Flapjack.WordLangProgHOL.get 1853 Flapjack.WordStore.heapLength) := by
  unfold input2841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1853 Flapjack.WordStore.heapLength)).val
theorem output2841_def : output2841 = (Flapjack.WordLangProgHOL.get 1853 Flapjack.WordStore.heapLength) := by
  unfold output2841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2841_skip : Flapjack.WordAlloc.isSkip output2841 = false := by
  rw [output2841_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2841 input2840)).val
theorem input2842_def : input2842 = (.seq input2841 input2840) := by
  unfold input2842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2841 output2840)).val
theorem output2842_def : output2842 = (.seq output2841 output2840) := by
  unfold output2842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2842_skip : Flapjack.WordAlloc.isSkip output2842 = false := by
  rw [output2842_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2842 input2839)).val
theorem input2843_def : input2843 = (.seq input2842 input2839) := by
  unfold input2843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2842 output2839)).val
theorem output2843_def : output2843 = (.seq output2842 output2839) := by
  unfold output2843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2843_skip : Flapjack.WordAlloc.isSkip output2843 = false := by
  rw [output2843_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2843 input2838)).val
theorem input2844_def : input2844 = (.seq input2843 input2838) := by
  unfold input2844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2843 output2838)).val
theorem output2844_def : output2844 = (.seq output2843 output2838) := by
  unfold output2844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2844_skip : Flapjack.WordAlloc.isSkip output2844 = false := by
  rw [output2844_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2844 input2837)).val
theorem input2845_def : input2845 = (.seq input2844 input2837) := by
  unfold input2845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2844 output2837)).val
theorem output2845_def : output2845 = (.seq output2844 output2837) := by
  unfold output2845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2845_skip : Flapjack.WordAlloc.isSkip output2845 = false := by
  rw [output2845_def]
  kernel_rfl


def value1427 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1845 (Flapjack.WordLangAddr.addr 1849 0#64)))).val
theorem input2846_def : input2846 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1845 (Flapjack.WordLangAddr.addr 1849 0#64))) := by
  unfold input2846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1845 (Flapjack.WordLangAddr.addr 1849 0#64)))).val
theorem output2846_def : output2846 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1845 (Flapjack.WordLangAddr.addr 1849 0#64))) := by
  unfold output2846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2846_skip : Flapjack.WordAlloc.isSkip output2846 = false := by
  rw [output2846_def]
  kernel_rfl


def value1428 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1849, 1837)])).val
theorem input2847_def : input2847 = (Flapjack.WordLangProgHOL.move 0 [(1849, 1837)]) := by
  unfold input2847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1849, 1837)])).val
theorem output2847_def : output2847 = (Flapjack.WordLangProgHOL.move 0 [(1849, 1837)]) := by
  unfold output2847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2847_skip : Flapjack.WordAlloc.isSkip output2847 = false := by
  rw [output2847_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2847 input2846)).val
theorem input2848_def : input2848 = (.seq input2847 input2846) := by
  unfold input2848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2847 output2846)).val
theorem output2848_def : output2848 = (.seq output2847 output2846) := by
  unfold output2848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2848_skip : Flapjack.WordAlloc.isSkip output2848 = false := by
  rw [output2848_def]
  kernel_rfl


def value1429 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1845 591#64))).val
theorem input2849_def : input2849 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1845 591#64)) := by
  unfold input2849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1845 591#64))).val
theorem output2849_def : output2849 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1845 591#64)) := by
  unfold output2849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2849_skip : Flapjack.WordAlloc.isSkip output2849 = false := by
  rw [output2849_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1841 591#64))).val
theorem input2850_def : input2850 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1841 591#64)) := by
  unfold input2850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2850_def : output2850 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2850_skip : Flapjack.WordAlloc.isSkip output2850 = true := by
  rw [output2850_def]
  kernel_rfl


def value1430 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1837 1833 (Flapjack.WordRegImm.imm 416#64))))).val
theorem input2851_def : input2851 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1837 1833 (Flapjack.WordRegImm.imm 416#64)))) := by
  unfold input2851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1837 1833 (Flapjack.WordRegImm.imm 416#64))))).val
theorem output2851_def : output2851 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1837 1833 (Flapjack.WordRegImm.imm 416#64)))) := by
  unfold output2851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2851_skip : Flapjack.WordAlloc.isSkip output2851 = false := by
  rw [output2851_def]
  kernel_rfl


def value1431 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1833 (Flapjack.WordLangAddr.addr 1829 18446744073709551008#64)))).val
theorem input2852_def : input2852 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1833 (Flapjack.WordLangAddr.addr 1829 18446744073709551008#64))) := by
  unfold input2852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1833 (Flapjack.WordLangAddr.addr 1829 18446744073709551008#64)))).val
theorem output2852_def : output2852 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1833 (Flapjack.WordLangAddr.addr 1829 18446744073709551008#64))) := by
  unfold output2852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2852_skip : Flapjack.WordAlloc.isSkip output2852 = false := by
  rw [output2852_def]
  kernel_rfl


def value1432 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1829 1825)).val
theorem input2853_def : input2853 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1829 1825) := by
  unfold input2853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1829 1825)).val
theorem output2853_def : output2853 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1829 1825) := by
  unfold output2853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2853_skip : Flapjack.WordAlloc.isSkip output2853 = false := by
  rw [output2853_def]
  kernel_rfl


def value1433 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1825 1821 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2854_def : input2854 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1825 1821 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1825 1821 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2854_def : output2854 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1825 1821 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2854_skip : Flapjack.WordAlloc.isSkip output2854 = false := by
  rw [output2854_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1821 Flapjack.WordStore.heapLength)).val
theorem input2855_def : input2855 = (Flapjack.WordLangProgHOL.get 1821 Flapjack.WordStore.heapLength) := by
  unfold input2855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1821 Flapjack.WordStore.heapLength)).val
theorem output2855_def : output2855 = (Flapjack.WordLangProgHOL.get 1821 Flapjack.WordStore.heapLength) := by
  unfold output2855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2855_skip : Flapjack.WordAlloc.isSkip output2855 = false := by
  rw [output2855_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2855 input2854)).val
theorem input2856_def : input2856 = (.seq input2855 input2854) := by
  unfold input2856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2855 output2854)).val
theorem output2856_def : output2856 = (.seq output2855 output2854) := by
  unfold output2856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2856_skip : Flapjack.WordAlloc.isSkip output2856 = false := by
  rw [output2856_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2856 input2853)).val
theorem input2857_def : input2857 = (.seq input2856 input2853) := by
  unfold input2857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2856 output2853)).val
theorem output2857_def : output2857 = (.seq output2856 output2853) := by
  unfold output2857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2857_skip : Flapjack.WordAlloc.isSkip output2857 = false := by
  rw [output2857_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2857 input2852)).val
theorem input2858_def : input2858 = (.seq input2857 input2852) := by
  unfold input2858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2857 output2852)).val
theorem output2858_def : output2858 = (.seq output2857 output2852) := by
  unfold output2858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2858_skip : Flapjack.WordAlloc.isSkip output2858 = false := by
  rw [output2858_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2858 input2851)).val
theorem input2859_def : input2859 = (.seq input2858 input2851) := by
  unfold input2859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2858 output2851)).val
theorem output2859_def : output2859 = (.seq output2858 output2851) := by
  unfold output2859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2859_skip : Flapjack.WordAlloc.isSkip output2859 = false := by
  rw [output2859_def]
  kernel_rfl


def value1434 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1813 (Flapjack.WordLangAddr.addr 1817 0#64)))).val
theorem input2860_def : input2860 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1813 (Flapjack.WordLangAddr.addr 1817 0#64))) := by
  unfold input2860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1813 (Flapjack.WordLangAddr.addr 1817 0#64)))).val
theorem output2860_def : output2860 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1813 (Flapjack.WordLangAddr.addr 1817 0#64))) := by
  unfold output2860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2860_skip : Flapjack.WordAlloc.isSkip output2860 = false := by
  rw [output2860_def]
  kernel_rfl


def value1435 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1817, 1805)])).val
theorem input2861_def : input2861 = (Flapjack.WordLangProgHOL.move 0 [(1817, 1805)]) := by
  unfold input2861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1817, 1805)])).val
theorem output2861_def : output2861 = (Flapjack.WordLangProgHOL.move 0 [(1817, 1805)]) := by
  unfold output2861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2861_skip : Flapjack.WordAlloc.isSkip output2861 = false := by
  rw [output2861_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2861 input2860)).val
theorem input2862_def : input2862 = (.seq input2861 input2860) := by
  unfold input2862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2861 output2860)).val
theorem output2862_def : output2862 = (.seq output2861 output2860) := by
  unfold output2862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2862_skip : Flapjack.WordAlloc.isSkip output2862 = false := by
  rw [output2862_def]
  kernel_rfl


def value1436 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1813 592#64))).val
theorem input2863_def : input2863 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1813 592#64)) := by
  unfold input2863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1813 592#64))).val
theorem output2863_def : output2863 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1813 592#64)) := by
  unfold output2863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2863_skip : Flapjack.WordAlloc.isSkip output2863 = false := by
  rw [output2863_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1809 592#64))).val
theorem input2864_def : input2864 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1809 592#64)) := by
  unfold input2864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2864_def : output2864 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2864_skip : Flapjack.WordAlloc.isSkip output2864 = true := by
  rw [output2864_def]
  kernel_rfl


def value1437 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1805 1801 (Flapjack.WordRegImm.imm 408#64))))).val
theorem input2865_def : input2865 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1805 1801 (Flapjack.WordRegImm.imm 408#64)))) := by
  unfold input2865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1805 1801 (Flapjack.WordRegImm.imm 408#64))))).val
theorem output2865_def : output2865 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1805 1801 (Flapjack.WordRegImm.imm 408#64)))) := by
  unfold output2865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2865_skip : Flapjack.WordAlloc.isSkip output2865 = false := by
  rw [output2865_def]
  kernel_rfl


def value1438 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1801 (Flapjack.WordLangAddr.addr 1797 18446744073709551008#64)))).val
theorem input2866_def : input2866 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1801 (Flapjack.WordLangAddr.addr 1797 18446744073709551008#64))) := by
  unfold input2866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1801 (Flapjack.WordLangAddr.addr 1797 18446744073709551008#64)))).val
theorem output2866_def : output2866 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1801 (Flapjack.WordLangAddr.addr 1797 18446744073709551008#64))) := by
  unfold output2866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2866_skip : Flapjack.WordAlloc.isSkip output2866 = false := by
  rw [output2866_def]
  kernel_rfl


def value1439 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1797 1793)).val
theorem input2867_def : input2867 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1797 1793) := by
  unfold input2867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1797 1793)).val
theorem output2867_def : output2867 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1797 1793) := by
  unfold output2867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2867_skip : Flapjack.WordAlloc.isSkip output2867 = false := by
  rw [output2867_def]
  kernel_rfl


def value1440 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1793 1789 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2868_def : input2868 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1793 1789 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1793 1789 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2868_def : output2868 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1793 1789 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2868_skip : Flapjack.WordAlloc.isSkip output2868 = false := by
  rw [output2868_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1789 Flapjack.WordStore.heapLength)).val
theorem input2869_def : input2869 = (Flapjack.WordLangProgHOL.get 1789 Flapjack.WordStore.heapLength) := by
  unfold input2869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1789 Flapjack.WordStore.heapLength)).val
theorem output2869_def : output2869 = (Flapjack.WordLangProgHOL.get 1789 Flapjack.WordStore.heapLength) := by
  unfold output2869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2869_skip : Flapjack.WordAlloc.isSkip output2869 = false := by
  rw [output2869_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2869 input2868)).val
theorem input2870_def : input2870 = (.seq input2869 input2868) := by
  unfold input2870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2869 output2868)).val
theorem output2870_def : output2870 = (.seq output2869 output2868) := by
  unfold output2870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2870_skip : Flapjack.WordAlloc.isSkip output2870 = false := by
  rw [output2870_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2870 input2867)).val
theorem input2871_def : input2871 = (.seq input2870 input2867) := by
  unfold input2871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2870 output2867)).val
theorem output2871_def : output2871 = (.seq output2870 output2867) := by
  unfold output2871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2871_skip : Flapjack.WordAlloc.isSkip output2871 = false := by
  rw [output2871_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2871 input2866)).val
theorem input2872_def : input2872 = (.seq input2871 input2866) := by
  unfold input2872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2871 output2866)).val
theorem output2872_def : output2872 = (.seq output2871 output2866) := by
  unfold output2872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2872_skip : Flapjack.WordAlloc.isSkip output2872 = false := by
  rw [output2872_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2872 input2865)).val
theorem input2873_def : input2873 = (.seq input2872 input2865) := by
  unfold input2873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2872 output2865)).val
theorem output2873_def : output2873 = (.seq output2872 output2865) := by
  unfold output2873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2873_skip : Flapjack.WordAlloc.isSkip output2873 = false := by
  rw [output2873_def]
  kernel_rfl


def value1441 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1781 (Flapjack.WordLangAddr.addr 1785 0#64)))).val
theorem input2874_def : input2874 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1781 (Flapjack.WordLangAddr.addr 1785 0#64))) := by
  unfold input2874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1781 (Flapjack.WordLangAddr.addr 1785 0#64)))).val
theorem output2874_def : output2874 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1781 (Flapjack.WordLangAddr.addr 1785 0#64))) := by
  unfold output2874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2874_skip : Flapjack.WordAlloc.isSkip output2874 = false := by
  rw [output2874_def]
  kernel_rfl


def value1442 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1785, 1773)])).val
theorem input2875_def : input2875 = (Flapjack.WordLangProgHOL.move 0 [(1785, 1773)]) := by
  unfold input2875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1785, 1773)])).val
theorem output2875_def : output2875 = (Flapjack.WordLangProgHOL.move 0 [(1785, 1773)]) := by
  unfold output2875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2875_skip : Flapjack.WordAlloc.isSkip output2875 = false := by
  rw [output2875_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2875 input2874)).val
theorem input2876_def : input2876 = (.seq input2875 input2874) := by
  unfold input2876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2875 output2874)).val
theorem output2876_def : output2876 = (.seq output2875 output2874) := by
  unfold output2876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2876_skip : Flapjack.WordAlloc.isSkip output2876 = false := by
  rw [output2876_def]
  kernel_rfl


def value1443 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1781 593#64))).val
theorem input2877_def : input2877 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1781 593#64)) := by
  unfold input2877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1781 593#64))).val
theorem output2877_def : output2877 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1781 593#64)) := by
  unfold output2877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2877_skip : Flapjack.WordAlloc.isSkip output2877 = false := by
  rw [output2877_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1777 593#64))).val
theorem input2878_def : input2878 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1777 593#64)) := by
  unfold input2878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2878_def : output2878 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2878_skip : Flapjack.WordAlloc.isSkip output2878 = true := by
  rw [output2878_def]
  kernel_rfl


def value1444 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1773 1769 (Flapjack.WordRegImm.imm 400#64))))).val
theorem input2879_def : input2879 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1773 1769 (Flapjack.WordRegImm.imm 400#64)))) := by
  unfold input2879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1773 1769 (Flapjack.WordRegImm.imm 400#64))))).val
theorem output2879_def : output2879 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1773 1769 (Flapjack.WordRegImm.imm 400#64)))) := by
  unfold output2879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2879_skip : Flapjack.WordAlloc.isSkip output2879 = false := by
  rw [output2879_def]
  kernel_rfl


def value1445 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1769 (Flapjack.WordLangAddr.addr 1765 18446744073709551008#64)))).val
theorem input2880_def : input2880 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1769 (Flapjack.WordLangAddr.addr 1765 18446744073709551008#64))) := by
  unfold input2880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1769 (Flapjack.WordLangAddr.addr 1765 18446744073709551008#64)))).val
theorem output2880_def : output2880 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1769 (Flapjack.WordLangAddr.addr 1765 18446744073709551008#64))) := by
  unfold output2880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2880_skip : Flapjack.WordAlloc.isSkip output2880 = false := by
  rw [output2880_def]
  kernel_rfl


def value1446 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1765 1761)).val
theorem input2881_def : input2881 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1765 1761) := by
  unfold input2881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1765 1761)).val
theorem output2881_def : output2881 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1765 1761) := by
  unfold output2881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2881_skip : Flapjack.WordAlloc.isSkip output2881 = false := by
  rw [output2881_def]
  kernel_rfl


def value1447 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1761 1757 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2882_def : input2882 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1761 1757 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1761 1757 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2882_def : output2882 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1761 1757 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2882_skip : Flapjack.WordAlloc.isSkip output2882 = false := by
  rw [output2882_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1757 Flapjack.WordStore.heapLength)).val
theorem input2883_def : input2883 = (Flapjack.WordLangProgHOL.get 1757 Flapjack.WordStore.heapLength) := by
  unfold input2883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1757 Flapjack.WordStore.heapLength)).val
theorem output2883_def : output2883 = (Flapjack.WordLangProgHOL.get 1757 Flapjack.WordStore.heapLength) := by
  unfold output2883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2883_skip : Flapjack.WordAlloc.isSkip output2883 = false := by
  rw [output2883_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2883 input2882)).val
theorem input2884_def : input2884 = (.seq input2883 input2882) := by
  unfold input2884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2883 output2882)).val
theorem output2884_def : output2884 = (.seq output2883 output2882) := by
  unfold output2884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2884_skip : Flapjack.WordAlloc.isSkip output2884 = false := by
  rw [output2884_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2884 input2881)).val
theorem input2885_def : input2885 = (.seq input2884 input2881) := by
  unfold input2885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2884 output2881)).val
theorem output2885_def : output2885 = (.seq output2884 output2881) := by
  unfold output2885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2885_skip : Flapjack.WordAlloc.isSkip output2885 = false := by
  rw [output2885_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2885 input2880)).val
theorem input2886_def : input2886 = (.seq input2885 input2880) := by
  unfold input2886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2885 output2880)).val
theorem output2886_def : output2886 = (.seq output2885 output2880) := by
  unfold output2886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2886_skip : Flapjack.WordAlloc.isSkip output2886 = false := by
  rw [output2886_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2886 input2879)).val
theorem input2887_def : input2887 = (.seq input2886 input2879) := by
  unfold input2887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2886 output2879)).val
theorem output2887_def : output2887 = (.seq output2886 output2879) := by
  unfold output2887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2887_skip : Flapjack.WordAlloc.isSkip output2887 = false := by
  rw [output2887_def]
  kernel_rfl


def value1448 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1749 (Flapjack.WordLangAddr.addr 1753 0#64)))).val
theorem input2888_def : input2888 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1749 (Flapjack.WordLangAddr.addr 1753 0#64))) := by
  unfold input2888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1749 (Flapjack.WordLangAddr.addr 1753 0#64)))).val
theorem output2888_def : output2888 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1749 (Flapjack.WordLangAddr.addr 1753 0#64))) := by
  unfold output2888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2888_skip : Flapjack.WordAlloc.isSkip output2888 = false := by
  rw [output2888_def]
  kernel_rfl


def value1449 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1753, 1741)])).val
theorem input2889_def : input2889 = (Flapjack.WordLangProgHOL.move 0 [(1753, 1741)]) := by
  unfold input2889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1753, 1741)])).val
theorem output2889_def : output2889 = (Flapjack.WordLangProgHOL.move 0 [(1753, 1741)]) := by
  unfold output2889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2889_skip : Flapjack.WordAlloc.isSkip output2889 = false := by
  rw [output2889_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2889 input2888)).val
theorem input2890_def : input2890 = (.seq input2889 input2888) := by
  unfold input2890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2889 output2888)).val
theorem output2890_def : output2890 = (.seq output2889 output2888) := by
  unfold output2890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2890_skip : Flapjack.WordAlloc.isSkip output2890 = false := by
  rw [output2890_def]
  kernel_rfl


def value1450 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1749 595#64))).val
theorem input2891_def : input2891 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1749 595#64)) := by
  unfold input2891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1749 595#64))).val
theorem output2891_def : output2891 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1749 595#64)) := by
  unfold output2891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2891_skip : Flapjack.WordAlloc.isSkip output2891 = false := by
  rw [output2891_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1745 595#64))).val
theorem input2892_def : input2892 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1745 595#64)) := by
  unfold input2892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2892_def : output2892 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2892_skip : Flapjack.WordAlloc.isSkip output2892 = true := by
  rw [output2892_def]
  kernel_rfl


def value1451 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1741 1737 (Flapjack.WordRegImm.imm 392#64))))).val
theorem input2893_def : input2893 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1741 1737 (Flapjack.WordRegImm.imm 392#64)))) := by
  unfold input2893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1741 1737 (Flapjack.WordRegImm.imm 392#64))))).val
theorem output2893_def : output2893 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1741 1737 (Flapjack.WordRegImm.imm 392#64)))) := by
  unfold output2893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2893_skip : Flapjack.WordAlloc.isSkip output2893 = false := by
  rw [output2893_def]
  kernel_rfl


def value1452 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1737 (Flapjack.WordLangAddr.addr 1733 18446744073709551008#64)))).val
theorem input2894_def : input2894 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1737 (Flapjack.WordLangAddr.addr 1733 18446744073709551008#64))) := by
  unfold input2894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1737 (Flapjack.WordLangAddr.addr 1733 18446744073709551008#64)))).val
theorem output2894_def : output2894 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1737 (Flapjack.WordLangAddr.addr 1733 18446744073709551008#64))) := by
  unfold output2894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2894_skip : Flapjack.WordAlloc.isSkip output2894 = false := by
  rw [output2894_def]
  kernel_rfl


def value1453 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1733 1729)).val
theorem input2895_def : input2895 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1733 1729) := by
  unfold input2895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1733 1729)).val
theorem output2895_def : output2895 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1733 1729) := by
  unfold output2895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2895_skip : Flapjack.WordAlloc.isSkip output2895 = false := by
  rw [output2895_def]
  kernel_rfl


def value1454 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1729 1725 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2896_def : input2896 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1729 1725 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1729 1725 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2896_def : output2896 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1729 1725 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2896_skip : Flapjack.WordAlloc.isSkip output2896 = false := by
  rw [output2896_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1725 Flapjack.WordStore.heapLength)).val
theorem input2897_def : input2897 = (Flapjack.WordLangProgHOL.get 1725 Flapjack.WordStore.heapLength) := by
  unfold input2897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1725 Flapjack.WordStore.heapLength)).val
theorem output2897_def : output2897 = (Flapjack.WordLangProgHOL.get 1725 Flapjack.WordStore.heapLength) := by
  unfold output2897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2897_skip : Flapjack.WordAlloc.isSkip output2897 = false := by
  rw [output2897_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2897 input2896)).val
theorem input2898_def : input2898 = (.seq input2897 input2896) := by
  unfold input2898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2897 output2896)).val
theorem output2898_def : output2898 = (.seq output2897 output2896) := by
  unfold output2898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2898_skip : Flapjack.WordAlloc.isSkip output2898 = false := by
  rw [output2898_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2898 input2895)).val
theorem input2899_def : input2899 = (.seq input2898 input2895) := by
  unfold input2899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2898 output2895)).val
theorem output2899_def : output2899 = (.seq output2898 output2895) := by
  unfold output2899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2899_skip : Flapjack.WordAlloc.isSkip output2899 = false := by
  rw [output2899_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2899 input2894)).val
theorem input2900_def : input2900 = (.seq input2899 input2894) := by
  unfold input2900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2899 output2894)).val
theorem output2900_def : output2900 = (.seq output2899 output2894) := by
  unfold output2900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2900_skip : Flapjack.WordAlloc.isSkip output2900 = false := by
  rw [output2900_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2900 input2893)).val
theorem input2901_def : input2901 = (.seq input2900 input2893) := by
  unfold input2901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2900 output2893)).val
theorem output2901_def : output2901 = (.seq output2900 output2893) := by
  unfold output2901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2901_skip : Flapjack.WordAlloc.isSkip output2901 = false := by
  rw [output2901_def]
  kernel_rfl


def value1455 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1717 (Flapjack.WordLangAddr.addr 1721 0#64)))).val
theorem input2902_def : input2902 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1717 (Flapjack.WordLangAddr.addr 1721 0#64))) := by
  unfold input2902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1717 (Flapjack.WordLangAddr.addr 1721 0#64)))).val
theorem output2902_def : output2902 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1717 (Flapjack.WordLangAddr.addr 1721 0#64))) := by
  unfold output2902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2902_skip : Flapjack.WordAlloc.isSkip output2902 = false := by
  rw [output2902_def]
  kernel_rfl


def value1456 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1721, 1709)])).val
theorem input2903_def : input2903 = (Flapjack.WordLangProgHOL.move 0 [(1721, 1709)]) := by
  unfold input2903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1721, 1709)])).val
theorem output2903_def : output2903 = (Flapjack.WordLangProgHOL.move 0 [(1721, 1709)]) := by
  unfold output2903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2903_skip : Flapjack.WordAlloc.isSkip output2903 = false := by
  rw [output2903_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2903 input2902)).val
theorem input2904_def : input2904 = (.seq input2903 input2902) := by
  unfold input2904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2903 output2902)).val
theorem output2904_def : output2904 = (.seq output2903 output2902) := by
  unfold output2904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2904_skip : Flapjack.WordAlloc.isSkip output2904 = false := by
  rw [output2904_def]
  kernel_rfl


def value1457 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1717 596#64))).val
theorem input2905_def : input2905 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1717 596#64)) := by
  unfold input2905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1717 596#64))).val
theorem output2905_def : output2905 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1717 596#64)) := by
  unfold output2905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2905_skip : Flapjack.WordAlloc.isSkip output2905 = false := by
  rw [output2905_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1713 596#64))).val
theorem input2906_def : input2906 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1713 596#64)) := by
  unfold input2906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2906_def : output2906 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2906_skip : Flapjack.WordAlloc.isSkip output2906 = true := by
  rw [output2906_def]
  kernel_rfl


def value1458 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1709 1705 (Flapjack.WordRegImm.imm 384#64))))).val
theorem input2907_def : input2907 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1709 1705 (Flapjack.WordRegImm.imm 384#64)))) := by
  unfold input2907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1709 1705 (Flapjack.WordRegImm.imm 384#64))))).val
theorem output2907_def : output2907 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1709 1705 (Flapjack.WordRegImm.imm 384#64)))) := by
  unfold output2907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2907_skip : Flapjack.WordAlloc.isSkip output2907 = false := by
  rw [output2907_def]
  kernel_rfl


def value1459 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1705 (Flapjack.WordLangAddr.addr 1701 18446744073709551008#64)))).val
theorem input2908_def : input2908 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1705 (Flapjack.WordLangAddr.addr 1701 18446744073709551008#64))) := by
  unfold input2908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1705 (Flapjack.WordLangAddr.addr 1701 18446744073709551008#64)))).val
theorem output2908_def : output2908 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1705 (Flapjack.WordLangAddr.addr 1701 18446744073709551008#64))) := by
  unfold output2908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2908_skip : Flapjack.WordAlloc.isSkip output2908 = false := by
  rw [output2908_def]
  kernel_rfl


def value1460 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1701 1697)).val
theorem input2909_def : input2909 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1701 1697) := by
  unfold input2909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1701 1697)).val
theorem output2909_def : output2909 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1701 1697) := by
  unfold output2909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2909_skip : Flapjack.WordAlloc.isSkip output2909 = false := by
  rw [output2909_def]
  kernel_rfl


def value1461 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1697 1693 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2910_def : input2910 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1697 1693 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1697 1693 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2910_def : output2910 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1697 1693 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2910_skip : Flapjack.WordAlloc.isSkip output2910 = false := by
  rw [output2910_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1693 Flapjack.WordStore.heapLength)).val
theorem input2911_def : input2911 = (Flapjack.WordLangProgHOL.get 1693 Flapjack.WordStore.heapLength) := by
  unfold input2911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1693 Flapjack.WordStore.heapLength)).val
theorem output2911_def : output2911 = (Flapjack.WordLangProgHOL.get 1693 Flapjack.WordStore.heapLength) := by
  unfold output2911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2911_skip : Flapjack.WordAlloc.isSkip output2911 = false := by
  rw [output2911_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2911 input2910)).val
theorem input2912_def : input2912 = (.seq input2911 input2910) := by
  unfold input2912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2911 output2910)).val
theorem output2912_def : output2912 = (.seq output2911 output2910) := by
  unfold output2912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2912_skip : Flapjack.WordAlloc.isSkip output2912 = false := by
  rw [output2912_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2912 input2909)).val
theorem input2913_def : input2913 = (.seq input2912 input2909) := by
  unfold input2913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2912 output2909)).val
theorem output2913_def : output2913 = (.seq output2912 output2909) := by
  unfold output2913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2913_skip : Flapjack.WordAlloc.isSkip output2913 = false := by
  rw [output2913_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2913 input2908)).val
theorem input2914_def : input2914 = (.seq input2913 input2908) := by
  unfold input2914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2913 output2908)).val
theorem output2914_def : output2914 = (.seq output2913 output2908) := by
  unfold output2914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2914_skip : Flapjack.WordAlloc.isSkip output2914 = false := by
  rw [output2914_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2914 input2907)).val
theorem input2915_def : input2915 = (.seq input2914 input2907) := by
  unfold input2915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2914 output2907)).val
theorem output2915_def : output2915 = (.seq output2914 output2907) := by
  unfold output2915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2915_skip : Flapjack.WordAlloc.isSkip output2915 = false := by
  rw [output2915_def]
  kernel_rfl


def value1462 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1685 (Flapjack.WordLangAddr.addr 1689 0#64)))).val
theorem input2916_def : input2916 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1685 (Flapjack.WordLangAddr.addr 1689 0#64))) := by
  unfold input2916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1685 (Flapjack.WordLangAddr.addr 1689 0#64)))).val
theorem output2916_def : output2916 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1685 (Flapjack.WordLangAddr.addr 1689 0#64))) := by
  unfold output2916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2916_skip : Flapjack.WordAlloc.isSkip output2916 = false := by
  rw [output2916_def]
  kernel_rfl


def value1463 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1689, 1677)])).val
theorem input2917_def : input2917 = (Flapjack.WordLangProgHOL.move 0 [(1689, 1677)]) := by
  unfold input2917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1689, 1677)])).val
theorem output2917_def : output2917 = (Flapjack.WordLangProgHOL.move 0 [(1689, 1677)]) := by
  unfold output2917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2917_skip : Flapjack.WordAlloc.isSkip output2917 = false := by
  rw [output2917_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2917 input2916)).val
theorem input2918_def : input2918 = (.seq input2917 input2916) := by
  unfold input2918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2917 output2916)).val
theorem output2918_def : output2918 = (.seq output2917 output2916) := by
  unfold output2918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2918_skip : Flapjack.WordAlloc.isSkip output2918 = false := by
  rw [output2918_def]
  kernel_rfl


def value1464 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1685 598#64))).val
theorem input2919_def : input2919 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1685 598#64)) := by
  unfold input2919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1685 598#64))).val
theorem output2919_def : output2919 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1685 598#64)) := by
  unfold output2919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2919_skip : Flapjack.WordAlloc.isSkip output2919 = false := by
  rw [output2919_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1681 598#64))).val
theorem input2920_def : input2920 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1681 598#64)) := by
  unfold input2920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2920_def : output2920 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2920_skip : Flapjack.WordAlloc.isSkip output2920 = true := by
  rw [output2920_def]
  kernel_rfl


def value1465 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1677 1673 (Flapjack.WordRegImm.imm 376#64))))).val
theorem input2921_def : input2921 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1677 1673 (Flapjack.WordRegImm.imm 376#64)))) := by
  unfold input2921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1677 1673 (Flapjack.WordRegImm.imm 376#64))))).val
theorem output2921_def : output2921 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1677 1673 (Flapjack.WordRegImm.imm 376#64)))) := by
  unfold output2921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2921_skip : Flapjack.WordAlloc.isSkip output2921 = false := by
  rw [output2921_def]
  kernel_rfl


def value1466 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1673 (Flapjack.WordLangAddr.addr 1669 18446744073709551008#64)))).val
theorem input2922_def : input2922 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1673 (Flapjack.WordLangAddr.addr 1669 18446744073709551008#64))) := by
  unfold input2922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1673 (Flapjack.WordLangAddr.addr 1669 18446744073709551008#64)))).val
theorem output2922_def : output2922 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1673 (Flapjack.WordLangAddr.addr 1669 18446744073709551008#64))) := by
  unfold output2922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2922_skip : Flapjack.WordAlloc.isSkip output2922 = false := by
  rw [output2922_def]
  kernel_rfl


def value1467 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1669 1665)).val
theorem input2923_def : input2923 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1669 1665) := by
  unfold input2923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1669 1665)).val
theorem output2923_def : output2923 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1669 1665) := by
  unfold output2923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2923_skip : Flapjack.WordAlloc.isSkip output2923 = false := by
  rw [output2923_def]
  kernel_rfl


def value1468 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1665 1661 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2924_def : input2924 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1665 1661 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1665 1661 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2924_def : output2924 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1665 1661 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2924_skip : Flapjack.WordAlloc.isSkip output2924 = false := by
  rw [output2924_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1661 Flapjack.WordStore.heapLength)).val
theorem input2925_def : input2925 = (Flapjack.WordLangProgHOL.get 1661 Flapjack.WordStore.heapLength) := by
  unfold input2925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1661 Flapjack.WordStore.heapLength)).val
theorem output2925_def : output2925 = (Flapjack.WordLangProgHOL.get 1661 Flapjack.WordStore.heapLength) := by
  unfold output2925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2925_skip : Flapjack.WordAlloc.isSkip output2925 = false := by
  rw [output2925_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2925 input2924)).val
theorem input2926_def : input2926 = (.seq input2925 input2924) := by
  unfold input2926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2925 output2924)).val
theorem output2926_def : output2926 = (.seq output2925 output2924) := by
  unfold output2926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2926_skip : Flapjack.WordAlloc.isSkip output2926 = false := by
  rw [output2926_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2926 input2923)).val
theorem input2927_def : input2927 = (.seq input2926 input2923) := by
  unfold input2927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2926 output2923)).val
theorem output2927_def : output2927 = (.seq output2926 output2923) := by
  unfold output2927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2927_skip : Flapjack.WordAlloc.isSkip output2927 = false := by
  rw [output2927_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2927 input2922)).val
theorem input2928_def : input2928 = (.seq input2927 input2922) := by
  unfold input2928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2927 output2922)).val
theorem output2928_def : output2928 = (.seq output2927 output2922) := by
  unfold output2928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2928_skip : Flapjack.WordAlloc.isSkip output2928 = false := by
  rw [output2928_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2928 input2921)).val
theorem input2929_def : input2929 = (.seq input2928 input2921) := by
  unfold input2929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2928 output2921)).val
theorem output2929_def : output2929 = (.seq output2928 output2921) := by
  unfold output2929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2929_skip : Flapjack.WordAlloc.isSkip output2929 = false := by
  rw [output2929_def]
  kernel_rfl


def value1469 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1653 (Flapjack.WordLangAddr.addr 1657 0#64)))).val
theorem input2930_def : input2930 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1653 (Flapjack.WordLangAddr.addr 1657 0#64))) := by
  unfold input2930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1653 (Flapjack.WordLangAddr.addr 1657 0#64)))).val
theorem output2930_def : output2930 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1653 (Flapjack.WordLangAddr.addr 1657 0#64))) := by
  unfold output2930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2930_skip : Flapjack.WordAlloc.isSkip output2930 = false := by
  rw [output2930_def]
  kernel_rfl


def value1470 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1657, 1645)])).val
theorem input2931_def : input2931 = (Flapjack.WordLangProgHOL.move 0 [(1657, 1645)]) := by
  unfold input2931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1657, 1645)])).val
theorem output2931_def : output2931 = (Flapjack.WordLangProgHOL.move 0 [(1657, 1645)]) := by
  unfold output2931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2931_skip : Flapjack.WordAlloc.isSkip output2931 = false := by
  rw [output2931_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2931 input2930)).val
theorem input2932_def : input2932 = (.seq input2931 input2930) := by
  unfold input2932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2931 output2930)).val
theorem output2932_def : output2932 = (.seq output2931 output2930) := by
  unfold output2932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2932_skip : Flapjack.WordAlloc.isSkip output2932 = false := by
  rw [output2932_def]
  kernel_rfl


def value1471 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1653 599#64))).val
theorem input2933_def : input2933 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1653 599#64)) := by
  unfold input2933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1653 599#64))).val
theorem output2933_def : output2933 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1653 599#64)) := by
  unfold output2933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2933_skip : Flapjack.WordAlloc.isSkip output2933 = false := by
  rw [output2933_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1649 599#64))).val
theorem input2934_def : input2934 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1649 599#64)) := by
  unfold input2934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2934_def : output2934 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2934_skip : Flapjack.WordAlloc.isSkip output2934 = true := by
  rw [output2934_def]
  kernel_rfl


def value1472 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1645 1641 (Flapjack.WordRegImm.imm 368#64))))).val
theorem input2935_def : input2935 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1645 1641 (Flapjack.WordRegImm.imm 368#64)))) := by
  unfold input2935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1645 1641 (Flapjack.WordRegImm.imm 368#64))))).val
theorem output2935_def : output2935 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1645 1641 (Flapjack.WordRegImm.imm 368#64)))) := by
  unfold output2935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2935_skip : Flapjack.WordAlloc.isSkip output2935 = false := by
  rw [output2935_def]
  kernel_rfl


def value1473 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1641 (Flapjack.WordLangAddr.addr 1637 18446744073709551008#64)))).val
theorem input2936_def : input2936 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1641 (Flapjack.WordLangAddr.addr 1637 18446744073709551008#64))) := by
  unfold input2936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1641 (Flapjack.WordLangAddr.addr 1637 18446744073709551008#64)))).val
theorem output2936_def : output2936 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1641 (Flapjack.WordLangAddr.addr 1637 18446744073709551008#64))) := by
  unfold output2936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2936_skip : Flapjack.WordAlloc.isSkip output2936 = false := by
  rw [output2936_def]
  kernel_rfl


def value1474 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1637 1633)).val
theorem input2937_def : input2937 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1637 1633) := by
  unfold input2937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1637 1633)).val
theorem output2937_def : output2937 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1637 1633) := by
  unfold output2937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2937_skip : Flapjack.WordAlloc.isSkip output2937 = false := by
  rw [output2937_def]
  kernel_rfl


def value1475 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1633 1629 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2938_def : input2938 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1633 1629 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1633 1629 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2938_def : output2938 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1633 1629 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2938_skip : Flapjack.WordAlloc.isSkip output2938 = false := by
  rw [output2938_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1629 Flapjack.WordStore.heapLength)).val
theorem input2939_def : input2939 = (Flapjack.WordLangProgHOL.get 1629 Flapjack.WordStore.heapLength) := by
  unfold input2939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1629 Flapjack.WordStore.heapLength)).val
theorem output2939_def : output2939 = (Flapjack.WordLangProgHOL.get 1629 Flapjack.WordStore.heapLength) := by
  unfold output2939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2939_skip : Flapjack.WordAlloc.isSkip output2939 = false := by
  rw [output2939_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2939 input2938)).val
theorem input2940_def : input2940 = (.seq input2939 input2938) := by
  unfold input2940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2939 output2938)).val
theorem output2940_def : output2940 = (.seq output2939 output2938) := by
  unfold output2940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2940_skip : Flapjack.WordAlloc.isSkip output2940 = false := by
  rw [output2940_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2940 input2937)).val
theorem input2941_def : input2941 = (.seq input2940 input2937) := by
  unfold input2941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2940 output2937)).val
theorem output2941_def : output2941 = (.seq output2940 output2937) := by
  unfold output2941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2941_skip : Flapjack.WordAlloc.isSkip output2941 = false := by
  rw [output2941_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2941 input2936)).val
theorem input2942_def : input2942 = (.seq input2941 input2936) := by
  unfold input2942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2941 output2936)).val
theorem output2942_def : output2942 = (.seq output2941 output2936) := by
  unfold output2942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2942_skip : Flapjack.WordAlloc.isSkip output2942 = false := by
  rw [output2942_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2942 input2935)).val
theorem input2943_def : input2943 = (.seq input2942 input2935) := by
  unfold input2943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2942 output2935)).val
theorem output2943_def : output2943 = (.seq output2942 output2935) := by
  unfold output2943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2943_skip : Flapjack.WordAlloc.isSkip output2943 = false := by
  rw [output2943_def]
  kernel_rfl


def value1476 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1621 (Flapjack.WordLangAddr.addr 1625 0#64)))).val
theorem input2944_def : input2944 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1621 (Flapjack.WordLangAddr.addr 1625 0#64))) := by
  unfold input2944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1621 (Flapjack.WordLangAddr.addr 1625 0#64)))).val
theorem output2944_def : output2944 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1621 (Flapjack.WordLangAddr.addr 1625 0#64))) := by
  unfold output2944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2944_skip : Flapjack.WordAlloc.isSkip output2944 = false := by
  rw [output2944_def]
  kernel_rfl


def value1477 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1625, 1613)])).val
theorem input2945_def : input2945 = (Flapjack.WordLangProgHOL.move 0 [(1625, 1613)]) := by
  unfold input2945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1625, 1613)])).val
theorem output2945_def : output2945 = (Flapjack.WordLangProgHOL.move 0 [(1625, 1613)]) := by
  unfold output2945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2945_skip : Flapjack.WordAlloc.isSkip output2945 = false := by
  rw [output2945_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2945 input2944)).val
theorem input2946_def : input2946 = (.seq input2945 input2944) := by
  unfold input2946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2945 output2944)).val
theorem output2946_def : output2946 = (.seq output2945 output2944) := by
  unfold output2946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2946_skip : Flapjack.WordAlloc.isSkip output2946 = false := by
  rw [output2946_def]
  kernel_rfl


def value1478 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1621 601#64))).val
theorem input2947_def : input2947 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1621 601#64)) := by
  unfold input2947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1621 601#64))).val
theorem output2947_def : output2947 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1621 601#64)) := by
  unfold output2947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2947_skip : Flapjack.WordAlloc.isSkip output2947 = false := by
  rw [output2947_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1617 601#64))).val
theorem input2948_def : input2948 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1617 601#64)) := by
  unfold input2948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2948_def : output2948 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2948_skip : Flapjack.WordAlloc.isSkip output2948 = true := by
  rw [output2948_def]
  kernel_rfl


def value1479 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1613 1609 (Flapjack.WordRegImm.imm 360#64))))).val
theorem input2949_def : input2949 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1613 1609 (Flapjack.WordRegImm.imm 360#64)))) := by
  unfold input2949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1613 1609 (Flapjack.WordRegImm.imm 360#64))))).val
theorem output2949_def : output2949 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1613 1609 (Flapjack.WordRegImm.imm 360#64)))) := by
  unfold output2949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2949_skip : Flapjack.WordAlloc.isSkip output2949 = false := by
  rw [output2949_def]
  kernel_rfl


def value1480 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1609 (Flapjack.WordLangAddr.addr 1605 18446744073709551008#64)))).val
theorem input2950_def : input2950 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1609 (Flapjack.WordLangAddr.addr 1605 18446744073709551008#64))) := by
  unfold input2950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1609 (Flapjack.WordLangAddr.addr 1605 18446744073709551008#64)))).val
theorem output2950_def : output2950 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1609 (Flapjack.WordLangAddr.addr 1605 18446744073709551008#64))) := by
  unfold output2950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2950_skip : Flapjack.WordAlloc.isSkip output2950 = false := by
  rw [output2950_def]
  kernel_rfl


def value1481 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1605 1601)).val
theorem input2951_def : input2951 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1605 1601) := by
  unfold input2951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1605 1601)).val
theorem output2951_def : output2951 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1605 1601) := by
  unfold output2951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2951_skip : Flapjack.WordAlloc.isSkip output2951 = false := by
  rw [output2951_def]
  kernel_rfl


def value1482 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1601 1597 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2952_def : input2952 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1601 1597 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1601 1597 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2952_def : output2952 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1601 1597 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2952_skip : Flapjack.WordAlloc.isSkip output2952 = false := by
  rw [output2952_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1597 Flapjack.WordStore.heapLength)).val
theorem input2953_def : input2953 = (Flapjack.WordLangProgHOL.get 1597 Flapjack.WordStore.heapLength) := by
  unfold input2953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1597 Flapjack.WordStore.heapLength)).val
theorem output2953_def : output2953 = (Flapjack.WordLangProgHOL.get 1597 Flapjack.WordStore.heapLength) := by
  unfold output2953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2953_skip : Flapjack.WordAlloc.isSkip output2953 = false := by
  rw [output2953_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2953 input2952)).val
theorem input2954_def : input2954 = (.seq input2953 input2952) := by
  unfold input2954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2953 output2952)).val
theorem output2954_def : output2954 = (.seq output2953 output2952) := by
  unfold output2954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2954_skip : Flapjack.WordAlloc.isSkip output2954 = false := by
  rw [output2954_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2954 input2951)).val
theorem input2955_def : input2955 = (.seq input2954 input2951) := by
  unfold input2955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2954 output2951)).val
theorem output2955_def : output2955 = (.seq output2954 output2951) := by
  unfold output2955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2955_skip : Flapjack.WordAlloc.isSkip output2955 = false := by
  rw [output2955_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2955 input2950)).val
theorem input2956_def : input2956 = (.seq input2955 input2950) := by
  unfold input2956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2955 output2950)).val
theorem output2956_def : output2956 = (.seq output2955 output2950) := by
  unfold output2956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2956_skip : Flapjack.WordAlloc.isSkip output2956 = false := by
  rw [output2956_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2956 input2949)).val
theorem input2957_def : input2957 = (.seq input2956 input2949) := by
  unfold input2957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2956 output2949)).val
theorem output2957_def : output2957 = (.seq output2956 output2949) := by
  unfold output2957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2957_skip : Flapjack.WordAlloc.isSkip output2957 = false := by
  rw [output2957_def]
  kernel_rfl


def value1483 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1589 (Flapjack.WordLangAddr.addr 1593 0#64)))).val
theorem input2958_def : input2958 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1589 (Flapjack.WordLangAddr.addr 1593 0#64))) := by
  unfold input2958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1589 (Flapjack.WordLangAddr.addr 1593 0#64)))).val
theorem output2958_def : output2958 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1589 (Flapjack.WordLangAddr.addr 1593 0#64))) := by
  unfold output2958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2958_skip : Flapjack.WordAlloc.isSkip output2958 = false := by
  rw [output2958_def]
  kernel_rfl


def value1484 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1593, 1581)])).val
theorem input2959_def : input2959 = (Flapjack.WordLangProgHOL.move 0 [(1593, 1581)]) := by
  unfold input2959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1593, 1581)])).val
theorem output2959_def : output2959 = (Flapjack.WordLangProgHOL.move 0 [(1593, 1581)]) := by
  unfold output2959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2959_skip : Flapjack.WordAlloc.isSkip output2959 = false := by
  rw [output2959_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2959 input2958)).val
theorem input2960_def : input2960 = (.seq input2959 input2958) := by
  unfold input2960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2959 output2958)).val
theorem output2960_def : output2960 = (.seq output2959 output2958) := by
  unfold output2960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2960_skip : Flapjack.WordAlloc.isSkip output2960 = false := by
  rw [output2960_def]
  kernel_rfl


def value1485 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1589 603#64))).val
theorem input2961_def : input2961 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1589 603#64)) := by
  unfold input2961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1589 603#64))).val
theorem output2961_def : output2961 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1589 603#64)) := by
  unfold output2961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2961_skip : Flapjack.WordAlloc.isSkip output2961 = false := by
  rw [output2961_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1585 603#64))).val
theorem input2962_def : input2962 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1585 603#64)) := by
  unfold input2962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2962_def : output2962 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2962_skip : Flapjack.WordAlloc.isSkip output2962 = true := by
  rw [output2962_def]
  kernel_rfl


def value1486 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1581 1577 (Flapjack.WordRegImm.imm 352#64))))).val
theorem input2963_def : input2963 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1581 1577 (Flapjack.WordRegImm.imm 352#64)))) := by
  unfold input2963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1581 1577 (Flapjack.WordRegImm.imm 352#64))))).val
theorem output2963_def : output2963 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1581 1577 (Flapjack.WordRegImm.imm 352#64)))) := by
  unfold output2963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2963_skip : Flapjack.WordAlloc.isSkip output2963 = false := by
  rw [output2963_def]
  kernel_rfl


def value1487 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1577 (Flapjack.WordLangAddr.addr 1573 18446744073709551008#64)))).val
theorem input2964_def : input2964 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1577 (Flapjack.WordLangAddr.addr 1573 18446744073709551008#64))) := by
  unfold input2964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1577 (Flapjack.WordLangAddr.addr 1573 18446744073709551008#64)))).val
theorem output2964_def : output2964 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1577 (Flapjack.WordLangAddr.addr 1573 18446744073709551008#64))) := by
  unfold output2964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2964_skip : Flapjack.WordAlloc.isSkip output2964 = false := by
  rw [output2964_def]
  kernel_rfl


def value1488 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1573 1569)).val
theorem input2965_def : input2965 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1573 1569) := by
  unfold input2965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1573 1569)).val
theorem output2965_def : output2965 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1573 1569) := by
  unfold output2965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2965_skip : Flapjack.WordAlloc.isSkip output2965 = false := by
  rw [output2965_def]
  kernel_rfl


def value1489 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1569 1565 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2966_def : input2966 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1569 1565 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1569 1565 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2966_def : output2966 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1569 1565 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2966_skip : Flapjack.WordAlloc.isSkip output2966 = false := by
  rw [output2966_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1565 Flapjack.WordStore.heapLength)).val
theorem input2967_def : input2967 = (Flapjack.WordLangProgHOL.get 1565 Flapjack.WordStore.heapLength) := by
  unfold input2967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1565 Flapjack.WordStore.heapLength)).val
theorem output2967_def : output2967 = (Flapjack.WordLangProgHOL.get 1565 Flapjack.WordStore.heapLength) := by
  unfold output2967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2967_skip : Flapjack.WordAlloc.isSkip output2967 = false := by
  rw [output2967_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2967 input2966)).val
theorem input2968_def : input2968 = (.seq input2967 input2966) := by
  unfold input2968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2967 output2966)).val
theorem output2968_def : output2968 = (.seq output2967 output2966) := by
  unfold output2968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2968_skip : Flapjack.WordAlloc.isSkip output2968 = false := by
  rw [output2968_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2968 input2965)).val
theorem input2969_def : input2969 = (.seq input2968 input2965) := by
  unfold input2969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2968 output2965)).val
theorem output2969_def : output2969 = (.seq output2968 output2965) := by
  unfold output2969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2969_skip : Flapjack.WordAlloc.isSkip output2969 = false := by
  rw [output2969_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2969 input2964)).val
theorem input2970_def : input2970 = (.seq input2969 input2964) := by
  unfold input2970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2969 output2964)).val
theorem output2970_def : output2970 = (.seq output2969 output2964) := by
  unfold output2970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2970_skip : Flapjack.WordAlloc.isSkip output2970 = false := by
  rw [output2970_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2970 input2963)).val
theorem input2971_def : input2971 = (.seq input2970 input2963) := by
  unfold input2971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2970 output2963)).val
theorem output2971_def : output2971 = (.seq output2970 output2963) := by
  unfold output2971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2971_skip : Flapjack.WordAlloc.isSkip output2971 = false := by
  rw [output2971_def]
  kernel_rfl


def value1490 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1557 (Flapjack.WordLangAddr.addr 1561 0#64)))).val
theorem input2972_def : input2972 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1557 (Flapjack.WordLangAddr.addr 1561 0#64))) := by
  unfold input2972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1557 (Flapjack.WordLangAddr.addr 1561 0#64)))).val
theorem output2972_def : output2972 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1557 (Flapjack.WordLangAddr.addr 1561 0#64))) := by
  unfold output2972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2972_skip : Flapjack.WordAlloc.isSkip output2972 = false := by
  rw [output2972_def]
  kernel_rfl


def value1491 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1561, 1549)])).val
theorem input2973_def : input2973 = (Flapjack.WordLangProgHOL.move 0 [(1561, 1549)]) := by
  unfold input2973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1561, 1549)])).val
theorem output2973_def : output2973 = (Flapjack.WordLangProgHOL.move 0 [(1561, 1549)]) := by
  unfold output2973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2973_skip : Flapjack.WordAlloc.isSkip output2973 = false := by
  rw [output2973_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2973 input2972)).val
theorem input2974_def : input2974 = (.seq input2973 input2972) := by
  unfold input2974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2973 output2972)).val
theorem output2974_def : output2974 = (.seq output2973 output2972) := by
  unfold output2974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2974_skip : Flapjack.WordAlloc.isSkip output2974 = false := by
  rw [output2974_def]
  kernel_rfl


def value1492 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1557 604#64))).val
theorem input2975_def : input2975 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1557 604#64)) := by
  unfold input2975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1557 604#64))).val
theorem output2975_def : output2975 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1557 604#64)) := by
  unfold output2975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2975_skip : Flapjack.WordAlloc.isSkip output2975 = false := by
  rw [output2975_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1553 604#64))).val
theorem input2976_def : input2976 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1553 604#64)) := by
  unfold input2976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2976_def : output2976 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2976_skip : Flapjack.WordAlloc.isSkip output2976 = true := by
  rw [output2976_def]
  kernel_rfl


def value1493 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1549 1545 (Flapjack.WordRegImm.imm 344#64))))).val
theorem input2977_def : input2977 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1549 1545 (Flapjack.WordRegImm.imm 344#64)))) := by
  unfold input2977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1549 1545 (Flapjack.WordRegImm.imm 344#64))))).val
theorem output2977_def : output2977 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1549 1545 (Flapjack.WordRegImm.imm 344#64)))) := by
  unfold output2977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2977_skip : Flapjack.WordAlloc.isSkip output2977 = false := by
  rw [output2977_def]
  kernel_rfl


def value1494 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1545 (Flapjack.WordLangAddr.addr 1541 18446744073709551008#64)))).val
theorem input2978_def : input2978 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1545 (Flapjack.WordLangAddr.addr 1541 18446744073709551008#64))) := by
  unfold input2978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1545 (Flapjack.WordLangAddr.addr 1541 18446744073709551008#64)))).val
theorem output2978_def : output2978 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1545 (Flapjack.WordLangAddr.addr 1541 18446744073709551008#64))) := by
  unfold output2978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2978_skip : Flapjack.WordAlloc.isSkip output2978 = false := by
  rw [output2978_def]
  kernel_rfl


def value1495 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1541 1537)).val
theorem input2979_def : input2979 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1541 1537) := by
  unfold input2979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1541 1537)).val
theorem output2979_def : output2979 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1541 1537) := by
  unfold output2979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2979_skip : Flapjack.WordAlloc.isSkip output2979 = false := by
  rw [output2979_def]
  kernel_rfl


def value1496 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1537 1533 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2980_def : input2980 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1537 1533 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1537 1533 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2980_def : output2980 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1537 1533 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2980_skip : Flapjack.WordAlloc.isSkip output2980 = false := by
  rw [output2980_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1533 Flapjack.WordStore.heapLength)).val
theorem input2981_def : input2981 = (Flapjack.WordLangProgHOL.get 1533 Flapjack.WordStore.heapLength) := by
  unfold input2981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1533 Flapjack.WordStore.heapLength)).val
theorem output2981_def : output2981 = (Flapjack.WordLangProgHOL.get 1533 Flapjack.WordStore.heapLength) := by
  unfold output2981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2981_skip : Flapjack.WordAlloc.isSkip output2981 = false := by
  rw [output2981_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2981 input2980)).val
theorem input2982_def : input2982 = (.seq input2981 input2980) := by
  unfold input2982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2981 output2980)).val
theorem output2982_def : output2982 = (.seq output2981 output2980) := by
  unfold output2982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2982_skip : Flapjack.WordAlloc.isSkip output2982 = false := by
  rw [output2982_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2982 input2979)).val
theorem input2983_def : input2983 = (.seq input2982 input2979) := by
  unfold input2983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2982 output2979)).val
theorem output2983_def : output2983 = (.seq output2982 output2979) := by
  unfold output2983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2983_skip : Flapjack.WordAlloc.isSkip output2983 = false := by
  rw [output2983_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2983 input2978)).val
theorem input2984_def : input2984 = (.seq input2983 input2978) := by
  unfold input2984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2983 output2978)).val
theorem output2984_def : output2984 = (.seq output2983 output2978) := by
  unfold output2984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2984_skip : Flapjack.WordAlloc.isSkip output2984 = false := by
  rw [output2984_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2984 input2977)).val
theorem input2985_def : input2985 = (.seq input2984 input2977) := by
  unfold input2985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2984 output2977)).val
theorem output2985_def : output2985 = (.seq output2984 output2977) := by
  unfold output2985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2985_skip : Flapjack.WordAlloc.isSkip output2985 = false := by
  rw [output2985_def]
  kernel_rfl


def value1497 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1525 (Flapjack.WordLangAddr.addr 1529 0#64)))).val
theorem input2986_def : input2986 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1525 (Flapjack.WordLangAddr.addr 1529 0#64))) := by
  unfold input2986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1525 (Flapjack.WordLangAddr.addr 1529 0#64)))).val
theorem output2986_def : output2986 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1525 (Flapjack.WordLangAddr.addr 1529 0#64))) := by
  unfold output2986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2986_skip : Flapjack.WordAlloc.isSkip output2986 = false := by
  rw [output2986_def]
  kernel_rfl


def value1498 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1529, 1517)])).val
theorem input2987_def : input2987 = (Flapjack.WordLangProgHOL.move 0 [(1529, 1517)]) := by
  unfold input2987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1529, 1517)])).val
theorem output2987_def : output2987 = (Flapjack.WordLangProgHOL.move 0 [(1529, 1517)]) := by
  unfold output2987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2987_skip : Flapjack.WordAlloc.isSkip output2987 = false := by
  rw [output2987_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2987 input2986)).val
theorem input2988_def : input2988 = (.seq input2987 input2986) := by
  unfold input2988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2987 output2986)).val
theorem output2988_def : output2988 = (.seq output2987 output2986) := by
  unfold output2988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2988_skip : Flapjack.WordAlloc.isSkip output2988 = false := by
  rw [output2988_def]
  kernel_rfl


def value1499 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1525 606#64))).val
theorem input2989_def : input2989 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1525 606#64)) := by
  unfold input2989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1525 606#64))).val
theorem output2989_def : output2989 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1525 606#64)) := by
  unfold output2989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2989_skip : Flapjack.WordAlloc.isSkip output2989 = false := by
  rw [output2989_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1521 606#64))).val
theorem input2990_def : input2990 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1521 606#64)) := by
  unfold input2990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2990_def : output2990 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2990_skip : Flapjack.WordAlloc.isSkip output2990 = true := by
  rw [output2990_def]
  kernel_rfl


def value1500 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1517 1513 (Flapjack.WordRegImm.imm 336#64))))).val
theorem input2991_def : input2991 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1517 1513 (Flapjack.WordRegImm.imm 336#64)))) := by
  unfold input2991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1517 1513 (Flapjack.WordRegImm.imm 336#64))))).val
theorem output2991_def : output2991 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1517 1513 (Flapjack.WordRegImm.imm 336#64)))) := by
  unfold output2991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2991_skip : Flapjack.WordAlloc.isSkip output2991 = false := by
  rw [output2991_def]
  kernel_rfl


def value1501 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1513 (Flapjack.WordLangAddr.addr 1509 18446744073709551008#64)))).val
theorem input2992_def : input2992 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1513 (Flapjack.WordLangAddr.addr 1509 18446744073709551008#64))) := by
  unfold input2992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1513 (Flapjack.WordLangAddr.addr 1509 18446744073709551008#64)))).val
theorem output2992_def : output2992 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1513 (Flapjack.WordLangAddr.addr 1509 18446744073709551008#64))) := by
  unfold output2992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2992_skip : Flapjack.WordAlloc.isSkip output2992 = false := by
  rw [output2992_def]
  kernel_rfl


def value1502 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1509 1505)).val
theorem input2993_def : input2993 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1509 1505) := by
  unfold input2993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1509 1505)).val
theorem output2993_def : output2993 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1509 1505) := by
  unfold output2993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2993_skip : Flapjack.WordAlloc.isSkip output2993 = false := by
  rw [output2993_def]
  kernel_rfl


def value1503 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1505 1501 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2994_def : input2994 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1505 1501 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1505 1501 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2994_def : output2994 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1505 1501 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2994_skip : Flapjack.WordAlloc.isSkip output2994 = false := by
  rw [output2994_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1501 Flapjack.WordStore.heapLength)).val
theorem input2995_def : input2995 = (Flapjack.WordLangProgHOL.get 1501 Flapjack.WordStore.heapLength) := by
  unfold input2995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1501 Flapjack.WordStore.heapLength)).val
theorem output2995_def : output2995 = (Flapjack.WordLangProgHOL.get 1501 Flapjack.WordStore.heapLength) := by
  unfold output2995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2995_skip : Flapjack.WordAlloc.isSkip output2995 = false := by
  rw [output2995_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2995 input2994)).val
theorem input2996_def : input2996 = (.seq input2995 input2994) := by
  unfold input2996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2995 output2994)).val
theorem output2996_def : output2996 = (.seq output2995 output2994) := by
  unfold output2996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2996_skip : Flapjack.WordAlloc.isSkip output2996 = false := by
  rw [output2996_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2996 input2993)).val
theorem input2997_def : input2997 = (.seq input2996 input2993) := by
  unfold input2997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2996 output2993)).val
theorem output2997_def : output2997 = (.seq output2996 output2993) := by
  unfold output2997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2997_skip : Flapjack.WordAlloc.isSkip output2997 = false := by
  rw [output2997_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2997 input2992)).val
theorem input2998_def : input2998 = (.seq input2997 input2992) := by
  unfold input2998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2997 output2992)).val
theorem output2998_def : output2998 = (.seq output2997 output2992) := by
  unfold output2998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2998_skip : Flapjack.WordAlloc.isSkip output2998 = false := by
  rw [output2998_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2998 input2991)).val
theorem input2999_def : input2999 = (.seq input2998 input2991) := by
  unfold input2999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2998 output2991)).val
theorem output2999_def : output2999 = (.seq output2998 output2991) := by
  unfold output2999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2999_skip : Flapjack.WordAlloc.isSkip output2999 = false := by
  rw [output2999_def]
  kernel_rfl


def value1504 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1493 (Flapjack.WordLangAddr.addr 1497 0#64)))).val
theorem input3000_def : input3000 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1493 (Flapjack.WordLangAddr.addr 1497 0#64))) := by
  unfold input3000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1493 (Flapjack.WordLangAddr.addr 1497 0#64)))).val
theorem output3000_def : output3000 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1493 (Flapjack.WordLangAddr.addr 1497 0#64))) := by
  unfold output3000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3000_skip : Flapjack.WordAlloc.isSkip output3000 = false := by
  rw [output3000_def]
  kernel_rfl


def value1505 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1497, 1485)])).val
theorem input3001_def : input3001 = (Flapjack.WordLangProgHOL.move 0 [(1497, 1485)]) := by
  unfold input3001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1497, 1485)])).val
theorem output3001_def : output3001 = (Flapjack.WordLangProgHOL.move 0 [(1497, 1485)]) := by
  unfold output3001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3001_skip : Flapjack.WordAlloc.isSkip output3001 = false := by
  rw [output3001_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3001 input3000)).val
theorem input3002_def : input3002 = (.seq input3001 input3000) := by
  unfold input3002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3001 output3000)).val
theorem output3002_def : output3002 = (.seq output3001 output3000) := by
  unfold output3002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3002_skip : Flapjack.WordAlloc.isSkip output3002 = false := by
  rw [output3002_def]
  kernel_rfl


def value1506 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1493 608#64))).val
theorem input3003_def : input3003 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1493 608#64)) := by
  unfold input3003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1493 608#64))).val
theorem output3003_def : output3003 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1493 608#64)) := by
  unfold output3003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3003_skip : Flapjack.WordAlloc.isSkip output3003 = false := by
  rw [output3003_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1489 608#64))).val
theorem input3004_def : input3004 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1489 608#64)) := by
  unfold input3004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3004_def : output3004 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3004_skip : Flapjack.WordAlloc.isSkip output3004 = true := by
  rw [output3004_def]
  kernel_rfl


def value1507 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1485 1481 (Flapjack.WordRegImm.imm 328#64))))).val
theorem input3005_def : input3005 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1485 1481 (Flapjack.WordRegImm.imm 328#64)))) := by
  unfold input3005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1485 1481 (Flapjack.WordRegImm.imm 328#64))))).val
theorem output3005_def : output3005 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1485 1481 (Flapjack.WordRegImm.imm 328#64)))) := by
  unfold output3005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3005_skip : Flapjack.WordAlloc.isSkip output3005 = false := by
  rw [output3005_def]
  kernel_rfl


def value1508 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1481 (Flapjack.WordLangAddr.addr 1477 18446744073709551008#64)))).val
theorem input3006_def : input3006 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1481 (Flapjack.WordLangAddr.addr 1477 18446744073709551008#64))) := by
  unfold input3006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1481 (Flapjack.WordLangAddr.addr 1477 18446744073709551008#64)))).val
theorem output3006_def : output3006 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1481 (Flapjack.WordLangAddr.addr 1477 18446744073709551008#64))) := by
  unfold output3006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3006_skip : Flapjack.WordAlloc.isSkip output3006 = false := by
  rw [output3006_def]
  kernel_rfl


def value1509 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1477 1473)).val
theorem input3007_def : input3007 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1477 1473) := by
  unfold input3007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1477 1473)).val
theorem output3007_def : output3007 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1477 1473) := by
  unfold output3007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3007_skip : Flapjack.WordAlloc.isSkip output3007 = false := by
  rw [output3007_def]
  kernel_rfl


def value1510 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1473 1469 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3008_def : input3008 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1473 1469 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1473 1469 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3008_def : output3008 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1473 1469 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3008_skip : Flapjack.WordAlloc.isSkip output3008 = false := by
  rw [output3008_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1469 Flapjack.WordStore.heapLength)).val
theorem input3009_def : input3009 = (Flapjack.WordLangProgHOL.get 1469 Flapjack.WordStore.heapLength) := by
  unfold input3009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1469 Flapjack.WordStore.heapLength)).val
theorem output3009_def : output3009 = (Flapjack.WordLangProgHOL.get 1469 Flapjack.WordStore.heapLength) := by
  unfold output3009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3009_skip : Flapjack.WordAlloc.isSkip output3009 = false := by
  rw [output3009_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3009 input3008)).val
theorem input3010_def : input3010 = (.seq input3009 input3008) := by
  unfold input3010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3009 output3008)).val
theorem output3010_def : output3010 = (.seq output3009 output3008) := by
  unfold output3010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3010_skip : Flapjack.WordAlloc.isSkip output3010 = false := by
  rw [output3010_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3010 input3007)).val
theorem input3011_def : input3011 = (.seq input3010 input3007) := by
  unfold input3011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3010 output3007)).val
theorem output3011_def : output3011 = (.seq output3010 output3007) := by
  unfold output3011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3011_skip : Flapjack.WordAlloc.isSkip output3011 = false := by
  rw [output3011_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3011 input3006)).val
theorem input3012_def : input3012 = (.seq input3011 input3006) := by
  unfold input3012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3011 output3006)).val
theorem output3012_def : output3012 = (.seq output3011 output3006) := by
  unfold output3012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3012_skip : Flapjack.WordAlloc.isSkip output3012 = false := by
  rw [output3012_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3012 input3005)).val
theorem input3013_def : input3013 = (.seq input3012 input3005) := by
  unfold input3013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3012 output3005)).val
theorem output3013_def : output3013 = (.seq output3012 output3005) := by
  unfold output3013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3013_skip : Flapjack.WordAlloc.isSkip output3013 = false := by
  rw [output3013_def]
  kernel_rfl


def value1511 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1461 (Flapjack.WordLangAddr.addr 1465 0#64)))).val
theorem input3014_def : input3014 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1461 (Flapjack.WordLangAddr.addr 1465 0#64))) := by
  unfold input3014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1461 (Flapjack.WordLangAddr.addr 1465 0#64)))).val
theorem output3014_def : output3014 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1461 (Flapjack.WordLangAddr.addr 1465 0#64))) := by
  unfold output3014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3014_skip : Flapjack.WordAlloc.isSkip output3014 = false := by
  rw [output3014_def]
  kernel_rfl


def value1512 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1465, 1453)])).val
theorem input3015_def : input3015 = (Flapjack.WordLangProgHOL.move 0 [(1465, 1453)]) := by
  unfold input3015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1465, 1453)])).val
theorem output3015_def : output3015 = (Flapjack.WordLangProgHOL.move 0 [(1465, 1453)]) := by
  unfold output3015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3015_skip : Flapjack.WordAlloc.isSkip output3015 = false := by
  rw [output3015_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3015 input3014)).val
theorem input3016_def : input3016 = (.seq input3015 input3014) := by
  unfold input3016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3015 output3014)).val
theorem output3016_def : output3016 = (.seq output3015 output3014) := by
  unfold output3016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3016_skip : Flapjack.WordAlloc.isSkip output3016 = false := by
  rw [output3016_def]
  kernel_rfl


def value1513 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1461 609#64))).val
theorem input3017_def : input3017 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1461 609#64)) := by
  unfold input3017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1461 609#64))).val
theorem output3017_def : output3017 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1461 609#64)) := by
  unfold output3017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3017_skip : Flapjack.WordAlloc.isSkip output3017 = false := by
  rw [output3017_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1457 609#64))).val
theorem input3018_def : input3018 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1457 609#64)) := by
  unfold input3018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3018_def : output3018 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3018_skip : Flapjack.WordAlloc.isSkip output3018 = true := by
  rw [output3018_def]
  kernel_rfl


def value1514 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1453 1449 (Flapjack.WordRegImm.imm 320#64))))).val
theorem input3019_def : input3019 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1453 1449 (Flapjack.WordRegImm.imm 320#64)))) := by
  unfold input3019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1453 1449 (Flapjack.WordRegImm.imm 320#64))))).val
theorem output3019_def : output3019 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1453 1449 (Flapjack.WordRegImm.imm 320#64)))) := by
  unfold output3019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3019_skip : Flapjack.WordAlloc.isSkip output3019 = false := by
  rw [output3019_def]
  kernel_rfl


def value1515 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1449 (Flapjack.WordLangAddr.addr 1445 18446744073709551008#64)))).val
theorem input3020_def : input3020 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1449 (Flapjack.WordLangAddr.addr 1445 18446744073709551008#64))) := by
  unfold input3020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1449 (Flapjack.WordLangAddr.addr 1445 18446744073709551008#64)))).val
theorem output3020_def : output3020 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1449 (Flapjack.WordLangAddr.addr 1445 18446744073709551008#64))) := by
  unfold output3020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3020_skip : Flapjack.WordAlloc.isSkip output3020 = false := by
  rw [output3020_def]
  kernel_rfl


def value1516 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1445 1441)).val
theorem input3021_def : input3021 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1445 1441) := by
  unfold input3021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1445 1441)).val
theorem output3021_def : output3021 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1445 1441) := by
  unfold output3021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3021_skip : Flapjack.WordAlloc.isSkip output3021 = false := by
  rw [output3021_def]
  kernel_rfl


def value1517 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1441 1437 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3022_def : input3022 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1441 1437 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1441 1437 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3022_def : output3022 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1441 1437 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3022_skip : Flapjack.WordAlloc.isSkip output3022 = false := by
  rw [output3022_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1437 Flapjack.WordStore.heapLength)).val
theorem input3023_def : input3023 = (Flapjack.WordLangProgHOL.get 1437 Flapjack.WordStore.heapLength) := by
  unfold input3023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1437 Flapjack.WordStore.heapLength)).val
theorem output3023_def : output3023 = (Flapjack.WordLangProgHOL.get 1437 Flapjack.WordStore.heapLength) := by
  unfold output3023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3023_skip : Flapjack.WordAlloc.isSkip output3023 = false := by
  rw [output3023_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3023 input3022)).val
theorem input3024_def : input3024 = (.seq input3023 input3022) := by
  unfold input3024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3023 output3022)).val
theorem output3024_def : output3024 = (.seq output3023 output3022) := by
  unfold output3024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3024_skip : Flapjack.WordAlloc.isSkip output3024 = false := by
  rw [output3024_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3024 input3021)).val
theorem input3025_def : input3025 = (.seq input3024 input3021) := by
  unfold input3025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3024 output3021)).val
theorem output3025_def : output3025 = (.seq output3024 output3021) := by
  unfold output3025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3025_skip : Flapjack.WordAlloc.isSkip output3025 = false := by
  rw [output3025_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3025 input3020)).val
theorem input3026_def : input3026 = (.seq input3025 input3020) := by
  unfold input3026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3025 output3020)).val
theorem output3026_def : output3026 = (.seq output3025 output3020) := by
  unfold output3026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3026_skip : Flapjack.WordAlloc.isSkip output3026 = false := by
  rw [output3026_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3026 input3019)).val
theorem input3027_def : input3027 = (.seq input3026 input3019) := by
  unfold input3027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3026 output3019)).val
theorem output3027_def : output3027 = (.seq output3026 output3019) := by
  unfold output3027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3027_skip : Flapjack.WordAlloc.isSkip output3027 = false := by
  rw [output3027_def]
  kernel_rfl


def value1518 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1429 (Flapjack.WordLangAddr.addr 1433 0#64)))).val
theorem input3028_def : input3028 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1429 (Flapjack.WordLangAddr.addr 1433 0#64))) := by
  unfold input3028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1429 (Flapjack.WordLangAddr.addr 1433 0#64)))).val
theorem output3028_def : output3028 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1429 (Flapjack.WordLangAddr.addr 1433 0#64))) := by
  unfold output3028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3028_skip : Flapjack.WordAlloc.isSkip output3028 = false := by
  rw [output3028_def]
  kernel_rfl


def value1519 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1433, 1421)])).val
theorem input3029_def : input3029 = (Flapjack.WordLangProgHOL.move 0 [(1433, 1421)]) := by
  unfold input3029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1433, 1421)])).val
theorem output3029_def : output3029 = (Flapjack.WordLangProgHOL.move 0 [(1433, 1421)]) := by
  unfold output3029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3029_skip : Flapjack.WordAlloc.isSkip output3029 = false := by
  rw [output3029_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3029 input3028)).val
theorem input3030_def : input3030 = (.seq input3029 input3028) := by
  unfold input3030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3029 output3028)).val
theorem output3030_def : output3030 = (.seq output3029 output3028) := by
  unfold output3030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3030_skip : Flapjack.WordAlloc.isSkip output3030 = false := by
  rw [output3030_def]
  kernel_rfl


def value1520 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1429 611#64))).val
theorem input3031_def : input3031 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1429 611#64)) := by
  unfold input3031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1429 611#64))).val
theorem output3031_def : output3031 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1429 611#64)) := by
  unfold output3031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3031_skip : Flapjack.WordAlloc.isSkip output3031 = false := by
  rw [output3031_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1425 611#64))).val
theorem input3032_def : input3032 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1425 611#64)) := by
  unfold input3032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3032_def : output3032 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3032_skip : Flapjack.WordAlloc.isSkip output3032 = true := by
  rw [output3032_def]
  kernel_rfl


def value1521 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1421 1417 (Flapjack.WordRegImm.imm 312#64))))).val
theorem input3033_def : input3033 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1421 1417 (Flapjack.WordRegImm.imm 312#64)))) := by
  unfold input3033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1421 1417 (Flapjack.WordRegImm.imm 312#64))))).val
theorem output3033_def : output3033 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1421 1417 (Flapjack.WordRegImm.imm 312#64)))) := by
  unfold output3033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3033_skip : Flapjack.WordAlloc.isSkip output3033 = false := by
  rw [output3033_def]
  kernel_rfl


def value1522 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1417 (Flapjack.WordLangAddr.addr 1413 18446744073709551008#64)))).val
theorem input3034_def : input3034 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1417 (Flapjack.WordLangAddr.addr 1413 18446744073709551008#64))) := by
  unfold input3034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1417 (Flapjack.WordLangAddr.addr 1413 18446744073709551008#64)))).val
theorem output3034_def : output3034 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1417 (Flapjack.WordLangAddr.addr 1413 18446744073709551008#64))) := by
  unfold output3034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3034_skip : Flapjack.WordAlloc.isSkip output3034 = false := by
  rw [output3034_def]
  kernel_rfl


def value1523 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1413 1409)).val
theorem input3035_def : input3035 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1413 1409) := by
  unfold input3035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1413 1409)).val
theorem output3035_def : output3035 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1413 1409) := by
  unfold output3035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3035_skip : Flapjack.WordAlloc.isSkip output3035 = false := by
  rw [output3035_def]
  kernel_rfl


def value1524 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1409 1405 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3036_def : input3036 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1409 1405 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1409 1405 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3036_def : output3036 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1409 1405 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3036_skip : Flapjack.WordAlloc.isSkip output3036 = false := by
  rw [output3036_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1405 Flapjack.WordStore.heapLength)).val
theorem input3037_def : input3037 = (Flapjack.WordLangProgHOL.get 1405 Flapjack.WordStore.heapLength) := by
  unfold input3037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1405 Flapjack.WordStore.heapLength)).val
theorem output3037_def : output3037 = (Flapjack.WordLangProgHOL.get 1405 Flapjack.WordStore.heapLength) := by
  unfold output3037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3037_skip : Flapjack.WordAlloc.isSkip output3037 = false := by
  rw [output3037_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3037 input3036)).val
theorem input3038_def : input3038 = (.seq input3037 input3036) := by
  unfold input3038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3037 output3036)).val
theorem output3038_def : output3038 = (.seq output3037 output3036) := by
  unfold output3038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3038_skip : Flapjack.WordAlloc.isSkip output3038 = false := by
  rw [output3038_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3038 input3035)).val
theorem input3039_def : input3039 = (.seq input3038 input3035) := by
  unfold input3039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3038 output3035)).val
theorem output3039_def : output3039 = (.seq output3038 output3035) := by
  unfold output3039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3039_skip : Flapjack.WordAlloc.isSkip output3039 = false := by
  rw [output3039_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3039 input3034)).val
theorem input3040_def : input3040 = (.seq input3039 input3034) := by
  unfold input3040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3039 output3034)).val
theorem output3040_def : output3040 = (.seq output3039 output3034) := by
  unfold output3040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3040_skip : Flapjack.WordAlloc.isSkip output3040 = false := by
  rw [output3040_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3040 input3033)).val
theorem input3041_def : input3041 = (.seq input3040 input3033) := by
  unfold input3041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3040 output3033)).val
theorem output3041_def : output3041 = (.seq output3040 output3033) := by
  unfold output3041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3041_skip : Flapjack.WordAlloc.isSkip output3041 = false := by
  rw [output3041_def]
  kernel_rfl


def value1525 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1397 (Flapjack.WordLangAddr.addr 1401 0#64)))).val
theorem input3042_def : input3042 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1397 (Flapjack.WordLangAddr.addr 1401 0#64))) := by
  unfold input3042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1397 (Flapjack.WordLangAddr.addr 1401 0#64)))).val
theorem output3042_def : output3042 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1397 (Flapjack.WordLangAddr.addr 1401 0#64))) := by
  unfold output3042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3042_skip : Flapjack.WordAlloc.isSkip output3042 = false := by
  rw [output3042_def]
  kernel_rfl


def value1526 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1401, 1389)])).val
theorem input3043_def : input3043 = (Flapjack.WordLangProgHOL.move 0 [(1401, 1389)]) := by
  unfold input3043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1401, 1389)])).val
theorem output3043_def : output3043 = (Flapjack.WordLangProgHOL.move 0 [(1401, 1389)]) := by
  unfold output3043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3043_skip : Flapjack.WordAlloc.isSkip output3043 = false := by
  rw [output3043_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3043 input3042)).val
theorem input3044_def : input3044 = (.seq input3043 input3042) := by
  unfold input3044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3043 output3042)).val
theorem output3044_def : output3044 = (.seq output3043 output3042) := by
  unfold output3044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3044_skip : Flapjack.WordAlloc.isSkip output3044 = false := by
  rw [output3044_def]
  kernel_rfl


def value1527 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1397 613#64))).val
theorem input3045_def : input3045 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1397 613#64)) := by
  unfold input3045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1397 613#64))).val
theorem output3045_def : output3045 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1397 613#64)) := by
  unfold output3045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3045_skip : Flapjack.WordAlloc.isSkip output3045 = false := by
  rw [output3045_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1393 613#64))).val
theorem input3046_def : input3046 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1393 613#64)) := by
  unfold input3046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3046_def : output3046 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3046_skip : Flapjack.WordAlloc.isSkip output3046 = true := by
  rw [output3046_def]
  kernel_rfl


def value1528 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1389 1385 (Flapjack.WordRegImm.imm 304#64))))).val
theorem input3047_def : input3047 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1389 1385 (Flapjack.WordRegImm.imm 304#64)))) := by
  unfold input3047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1389 1385 (Flapjack.WordRegImm.imm 304#64))))).val
theorem output3047_def : output3047 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1389 1385 (Flapjack.WordRegImm.imm 304#64)))) := by
  unfold output3047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3047_skip : Flapjack.WordAlloc.isSkip output3047 = false := by
  rw [output3047_def]
  kernel_rfl


def value1529 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1385 (Flapjack.WordLangAddr.addr 1381 18446744073709551008#64)))).val
theorem input3048_def : input3048 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1385 (Flapjack.WordLangAddr.addr 1381 18446744073709551008#64))) := by
  unfold input3048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1385 (Flapjack.WordLangAddr.addr 1381 18446744073709551008#64)))).val
theorem output3048_def : output3048 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1385 (Flapjack.WordLangAddr.addr 1381 18446744073709551008#64))) := by
  unfold output3048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3048_skip : Flapjack.WordAlloc.isSkip output3048 = false := by
  rw [output3048_def]
  kernel_rfl


def value1530 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1381 1377)).val
theorem input3049_def : input3049 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1381 1377) := by
  unfold input3049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1381 1377)).val
theorem output3049_def : output3049 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1381 1377) := by
  unfold output3049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3049_skip : Flapjack.WordAlloc.isSkip output3049 = false := by
  rw [output3049_def]
  kernel_rfl


def value1531 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1377 1373 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3050_def : input3050 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1377 1373 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1377 1373 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3050_def : output3050 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1377 1373 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3050_skip : Flapjack.WordAlloc.isSkip output3050 = false := by
  rw [output3050_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1373 Flapjack.WordStore.heapLength)).val
theorem input3051_def : input3051 = (Flapjack.WordLangProgHOL.get 1373 Flapjack.WordStore.heapLength) := by
  unfold input3051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1373 Flapjack.WordStore.heapLength)).val
theorem output3051_def : output3051 = (Flapjack.WordLangProgHOL.get 1373 Flapjack.WordStore.heapLength) := by
  unfold output3051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3051_skip : Flapjack.WordAlloc.isSkip output3051 = false := by
  rw [output3051_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3051 input3050)).val
theorem input3052_def : input3052 = (.seq input3051 input3050) := by
  unfold input3052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3051 output3050)).val
theorem output3052_def : output3052 = (.seq output3051 output3050) := by
  unfold output3052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3052_skip : Flapjack.WordAlloc.isSkip output3052 = false := by
  rw [output3052_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3052 input3049)).val
theorem input3053_def : input3053 = (.seq input3052 input3049) := by
  unfold input3053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3052 output3049)).val
theorem output3053_def : output3053 = (.seq output3052 output3049) := by
  unfold output3053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3053_skip : Flapjack.WordAlloc.isSkip output3053 = false := by
  rw [output3053_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3053 input3048)).val
theorem input3054_def : input3054 = (.seq input3053 input3048) := by
  unfold input3054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3053 output3048)).val
theorem output3054_def : output3054 = (.seq output3053 output3048) := by
  unfold output3054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3054_skip : Flapjack.WordAlloc.isSkip output3054 = false := by
  rw [output3054_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3054 input3047)).val
theorem input3055_def : input3055 = (.seq input3054 input3047) := by
  unfold input3055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3054 output3047)).val
theorem output3055_def : output3055 = (.seq output3054 output3047) := by
  unfold output3055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3055_skip : Flapjack.WordAlloc.isSkip output3055 = false := by
  rw [output3055_def]
  kernel_rfl


def value1532 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1365 (Flapjack.WordLangAddr.addr 1369 0#64)))).val
theorem input3056_def : input3056 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1365 (Flapjack.WordLangAddr.addr 1369 0#64))) := by
  unfold input3056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1365 (Flapjack.WordLangAddr.addr 1369 0#64)))).val
theorem output3056_def : output3056 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1365 (Flapjack.WordLangAddr.addr 1369 0#64))) := by
  unfold output3056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3056_skip : Flapjack.WordAlloc.isSkip output3056 = false := by
  rw [output3056_def]
  kernel_rfl


def value1533 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1369, 1357)])).val
theorem input3057_def : input3057 = (Flapjack.WordLangProgHOL.move 0 [(1369, 1357)]) := by
  unfold input3057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1369, 1357)])).val
theorem output3057_def : output3057 = (Flapjack.WordLangProgHOL.move 0 [(1369, 1357)]) := by
  unfold output3057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3057_skip : Flapjack.WordAlloc.isSkip output3057 = false := by
  rw [output3057_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3057 input3056)).val
theorem input3058_def : input3058 = (.seq input3057 input3056) := by
  unfold input3058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3057 output3056)).val
theorem output3058_def : output3058 = (.seq output3057 output3056) := by
  unfold output3058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3058_skip : Flapjack.WordAlloc.isSkip output3058 = false := by
  rw [output3058_def]
  kernel_rfl


def value1534 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1365 615#64))).val
theorem input3059_def : input3059 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1365 615#64)) := by
  unfold input3059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1365 615#64))).val
theorem output3059_def : output3059 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1365 615#64)) := by
  unfold output3059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3059_skip : Flapjack.WordAlloc.isSkip output3059 = false := by
  rw [output3059_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1361 615#64))).val
theorem input3060_def : input3060 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1361 615#64)) := by
  unfold input3060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3060_def : output3060 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3060_skip : Flapjack.WordAlloc.isSkip output3060 = true := by
  rw [output3060_def]
  kernel_rfl


def value1535 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1357 1353 (Flapjack.WordRegImm.imm 296#64))))).val
theorem input3061_def : input3061 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1357 1353 (Flapjack.WordRegImm.imm 296#64)))) := by
  unfold input3061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1357 1353 (Flapjack.WordRegImm.imm 296#64))))).val
theorem output3061_def : output3061 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1357 1353 (Flapjack.WordRegImm.imm 296#64)))) := by
  unfold output3061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3061_skip : Flapjack.WordAlloc.isSkip output3061 = false := by
  rw [output3061_def]
  kernel_rfl


def value1536 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1353 (Flapjack.WordLangAddr.addr 1349 18446744073709551008#64)))).val
theorem input3062_def : input3062 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1353 (Flapjack.WordLangAddr.addr 1349 18446744073709551008#64))) := by
  unfold input3062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1353 (Flapjack.WordLangAddr.addr 1349 18446744073709551008#64)))).val
theorem output3062_def : output3062 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1353 (Flapjack.WordLangAddr.addr 1349 18446744073709551008#64))) := by
  unfold output3062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3062_skip : Flapjack.WordAlloc.isSkip output3062 = false := by
  rw [output3062_def]
  kernel_rfl


def value1537 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1349 1345)).val
theorem input3063_def : input3063 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1349 1345) := by
  unfold input3063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1349 1345)).val
theorem output3063_def : output3063 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1349 1345) := by
  unfold output3063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3063_skip : Flapjack.WordAlloc.isSkip output3063 = false := by
  rw [output3063_def]
  kernel_rfl


def value1538 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1345 1341 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3064_def : input3064 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1345 1341 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1345 1341 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3064_def : output3064 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1345 1341 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3064_skip : Flapjack.WordAlloc.isSkip output3064 = false := by
  rw [output3064_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1341 Flapjack.WordStore.heapLength)).val
theorem input3065_def : input3065 = (Flapjack.WordLangProgHOL.get 1341 Flapjack.WordStore.heapLength) := by
  unfold input3065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1341 Flapjack.WordStore.heapLength)).val
theorem output3065_def : output3065 = (Flapjack.WordLangProgHOL.get 1341 Flapjack.WordStore.heapLength) := by
  unfold output3065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3065_skip : Flapjack.WordAlloc.isSkip output3065 = false := by
  rw [output3065_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3065 input3064)).val
theorem input3066_def : input3066 = (.seq input3065 input3064) := by
  unfold input3066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3065 output3064)).val
theorem output3066_def : output3066 = (.seq output3065 output3064) := by
  unfold output3066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3066_skip : Flapjack.WordAlloc.isSkip output3066 = false := by
  rw [output3066_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3066 input3063)).val
theorem input3067_def : input3067 = (.seq input3066 input3063) := by
  unfold input3067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3066 output3063)).val
theorem output3067_def : output3067 = (.seq output3066 output3063) := by
  unfold output3067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3067_skip : Flapjack.WordAlloc.isSkip output3067 = false := by
  rw [output3067_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3067 input3062)).val
theorem input3068_def : input3068 = (.seq input3067 input3062) := by
  unfold input3068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3067 output3062)).val
theorem output3068_def : output3068 = (.seq output3067 output3062) := by
  unfold output3068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3068_skip : Flapjack.WordAlloc.isSkip output3068 = false := by
  rw [output3068_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3068 input3061)).val
theorem input3069_def : input3069 = (.seq input3068 input3061) := by
  unfold input3069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3068 output3061)).val
theorem output3069_def : output3069 = (.seq output3068 output3061) := by
  unfold output3069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3069_skip : Flapjack.WordAlloc.isSkip output3069 = false := by
  rw [output3069_def]
  kernel_rfl


def value1539 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1333 (Flapjack.WordLangAddr.addr 1337 0#64)))).val
theorem input3070_def : input3070 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1333 (Flapjack.WordLangAddr.addr 1337 0#64))) := by
  unfold input3070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1333 (Flapjack.WordLangAddr.addr 1337 0#64)))).val
theorem output3070_def : output3070 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1333 (Flapjack.WordLangAddr.addr 1337 0#64))) := by
  unfold output3070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3070_skip : Flapjack.WordAlloc.isSkip output3070 = false := by
  rw [output3070_def]
  kernel_rfl


def value1540 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1337, 1325)])).val
theorem input3071_def : input3071 = (Flapjack.WordLangProgHOL.move 0 [(1337, 1325)]) := by
  unfold input3071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1337, 1325)])).val
theorem output3071_def : output3071 = (Flapjack.WordLangProgHOL.move 0 [(1337, 1325)]) := by
  unfold output3071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3071_skip : Flapjack.WordAlloc.isSkip output3071 = false := by
  rw [output3071_def]
  kernel_rfl



end InitECandidate.Proofs.DeadStages830.Parallel
