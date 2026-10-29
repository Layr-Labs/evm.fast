import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.CompilerComputation
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages64
def value0 : Flapjack.NumSet :=
Flapjack.Spt.ln

def value1 : List Flapjack.WordStoreHOL :=
[]

def value2 : List (Flapjack.NumSet × Flapjack.NumSet) :=
[]

def value3 : Flapjack.NumSet :=
Flapjack.Spt.ls PUnit.unit

@[irreducible, cbv_opaque] def input0 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call none (some 65) [0] none)).val
theorem input0_def : input0 = (Flapjack.WordLangProgHOL.call none (some 65) [0] none) := by
  unfold input0
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output0 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call none (some 65) [0] none)).val
theorem output0_def : output0 = (Flapjack.WordLangProgHOL.call none (some 65) [0] none) := by
  unfold output0
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output0_skip : Flapjack.WordAlloc.isSkip output0 = false := by
  rw [output0_def]
  kernel_rfl
theorem node0_eq : Flapjack.WordAlloc.removeDeadStructural input0 value0 value1 value2 = (output0, value3, value1) := by
  rw [input0_def, output0_def]
  kernel_rfl

def value4 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(0, 9)])).val
theorem input1_def : input1 = (Flapjack.WordLangProgHOL.move 1 [(0, 9)]) := by
  unfold input1
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(0, 9)])).val
theorem output1_def : output1 = (Flapjack.WordLangProgHOL.move 1 [(0, 9)]) := by
  unfold output1
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1_skip : Flapjack.WordAlloc.isSkip output1 = false := by
  rw [output1_def]
  kernel_rfl
theorem node1_eq : Flapjack.WordAlloc.removeDeadStructural input1 value3 value1 value2 = (output1, value4, value1) := by
  rw [input1_def, output1_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input2 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1 input0)).val
theorem input2_def : input2 = (.seq input1 input0) := by
  unfold input2
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1 output0)).val
theorem output2_def : output2 = (.seq output1 output0) := by
  unfold output2
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2_skip : Flapjack.WordAlloc.isSkip output2 = false := by
  rw [output2_def]
  kernel_rfl
theorem node2_eq : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1) := by
  rw [input2_def, output2_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node0_eq]
  dsimp only
  rw [node1_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output0_skip, output1_skip]
  kernel_rfl

def value5 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2609 (Flapjack.WordLangAddr.addr 2613 0#64)))).val
theorem input3_def : input3 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2609 (Flapjack.WordLangAddr.addr 2613 0#64))) := by
  unfold input3
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2609 (Flapjack.WordLangAddr.addr 2613 0#64)))).val
theorem output3_def : output3 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2609 (Flapjack.WordLangAddr.addr 2613 0#64))) := by
  unfold output3
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3_skip : Flapjack.WordAlloc.isSkip output3 = false := by
  rw [output3_def]
  kernel_rfl
theorem node3_eq : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1) := by
  rw [input3_def, output3_def]
  kernel_rfl

def value6 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2613, 2601)])).val
theorem input4_def : input4 = (Flapjack.WordLangProgHOL.move 0 [(2613, 2601)]) := by
  unfold input4
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2613, 2601)])).val
theorem output4_def : output4 = (Flapjack.WordLangProgHOL.move 0 [(2613, 2601)]) := by
  unfold output4
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4_skip : Flapjack.WordAlloc.isSkip output4 = false := by
  rw [output4_def]
  kernel_rfl
theorem node4_eq : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value6, value1) := by
  rw [input4_def, output4_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input5 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4 input3)).val
theorem input5_def : input5 = (.seq input4 input3) := by
  unfold input5
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4 output3)).val
theorem output5_def : output5 = (.seq output4 output3) := by
  unfold output5
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5_skip : Flapjack.WordAlloc.isSkip output5 = false := by
  rw [output5_def]
  kernel_rfl
theorem node5_eq : Flapjack.WordAlloc.removeDeadStructural input5 value4 value1 value2 = (output5, value6, value1) := by
  rw [input5_def, output5_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3_eq]
  dsimp only
  rw [node4_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output4_skip]
  kernel_rfl

def value7 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2609 0#64))).val
theorem input6_def : input6 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2609 0#64)) := by
  unfold input6
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2609 0#64))).val
theorem output6_def : output6 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2609 0#64)) := by
  unfold output6
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6_skip : Flapjack.WordAlloc.isSkip output6 = false := by
  rw [output6_def]
  kernel_rfl
theorem node6_eq : Flapjack.WordAlloc.removeDeadStructural input6 value6 value1 value2 = (output6, value7, value1) := by
  rw [input6_def, output6_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input7 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2605 0#64))).val
theorem input7_def : input7 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2605 0#64)) := by
  unfold input7
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7_def : output7 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7_skip : Flapjack.WordAlloc.isSkip output7 = true := by
  rw [output7_def]
  kernel_rfl
theorem node7_eq : Flapjack.WordAlloc.removeDeadStructural input7 value7 value1 value2 = (output7, value7, value1) := by
  rw [input7_def, output7_def]
  kernel_rfl

def value8 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2601 2597 (Flapjack.WordRegImm.imm 18446744073709550872#64))))).val
theorem input8_def : input8 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2601 2597 (Flapjack.WordRegImm.imm 18446744073709550872#64)))) := by
  unfold input8
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2601 2597 (Flapjack.WordRegImm.imm 18446744073709550872#64))))).val
theorem output8_def : output8 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2601 2597 (Flapjack.WordRegImm.imm 18446744073709550872#64)))) := by
  unfold output8
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8_skip : Flapjack.WordAlloc.isSkip output8 = false := by
  rw [output8_def]
  kernel_rfl
theorem node8_eq : Flapjack.WordAlloc.removeDeadStructural input8 value7 value1 value2 = (output8, value8, value1) := by
  rw [input8_def, output8_def]
  kernel_rfl

def value9 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2597 2593)).val
theorem input9_def : input9 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2597 2593) := by
  unfold input9
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2597 2593)).val
theorem output9_def : output9 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2597 2593) := by
  unfold output9
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9_skip : Flapjack.WordAlloc.isSkip output9 = false := by
  rw [output9_def]
  kernel_rfl
theorem node9_eq : Flapjack.WordAlloc.removeDeadStructural input9 value8 value1 value2 = (output9, value9, value1) := by
  rw [input9_def, output9_def]
  kernel_rfl

def value10 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2593 2589 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10_def : input10 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2593 2589 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2593 2589 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10_def : output10 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2593 2589 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10_skip : Flapjack.WordAlloc.isSkip output10 = false := by
  rw [output10_def]
  kernel_rfl
theorem node10_eq : Flapjack.WordAlloc.removeDeadStructural input10 value9 value1 value2 = (output10, value10, value1) := by
  rw [input10_def, output10_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input11 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2589 Flapjack.WordStore.heapLength)).val
theorem input11_def : input11 = (Flapjack.WordLangProgHOL.get 2589 Flapjack.WordStore.heapLength) := by
  unfold input11
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2589 Flapjack.WordStore.heapLength)).val
theorem output11_def : output11 = (Flapjack.WordLangProgHOL.get 2589 Flapjack.WordStore.heapLength) := by
  unfold output11
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11_skip : Flapjack.WordAlloc.isSkip output11 = false := by
  rw [output11_def]
  kernel_rfl
theorem node11_eq : Flapjack.WordAlloc.removeDeadStructural input11 value10 value1 value2 = (output11, value4, value1) := by
  rw [input11_def, output11_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input12 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11 input10)).val
theorem input12_def : input12 = (.seq input11 input10) := by
  unfold input12
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11 output10)).val
theorem output12_def : output12 = (.seq output11 output10) := by
  unfold output12
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12_skip : Flapjack.WordAlloc.isSkip output12 = false := by
  rw [output12_def]
  kernel_rfl
theorem node12_eq : Flapjack.WordAlloc.removeDeadStructural input12 value9 value1 value2 = (output12, value4, value1) := by
  rw [input12_def, output12_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10_eq]
  dsimp only
  rw [node11_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10_skip, output11_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input13 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12 input9)).val
theorem input13_def : input13 = (.seq input12 input9) := by
  unfold input13
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12 output9)).val
theorem output13_def : output13 = (.seq output12 output9) := by
  unfold output13
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13_skip : Flapjack.WordAlloc.isSkip output13 = false := by
  rw [output13_def]
  kernel_rfl
theorem node13_eq : Flapjack.WordAlloc.removeDeadStructural input13 value8 value1 value2 = (output13, value4, value1) := by
  rw [input13_def, output13_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9_eq]
  dsimp only
  rw [node12_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9_skip, output12_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input14 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13 input8)).val
theorem input14_def : input14 = (.seq input13 input8) := by
  unfold input14
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13 output8)).val
theorem output14_def : output14 = (.seq output13 output8) := by
  unfold output14
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14_skip : Flapjack.WordAlloc.isSkip output14 = false := by
  rw [output14_def]
  kernel_rfl
theorem node14_eq : Flapjack.WordAlloc.removeDeadStructural input14 value7 value1 value2 = (output14, value4, value1) := by
  rw [input14_def, output14_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8_eq]
  dsimp only
  rw [node13_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8_skip, output13_skip]
  kernel_rfl

def value11 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input15 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2581 (Flapjack.WordLangAddr.addr 2585 0#64)))).val
theorem input15_def : input15 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2581 (Flapjack.WordLangAddr.addr 2585 0#64))) := by
  unfold input15
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2581 (Flapjack.WordLangAddr.addr 2585 0#64)))).val
theorem output15_def : output15 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2581 (Flapjack.WordLangAddr.addr 2585 0#64))) := by
  unfold output15
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15_skip : Flapjack.WordAlloc.isSkip output15 = false := by
  rw [output15_def]
  kernel_rfl
theorem node15_eq : Flapjack.WordAlloc.removeDeadStructural input15 value4 value1 value2 = (output15, value11, value1) := by
  rw [input15_def, output15_def]
  kernel_rfl

def value12 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input16 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2585, 2573)])).val
theorem input16_def : input16 = (Flapjack.WordLangProgHOL.move 0 [(2585, 2573)]) := by
  unfold input16
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2585, 2573)])).val
theorem output16_def : output16 = (Flapjack.WordLangProgHOL.move 0 [(2585, 2573)]) := by
  unfold output16
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16_skip : Flapjack.WordAlloc.isSkip output16 = false := by
  rw [output16_def]
  kernel_rfl
theorem node16_eq : Flapjack.WordAlloc.removeDeadStructural input16 value11 value1 value2 = (output16, value12, value1) := by
  rw [input16_def, output16_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input17 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16 input15)).val
theorem input17_def : input17 = (.seq input16 input15) := by
  unfold input17
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16 output15)).val
theorem output17_def : output17 = (.seq output16 output15) := by
  unfold output17
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17_skip : Flapjack.WordAlloc.isSkip output17 = false := by
  rw [output17_def]
  kernel_rfl
theorem node17_eq : Flapjack.WordAlloc.removeDeadStructural input17 value4 value1 value2 = (output17, value12, value1) := by
  rw [input17_def, output17_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node15_eq]
  dsimp only
  rw [node16_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output15_skip, output16_skip]
  kernel_rfl

def value13 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input18 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2581 0#64))).val
theorem input18_def : input18 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2581 0#64)) := by
  unfold input18
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output18 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2581 0#64))).val
theorem output18_def : output18 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2581 0#64)) := by
  unfold output18
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output18_skip : Flapjack.WordAlloc.isSkip output18 = false := by
  rw [output18_def]
  kernel_rfl
theorem node18_eq : Flapjack.WordAlloc.removeDeadStructural input18 value12 value1 value2 = (output18, value13, value1) := by
  rw [input18_def, output18_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input19 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2577 0#64))).val
theorem input19_def : input19 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2577 0#64)) := by
  unfold input19
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output19 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output19_def : output19 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output19
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output19_skip : Flapjack.WordAlloc.isSkip output19 = true := by
  rw [output19_def]
  kernel_rfl
theorem node19_eq : Flapjack.WordAlloc.removeDeadStructural input19 value13 value1 value2 = (output19, value13, value1) := by
  rw [input19_def, output19_def]
  kernel_rfl

def value14 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input20 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2573 2569 (Flapjack.WordRegImm.imm 18446744073709550880#64))))).val
theorem input20_def : input20 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2573 2569 (Flapjack.WordRegImm.imm 18446744073709550880#64)))) := by
  unfold input20
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output20 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2573 2569 (Flapjack.WordRegImm.imm 18446744073709550880#64))))).val
theorem output20_def : output20 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2573 2569 (Flapjack.WordRegImm.imm 18446744073709550880#64)))) := by
  unfold output20
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output20_skip : Flapjack.WordAlloc.isSkip output20 = false := by
  rw [output20_def]
  kernel_rfl
theorem node20_eq : Flapjack.WordAlloc.removeDeadStructural input20 value13 value1 value2 = (output20, value14, value1) := by
  rw [input20_def, output20_def]
  kernel_rfl

def value15 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input21 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2569 2565)).val
theorem input21_def : input21 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2569 2565) := by
  unfold input21
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output21 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2569 2565)).val
theorem output21_def : output21 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2569 2565) := by
  unfold output21
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output21_skip : Flapjack.WordAlloc.isSkip output21 = false := by
  rw [output21_def]
  kernel_rfl
theorem node21_eq : Flapjack.WordAlloc.removeDeadStructural input21 value14 value1 value2 = (output21, value15, value1) := by
  rw [input21_def, output21_def]
  kernel_rfl

def value16 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input22 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2565 2561 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input22_def : input22 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2565 2561 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input22
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output22 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2565 2561 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output22_def : output22 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2565 2561 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output22
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output22_skip : Flapjack.WordAlloc.isSkip output22 = false := by
  rw [output22_def]
  kernel_rfl
theorem node22_eq : Flapjack.WordAlloc.removeDeadStructural input22 value15 value1 value2 = (output22, value16, value1) := by
  rw [input22_def, output22_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input23 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2561 Flapjack.WordStore.heapLength)).val
theorem input23_def : input23 = (Flapjack.WordLangProgHOL.get 2561 Flapjack.WordStore.heapLength) := by
  unfold input23
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output23 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2561 Flapjack.WordStore.heapLength)).val
theorem output23_def : output23 = (Flapjack.WordLangProgHOL.get 2561 Flapjack.WordStore.heapLength) := by
  unfold output23
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output23_skip : Flapjack.WordAlloc.isSkip output23 = false := by
  rw [output23_def]
  kernel_rfl
theorem node23_eq : Flapjack.WordAlloc.removeDeadStructural input23 value16 value1 value2 = (output23, value4, value1) := by
  rw [input23_def, output23_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input24 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input23 input22)).val
theorem input24_def : input24 = (.seq input23 input22) := by
  unfold input24
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output24 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output23 output22)).val
theorem output24_def : output24 = (.seq output23 output22) := by
  unfold output24
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output24_skip : Flapjack.WordAlloc.isSkip output24 = false := by
  rw [output24_def]
  kernel_rfl
theorem node24_eq : Flapjack.WordAlloc.removeDeadStructural input24 value15 value1 value2 = (output24, value4, value1) := by
  rw [input24_def, output24_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node22_eq]
  dsimp only
  rw [node23_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output22_skip, output23_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input25 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input24 input21)).val
theorem input25_def : input25 = (.seq input24 input21) := by
  unfold input25
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output25 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output24 output21)).val
theorem output25_def : output25 = (.seq output24 output21) := by
  unfold output25
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output25_skip : Flapjack.WordAlloc.isSkip output25 = false := by
  rw [output25_def]
  kernel_rfl
theorem node25_eq : Flapjack.WordAlloc.removeDeadStructural input25 value14 value1 value2 = (output25, value4, value1) := by
  rw [input25_def, output25_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node21_eq]
  dsimp only
  rw [node24_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output21_skip, output24_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input26 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input25 input20)).val
theorem input26_def : input26 = (.seq input25 input20) := by
  unfold input26
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output26 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output25 output20)).val
theorem output26_def : output26 = (.seq output25 output20) := by
  unfold output26
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output26_skip : Flapjack.WordAlloc.isSkip output26 = false := by
  rw [output26_def]
  kernel_rfl
theorem node26_eq : Flapjack.WordAlloc.removeDeadStructural input26 value13 value1 value2 = (output26, value4, value1) := by
  rw [input26_def, output26_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node20_eq]
  dsimp only
  rw [node25_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output20_skip, output25_skip]
  kernel_rfl

def value17 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input27 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2553 (Flapjack.WordLangAddr.addr 2557 0#64)))).val
theorem input27_def : input27 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2553 (Flapjack.WordLangAddr.addr 2557 0#64))) := by
  unfold input27
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output27 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2553 (Flapjack.WordLangAddr.addr 2557 0#64)))).val
theorem output27_def : output27 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2553 (Flapjack.WordLangAddr.addr 2557 0#64))) := by
  unfold output27
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output27_skip : Flapjack.WordAlloc.isSkip output27 = false := by
  rw [output27_def]
  kernel_rfl
theorem node27_eq : Flapjack.WordAlloc.removeDeadStructural input27 value4 value1 value2 = (output27, value17, value1) := by
  rw [input27_def, output27_def]
  kernel_rfl

def value18 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input28 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2557, 2545)])).val
theorem input28_def : input28 = (Flapjack.WordLangProgHOL.move 0 [(2557, 2545)]) := by
  unfold input28
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output28 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2557, 2545)])).val
theorem output28_def : output28 = (Flapjack.WordLangProgHOL.move 0 [(2557, 2545)]) := by
  unfold output28
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output28_skip : Flapjack.WordAlloc.isSkip output28 = false := by
  rw [output28_def]
  kernel_rfl
theorem node28_eq : Flapjack.WordAlloc.removeDeadStructural input28 value17 value1 value2 = (output28, value18, value1) := by
  rw [input28_def, output28_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input29 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input28 input27)).val
theorem input29_def : input29 = (.seq input28 input27) := by
  unfold input29
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output29 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output28 output27)).val
theorem output29_def : output29 = (.seq output28 output27) := by
  unfold output29
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output29_skip : Flapjack.WordAlloc.isSkip output29 = false := by
  rw [output29_def]
  kernel_rfl
theorem node29_eq : Flapjack.WordAlloc.removeDeadStructural input29 value4 value1 value2 = (output29, value18, value1) := by
  rw [input29_def, output29_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node27_eq]
  dsimp only
  rw [node28_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output27_skip, output28_skip]
  kernel_rfl

def value19 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input30 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2553 0#64))).val
theorem input30_def : input30 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2553 0#64)) := by
  unfold input30
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output30 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2553 0#64))).val
theorem output30_def : output30 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2553 0#64)) := by
  unfold output30
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output30_skip : Flapjack.WordAlloc.isSkip output30 = false := by
  rw [output30_def]
  kernel_rfl
theorem node30_eq : Flapjack.WordAlloc.removeDeadStructural input30 value18 value1 value2 = (output30, value19, value1) := by
  rw [input30_def, output30_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input31 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2549 0#64))).val
theorem input31_def : input31 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2549 0#64)) := by
  unfold input31
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output31 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output31_def : output31 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output31
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output31_skip : Flapjack.WordAlloc.isSkip output31 = true := by
  rw [output31_def]
  kernel_rfl
theorem node31_eq : Flapjack.WordAlloc.removeDeadStructural input31 value19 value1 value2 = (output31, value19, value1) := by
  rw [input31_def, output31_def]
  kernel_rfl

def value20 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input32 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2545 2541 (Flapjack.WordRegImm.imm 18446744073709550888#64))))).val
theorem input32_def : input32 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2545 2541 (Flapjack.WordRegImm.imm 18446744073709550888#64)))) := by
  unfold input32
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output32 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2545 2541 (Flapjack.WordRegImm.imm 18446744073709550888#64))))).val
theorem output32_def : output32 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2545 2541 (Flapjack.WordRegImm.imm 18446744073709550888#64)))) := by
  unfold output32
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output32_skip : Flapjack.WordAlloc.isSkip output32 = false := by
  rw [output32_def]
  kernel_rfl
theorem node32_eq : Flapjack.WordAlloc.removeDeadStructural input32 value19 value1 value2 = (output32, value20, value1) := by
  rw [input32_def, output32_def]
  kernel_rfl

def value21 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input33 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2541 2537)).val
theorem input33_def : input33 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2541 2537) := by
  unfold input33
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output33 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2541 2537)).val
theorem output33_def : output33 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2541 2537) := by
  unfold output33
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output33_skip : Flapjack.WordAlloc.isSkip output33 = false := by
  rw [output33_def]
  kernel_rfl
theorem node33_eq : Flapjack.WordAlloc.removeDeadStructural input33 value20 value1 value2 = (output33, value21, value1) := by
  rw [input33_def, output33_def]
  kernel_rfl

def value22 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input34 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2537 2533 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input34_def : input34 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2537 2533 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input34
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output34 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2537 2533 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output34_def : output34 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2537 2533 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output34
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output34_skip : Flapjack.WordAlloc.isSkip output34 = false := by
  rw [output34_def]
  kernel_rfl
theorem node34_eq : Flapjack.WordAlloc.removeDeadStructural input34 value21 value1 value2 = (output34, value22, value1) := by
  rw [input34_def, output34_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input35 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2533 Flapjack.WordStore.heapLength)).val
theorem input35_def : input35 = (Flapjack.WordLangProgHOL.get 2533 Flapjack.WordStore.heapLength) := by
  unfold input35
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output35 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2533 Flapjack.WordStore.heapLength)).val
theorem output35_def : output35 = (Flapjack.WordLangProgHOL.get 2533 Flapjack.WordStore.heapLength) := by
  unfold output35
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output35_skip : Flapjack.WordAlloc.isSkip output35 = false := by
  rw [output35_def]
  kernel_rfl
theorem node35_eq : Flapjack.WordAlloc.removeDeadStructural input35 value22 value1 value2 = (output35, value4, value1) := by
  rw [input35_def, output35_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input36 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input35 input34)).val
theorem input36_def : input36 = (.seq input35 input34) := by
  unfold input36
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output36 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output35 output34)).val
theorem output36_def : output36 = (.seq output35 output34) := by
  unfold output36
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output36_skip : Flapjack.WordAlloc.isSkip output36 = false := by
  rw [output36_def]
  kernel_rfl
theorem node36_eq : Flapjack.WordAlloc.removeDeadStructural input36 value21 value1 value2 = (output36, value4, value1) := by
  rw [input36_def, output36_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node34_eq]
  dsimp only
  rw [node35_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output34_skip, output35_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input37 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input36 input33)).val
theorem input37_def : input37 = (.seq input36 input33) := by
  unfold input37
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output37 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output36 output33)).val
theorem output37_def : output37 = (.seq output36 output33) := by
  unfold output37
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output37_skip : Flapjack.WordAlloc.isSkip output37 = false := by
  rw [output37_def]
  kernel_rfl
theorem node37_eq : Flapjack.WordAlloc.removeDeadStructural input37 value20 value1 value2 = (output37, value4, value1) := by
  rw [input37_def, output37_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node33_eq]
  dsimp only
  rw [node36_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output33_skip, output36_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input38 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input37 input32)).val
theorem input38_def : input38 = (.seq input37 input32) := by
  unfold input38
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output38 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output37 output32)).val
theorem output38_def : output38 = (.seq output37 output32) := by
  unfold output38
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output38_skip : Flapjack.WordAlloc.isSkip output38 = false := by
  rw [output38_def]
  kernel_rfl
theorem node38_eq : Flapjack.WordAlloc.removeDeadStructural input38 value19 value1 value2 = (output38, value4, value1) := by
  rw [input38_def, output38_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node32_eq]
  dsimp only
  rw [node37_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output32_skip, output37_skip]
  kernel_rfl

def value23 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input39 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2525 (Flapjack.WordLangAddr.addr 2529 0#64)))).val
theorem input39_def : input39 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2525 (Flapjack.WordLangAddr.addr 2529 0#64))) := by
  unfold input39
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output39 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2525 (Flapjack.WordLangAddr.addr 2529 0#64)))).val
theorem output39_def : output39 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2525 (Flapjack.WordLangAddr.addr 2529 0#64))) := by
  unfold output39
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output39_skip : Flapjack.WordAlloc.isSkip output39 = false := by
  rw [output39_def]
  kernel_rfl
theorem node39_eq : Flapjack.WordAlloc.removeDeadStructural input39 value4 value1 value2 = (output39, value23, value1) := by
  rw [input39_def, output39_def]
  kernel_rfl

def value24 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input40 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2529, 2517)])).val
theorem input40_def : input40 = (Flapjack.WordLangProgHOL.move 0 [(2529, 2517)]) := by
  unfold input40
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output40 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2529, 2517)])).val
theorem output40_def : output40 = (Flapjack.WordLangProgHOL.move 0 [(2529, 2517)]) := by
  unfold output40
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output40_skip : Flapjack.WordAlloc.isSkip output40 = false := by
  rw [output40_def]
  kernel_rfl
theorem node40_eq : Flapjack.WordAlloc.removeDeadStructural input40 value23 value1 value2 = (output40, value24, value1) := by
  rw [input40_def, output40_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input41 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input40 input39)).val
theorem input41_def : input41 = (.seq input40 input39) := by
  unfold input41
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output41 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output40 output39)).val
theorem output41_def : output41 = (.seq output40 output39) := by
  unfold output41
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output41_skip : Flapjack.WordAlloc.isSkip output41 = false := by
  rw [output41_def]
  kernel_rfl
theorem node41_eq : Flapjack.WordAlloc.removeDeadStructural input41 value4 value1 value2 = (output41, value24, value1) := by
  rw [input41_def, output41_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node39_eq]
  dsimp only
  rw [node40_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output39_skip, output40_skip]
  kernel_rfl

def value25 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input42 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2525 0#64))).val
theorem input42_def : input42 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2525 0#64)) := by
  unfold input42
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output42 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2525 0#64))).val
theorem output42_def : output42 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2525 0#64)) := by
  unfold output42
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output42_skip : Flapjack.WordAlloc.isSkip output42 = false := by
  rw [output42_def]
  kernel_rfl
theorem node42_eq : Flapjack.WordAlloc.removeDeadStructural input42 value24 value1 value2 = (output42, value25, value1) := by
  rw [input42_def, output42_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input43 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2521 0#64))).val
theorem input43_def : input43 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2521 0#64)) := by
  unfold input43
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output43 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output43_def : output43 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output43
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output43_skip : Flapjack.WordAlloc.isSkip output43 = true := by
  rw [output43_def]
  kernel_rfl
theorem node43_eq : Flapjack.WordAlloc.removeDeadStructural input43 value25 value1 value2 = (output43, value25, value1) := by
  rw [input43_def, output43_def]
  kernel_rfl

def value26 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input44 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2517 2513 (Flapjack.WordRegImm.imm 18446744073709550896#64))))).val
theorem input44_def : input44 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2517 2513 (Flapjack.WordRegImm.imm 18446744073709550896#64)))) := by
  unfold input44
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output44 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2517 2513 (Flapjack.WordRegImm.imm 18446744073709550896#64))))).val
theorem output44_def : output44 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2517 2513 (Flapjack.WordRegImm.imm 18446744073709550896#64)))) := by
  unfold output44
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output44_skip : Flapjack.WordAlloc.isSkip output44 = false := by
  rw [output44_def]
  kernel_rfl
theorem node44_eq : Flapjack.WordAlloc.removeDeadStructural input44 value25 value1 value2 = (output44, value26, value1) := by
  rw [input44_def, output44_def]
  kernel_rfl

def value27 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input45 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2513 2509)).val
theorem input45_def : input45 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2513 2509) := by
  unfold input45
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output45 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2513 2509)).val
theorem output45_def : output45 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2513 2509) := by
  unfold output45
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output45_skip : Flapjack.WordAlloc.isSkip output45 = false := by
  rw [output45_def]
  kernel_rfl
theorem node45_eq : Flapjack.WordAlloc.removeDeadStructural input45 value26 value1 value2 = (output45, value27, value1) := by
  rw [input45_def, output45_def]
  kernel_rfl

def value28 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input46 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2509 2505 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input46_def : input46 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2509 2505 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input46
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output46 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2509 2505 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output46_def : output46 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2509 2505 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output46
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output46_skip : Flapjack.WordAlloc.isSkip output46 = false := by
  rw [output46_def]
  kernel_rfl
theorem node46_eq : Flapjack.WordAlloc.removeDeadStructural input46 value27 value1 value2 = (output46, value28, value1) := by
  rw [input46_def, output46_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input47 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2505 Flapjack.WordStore.heapLength)).val
theorem input47_def : input47 = (Flapjack.WordLangProgHOL.get 2505 Flapjack.WordStore.heapLength) := by
  unfold input47
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output47 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2505 Flapjack.WordStore.heapLength)).val
theorem output47_def : output47 = (Flapjack.WordLangProgHOL.get 2505 Flapjack.WordStore.heapLength) := by
  unfold output47
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output47_skip : Flapjack.WordAlloc.isSkip output47 = false := by
  rw [output47_def]
  kernel_rfl
theorem node47_eq : Flapjack.WordAlloc.removeDeadStructural input47 value28 value1 value2 = (output47, value4, value1) := by
  rw [input47_def, output47_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input48 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input47 input46)).val
theorem input48_def : input48 = (.seq input47 input46) := by
  unfold input48
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output48 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output47 output46)).val
theorem output48_def : output48 = (.seq output47 output46) := by
  unfold output48
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output48_skip : Flapjack.WordAlloc.isSkip output48 = false := by
  rw [output48_def]
  kernel_rfl
theorem node48_eq : Flapjack.WordAlloc.removeDeadStructural input48 value27 value1 value2 = (output48, value4, value1) := by
  rw [input48_def, output48_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node46_eq]
  dsimp only
  rw [node47_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output46_skip, output47_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input49 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input48 input45)).val
theorem input49_def : input49 = (.seq input48 input45) := by
  unfold input49
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output49 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output48 output45)).val
theorem output49_def : output49 = (.seq output48 output45) := by
  unfold output49
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output49_skip : Flapjack.WordAlloc.isSkip output49 = false := by
  rw [output49_def]
  kernel_rfl
theorem node49_eq : Flapjack.WordAlloc.removeDeadStructural input49 value26 value1 value2 = (output49, value4, value1) := by
  rw [input49_def, output49_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node45_eq]
  dsimp only
  rw [node48_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output45_skip, output48_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input50 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input49 input44)).val
theorem input50_def : input50 = (.seq input49 input44) := by
  unfold input50
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output50 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output49 output44)).val
theorem output50_def : output50 = (.seq output49 output44) := by
  unfold output50
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output50_skip : Flapjack.WordAlloc.isSkip output50 = false := by
  rw [output50_def]
  kernel_rfl
theorem node50_eq : Flapjack.WordAlloc.removeDeadStructural input50 value25 value1 value2 = (output50, value4, value1) := by
  rw [input50_def, output50_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node44_eq]
  dsimp only
  rw [node49_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output44_skip, output49_skip]
  kernel_rfl

def value29 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input51 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2497 (Flapjack.WordLangAddr.addr 2501 0#64)))).val
theorem input51_def : input51 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2497 (Flapjack.WordLangAddr.addr 2501 0#64))) := by
  unfold input51
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output51 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2497 (Flapjack.WordLangAddr.addr 2501 0#64)))).val
theorem output51_def : output51 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2497 (Flapjack.WordLangAddr.addr 2501 0#64))) := by
  unfold output51
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output51_skip : Flapjack.WordAlloc.isSkip output51 = false := by
  rw [output51_def]
  kernel_rfl
theorem node51_eq : Flapjack.WordAlloc.removeDeadStructural input51 value4 value1 value2 = (output51, value29, value1) := by
  rw [input51_def, output51_def]
  kernel_rfl

def value30 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input52 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2501, 2489)])).val
theorem input52_def : input52 = (Flapjack.WordLangProgHOL.move 0 [(2501, 2489)]) := by
  unfold input52
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output52 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2501, 2489)])).val
theorem output52_def : output52 = (Flapjack.WordLangProgHOL.move 0 [(2501, 2489)]) := by
  unfold output52
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output52_skip : Flapjack.WordAlloc.isSkip output52 = false := by
  rw [output52_def]
  kernel_rfl
theorem node52_eq : Flapjack.WordAlloc.removeDeadStructural input52 value29 value1 value2 = (output52, value30, value1) := by
  rw [input52_def, output52_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input53 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input52 input51)).val
theorem input53_def : input53 = (.seq input52 input51) := by
  unfold input53
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output53 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output52 output51)).val
theorem output53_def : output53 = (.seq output52 output51) := by
  unfold output53
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output53_skip : Flapjack.WordAlloc.isSkip output53 = false := by
  rw [output53_def]
  kernel_rfl
theorem node53_eq : Flapjack.WordAlloc.removeDeadStructural input53 value4 value1 value2 = (output53, value30, value1) := by
  rw [input53_def, output53_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node51_eq]
  dsimp only
  rw [node52_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output51_skip, output52_skip]
  kernel_rfl

def value31 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input54 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2497 0#64))).val
theorem input54_def : input54 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2497 0#64)) := by
  unfold input54
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output54 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2497 0#64))).val
theorem output54_def : output54 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2497 0#64)) := by
  unfold output54
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output54_skip : Flapjack.WordAlloc.isSkip output54 = false := by
  rw [output54_def]
  kernel_rfl
theorem node54_eq : Flapjack.WordAlloc.removeDeadStructural input54 value30 value1 value2 = (output54, value31, value1) := by
  rw [input54_def, output54_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input55 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2493 0#64))).val
theorem input55_def : input55 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2493 0#64)) := by
  unfold input55
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output55 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output55_def : output55 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output55
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output55_skip : Flapjack.WordAlloc.isSkip output55 = true := by
  rw [output55_def]
  kernel_rfl
theorem node55_eq : Flapjack.WordAlloc.removeDeadStructural input55 value31 value1 value2 = (output55, value31, value1) := by
  rw [input55_def, output55_def]
  kernel_rfl

def value32 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input56 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2489 2485 (Flapjack.WordRegImm.imm 18446744073709550904#64))))).val
theorem input56_def : input56 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2489 2485 (Flapjack.WordRegImm.imm 18446744073709550904#64)))) := by
  unfold input56
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output56 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2489 2485 (Flapjack.WordRegImm.imm 18446744073709550904#64))))).val
theorem output56_def : output56 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2489 2485 (Flapjack.WordRegImm.imm 18446744073709550904#64)))) := by
  unfold output56
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output56_skip : Flapjack.WordAlloc.isSkip output56 = false := by
  rw [output56_def]
  kernel_rfl
theorem node56_eq : Flapjack.WordAlloc.removeDeadStructural input56 value31 value1 value2 = (output56, value32, value1) := by
  rw [input56_def, output56_def]
  kernel_rfl

def value33 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input57 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2485 2481)).val
theorem input57_def : input57 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2485 2481) := by
  unfold input57
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output57 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2485 2481)).val
theorem output57_def : output57 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2485 2481) := by
  unfold output57
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output57_skip : Flapjack.WordAlloc.isSkip output57 = false := by
  rw [output57_def]
  kernel_rfl
theorem node57_eq : Flapjack.WordAlloc.removeDeadStructural input57 value32 value1 value2 = (output57, value33, value1) := by
  rw [input57_def, output57_def]
  kernel_rfl

def value34 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input58 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2481 2477 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input58_def : input58 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2481 2477 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input58
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output58 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2481 2477 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output58_def : output58 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2481 2477 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output58
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output58_skip : Flapjack.WordAlloc.isSkip output58 = false := by
  rw [output58_def]
  kernel_rfl
theorem node58_eq : Flapjack.WordAlloc.removeDeadStructural input58 value33 value1 value2 = (output58, value34, value1) := by
  rw [input58_def, output58_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input59 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2477 Flapjack.WordStore.heapLength)).val
theorem input59_def : input59 = (Flapjack.WordLangProgHOL.get 2477 Flapjack.WordStore.heapLength) := by
  unfold input59
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output59 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2477 Flapjack.WordStore.heapLength)).val
theorem output59_def : output59 = (Flapjack.WordLangProgHOL.get 2477 Flapjack.WordStore.heapLength) := by
  unfold output59
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output59_skip : Flapjack.WordAlloc.isSkip output59 = false := by
  rw [output59_def]
  kernel_rfl
theorem node59_eq : Flapjack.WordAlloc.removeDeadStructural input59 value34 value1 value2 = (output59, value4, value1) := by
  rw [input59_def, output59_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input60 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input59 input58)).val
theorem input60_def : input60 = (.seq input59 input58) := by
  unfold input60
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output60 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output59 output58)).val
theorem output60_def : output60 = (.seq output59 output58) := by
  unfold output60
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output60_skip : Flapjack.WordAlloc.isSkip output60 = false := by
  rw [output60_def]
  kernel_rfl
theorem node60_eq : Flapjack.WordAlloc.removeDeadStructural input60 value33 value1 value2 = (output60, value4, value1) := by
  rw [input60_def, output60_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node58_eq]
  dsimp only
  rw [node59_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output58_skip, output59_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input61 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input60 input57)).val
theorem input61_def : input61 = (.seq input60 input57) := by
  unfold input61
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output61 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output60 output57)).val
theorem output61_def : output61 = (.seq output60 output57) := by
  unfold output61
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output61_skip : Flapjack.WordAlloc.isSkip output61 = false := by
  rw [output61_def]
  kernel_rfl
theorem node61_eq : Flapjack.WordAlloc.removeDeadStructural input61 value32 value1 value2 = (output61, value4, value1) := by
  rw [input61_def, output61_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node57_eq]
  dsimp only
  rw [node60_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output57_skip, output60_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input62 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input61 input56)).val
theorem input62_def : input62 = (.seq input61 input56) := by
  unfold input62
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output62 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output61 output56)).val
theorem output62_def : output62 = (.seq output61 output56) := by
  unfold output62
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output62_skip : Flapjack.WordAlloc.isSkip output62 = false := by
  rw [output62_def]
  kernel_rfl
theorem node62_eq : Flapjack.WordAlloc.removeDeadStructural input62 value31 value1 value2 = (output62, value4, value1) := by
  rw [input62_def, output62_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node56_eq]
  dsimp only
  rw [node61_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output56_skip, output61_skip]
  kernel_rfl

def value35 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input63 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2469 (Flapjack.WordLangAddr.addr 2473 0#64)))).val
theorem input63_def : input63 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2469 (Flapjack.WordLangAddr.addr 2473 0#64))) := by
  unfold input63
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output63 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2469 (Flapjack.WordLangAddr.addr 2473 0#64)))).val
theorem output63_def : output63 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2469 (Flapjack.WordLangAddr.addr 2473 0#64))) := by
  unfold output63
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output63_skip : Flapjack.WordAlloc.isSkip output63 = false := by
  rw [output63_def]
  kernel_rfl
theorem node63_eq : Flapjack.WordAlloc.removeDeadStructural input63 value4 value1 value2 = (output63, value35, value1) := by
  rw [input63_def, output63_def]
  kernel_rfl

def value36 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input64 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2473, 2461)])).val
theorem input64_def : input64 = (Flapjack.WordLangProgHOL.move 0 [(2473, 2461)]) := by
  unfold input64
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output64 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2473, 2461)])).val
theorem output64_def : output64 = (Flapjack.WordLangProgHOL.move 0 [(2473, 2461)]) := by
  unfold output64
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output64_skip : Flapjack.WordAlloc.isSkip output64 = false := by
  rw [output64_def]
  kernel_rfl
theorem node64_eq : Flapjack.WordAlloc.removeDeadStructural input64 value35 value1 value2 = (output64, value36, value1) := by
  rw [input64_def, output64_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input65 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input64 input63)).val
theorem input65_def : input65 = (.seq input64 input63) := by
  unfold input65
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output65 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output64 output63)).val
theorem output65_def : output65 = (.seq output64 output63) := by
  unfold output65
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output65_skip : Flapjack.WordAlloc.isSkip output65 = false := by
  rw [output65_def]
  kernel_rfl
theorem node65_eq : Flapjack.WordAlloc.removeDeadStructural input65 value4 value1 value2 = (output65, value36, value1) := by
  rw [input65_def, output65_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node63_eq]
  dsimp only
  rw [node64_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output63_skip, output64_skip]
  kernel_rfl

def value37 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input66 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2469 0#64))).val
theorem input66_def : input66 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2469 0#64)) := by
  unfold input66
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output66 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2469 0#64))).val
theorem output66_def : output66 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2469 0#64)) := by
  unfold output66
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output66_skip : Flapjack.WordAlloc.isSkip output66 = false := by
  rw [output66_def]
  kernel_rfl
theorem node66_eq : Flapjack.WordAlloc.removeDeadStructural input66 value36 value1 value2 = (output66, value37, value1) := by
  rw [input66_def, output66_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input67 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2465 0#64))).val
theorem input67_def : input67 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2465 0#64)) := by
  unfold input67
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output67 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output67_def : output67 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output67
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output67_skip : Flapjack.WordAlloc.isSkip output67 = true := by
  rw [output67_def]
  kernel_rfl
theorem node67_eq : Flapjack.WordAlloc.removeDeadStructural input67 value37 value1 value2 = (output67, value37, value1) := by
  rw [input67_def, output67_def]
  kernel_rfl

def value38 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input68 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2461 2457 (Flapjack.WordRegImm.imm 18446744073709550912#64))))).val
theorem input68_def : input68 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2461 2457 (Flapjack.WordRegImm.imm 18446744073709550912#64)))) := by
  unfold input68
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output68 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2461 2457 (Flapjack.WordRegImm.imm 18446744073709550912#64))))).val
theorem output68_def : output68 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2461 2457 (Flapjack.WordRegImm.imm 18446744073709550912#64)))) := by
  unfold output68
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output68_skip : Flapjack.WordAlloc.isSkip output68 = false := by
  rw [output68_def]
  kernel_rfl
theorem node68_eq : Flapjack.WordAlloc.removeDeadStructural input68 value37 value1 value2 = (output68, value38, value1) := by
  rw [input68_def, output68_def]
  kernel_rfl

def value39 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input69 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2457 2453)).val
theorem input69_def : input69 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2457 2453) := by
  unfold input69
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output69 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2457 2453)).val
theorem output69_def : output69 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2457 2453) := by
  unfold output69
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output69_skip : Flapjack.WordAlloc.isSkip output69 = false := by
  rw [output69_def]
  kernel_rfl
theorem node69_eq : Flapjack.WordAlloc.removeDeadStructural input69 value38 value1 value2 = (output69, value39, value1) := by
  rw [input69_def, output69_def]
  kernel_rfl

def value40 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input70 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2453 2449 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input70_def : input70 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2453 2449 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input70
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output70 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2453 2449 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output70_def : output70 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2453 2449 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output70
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output70_skip : Flapjack.WordAlloc.isSkip output70 = false := by
  rw [output70_def]
  kernel_rfl
theorem node70_eq : Flapjack.WordAlloc.removeDeadStructural input70 value39 value1 value2 = (output70, value40, value1) := by
  rw [input70_def, output70_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input71 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2449 Flapjack.WordStore.heapLength)).val
theorem input71_def : input71 = (Flapjack.WordLangProgHOL.get 2449 Flapjack.WordStore.heapLength) := by
  unfold input71
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output71 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2449 Flapjack.WordStore.heapLength)).val
theorem output71_def : output71 = (Flapjack.WordLangProgHOL.get 2449 Flapjack.WordStore.heapLength) := by
  unfold output71
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output71_skip : Flapjack.WordAlloc.isSkip output71 = false := by
  rw [output71_def]
  kernel_rfl
theorem node71_eq : Flapjack.WordAlloc.removeDeadStructural input71 value40 value1 value2 = (output71, value4, value1) := by
  rw [input71_def, output71_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input72 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input71 input70)).val
theorem input72_def : input72 = (.seq input71 input70) := by
  unfold input72
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output72 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output71 output70)).val
theorem output72_def : output72 = (.seq output71 output70) := by
  unfold output72
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output72_skip : Flapjack.WordAlloc.isSkip output72 = false := by
  rw [output72_def]
  kernel_rfl
theorem node72_eq : Flapjack.WordAlloc.removeDeadStructural input72 value39 value1 value2 = (output72, value4, value1) := by
  rw [input72_def, output72_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node70_eq]
  dsimp only
  rw [node71_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output70_skip, output71_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input73 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input72 input69)).val
theorem input73_def : input73 = (.seq input72 input69) := by
  unfold input73
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output73 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output72 output69)).val
theorem output73_def : output73 = (.seq output72 output69) := by
  unfold output73
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output73_skip : Flapjack.WordAlloc.isSkip output73 = false := by
  rw [output73_def]
  kernel_rfl
theorem node73_eq : Flapjack.WordAlloc.removeDeadStructural input73 value38 value1 value2 = (output73, value4, value1) := by
  rw [input73_def, output73_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node69_eq]
  dsimp only
  rw [node72_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output69_skip, output72_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input74 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input73 input68)).val
theorem input74_def : input74 = (.seq input73 input68) := by
  unfold input74
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output74 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output73 output68)).val
theorem output74_def : output74 = (.seq output73 output68) := by
  unfold output74
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output74_skip : Flapjack.WordAlloc.isSkip output74 = false := by
  rw [output74_def]
  kernel_rfl
theorem node74_eq : Flapjack.WordAlloc.removeDeadStructural input74 value37 value1 value2 = (output74, value4, value1) := by
  rw [input74_def, output74_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node68_eq]
  dsimp only
  rw [node73_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output68_skip, output73_skip]
  kernel_rfl

def value41 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input75 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2441 (Flapjack.WordLangAddr.addr 2445 0#64)))).val
theorem input75_def : input75 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2441 (Flapjack.WordLangAddr.addr 2445 0#64))) := by
  unfold input75
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output75 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2441 (Flapjack.WordLangAddr.addr 2445 0#64)))).val
theorem output75_def : output75 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2441 (Flapjack.WordLangAddr.addr 2445 0#64))) := by
  unfold output75
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output75_skip : Flapjack.WordAlloc.isSkip output75 = false := by
  rw [output75_def]
  kernel_rfl
theorem node75_eq : Flapjack.WordAlloc.removeDeadStructural input75 value4 value1 value2 = (output75, value41, value1) := by
  rw [input75_def, output75_def]
  kernel_rfl

def value42 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input76 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2445, 2433)])).val
theorem input76_def : input76 = (Flapjack.WordLangProgHOL.move 0 [(2445, 2433)]) := by
  unfold input76
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output76 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2445, 2433)])).val
theorem output76_def : output76 = (Flapjack.WordLangProgHOL.move 0 [(2445, 2433)]) := by
  unfold output76
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output76_skip : Flapjack.WordAlloc.isSkip output76 = false := by
  rw [output76_def]
  kernel_rfl
theorem node76_eq : Flapjack.WordAlloc.removeDeadStructural input76 value41 value1 value2 = (output76, value42, value1) := by
  rw [input76_def, output76_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input77 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input76 input75)).val
theorem input77_def : input77 = (.seq input76 input75) := by
  unfold input77
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output77 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output76 output75)).val
theorem output77_def : output77 = (.seq output76 output75) := by
  unfold output77
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output77_skip : Flapjack.WordAlloc.isSkip output77 = false := by
  rw [output77_def]
  kernel_rfl
theorem node77_eq : Flapjack.WordAlloc.removeDeadStructural input77 value4 value1 value2 = (output77, value42, value1) := by
  rw [input77_def, output77_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node75_eq]
  dsimp only
  rw [node76_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output75_skip, output76_skip]
  kernel_rfl

def value43 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input78 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2441 0#64))).val
theorem input78_def : input78 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2441 0#64)) := by
  unfold input78
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output78 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2441 0#64))).val
theorem output78_def : output78 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2441 0#64)) := by
  unfold output78
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output78_skip : Flapjack.WordAlloc.isSkip output78 = false := by
  rw [output78_def]
  kernel_rfl
theorem node78_eq : Flapjack.WordAlloc.removeDeadStructural input78 value42 value1 value2 = (output78, value43, value1) := by
  rw [input78_def, output78_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input79 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2437 0#64))).val
theorem input79_def : input79 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2437 0#64)) := by
  unfold input79
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output79 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output79_def : output79 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output79
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output79_skip : Flapjack.WordAlloc.isSkip output79 = true := by
  rw [output79_def]
  kernel_rfl
theorem node79_eq : Flapjack.WordAlloc.removeDeadStructural input79 value43 value1 value2 = (output79, value43, value1) := by
  rw [input79_def, output79_def]
  kernel_rfl

def value44 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input80 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2433 2429 (Flapjack.WordRegImm.imm 18446744073709550920#64))))).val
theorem input80_def : input80 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2433 2429 (Flapjack.WordRegImm.imm 18446744073709550920#64)))) := by
  unfold input80
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output80 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2433 2429 (Flapjack.WordRegImm.imm 18446744073709550920#64))))).val
theorem output80_def : output80 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2433 2429 (Flapjack.WordRegImm.imm 18446744073709550920#64)))) := by
  unfold output80
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output80_skip : Flapjack.WordAlloc.isSkip output80 = false := by
  rw [output80_def]
  kernel_rfl
theorem node80_eq : Flapjack.WordAlloc.removeDeadStructural input80 value43 value1 value2 = (output80, value44, value1) := by
  rw [input80_def, output80_def]
  kernel_rfl

def value45 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input81 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2429 2425)).val
theorem input81_def : input81 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2429 2425) := by
  unfold input81
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output81 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2429 2425)).val
theorem output81_def : output81 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2429 2425) := by
  unfold output81
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output81_skip : Flapjack.WordAlloc.isSkip output81 = false := by
  rw [output81_def]
  kernel_rfl
theorem node81_eq : Flapjack.WordAlloc.removeDeadStructural input81 value44 value1 value2 = (output81, value45, value1) := by
  rw [input81_def, output81_def]
  kernel_rfl

def value46 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input82 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2425 2421 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input82_def : input82 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2425 2421 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input82
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output82 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2425 2421 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output82_def : output82 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2425 2421 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output82
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output82_skip : Flapjack.WordAlloc.isSkip output82 = false := by
  rw [output82_def]
  kernel_rfl
theorem node82_eq : Flapjack.WordAlloc.removeDeadStructural input82 value45 value1 value2 = (output82, value46, value1) := by
  rw [input82_def, output82_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input83 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2421 Flapjack.WordStore.heapLength)).val
theorem input83_def : input83 = (Flapjack.WordLangProgHOL.get 2421 Flapjack.WordStore.heapLength) := by
  unfold input83
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output83 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2421 Flapjack.WordStore.heapLength)).val
theorem output83_def : output83 = (Flapjack.WordLangProgHOL.get 2421 Flapjack.WordStore.heapLength) := by
  unfold output83
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output83_skip : Flapjack.WordAlloc.isSkip output83 = false := by
  rw [output83_def]
  kernel_rfl
theorem node83_eq : Flapjack.WordAlloc.removeDeadStructural input83 value46 value1 value2 = (output83, value4, value1) := by
  rw [input83_def, output83_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input84 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input83 input82)).val
theorem input84_def : input84 = (.seq input83 input82) := by
  unfold input84
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output84 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output83 output82)).val
theorem output84_def : output84 = (.seq output83 output82) := by
  unfold output84
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output84_skip : Flapjack.WordAlloc.isSkip output84 = false := by
  rw [output84_def]
  kernel_rfl
theorem node84_eq : Flapjack.WordAlloc.removeDeadStructural input84 value45 value1 value2 = (output84, value4, value1) := by
  rw [input84_def, output84_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node82_eq]
  dsimp only
  rw [node83_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output82_skip, output83_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input85 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input84 input81)).val
theorem input85_def : input85 = (.seq input84 input81) := by
  unfold input85
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output85 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output84 output81)).val
theorem output85_def : output85 = (.seq output84 output81) := by
  unfold output85
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output85_skip : Flapjack.WordAlloc.isSkip output85 = false := by
  rw [output85_def]
  kernel_rfl
theorem node85_eq : Flapjack.WordAlloc.removeDeadStructural input85 value44 value1 value2 = (output85, value4, value1) := by
  rw [input85_def, output85_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node81_eq]
  dsimp only
  rw [node84_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output81_skip, output84_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input86 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input85 input80)).val
theorem input86_def : input86 = (.seq input85 input80) := by
  unfold input86
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output86 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output85 output80)).val
theorem output86_def : output86 = (.seq output85 output80) := by
  unfold output86
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output86_skip : Flapjack.WordAlloc.isSkip output86 = false := by
  rw [output86_def]
  kernel_rfl
theorem node86_eq : Flapjack.WordAlloc.removeDeadStructural input86 value43 value1 value2 = (output86, value4, value1) := by
  rw [input86_def, output86_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node80_eq]
  dsimp only
  rw [node85_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output80_skip, output85_skip]
  kernel_rfl

def value47 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input87 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2413 (Flapjack.WordLangAddr.addr 2417 0#64)))).val
theorem input87_def : input87 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2413 (Flapjack.WordLangAddr.addr 2417 0#64))) := by
  unfold input87
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output87 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2413 (Flapjack.WordLangAddr.addr 2417 0#64)))).val
theorem output87_def : output87 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2413 (Flapjack.WordLangAddr.addr 2417 0#64))) := by
  unfold output87
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output87_skip : Flapjack.WordAlloc.isSkip output87 = false := by
  rw [output87_def]
  kernel_rfl
theorem node87_eq : Flapjack.WordAlloc.removeDeadStructural input87 value4 value1 value2 = (output87, value47, value1) := by
  rw [input87_def, output87_def]
  kernel_rfl

def value48 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input88 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2417, 2405)])).val
theorem input88_def : input88 = (Flapjack.WordLangProgHOL.move 0 [(2417, 2405)]) := by
  unfold input88
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output88 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2417, 2405)])).val
theorem output88_def : output88 = (Flapjack.WordLangProgHOL.move 0 [(2417, 2405)]) := by
  unfold output88
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output88_skip : Flapjack.WordAlloc.isSkip output88 = false := by
  rw [output88_def]
  kernel_rfl
theorem node88_eq : Flapjack.WordAlloc.removeDeadStructural input88 value47 value1 value2 = (output88, value48, value1) := by
  rw [input88_def, output88_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input89 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input88 input87)).val
theorem input89_def : input89 = (.seq input88 input87) := by
  unfold input89
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output89 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output88 output87)).val
theorem output89_def : output89 = (.seq output88 output87) := by
  unfold output89
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output89_skip : Flapjack.WordAlloc.isSkip output89 = false := by
  rw [output89_def]
  kernel_rfl
theorem node89_eq : Flapjack.WordAlloc.removeDeadStructural input89 value4 value1 value2 = (output89, value48, value1) := by
  rw [input89_def, output89_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node87_eq]
  dsimp only
  rw [node88_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output87_skip, output88_skip]
  kernel_rfl

def value49 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input90 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2413 0#64))).val
theorem input90_def : input90 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2413 0#64)) := by
  unfold input90
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output90 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2413 0#64))).val
theorem output90_def : output90 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2413 0#64)) := by
  unfold output90
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output90_skip : Flapjack.WordAlloc.isSkip output90 = false := by
  rw [output90_def]
  kernel_rfl
theorem node90_eq : Flapjack.WordAlloc.removeDeadStructural input90 value48 value1 value2 = (output90, value49, value1) := by
  rw [input90_def, output90_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input91 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2409 0#64))).val
theorem input91_def : input91 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2409 0#64)) := by
  unfold input91
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output91 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output91_def : output91 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output91
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output91_skip : Flapjack.WordAlloc.isSkip output91 = true := by
  rw [output91_def]
  kernel_rfl
theorem node91_eq : Flapjack.WordAlloc.removeDeadStructural input91 value49 value1 value2 = (output91, value49, value1) := by
  rw [input91_def, output91_def]
  kernel_rfl

def value50 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input92 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2405 2401 (Flapjack.WordRegImm.imm 18446744073709550928#64))))).val
theorem input92_def : input92 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2405 2401 (Flapjack.WordRegImm.imm 18446744073709550928#64)))) := by
  unfold input92
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output92 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2405 2401 (Flapjack.WordRegImm.imm 18446744073709550928#64))))).val
theorem output92_def : output92 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2405 2401 (Flapjack.WordRegImm.imm 18446744073709550928#64)))) := by
  unfold output92
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output92_skip : Flapjack.WordAlloc.isSkip output92 = false := by
  rw [output92_def]
  kernel_rfl
theorem node92_eq : Flapjack.WordAlloc.removeDeadStructural input92 value49 value1 value2 = (output92, value50, value1) := by
  rw [input92_def, output92_def]
  kernel_rfl

def value51 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input93 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2401 2397)).val
theorem input93_def : input93 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2401 2397) := by
  unfold input93
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output93 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2401 2397)).val
theorem output93_def : output93 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2401 2397) := by
  unfold output93
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output93_skip : Flapjack.WordAlloc.isSkip output93 = false := by
  rw [output93_def]
  kernel_rfl
theorem node93_eq : Flapjack.WordAlloc.removeDeadStructural input93 value50 value1 value2 = (output93, value51, value1) := by
  rw [input93_def, output93_def]
  kernel_rfl

def value52 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input94 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2397 2393 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input94_def : input94 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2397 2393 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input94
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output94 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2397 2393 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output94_def : output94 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2397 2393 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output94
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output94_skip : Flapjack.WordAlloc.isSkip output94 = false := by
  rw [output94_def]
  kernel_rfl
theorem node94_eq : Flapjack.WordAlloc.removeDeadStructural input94 value51 value1 value2 = (output94, value52, value1) := by
  rw [input94_def, output94_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input95 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2393 Flapjack.WordStore.heapLength)).val
theorem input95_def : input95 = (Flapjack.WordLangProgHOL.get 2393 Flapjack.WordStore.heapLength) := by
  unfold input95
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output95 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2393 Flapjack.WordStore.heapLength)).val
theorem output95_def : output95 = (Flapjack.WordLangProgHOL.get 2393 Flapjack.WordStore.heapLength) := by
  unfold output95
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output95_skip : Flapjack.WordAlloc.isSkip output95 = false := by
  rw [output95_def]
  kernel_rfl
theorem node95_eq : Flapjack.WordAlloc.removeDeadStructural input95 value52 value1 value2 = (output95, value4, value1) := by
  rw [input95_def, output95_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input96 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input95 input94)).val
theorem input96_def : input96 = (.seq input95 input94) := by
  unfold input96
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output96 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output95 output94)).val
theorem output96_def : output96 = (.seq output95 output94) := by
  unfold output96
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output96_skip : Flapjack.WordAlloc.isSkip output96 = false := by
  rw [output96_def]
  kernel_rfl
theorem node96_eq : Flapjack.WordAlloc.removeDeadStructural input96 value51 value1 value2 = (output96, value4, value1) := by
  rw [input96_def, output96_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node94_eq]
  dsimp only
  rw [node95_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output94_skip, output95_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input97 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input96 input93)).val
theorem input97_def : input97 = (.seq input96 input93) := by
  unfold input97
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output97 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output96 output93)).val
theorem output97_def : output97 = (.seq output96 output93) := by
  unfold output97
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output97_skip : Flapjack.WordAlloc.isSkip output97 = false := by
  rw [output97_def]
  kernel_rfl
theorem node97_eq : Flapjack.WordAlloc.removeDeadStructural input97 value50 value1 value2 = (output97, value4, value1) := by
  rw [input97_def, output97_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node93_eq]
  dsimp only
  rw [node96_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output93_skip, output96_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input98 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input97 input92)).val
theorem input98_def : input98 = (.seq input97 input92) := by
  unfold input98
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output98 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output97 output92)).val
theorem output98_def : output98 = (.seq output97 output92) := by
  unfold output98
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output98_skip : Flapjack.WordAlloc.isSkip output98 = false := by
  rw [output98_def]
  kernel_rfl
theorem node98_eq : Flapjack.WordAlloc.removeDeadStructural input98 value49 value1 value2 = (output98, value4, value1) := by
  rw [input98_def, output98_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node92_eq]
  dsimp only
  rw [node97_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output92_skip, output97_skip]
  kernel_rfl

def value53 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input99 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2385 (Flapjack.WordLangAddr.addr 2389 0#64)))).val
theorem input99_def : input99 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2385 (Flapjack.WordLangAddr.addr 2389 0#64))) := by
  unfold input99
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output99 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2385 (Flapjack.WordLangAddr.addr 2389 0#64)))).val
theorem output99_def : output99 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2385 (Flapjack.WordLangAddr.addr 2389 0#64))) := by
  unfold output99
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output99_skip : Flapjack.WordAlloc.isSkip output99 = false := by
  rw [output99_def]
  kernel_rfl
theorem node99_eq : Flapjack.WordAlloc.removeDeadStructural input99 value4 value1 value2 = (output99, value53, value1) := by
  rw [input99_def, output99_def]
  kernel_rfl

def value54 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2389, 2377)])).val
theorem input100_def : input100 = (Flapjack.WordLangProgHOL.move 0 [(2389, 2377)]) := by
  unfold input100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2389, 2377)])).val
theorem output100_def : output100 = (Flapjack.WordLangProgHOL.move 0 [(2389, 2377)]) := by
  unfold output100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output100_skip : Flapjack.WordAlloc.isSkip output100 = false := by
  rw [output100_def]
  kernel_rfl
theorem node100_eq : Flapjack.WordAlloc.removeDeadStructural input100 value53 value1 value2 = (output100, value54, value1) := by
  rw [input100_def, output100_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input100 input99)).val
theorem input101_def : input101 = (.seq input100 input99) := by
  unfold input101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output100 output99)).val
theorem output101_def : output101 = (.seq output100 output99) := by
  unfold output101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output101_skip : Flapjack.WordAlloc.isSkip output101 = false := by
  rw [output101_def]
  kernel_rfl
theorem node101_eq : Flapjack.WordAlloc.removeDeadStructural input101 value4 value1 value2 = (output101, value54, value1) := by
  rw [input101_def, output101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node99_eq]
  dsimp only
  rw [node100_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output99_skip, output100_skip]
  kernel_rfl

def value55 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2385 0#64))).val
theorem input102_def : input102 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2385 0#64)) := by
  unfold input102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2385 0#64))).val
theorem output102_def : output102 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2385 0#64)) := by
  unfold output102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output102_skip : Flapjack.WordAlloc.isSkip output102 = false := by
  rw [output102_def]
  kernel_rfl
theorem node102_eq : Flapjack.WordAlloc.removeDeadStructural input102 value54 value1 value2 = (output102, value55, value1) := by
  rw [input102_def, output102_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2381 0#64))).val
theorem input103_def : input103 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2381 0#64)) := by
  unfold input103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output103_def : output103 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output103_skip : Flapjack.WordAlloc.isSkip output103 = true := by
  rw [output103_def]
  kernel_rfl
theorem node103_eq : Flapjack.WordAlloc.removeDeadStructural input103 value55 value1 value2 = (output103, value55, value1) := by
  rw [input103_def, output103_def]
  kernel_rfl

def value56 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2377 2373 (Flapjack.WordRegImm.imm 18446744073709550936#64))))).val
theorem input104_def : input104 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2377 2373 (Flapjack.WordRegImm.imm 18446744073709550936#64)))) := by
  unfold input104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2377 2373 (Flapjack.WordRegImm.imm 18446744073709550936#64))))).val
theorem output104_def : output104 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2377 2373 (Flapjack.WordRegImm.imm 18446744073709550936#64)))) := by
  unfold output104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output104_skip : Flapjack.WordAlloc.isSkip output104 = false := by
  rw [output104_def]
  kernel_rfl
theorem node104_eq : Flapjack.WordAlloc.removeDeadStructural input104 value55 value1 value2 = (output104, value56, value1) := by
  rw [input104_def, output104_def]
  kernel_rfl

def value57 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2373 2369)).val
theorem input105_def : input105 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2373 2369) := by
  unfold input105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2373 2369)).val
theorem output105_def : output105 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2373 2369) := by
  unfold output105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output105_skip : Flapjack.WordAlloc.isSkip output105 = false := by
  rw [output105_def]
  kernel_rfl
theorem node105_eq : Flapjack.WordAlloc.removeDeadStructural input105 value56 value1 value2 = (output105, value57, value1) := by
  rw [input105_def, output105_def]
  kernel_rfl

def value58 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2369 2365 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input106_def : input106 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2369 2365 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2369 2365 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output106_def : output106 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2369 2365 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output106_skip : Flapjack.WordAlloc.isSkip output106 = false := by
  rw [output106_def]
  kernel_rfl
theorem node106_eq : Flapjack.WordAlloc.removeDeadStructural input106 value57 value1 value2 = (output106, value58, value1) := by
  rw [input106_def, output106_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2365 Flapjack.WordStore.heapLength)).val
theorem input107_def : input107 = (Flapjack.WordLangProgHOL.get 2365 Flapjack.WordStore.heapLength) := by
  unfold input107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2365 Flapjack.WordStore.heapLength)).val
theorem output107_def : output107 = (Flapjack.WordLangProgHOL.get 2365 Flapjack.WordStore.heapLength) := by
  unfold output107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output107_skip : Flapjack.WordAlloc.isSkip output107 = false := by
  rw [output107_def]
  kernel_rfl
theorem node107_eq : Flapjack.WordAlloc.removeDeadStructural input107 value58 value1 value2 = (output107, value4, value1) := by
  rw [input107_def, output107_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input107 input106)).val
theorem input108_def : input108 = (.seq input107 input106) := by
  unfold input108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output107 output106)).val
theorem output108_def : output108 = (.seq output107 output106) := by
  unfold output108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output108_skip : Flapjack.WordAlloc.isSkip output108 = false := by
  rw [output108_def]
  kernel_rfl
theorem node108_eq : Flapjack.WordAlloc.removeDeadStructural input108 value57 value1 value2 = (output108, value4, value1) := by
  rw [input108_def, output108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node106_eq]
  dsimp only
  rw [node107_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output106_skip, output107_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input108 input105)).val
theorem input109_def : input109 = (.seq input108 input105) := by
  unfold input109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output108 output105)).val
theorem output109_def : output109 = (.seq output108 output105) := by
  unfold output109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output109_skip : Flapjack.WordAlloc.isSkip output109 = false := by
  rw [output109_def]
  kernel_rfl
theorem node109_eq : Flapjack.WordAlloc.removeDeadStructural input109 value56 value1 value2 = (output109, value4, value1) := by
  rw [input109_def, output109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node105_eq]
  dsimp only
  rw [node108_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output105_skip, output108_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input109 input104)).val
theorem input110_def : input110 = (.seq input109 input104) := by
  unfold input110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output109 output104)).val
theorem output110_def : output110 = (.seq output109 output104) := by
  unfold output110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output110_skip : Flapjack.WordAlloc.isSkip output110 = false := by
  rw [output110_def]
  kernel_rfl
theorem node110_eq : Flapjack.WordAlloc.removeDeadStructural input110 value55 value1 value2 = (output110, value4, value1) := by
  rw [input110_def, output110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node104_eq]
  dsimp only
  rw [node109_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output104_skip, output109_skip]
  kernel_rfl

def value59 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2357 (Flapjack.WordLangAddr.addr 2361 0#64)))).val
theorem input111_def : input111 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2357 (Flapjack.WordLangAddr.addr 2361 0#64))) := by
  unfold input111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2357 (Flapjack.WordLangAddr.addr 2361 0#64)))).val
theorem output111_def : output111 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2357 (Flapjack.WordLangAddr.addr 2361 0#64))) := by
  unfold output111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output111_skip : Flapjack.WordAlloc.isSkip output111 = false := by
  rw [output111_def]
  kernel_rfl
theorem node111_eq : Flapjack.WordAlloc.removeDeadStructural input111 value4 value1 value2 = (output111, value59, value1) := by
  rw [input111_def, output111_def]
  kernel_rfl

def value60 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2361, 2349)])).val
theorem input112_def : input112 = (Flapjack.WordLangProgHOL.move 0 [(2361, 2349)]) := by
  unfold input112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2361, 2349)])).val
theorem output112_def : output112 = (Flapjack.WordLangProgHOL.move 0 [(2361, 2349)]) := by
  unfold output112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output112_skip : Flapjack.WordAlloc.isSkip output112 = false := by
  rw [output112_def]
  kernel_rfl
theorem node112_eq : Flapjack.WordAlloc.removeDeadStructural input112 value59 value1 value2 = (output112, value60, value1) := by
  rw [input112_def, output112_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input112 input111)).val
theorem input113_def : input113 = (.seq input112 input111) := by
  unfold input113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output112 output111)).val
theorem output113_def : output113 = (.seq output112 output111) := by
  unfold output113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output113_skip : Flapjack.WordAlloc.isSkip output113 = false := by
  rw [output113_def]
  kernel_rfl
theorem node113_eq : Flapjack.WordAlloc.removeDeadStructural input113 value4 value1 value2 = (output113, value60, value1) := by
  rw [input113_def, output113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node111_eq]
  dsimp only
  rw [node112_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output111_skip, output112_skip]
  kernel_rfl

def value61 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2357 0#64))).val
theorem input114_def : input114 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2357 0#64)) := by
  unfold input114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2357 0#64))).val
theorem output114_def : output114 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2357 0#64)) := by
  unfold output114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output114_skip : Flapjack.WordAlloc.isSkip output114 = false := by
  rw [output114_def]
  kernel_rfl
theorem node114_eq : Flapjack.WordAlloc.removeDeadStructural input114 value60 value1 value2 = (output114, value61, value1) := by
  rw [input114_def, output114_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2353 0#64))).val
theorem input115_def : input115 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2353 0#64)) := by
  unfold input115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output115_def : output115 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output115_skip : Flapjack.WordAlloc.isSkip output115 = true := by
  rw [output115_def]
  kernel_rfl
theorem node115_eq : Flapjack.WordAlloc.removeDeadStructural input115 value61 value1 value2 = (output115, value61, value1) := by
  rw [input115_def, output115_def]
  kernel_rfl

def value62 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2349 2345 (Flapjack.WordRegImm.imm 18446744073709550944#64))))).val
theorem input116_def : input116 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2349 2345 (Flapjack.WordRegImm.imm 18446744073709550944#64)))) := by
  unfold input116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2349 2345 (Flapjack.WordRegImm.imm 18446744073709550944#64))))).val
theorem output116_def : output116 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2349 2345 (Flapjack.WordRegImm.imm 18446744073709550944#64)))) := by
  unfold output116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output116_skip : Flapjack.WordAlloc.isSkip output116 = false := by
  rw [output116_def]
  kernel_rfl
theorem node116_eq : Flapjack.WordAlloc.removeDeadStructural input116 value61 value1 value2 = (output116, value62, value1) := by
  rw [input116_def, output116_def]
  kernel_rfl

def value63 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2345 2341)).val
theorem input117_def : input117 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2345 2341) := by
  unfold input117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2345 2341)).val
theorem output117_def : output117 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2345 2341) := by
  unfold output117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output117_skip : Flapjack.WordAlloc.isSkip output117 = false := by
  rw [output117_def]
  kernel_rfl
theorem node117_eq : Flapjack.WordAlloc.removeDeadStructural input117 value62 value1 value2 = (output117, value63, value1) := by
  rw [input117_def, output117_def]
  kernel_rfl

def value64 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2341 2337 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input118_def : input118 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2341 2337 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2341 2337 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output118_def : output118 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2341 2337 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output118_skip : Flapjack.WordAlloc.isSkip output118 = false := by
  rw [output118_def]
  kernel_rfl
theorem node118_eq : Flapjack.WordAlloc.removeDeadStructural input118 value63 value1 value2 = (output118, value64, value1) := by
  rw [input118_def, output118_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2337 Flapjack.WordStore.heapLength)).val
theorem input119_def : input119 = (Flapjack.WordLangProgHOL.get 2337 Flapjack.WordStore.heapLength) := by
  unfold input119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2337 Flapjack.WordStore.heapLength)).val
theorem output119_def : output119 = (Flapjack.WordLangProgHOL.get 2337 Flapjack.WordStore.heapLength) := by
  unfold output119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output119_skip : Flapjack.WordAlloc.isSkip output119 = false := by
  rw [output119_def]
  kernel_rfl
theorem node119_eq : Flapjack.WordAlloc.removeDeadStructural input119 value64 value1 value2 = (output119, value4, value1) := by
  rw [input119_def, output119_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input119 input118)).val
theorem input120_def : input120 = (.seq input119 input118) := by
  unfold input120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output119 output118)).val
theorem output120_def : output120 = (.seq output119 output118) := by
  unfold output120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output120_skip : Flapjack.WordAlloc.isSkip output120 = false := by
  rw [output120_def]
  kernel_rfl
theorem node120_eq : Flapjack.WordAlloc.removeDeadStructural input120 value63 value1 value2 = (output120, value4, value1) := by
  rw [input120_def, output120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node118_eq]
  dsimp only
  rw [node119_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output118_skip, output119_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input120 input117)).val
theorem input121_def : input121 = (.seq input120 input117) := by
  unfold input121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output120 output117)).val
theorem output121_def : output121 = (.seq output120 output117) := by
  unfold output121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output121_skip : Flapjack.WordAlloc.isSkip output121 = false := by
  rw [output121_def]
  kernel_rfl
theorem node121_eq : Flapjack.WordAlloc.removeDeadStructural input121 value62 value1 value2 = (output121, value4, value1) := by
  rw [input121_def, output121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node117_eq]
  dsimp only
  rw [node120_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output117_skip, output120_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input121 input116)).val
theorem input122_def : input122 = (.seq input121 input116) := by
  unfold input122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output121 output116)).val
theorem output122_def : output122 = (.seq output121 output116) := by
  unfold output122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output122_skip : Flapjack.WordAlloc.isSkip output122 = false := by
  rw [output122_def]
  kernel_rfl
theorem node122_eq : Flapjack.WordAlloc.removeDeadStructural input122 value61 value1 value2 = (output122, value4, value1) := by
  rw [input122_def, output122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node116_eq]
  dsimp only
  rw [node121_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output116_skip, output121_skip]
  kernel_rfl

def value65 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2329 (Flapjack.WordLangAddr.addr 2333 0#64)))).val
theorem input123_def : input123 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2329 (Flapjack.WordLangAddr.addr 2333 0#64))) := by
  unfold input123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2329 (Flapjack.WordLangAddr.addr 2333 0#64)))).val
theorem output123_def : output123 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2329 (Flapjack.WordLangAddr.addr 2333 0#64))) := by
  unfold output123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output123_skip : Flapjack.WordAlloc.isSkip output123 = false := by
  rw [output123_def]
  kernel_rfl
theorem node123_eq : Flapjack.WordAlloc.removeDeadStructural input123 value4 value1 value2 = (output123, value65, value1) := by
  rw [input123_def, output123_def]
  kernel_rfl

def value66 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2333, 2321)])).val
theorem input124_def : input124 = (Flapjack.WordLangProgHOL.move 0 [(2333, 2321)]) := by
  unfold input124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2333, 2321)])).val
theorem output124_def : output124 = (Flapjack.WordLangProgHOL.move 0 [(2333, 2321)]) := by
  unfold output124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output124_skip : Flapjack.WordAlloc.isSkip output124 = false := by
  rw [output124_def]
  kernel_rfl
theorem node124_eq : Flapjack.WordAlloc.removeDeadStructural input124 value65 value1 value2 = (output124, value66, value1) := by
  rw [input124_def, output124_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input124 input123)).val
theorem input125_def : input125 = (.seq input124 input123) := by
  unfold input125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output124 output123)).val
theorem output125_def : output125 = (.seq output124 output123) := by
  unfold output125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output125_skip : Flapjack.WordAlloc.isSkip output125 = false := by
  rw [output125_def]
  kernel_rfl
theorem node125_eq : Flapjack.WordAlloc.removeDeadStructural input125 value4 value1 value2 = (output125, value66, value1) := by
  rw [input125_def, output125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node123_eq]
  dsimp only
  rw [node124_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output123_skip, output124_skip]
  kernel_rfl

def value67 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2329 0#64))).val
theorem input126_def : input126 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2329 0#64)) := by
  unfold input126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2329 0#64))).val
theorem output126_def : output126 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2329 0#64)) := by
  unfold output126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output126_skip : Flapjack.WordAlloc.isSkip output126 = false := by
  rw [output126_def]
  kernel_rfl
theorem node126_eq : Flapjack.WordAlloc.removeDeadStructural input126 value66 value1 value2 = (output126, value67, value1) := by
  rw [input126_def, output126_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2325 0#64))).val
theorem input127_def : input127 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2325 0#64)) := by
  unfold input127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output127_def : output127 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output127_skip : Flapjack.WordAlloc.isSkip output127 = true := by
  rw [output127_def]
  kernel_rfl
theorem node127_eq : Flapjack.WordAlloc.removeDeadStructural input127 value67 value1 value2 = (output127, value67, value1) := by
  rw [input127_def, output127_def]
  kernel_rfl

def value68 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2321 2317 (Flapjack.WordRegImm.imm 18446744073709550952#64))))).val
theorem input128_def : input128 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2321 2317 (Flapjack.WordRegImm.imm 18446744073709550952#64)))) := by
  unfold input128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2321 2317 (Flapjack.WordRegImm.imm 18446744073709550952#64))))).val
theorem output128_def : output128 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2321 2317 (Flapjack.WordRegImm.imm 18446744073709550952#64)))) := by
  unfold output128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output128_skip : Flapjack.WordAlloc.isSkip output128 = false := by
  rw [output128_def]
  kernel_rfl
theorem node128_eq : Flapjack.WordAlloc.removeDeadStructural input128 value67 value1 value2 = (output128, value68, value1) := by
  rw [input128_def, output128_def]
  kernel_rfl

def value69 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2317 2313)).val
theorem input129_def : input129 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2317 2313) := by
  unfold input129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2317 2313)).val
theorem output129_def : output129 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2317 2313) := by
  unfold output129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output129_skip : Flapjack.WordAlloc.isSkip output129 = false := by
  rw [output129_def]
  kernel_rfl
theorem node129_eq : Flapjack.WordAlloc.removeDeadStructural input129 value68 value1 value2 = (output129, value69, value1) := by
  rw [input129_def, output129_def]
  kernel_rfl

def value70 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2313 2309 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input130_def : input130 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2313 2309 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2313 2309 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output130_def : output130 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2313 2309 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output130_skip : Flapjack.WordAlloc.isSkip output130 = false := by
  rw [output130_def]
  kernel_rfl
theorem node130_eq : Flapjack.WordAlloc.removeDeadStructural input130 value69 value1 value2 = (output130, value70, value1) := by
  rw [input130_def, output130_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2309 Flapjack.WordStore.heapLength)).val
theorem input131_def : input131 = (Flapjack.WordLangProgHOL.get 2309 Flapjack.WordStore.heapLength) := by
  unfold input131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2309 Flapjack.WordStore.heapLength)).val
theorem output131_def : output131 = (Flapjack.WordLangProgHOL.get 2309 Flapjack.WordStore.heapLength) := by
  unfold output131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output131_skip : Flapjack.WordAlloc.isSkip output131 = false := by
  rw [output131_def]
  kernel_rfl
theorem node131_eq : Flapjack.WordAlloc.removeDeadStructural input131 value70 value1 value2 = (output131, value4, value1) := by
  rw [input131_def, output131_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input131 input130)).val
theorem input132_def : input132 = (.seq input131 input130) := by
  unfold input132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output131 output130)).val
theorem output132_def : output132 = (.seq output131 output130) := by
  unfold output132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output132_skip : Flapjack.WordAlloc.isSkip output132 = false := by
  rw [output132_def]
  kernel_rfl
theorem node132_eq : Flapjack.WordAlloc.removeDeadStructural input132 value69 value1 value2 = (output132, value4, value1) := by
  rw [input132_def, output132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node130_eq]
  dsimp only
  rw [node131_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output130_skip, output131_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input132 input129)).val
theorem input133_def : input133 = (.seq input132 input129) := by
  unfold input133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output132 output129)).val
theorem output133_def : output133 = (.seq output132 output129) := by
  unfold output133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output133_skip : Flapjack.WordAlloc.isSkip output133 = false := by
  rw [output133_def]
  kernel_rfl
theorem node133_eq : Flapjack.WordAlloc.removeDeadStructural input133 value68 value1 value2 = (output133, value4, value1) := by
  rw [input133_def, output133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node129_eq]
  dsimp only
  rw [node132_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output129_skip, output132_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input133 input128)).val
theorem input134_def : input134 = (.seq input133 input128) := by
  unfold input134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output133 output128)).val
theorem output134_def : output134 = (.seq output133 output128) := by
  unfold output134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output134_skip : Flapjack.WordAlloc.isSkip output134 = false := by
  rw [output134_def]
  kernel_rfl
theorem node134_eq : Flapjack.WordAlloc.removeDeadStructural input134 value67 value1 value2 = (output134, value4, value1) := by
  rw [input134_def, output134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node128_eq]
  dsimp only
  rw [node133_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output128_skip, output133_skip]
  kernel_rfl

def value71 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2301 (Flapjack.WordLangAddr.addr 2305 0#64)))).val
theorem input135_def : input135 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2301 (Flapjack.WordLangAddr.addr 2305 0#64))) := by
  unfold input135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2301 (Flapjack.WordLangAddr.addr 2305 0#64)))).val
theorem output135_def : output135 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2301 (Flapjack.WordLangAddr.addr 2305 0#64))) := by
  unfold output135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output135_skip : Flapjack.WordAlloc.isSkip output135 = false := by
  rw [output135_def]
  kernel_rfl
theorem node135_eq : Flapjack.WordAlloc.removeDeadStructural input135 value4 value1 value2 = (output135, value71, value1) := by
  rw [input135_def, output135_def]
  kernel_rfl

def value72 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2305, 2293)])).val
theorem input136_def : input136 = (Flapjack.WordLangProgHOL.move 0 [(2305, 2293)]) := by
  unfold input136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2305, 2293)])).val
theorem output136_def : output136 = (Flapjack.WordLangProgHOL.move 0 [(2305, 2293)]) := by
  unfold output136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output136_skip : Flapjack.WordAlloc.isSkip output136 = false := by
  rw [output136_def]
  kernel_rfl
theorem node136_eq : Flapjack.WordAlloc.removeDeadStructural input136 value71 value1 value2 = (output136, value72, value1) := by
  rw [input136_def, output136_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input136 input135)).val
theorem input137_def : input137 = (.seq input136 input135) := by
  unfold input137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output136 output135)).val
theorem output137_def : output137 = (.seq output136 output135) := by
  unfold output137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output137_skip : Flapjack.WordAlloc.isSkip output137 = false := by
  rw [output137_def]
  kernel_rfl
theorem node137_eq : Flapjack.WordAlloc.removeDeadStructural input137 value4 value1 value2 = (output137, value72, value1) := by
  rw [input137_def, output137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node135_eq]
  dsimp only
  rw [node136_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output135_skip, output136_skip]
  kernel_rfl

def value73 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2301 0#64))).val
theorem input138_def : input138 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2301 0#64)) := by
  unfold input138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2301 0#64))).val
theorem output138_def : output138 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2301 0#64)) := by
  unfold output138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output138_skip : Flapjack.WordAlloc.isSkip output138 = false := by
  rw [output138_def]
  kernel_rfl
theorem node138_eq : Flapjack.WordAlloc.removeDeadStructural input138 value72 value1 value2 = (output138, value73, value1) := by
  rw [input138_def, output138_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2297 0#64))).val
theorem input139_def : input139 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2297 0#64)) := by
  unfold input139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output139_def : output139 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output139_skip : Flapjack.WordAlloc.isSkip output139 = true := by
  rw [output139_def]
  kernel_rfl
theorem node139_eq : Flapjack.WordAlloc.removeDeadStructural input139 value73 value1 value2 = (output139, value73, value1) := by
  rw [input139_def, output139_def]
  kernel_rfl

def value74 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2293 2289 (Flapjack.WordRegImm.imm 18446744073709550960#64))))).val
theorem input140_def : input140 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2293 2289 (Flapjack.WordRegImm.imm 18446744073709550960#64)))) := by
  unfold input140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2293 2289 (Flapjack.WordRegImm.imm 18446744073709550960#64))))).val
theorem output140_def : output140 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2293 2289 (Flapjack.WordRegImm.imm 18446744073709550960#64)))) := by
  unfold output140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output140_skip : Flapjack.WordAlloc.isSkip output140 = false := by
  rw [output140_def]
  kernel_rfl
theorem node140_eq : Flapjack.WordAlloc.removeDeadStructural input140 value73 value1 value2 = (output140, value74, value1) := by
  rw [input140_def, output140_def]
  kernel_rfl

def value75 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2289 2285)).val
theorem input141_def : input141 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2289 2285) := by
  unfold input141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2289 2285)).val
theorem output141_def : output141 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2289 2285) := by
  unfold output141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output141_skip : Flapjack.WordAlloc.isSkip output141 = false := by
  rw [output141_def]
  kernel_rfl
theorem node141_eq : Flapjack.WordAlloc.removeDeadStructural input141 value74 value1 value2 = (output141, value75, value1) := by
  rw [input141_def, output141_def]
  kernel_rfl

def value76 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2285 2281 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input142_def : input142 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2285 2281 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2285 2281 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output142_def : output142 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2285 2281 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output142_skip : Flapjack.WordAlloc.isSkip output142 = false := by
  rw [output142_def]
  kernel_rfl
theorem node142_eq : Flapjack.WordAlloc.removeDeadStructural input142 value75 value1 value2 = (output142, value76, value1) := by
  rw [input142_def, output142_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2281 Flapjack.WordStore.heapLength)).val
theorem input143_def : input143 = (Flapjack.WordLangProgHOL.get 2281 Flapjack.WordStore.heapLength) := by
  unfold input143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2281 Flapjack.WordStore.heapLength)).val
theorem output143_def : output143 = (Flapjack.WordLangProgHOL.get 2281 Flapjack.WordStore.heapLength) := by
  unfold output143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output143_skip : Flapjack.WordAlloc.isSkip output143 = false := by
  rw [output143_def]
  kernel_rfl
theorem node143_eq : Flapjack.WordAlloc.removeDeadStructural input143 value76 value1 value2 = (output143, value4, value1) := by
  rw [input143_def, output143_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input143 input142)).val
theorem input144_def : input144 = (.seq input143 input142) := by
  unfold input144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output143 output142)).val
theorem output144_def : output144 = (.seq output143 output142) := by
  unfold output144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output144_skip : Flapjack.WordAlloc.isSkip output144 = false := by
  rw [output144_def]
  kernel_rfl
theorem node144_eq : Flapjack.WordAlloc.removeDeadStructural input144 value75 value1 value2 = (output144, value4, value1) := by
  rw [input144_def, output144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node142_eq]
  dsimp only
  rw [node143_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output142_skip, output143_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input144 input141)).val
theorem input145_def : input145 = (.seq input144 input141) := by
  unfold input145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output144 output141)).val
theorem output145_def : output145 = (.seq output144 output141) := by
  unfold output145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output145_skip : Flapjack.WordAlloc.isSkip output145 = false := by
  rw [output145_def]
  kernel_rfl
theorem node145_eq : Flapjack.WordAlloc.removeDeadStructural input145 value74 value1 value2 = (output145, value4, value1) := by
  rw [input145_def, output145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node141_eq]
  dsimp only
  rw [node144_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output141_skip, output144_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input145 input140)).val
theorem input146_def : input146 = (.seq input145 input140) := by
  unfold input146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output145 output140)).val
theorem output146_def : output146 = (.seq output145 output140) := by
  unfold output146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output146_skip : Flapjack.WordAlloc.isSkip output146 = false := by
  rw [output146_def]
  kernel_rfl
theorem node146_eq : Flapjack.WordAlloc.removeDeadStructural input146 value73 value1 value2 = (output146, value4, value1) := by
  rw [input146_def, output146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node140_eq]
  dsimp only
  rw [node145_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output140_skip, output145_skip]
  kernel_rfl

def value77 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2273 (Flapjack.WordLangAddr.addr 2277 0#64)))).val
theorem input147_def : input147 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2273 (Flapjack.WordLangAddr.addr 2277 0#64))) := by
  unfold input147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2273 (Flapjack.WordLangAddr.addr 2277 0#64)))).val
theorem output147_def : output147 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2273 (Flapjack.WordLangAddr.addr 2277 0#64))) := by
  unfold output147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output147_skip : Flapjack.WordAlloc.isSkip output147 = false := by
  rw [output147_def]
  kernel_rfl
theorem node147_eq : Flapjack.WordAlloc.removeDeadStructural input147 value4 value1 value2 = (output147, value77, value1) := by
  rw [input147_def, output147_def]
  kernel_rfl

def value78 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2277, 2265)])).val
theorem input148_def : input148 = (Flapjack.WordLangProgHOL.move 0 [(2277, 2265)]) := by
  unfold input148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2277, 2265)])).val
theorem output148_def : output148 = (Flapjack.WordLangProgHOL.move 0 [(2277, 2265)]) := by
  unfold output148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output148_skip : Flapjack.WordAlloc.isSkip output148 = false := by
  rw [output148_def]
  kernel_rfl
theorem node148_eq : Flapjack.WordAlloc.removeDeadStructural input148 value77 value1 value2 = (output148, value78, value1) := by
  rw [input148_def, output148_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input148 input147)).val
theorem input149_def : input149 = (.seq input148 input147) := by
  unfold input149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output148 output147)).val
theorem output149_def : output149 = (.seq output148 output147) := by
  unfold output149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output149_skip : Flapjack.WordAlloc.isSkip output149 = false := by
  rw [output149_def]
  kernel_rfl
theorem node149_eq : Flapjack.WordAlloc.removeDeadStructural input149 value4 value1 value2 = (output149, value78, value1) := by
  rw [input149_def, output149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node147_eq]
  dsimp only
  rw [node148_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output147_skip, output148_skip]
  kernel_rfl

def value79 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2273 0#64))).val
theorem input150_def : input150 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2273 0#64)) := by
  unfold input150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2273 0#64))).val
theorem output150_def : output150 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2273 0#64)) := by
  unfold output150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output150_skip : Flapjack.WordAlloc.isSkip output150 = false := by
  rw [output150_def]
  kernel_rfl
theorem node150_eq : Flapjack.WordAlloc.removeDeadStructural input150 value78 value1 value2 = (output150, value79, value1) := by
  rw [input150_def, output150_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2269 0#64))).val
theorem input151_def : input151 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2269 0#64)) := by
  unfold input151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output151_def : output151 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output151_skip : Flapjack.WordAlloc.isSkip output151 = true := by
  rw [output151_def]
  kernel_rfl
theorem node151_eq : Flapjack.WordAlloc.removeDeadStructural input151 value79 value1 value2 = (output151, value79, value1) := by
  rw [input151_def, output151_def]
  kernel_rfl

def value80 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2265 2261 (Flapjack.WordRegImm.imm 18446744073709550968#64))))).val
theorem input152_def : input152 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2265 2261 (Flapjack.WordRegImm.imm 18446744073709550968#64)))) := by
  unfold input152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2265 2261 (Flapjack.WordRegImm.imm 18446744073709550968#64))))).val
theorem output152_def : output152 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2265 2261 (Flapjack.WordRegImm.imm 18446744073709550968#64)))) := by
  unfold output152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output152_skip : Flapjack.WordAlloc.isSkip output152 = false := by
  rw [output152_def]
  kernel_rfl
theorem node152_eq : Flapjack.WordAlloc.removeDeadStructural input152 value79 value1 value2 = (output152, value80, value1) := by
  rw [input152_def, output152_def]
  kernel_rfl

def value81 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2261 2257)).val
theorem input153_def : input153 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2261 2257) := by
  unfold input153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2261 2257)).val
theorem output153_def : output153 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2261 2257) := by
  unfold output153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output153_skip : Flapjack.WordAlloc.isSkip output153 = false := by
  rw [output153_def]
  kernel_rfl
theorem node153_eq : Flapjack.WordAlloc.removeDeadStructural input153 value80 value1 value2 = (output153, value81, value1) := by
  rw [input153_def, output153_def]
  kernel_rfl

def value82 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2257 2253 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input154_def : input154 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2257 2253 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2257 2253 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output154_def : output154 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2257 2253 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output154_skip : Flapjack.WordAlloc.isSkip output154 = false := by
  rw [output154_def]
  kernel_rfl
theorem node154_eq : Flapjack.WordAlloc.removeDeadStructural input154 value81 value1 value2 = (output154, value82, value1) := by
  rw [input154_def, output154_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2253 Flapjack.WordStore.heapLength)).val
theorem input155_def : input155 = (Flapjack.WordLangProgHOL.get 2253 Flapjack.WordStore.heapLength) := by
  unfold input155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2253 Flapjack.WordStore.heapLength)).val
theorem output155_def : output155 = (Flapjack.WordLangProgHOL.get 2253 Flapjack.WordStore.heapLength) := by
  unfold output155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output155_skip : Flapjack.WordAlloc.isSkip output155 = false := by
  rw [output155_def]
  kernel_rfl
theorem node155_eq : Flapjack.WordAlloc.removeDeadStructural input155 value82 value1 value2 = (output155, value4, value1) := by
  rw [input155_def, output155_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input155 input154)).val
theorem input156_def : input156 = (.seq input155 input154) := by
  unfold input156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output155 output154)).val
theorem output156_def : output156 = (.seq output155 output154) := by
  unfold output156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output156_skip : Flapjack.WordAlloc.isSkip output156 = false := by
  rw [output156_def]
  kernel_rfl
theorem node156_eq : Flapjack.WordAlloc.removeDeadStructural input156 value81 value1 value2 = (output156, value4, value1) := by
  rw [input156_def, output156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node154_eq]
  dsimp only
  rw [node155_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output154_skip, output155_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input156 input153)).val
theorem input157_def : input157 = (.seq input156 input153) := by
  unfold input157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output156 output153)).val
theorem output157_def : output157 = (.seq output156 output153) := by
  unfold output157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output157_skip : Flapjack.WordAlloc.isSkip output157 = false := by
  rw [output157_def]
  kernel_rfl
theorem node157_eq : Flapjack.WordAlloc.removeDeadStructural input157 value80 value1 value2 = (output157, value4, value1) := by
  rw [input157_def, output157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node153_eq]
  dsimp only
  rw [node156_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output153_skip, output156_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input157 input152)).val
theorem input158_def : input158 = (.seq input157 input152) := by
  unfold input158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output157 output152)).val
theorem output158_def : output158 = (.seq output157 output152) := by
  unfold output158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output158_skip : Flapjack.WordAlloc.isSkip output158 = false := by
  rw [output158_def]
  kernel_rfl
theorem node158_eq : Flapjack.WordAlloc.removeDeadStructural input158 value79 value1 value2 = (output158, value4, value1) := by
  rw [input158_def, output158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node152_eq]
  dsimp only
  rw [node157_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output152_skip, output157_skip]
  kernel_rfl

def value83 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2245 (Flapjack.WordLangAddr.addr 2249 0#64)))).val
theorem input159_def : input159 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2245 (Flapjack.WordLangAddr.addr 2249 0#64))) := by
  unfold input159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2245 (Flapjack.WordLangAddr.addr 2249 0#64)))).val
theorem output159_def : output159 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2245 (Flapjack.WordLangAddr.addr 2249 0#64))) := by
  unfold output159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output159_skip : Flapjack.WordAlloc.isSkip output159 = false := by
  rw [output159_def]
  kernel_rfl
theorem node159_eq : Flapjack.WordAlloc.removeDeadStructural input159 value4 value1 value2 = (output159, value83, value1) := by
  rw [input159_def, output159_def]
  kernel_rfl

def value84 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2249, 2237)])).val
theorem input160_def : input160 = (Flapjack.WordLangProgHOL.move 0 [(2249, 2237)]) := by
  unfold input160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2249, 2237)])).val
theorem output160_def : output160 = (Flapjack.WordLangProgHOL.move 0 [(2249, 2237)]) := by
  unfold output160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output160_skip : Flapjack.WordAlloc.isSkip output160 = false := by
  rw [output160_def]
  kernel_rfl
theorem node160_eq : Flapjack.WordAlloc.removeDeadStructural input160 value83 value1 value2 = (output160, value84, value1) := by
  rw [input160_def, output160_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input160 input159)).val
theorem input161_def : input161 = (.seq input160 input159) := by
  unfold input161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output160 output159)).val
theorem output161_def : output161 = (.seq output160 output159) := by
  unfold output161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output161_skip : Flapjack.WordAlloc.isSkip output161 = false := by
  rw [output161_def]
  kernel_rfl
theorem node161_eq : Flapjack.WordAlloc.removeDeadStructural input161 value4 value1 value2 = (output161, value84, value1) := by
  rw [input161_def, output161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node159_eq]
  dsimp only
  rw [node160_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output159_skip, output160_skip]
  kernel_rfl

def value85 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2245 0#64))).val
theorem input162_def : input162 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2245 0#64)) := by
  unfold input162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2245 0#64))).val
theorem output162_def : output162 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2245 0#64)) := by
  unfold output162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output162_skip : Flapjack.WordAlloc.isSkip output162 = false := by
  rw [output162_def]
  kernel_rfl
theorem node162_eq : Flapjack.WordAlloc.removeDeadStructural input162 value84 value1 value2 = (output162, value85, value1) := by
  rw [input162_def, output162_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2241 0#64))).val
theorem input163_def : input163 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2241 0#64)) := by
  unfold input163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output163_def : output163 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output163_skip : Flapjack.WordAlloc.isSkip output163 = true := by
  rw [output163_def]
  kernel_rfl
theorem node163_eq : Flapjack.WordAlloc.removeDeadStructural input163 value85 value1 value2 = (output163, value85, value1) := by
  rw [input163_def, output163_def]
  kernel_rfl

def value86 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2237 2233 (Flapjack.WordRegImm.imm 18446744073709550976#64))))).val
theorem input164_def : input164 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2237 2233 (Flapjack.WordRegImm.imm 18446744073709550976#64)))) := by
  unfold input164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2237 2233 (Flapjack.WordRegImm.imm 18446744073709550976#64))))).val
theorem output164_def : output164 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2237 2233 (Flapjack.WordRegImm.imm 18446744073709550976#64)))) := by
  unfold output164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output164_skip : Flapjack.WordAlloc.isSkip output164 = false := by
  rw [output164_def]
  kernel_rfl
theorem node164_eq : Flapjack.WordAlloc.removeDeadStructural input164 value85 value1 value2 = (output164, value86, value1) := by
  rw [input164_def, output164_def]
  kernel_rfl

def value87 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2233 2229)).val
theorem input165_def : input165 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2233 2229) := by
  unfold input165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2233 2229)).val
theorem output165_def : output165 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2233 2229) := by
  unfold output165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output165_skip : Flapjack.WordAlloc.isSkip output165 = false := by
  rw [output165_def]
  kernel_rfl
theorem node165_eq : Flapjack.WordAlloc.removeDeadStructural input165 value86 value1 value2 = (output165, value87, value1) := by
  rw [input165_def, output165_def]
  kernel_rfl

def value88 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2229 2225 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input166_def : input166 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2229 2225 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2229 2225 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output166_def : output166 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2229 2225 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output166_skip : Flapjack.WordAlloc.isSkip output166 = false := by
  rw [output166_def]
  kernel_rfl
theorem node166_eq : Flapjack.WordAlloc.removeDeadStructural input166 value87 value1 value2 = (output166, value88, value1) := by
  rw [input166_def, output166_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2225 Flapjack.WordStore.heapLength)).val
theorem input167_def : input167 = (Flapjack.WordLangProgHOL.get 2225 Flapjack.WordStore.heapLength) := by
  unfold input167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2225 Flapjack.WordStore.heapLength)).val
theorem output167_def : output167 = (Flapjack.WordLangProgHOL.get 2225 Flapjack.WordStore.heapLength) := by
  unfold output167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output167_skip : Flapjack.WordAlloc.isSkip output167 = false := by
  rw [output167_def]
  kernel_rfl
theorem node167_eq : Flapjack.WordAlloc.removeDeadStructural input167 value88 value1 value2 = (output167, value4, value1) := by
  rw [input167_def, output167_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input167 input166)).val
theorem input168_def : input168 = (.seq input167 input166) := by
  unfold input168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output167 output166)).val
theorem output168_def : output168 = (.seq output167 output166) := by
  unfold output168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output168_skip : Flapjack.WordAlloc.isSkip output168 = false := by
  rw [output168_def]
  kernel_rfl
theorem node168_eq : Flapjack.WordAlloc.removeDeadStructural input168 value87 value1 value2 = (output168, value4, value1) := by
  rw [input168_def, output168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node166_eq]
  dsimp only
  rw [node167_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output166_skip, output167_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input168 input165)).val
theorem input169_def : input169 = (.seq input168 input165) := by
  unfold input169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output168 output165)).val
theorem output169_def : output169 = (.seq output168 output165) := by
  unfold output169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output169_skip : Flapjack.WordAlloc.isSkip output169 = false := by
  rw [output169_def]
  kernel_rfl
theorem node169_eq : Flapjack.WordAlloc.removeDeadStructural input169 value86 value1 value2 = (output169, value4, value1) := by
  rw [input169_def, output169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node165_eq]
  dsimp only
  rw [node168_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output165_skip, output168_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input169 input164)).val
theorem input170_def : input170 = (.seq input169 input164) := by
  unfold input170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output169 output164)).val
theorem output170_def : output170 = (.seq output169 output164) := by
  unfold output170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output170_skip : Flapjack.WordAlloc.isSkip output170 = false := by
  rw [output170_def]
  kernel_rfl
theorem node170_eq : Flapjack.WordAlloc.removeDeadStructural input170 value85 value1 value2 = (output170, value4, value1) := by
  rw [input170_def, output170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node164_eq]
  dsimp only
  rw [node169_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output164_skip, output169_skip]
  kernel_rfl

def value89 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2217 (Flapjack.WordLangAddr.addr 2221 0#64)))).val
theorem input171_def : input171 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2217 (Flapjack.WordLangAddr.addr 2221 0#64))) := by
  unfold input171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2217 (Flapjack.WordLangAddr.addr 2221 0#64)))).val
theorem output171_def : output171 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2217 (Flapjack.WordLangAddr.addr 2221 0#64))) := by
  unfold output171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output171_skip : Flapjack.WordAlloc.isSkip output171 = false := by
  rw [output171_def]
  kernel_rfl
theorem node171_eq : Flapjack.WordAlloc.removeDeadStructural input171 value4 value1 value2 = (output171, value89, value1) := by
  rw [input171_def, output171_def]
  kernel_rfl

def value90 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2221, 2209)])).val
theorem input172_def : input172 = (Flapjack.WordLangProgHOL.move 0 [(2221, 2209)]) := by
  unfold input172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2221, 2209)])).val
theorem output172_def : output172 = (Flapjack.WordLangProgHOL.move 0 [(2221, 2209)]) := by
  unfold output172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output172_skip : Flapjack.WordAlloc.isSkip output172 = false := by
  rw [output172_def]
  kernel_rfl
theorem node172_eq : Flapjack.WordAlloc.removeDeadStructural input172 value89 value1 value2 = (output172, value90, value1) := by
  rw [input172_def, output172_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input172 input171)).val
theorem input173_def : input173 = (.seq input172 input171) := by
  unfold input173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output172 output171)).val
theorem output173_def : output173 = (.seq output172 output171) := by
  unfold output173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output173_skip : Flapjack.WordAlloc.isSkip output173 = false := by
  rw [output173_def]
  kernel_rfl
theorem node173_eq : Flapjack.WordAlloc.removeDeadStructural input173 value4 value1 value2 = (output173, value90, value1) := by
  rw [input173_def, output173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node171_eq]
  dsimp only
  rw [node172_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output171_skip, output172_skip]
  kernel_rfl

def value91 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2217 0#64))).val
theorem input174_def : input174 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2217 0#64)) := by
  unfold input174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2217 0#64))).val
theorem output174_def : output174 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2217 0#64)) := by
  unfold output174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output174_skip : Flapjack.WordAlloc.isSkip output174 = false := by
  rw [output174_def]
  kernel_rfl
theorem node174_eq : Flapjack.WordAlloc.removeDeadStructural input174 value90 value1 value2 = (output174, value91, value1) := by
  rw [input174_def, output174_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2213 0#64))).val
theorem input175_def : input175 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2213 0#64)) := by
  unfold input175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output175_def : output175 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output175_skip : Flapjack.WordAlloc.isSkip output175 = true := by
  rw [output175_def]
  kernel_rfl
theorem node175_eq : Flapjack.WordAlloc.removeDeadStructural input175 value91 value1 value2 = (output175, value91, value1) := by
  rw [input175_def, output175_def]
  kernel_rfl

def value92 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2209 2205 (Flapjack.WordRegImm.imm 18446744073709550984#64))))).val
theorem input176_def : input176 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2209 2205 (Flapjack.WordRegImm.imm 18446744073709550984#64)))) := by
  unfold input176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2209 2205 (Flapjack.WordRegImm.imm 18446744073709550984#64))))).val
theorem output176_def : output176 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2209 2205 (Flapjack.WordRegImm.imm 18446744073709550984#64)))) := by
  unfold output176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output176_skip : Flapjack.WordAlloc.isSkip output176 = false := by
  rw [output176_def]
  kernel_rfl
theorem node176_eq : Flapjack.WordAlloc.removeDeadStructural input176 value91 value1 value2 = (output176, value92, value1) := by
  rw [input176_def, output176_def]
  kernel_rfl

def value93 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2205 2201)).val
theorem input177_def : input177 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2205 2201) := by
  unfold input177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2205 2201)).val
theorem output177_def : output177 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2205 2201) := by
  unfold output177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output177_skip : Flapjack.WordAlloc.isSkip output177 = false := by
  rw [output177_def]
  kernel_rfl
theorem node177_eq : Flapjack.WordAlloc.removeDeadStructural input177 value92 value1 value2 = (output177, value93, value1) := by
  rw [input177_def, output177_def]
  kernel_rfl

def value94 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2201 2197 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input178_def : input178 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2201 2197 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2201 2197 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output178_def : output178 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2201 2197 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output178_skip : Flapjack.WordAlloc.isSkip output178 = false := by
  rw [output178_def]
  kernel_rfl
theorem node178_eq : Flapjack.WordAlloc.removeDeadStructural input178 value93 value1 value2 = (output178, value94, value1) := by
  rw [input178_def, output178_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2197 Flapjack.WordStore.heapLength)).val
theorem input179_def : input179 = (Flapjack.WordLangProgHOL.get 2197 Flapjack.WordStore.heapLength) := by
  unfold input179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2197 Flapjack.WordStore.heapLength)).val
theorem output179_def : output179 = (Flapjack.WordLangProgHOL.get 2197 Flapjack.WordStore.heapLength) := by
  unfold output179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output179_skip : Flapjack.WordAlloc.isSkip output179 = false := by
  rw [output179_def]
  kernel_rfl
theorem node179_eq : Flapjack.WordAlloc.removeDeadStructural input179 value94 value1 value2 = (output179, value4, value1) := by
  rw [input179_def, output179_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input179 input178)).val
theorem input180_def : input180 = (.seq input179 input178) := by
  unfold input180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output179 output178)).val
theorem output180_def : output180 = (.seq output179 output178) := by
  unfold output180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output180_skip : Flapjack.WordAlloc.isSkip output180 = false := by
  rw [output180_def]
  kernel_rfl
theorem node180_eq : Flapjack.WordAlloc.removeDeadStructural input180 value93 value1 value2 = (output180, value4, value1) := by
  rw [input180_def, output180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node178_eq]
  dsimp only
  rw [node179_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output178_skip, output179_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input180 input177)).val
theorem input181_def : input181 = (.seq input180 input177) := by
  unfold input181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output180 output177)).val
theorem output181_def : output181 = (.seq output180 output177) := by
  unfold output181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output181_skip : Flapjack.WordAlloc.isSkip output181 = false := by
  rw [output181_def]
  kernel_rfl
theorem node181_eq : Flapjack.WordAlloc.removeDeadStructural input181 value92 value1 value2 = (output181, value4, value1) := by
  rw [input181_def, output181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node177_eq]
  dsimp only
  rw [node180_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output177_skip, output180_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input181 input176)).val
theorem input182_def : input182 = (.seq input181 input176) := by
  unfold input182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output181 output176)).val
theorem output182_def : output182 = (.seq output181 output176) := by
  unfold output182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output182_skip : Flapjack.WordAlloc.isSkip output182 = false := by
  rw [output182_def]
  kernel_rfl
theorem node182_eq : Flapjack.WordAlloc.removeDeadStructural input182 value91 value1 value2 = (output182, value4, value1) := by
  rw [input182_def, output182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node176_eq]
  dsimp only
  rw [node181_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output176_skip, output181_skip]
  kernel_rfl

def value95 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2189 (Flapjack.WordLangAddr.addr 2193 0#64)))).val
theorem input183_def : input183 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2189 (Flapjack.WordLangAddr.addr 2193 0#64))) := by
  unfold input183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2189 (Flapjack.WordLangAddr.addr 2193 0#64)))).val
theorem output183_def : output183 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2189 (Flapjack.WordLangAddr.addr 2193 0#64))) := by
  unfold output183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output183_skip : Flapjack.WordAlloc.isSkip output183 = false := by
  rw [output183_def]
  kernel_rfl
theorem node183_eq : Flapjack.WordAlloc.removeDeadStructural input183 value4 value1 value2 = (output183, value95, value1) := by
  rw [input183_def, output183_def]
  kernel_rfl

def value96 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2193, 2181)])).val
theorem input184_def : input184 = (Flapjack.WordLangProgHOL.move 0 [(2193, 2181)]) := by
  unfold input184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2193, 2181)])).val
theorem output184_def : output184 = (Flapjack.WordLangProgHOL.move 0 [(2193, 2181)]) := by
  unfold output184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output184_skip : Flapjack.WordAlloc.isSkip output184 = false := by
  rw [output184_def]
  kernel_rfl
theorem node184_eq : Flapjack.WordAlloc.removeDeadStructural input184 value95 value1 value2 = (output184, value96, value1) := by
  rw [input184_def, output184_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input184 input183)).val
theorem input185_def : input185 = (.seq input184 input183) := by
  unfold input185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output184 output183)).val
theorem output185_def : output185 = (.seq output184 output183) := by
  unfold output185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output185_skip : Flapjack.WordAlloc.isSkip output185 = false := by
  rw [output185_def]
  kernel_rfl
theorem node185_eq : Flapjack.WordAlloc.removeDeadStructural input185 value4 value1 value2 = (output185, value96, value1) := by
  rw [input185_def, output185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node183_eq]
  dsimp only
  rw [node184_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output183_skip, output184_skip]
  kernel_rfl

def value97 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2189 0#64))).val
theorem input186_def : input186 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2189 0#64)) := by
  unfold input186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2189 0#64))).val
theorem output186_def : output186 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2189 0#64)) := by
  unfold output186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output186_skip : Flapjack.WordAlloc.isSkip output186 = false := by
  rw [output186_def]
  kernel_rfl
theorem node186_eq : Flapjack.WordAlloc.removeDeadStructural input186 value96 value1 value2 = (output186, value97, value1) := by
  rw [input186_def, output186_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2185 0#64))).val
theorem input187_def : input187 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2185 0#64)) := by
  unfold input187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output187_def : output187 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output187_skip : Flapjack.WordAlloc.isSkip output187 = true := by
  rw [output187_def]
  kernel_rfl
theorem node187_eq : Flapjack.WordAlloc.removeDeadStructural input187 value97 value1 value2 = (output187, value97, value1) := by
  rw [input187_def, output187_def]
  kernel_rfl

def value98 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2181 2177 (Flapjack.WordRegImm.imm 18446744073709550992#64))))).val
theorem input188_def : input188 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2181 2177 (Flapjack.WordRegImm.imm 18446744073709550992#64)))) := by
  unfold input188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2181 2177 (Flapjack.WordRegImm.imm 18446744073709550992#64))))).val
theorem output188_def : output188 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2181 2177 (Flapjack.WordRegImm.imm 18446744073709550992#64)))) := by
  unfold output188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output188_skip : Flapjack.WordAlloc.isSkip output188 = false := by
  rw [output188_def]
  kernel_rfl
theorem node188_eq : Flapjack.WordAlloc.removeDeadStructural input188 value97 value1 value2 = (output188, value98, value1) := by
  rw [input188_def, output188_def]
  kernel_rfl

def value99 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2177 2173)).val
theorem input189_def : input189 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2177 2173) := by
  unfold input189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2177 2173)).val
theorem output189_def : output189 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2177 2173) := by
  unfold output189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output189_skip : Flapjack.WordAlloc.isSkip output189 = false := by
  rw [output189_def]
  kernel_rfl
theorem node189_eq : Flapjack.WordAlloc.removeDeadStructural input189 value98 value1 value2 = (output189, value99, value1) := by
  rw [input189_def, output189_def]
  kernel_rfl

def value100 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2173 2169 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input190_def : input190 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2173 2169 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2173 2169 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output190_def : output190 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2173 2169 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output190_skip : Flapjack.WordAlloc.isSkip output190 = false := by
  rw [output190_def]
  kernel_rfl
theorem node190_eq : Flapjack.WordAlloc.removeDeadStructural input190 value99 value1 value2 = (output190, value100, value1) := by
  rw [input190_def, output190_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2169 Flapjack.WordStore.heapLength)).val
theorem input191_def : input191 = (Flapjack.WordLangProgHOL.get 2169 Flapjack.WordStore.heapLength) := by
  unfold input191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2169 Flapjack.WordStore.heapLength)).val
theorem output191_def : output191 = (Flapjack.WordLangProgHOL.get 2169 Flapjack.WordStore.heapLength) := by
  unfold output191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output191_skip : Flapjack.WordAlloc.isSkip output191 = false := by
  rw [output191_def]
  kernel_rfl
theorem node191_eq : Flapjack.WordAlloc.removeDeadStructural input191 value100 value1 value2 = (output191, value4, value1) := by
  rw [input191_def, output191_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input191 input190)).val
theorem input192_def : input192 = (.seq input191 input190) := by
  unfold input192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output191 output190)).val
theorem output192_def : output192 = (.seq output191 output190) := by
  unfold output192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output192_skip : Flapjack.WordAlloc.isSkip output192 = false := by
  rw [output192_def]
  kernel_rfl
theorem node192_eq : Flapjack.WordAlloc.removeDeadStructural input192 value99 value1 value2 = (output192, value4, value1) := by
  rw [input192_def, output192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node190_eq]
  dsimp only
  rw [node191_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output190_skip, output191_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input192 input189)).val
theorem input193_def : input193 = (.seq input192 input189) := by
  unfold input193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output192 output189)).val
theorem output193_def : output193 = (.seq output192 output189) := by
  unfold output193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output193_skip : Flapjack.WordAlloc.isSkip output193 = false := by
  rw [output193_def]
  kernel_rfl
theorem node193_eq : Flapjack.WordAlloc.removeDeadStructural input193 value98 value1 value2 = (output193, value4, value1) := by
  rw [input193_def, output193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node189_eq]
  dsimp only
  rw [node192_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output189_skip, output192_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input193 input188)).val
theorem input194_def : input194 = (.seq input193 input188) := by
  unfold input194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output193 output188)).val
theorem output194_def : output194 = (.seq output193 output188) := by
  unfold output194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output194_skip : Flapjack.WordAlloc.isSkip output194 = false := by
  rw [output194_def]
  kernel_rfl
theorem node194_eq : Flapjack.WordAlloc.removeDeadStructural input194 value97 value1 value2 = (output194, value4, value1) := by
  rw [input194_def, output194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node188_eq]
  dsimp only
  rw [node193_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output188_skip, output193_skip]
  kernel_rfl

def value101 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2161 (Flapjack.WordLangAddr.addr 2165 0#64)))).val
theorem input195_def : input195 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2161 (Flapjack.WordLangAddr.addr 2165 0#64))) := by
  unfold input195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2161 (Flapjack.WordLangAddr.addr 2165 0#64)))).val
theorem output195_def : output195 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2161 (Flapjack.WordLangAddr.addr 2165 0#64))) := by
  unfold output195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output195_skip : Flapjack.WordAlloc.isSkip output195 = false := by
  rw [output195_def]
  kernel_rfl
theorem node195_eq : Flapjack.WordAlloc.removeDeadStructural input195 value4 value1 value2 = (output195, value101, value1) := by
  rw [input195_def, output195_def]
  kernel_rfl

def value102 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2165, 2153)])).val
theorem input196_def : input196 = (Flapjack.WordLangProgHOL.move 0 [(2165, 2153)]) := by
  unfold input196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2165, 2153)])).val
theorem output196_def : output196 = (Flapjack.WordLangProgHOL.move 0 [(2165, 2153)]) := by
  unfold output196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output196_skip : Flapjack.WordAlloc.isSkip output196 = false := by
  rw [output196_def]
  kernel_rfl
theorem node196_eq : Flapjack.WordAlloc.removeDeadStructural input196 value101 value1 value2 = (output196, value102, value1) := by
  rw [input196_def, output196_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input196 input195)).val
theorem input197_def : input197 = (.seq input196 input195) := by
  unfold input197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output196 output195)).val
theorem output197_def : output197 = (.seq output196 output195) := by
  unfold output197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output197_skip : Flapjack.WordAlloc.isSkip output197 = false := by
  rw [output197_def]
  kernel_rfl
theorem node197_eq : Flapjack.WordAlloc.removeDeadStructural input197 value4 value1 value2 = (output197, value102, value1) := by
  rw [input197_def, output197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node195_eq]
  dsimp only
  rw [node196_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output195_skip, output196_skip]
  kernel_rfl

def value103 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2161 0#64))).val
theorem input198_def : input198 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2161 0#64)) := by
  unfold input198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2161 0#64))).val
theorem output198_def : output198 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2161 0#64)) := by
  unfold output198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output198_skip : Flapjack.WordAlloc.isSkip output198 = false := by
  rw [output198_def]
  kernel_rfl
theorem node198_eq : Flapjack.WordAlloc.removeDeadStructural input198 value102 value1 value2 = (output198, value103, value1) := by
  rw [input198_def, output198_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2157 0#64))).val
theorem input199_def : input199 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2157 0#64)) := by
  unfold input199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output199_def : output199 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output199_skip : Flapjack.WordAlloc.isSkip output199 = true := by
  rw [output199_def]
  kernel_rfl
theorem node199_eq : Flapjack.WordAlloc.removeDeadStructural input199 value103 value1 value2 = (output199, value103, value1) := by
  rw [input199_def, output199_def]
  kernel_rfl

def value104 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2153 2149 (Flapjack.WordRegImm.imm 18446744073709551000#64))))).val
theorem input200_def : input200 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2153 2149 (Flapjack.WordRegImm.imm 18446744073709551000#64)))) := by
  unfold input200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2153 2149 (Flapjack.WordRegImm.imm 18446744073709551000#64))))).val
theorem output200_def : output200 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2153 2149 (Flapjack.WordRegImm.imm 18446744073709551000#64)))) := by
  unfold output200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output200_skip : Flapjack.WordAlloc.isSkip output200 = false := by
  rw [output200_def]
  kernel_rfl
theorem node200_eq : Flapjack.WordAlloc.removeDeadStructural input200 value103 value1 value2 = (output200, value104, value1) := by
  rw [input200_def, output200_def]
  kernel_rfl

def value105 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2149 2145)).val
theorem input201_def : input201 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2149 2145) := by
  unfold input201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2149 2145)).val
theorem output201_def : output201 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2149 2145) := by
  unfold output201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output201_skip : Flapjack.WordAlloc.isSkip output201 = false := by
  rw [output201_def]
  kernel_rfl
theorem node201_eq : Flapjack.WordAlloc.removeDeadStructural input201 value104 value1 value2 = (output201, value105, value1) := by
  rw [input201_def, output201_def]
  kernel_rfl

def value106 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2145 2141 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input202_def : input202 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2145 2141 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2145 2141 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output202_def : output202 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2145 2141 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output202_skip : Flapjack.WordAlloc.isSkip output202 = false := by
  rw [output202_def]
  kernel_rfl
theorem node202_eq : Flapjack.WordAlloc.removeDeadStructural input202 value105 value1 value2 = (output202, value106, value1) := by
  rw [input202_def, output202_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2141 Flapjack.WordStore.heapLength)).val
theorem input203_def : input203 = (Flapjack.WordLangProgHOL.get 2141 Flapjack.WordStore.heapLength) := by
  unfold input203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2141 Flapjack.WordStore.heapLength)).val
theorem output203_def : output203 = (Flapjack.WordLangProgHOL.get 2141 Flapjack.WordStore.heapLength) := by
  unfold output203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output203_skip : Flapjack.WordAlloc.isSkip output203 = false := by
  rw [output203_def]
  kernel_rfl
theorem node203_eq : Flapjack.WordAlloc.removeDeadStructural input203 value106 value1 value2 = (output203, value4, value1) := by
  rw [input203_def, output203_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input203 input202)).val
theorem input204_def : input204 = (.seq input203 input202) := by
  unfold input204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output203 output202)).val
theorem output204_def : output204 = (.seq output203 output202) := by
  unfold output204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output204_skip : Flapjack.WordAlloc.isSkip output204 = false := by
  rw [output204_def]
  kernel_rfl
theorem node204_eq : Flapjack.WordAlloc.removeDeadStructural input204 value105 value1 value2 = (output204, value4, value1) := by
  rw [input204_def, output204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node202_eq]
  dsimp only
  rw [node203_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output202_skip, output203_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input204 input201)).val
theorem input205_def : input205 = (.seq input204 input201) := by
  unfold input205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output204 output201)).val
theorem output205_def : output205 = (.seq output204 output201) := by
  unfold output205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output205_skip : Flapjack.WordAlloc.isSkip output205 = false := by
  rw [output205_def]
  kernel_rfl
theorem node205_eq : Flapjack.WordAlloc.removeDeadStructural input205 value104 value1 value2 = (output205, value4, value1) := by
  rw [input205_def, output205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node201_eq]
  dsimp only
  rw [node204_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output201_skip, output204_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input205 input200)).val
theorem input206_def : input206 = (.seq input205 input200) := by
  unfold input206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output205 output200)).val
theorem output206_def : output206 = (.seq output205 output200) := by
  unfold output206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output206_skip : Flapjack.WordAlloc.isSkip output206 = false := by
  rw [output206_def]
  kernel_rfl
theorem node206_eq : Flapjack.WordAlloc.removeDeadStructural input206 value103 value1 value2 = (output206, value4, value1) := by
  rw [input206_def, output206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node200_eq]
  dsimp only
  rw [node205_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output200_skip, output205_skip]
  kernel_rfl

def value107 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2133 (Flapjack.WordLangAddr.addr 2137 0#64)))).val
theorem input207_def : input207 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2133 (Flapjack.WordLangAddr.addr 2137 0#64))) := by
  unfold input207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2133 (Flapjack.WordLangAddr.addr 2137 0#64)))).val
theorem output207_def : output207 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2133 (Flapjack.WordLangAddr.addr 2137 0#64))) := by
  unfold output207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output207_skip : Flapjack.WordAlloc.isSkip output207 = false := by
  rw [output207_def]
  kernel_rfl
theorem node207_eq : Flapjack.WordAlloc.removeDeadStructural input207 value4 value1 value2 = (output207, value107, value1) := by
  rw [input207_def, output207_def]
  kernel_rfl

def value108 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2137, 2125)])).val
theorem input208_def : input208 = (Flapjack.WordLangProgHOL.move 0 [(2137, 2125)]) := by
  unfold input208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2137, 2125)])).val
theorem output208_def : output208 = (Flapjack.WordLangProgHOL.move 0 [(2137, 2125)]) := by
  unfold output208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output208_skip : Flapjack.WordAlloc.isSkip output208 = false := by
  rw [output208_def]
  kernel_rfl
theorem node208_eq : Flapjack.WordAlloc.removeDeadStructural input208 value107 value1 value2 = (output208, value108, value1) := by
  rw [input208_def, output208_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input208 input207)).val
theorem input209_def : input209 = (.seq input208 input207) := by
  unfold input209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output208 output207)).val
theorem output209_def : output209 = (.seq output208 output207) := by
  unfold output209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output209_skip : Flapjack.WordAlloc.isSkip output209 = false := by
  rw [output209_def]
  kernel_rfl
theorem node209_eq : Flapjack.WordAlloc.removeDeadStructural input209 value4 value1 value2 = (output209, value108, value1) := by
  rw [input209_def, output209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node207_eq]
  dsimp only
  rw [node208_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output207_skip, output208_skip]
  kernel_rfl

def value109 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2133 0#64))).val
theorem input210_def : input210 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2133 0#64)) := by
  unfold input210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2133 0#64))).val
theorem output210_def : output210 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2133 0#64)) := by
  unfold output210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output210_skip : Flapjack.WordAlloc.isSkip output210 = false := by
  rw [output210_def]
  kernel_rfl
theorem node210_eq : Flapjack.WordAlloc.removeDeadStructural input210 value108 value1 value2 = (output210, value109, value1) := by
  rw [input210_def, output210_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2129 0#64))).val
theorem input211_def : input211 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2129 0#64)) := by
  unfold input211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output211_def : output211 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output211_skip : Flapjack.WordAlloc.isSkip output211 = true := by
  rw [output211_def]
  kernel_rfl
theorem node211_eq : Flapjack.WordAlloc.removeDeadStructural input211 value109 value1 value2 = (output211, value109, value1) := by
  rw [input211_def, output211_def]
  kernel_rfl

def value110 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln)))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2125 2121 (Flapjack.WordRegImm.imm 18446744073709551008#64))))).val
theorem input212_def : input212 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2125 2121 (Flapjack.WordRegImm.imm 18446744073709551008#64)))) := by
  unfold input212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2125 2121 (Flapjack.WordRegImm.imm 18446744073709551008#64))))).val
theorem output212_def : output212 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2125 2121 (Flapjack.WordRegImm.imm 18446744073709551008#64)))) := by
  unfold output212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output212_skip : Flapjack.WordAlloc.isSkip output212 = false := by
  rw [output212_def]
  kernel_rfl
theorem node212_eq : Flapjack.WordAlloc.removeDeadStructural input212 value109 value1 value2 = (output212, value110, value1) := by
  rw [input212_def, output212_def]
  kernel_rfl

def value111 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2121 2117)).val
theorem input213_def : input213 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2121 2117) := by
  unfold input213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2121 2117)).val
theorem output213_def : output213 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2121 2117) := by
  unfold output213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output213_skip : Flapjack.WordAlloc.isSkip output213 = false := by
  rw [output213_def]
  kernel_rfl
theorem node213_eq : Flapjack.WordAlloc.removeDeadStructural input213 value110 value1 value2 = (output213, value111, value1) := by
  rw [input213_def, output213_def]
  kernel_rfl

def value112 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2117 2113 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input214_def : input214 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2117 2113 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2117 2113 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output214_def : output214 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2117 2113 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output214_skip : Flapjack.WordAlloc.isSkip output214 = false := by
  rw [output214_def]
  kernel_rfl
theorem node214_eq : Flapjack.WordAlloc.removeDeadStructural input214 value111 value1 value2 = (output214, value112, value1) := by
  rw [input214_def, output214_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2113 Flapjack.WordStore.heapLength)).val
theorem input215_def : input215 = (Flapjack.WordLangProgHOL.get 2113 Flapjack.WordStore.heapLength) := by
  unfold input215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2113 Flapjack.WordStore.heapLength)).val
theorem output215_def : output215 = (Flapjack.WordLangProgHOL.get 2113 Flapjack.WordStore.heapLength) := by
  unfold output215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output215_skip : Flapjack.WordAlloc.isSkip output215 = false := by
  rw [output215_def]
  kernel_rfl
theorem node215_eq : Flapjack.WordAlloc.removeDeadStructural input215 value112 value1 value2 = (output215, value4, value1) := by
  rw [input215_def, output215_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input215 input214)).val
theorem input216_def : input216 = (.seq input215 input214) := by
  unfold input216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output215 output214)).val
theorem output216_def : output216 = (.seq output215 output214) := by
  unfold output216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output216_skip : Flapjack.WordAlloc.isSkip output216 = false := by
  rw [output216_def]
  kernel_rfl
theorem node216_eq : Flapjack.WordAlloc.removeDeadStructural input216 value111 value1 value2 = (output216, value4, value1) := by
  rw [input216_def, output216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node214_eq]
  dsimp only
  rw [node215_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output214_skip, output215_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input216 input213)).val
theorem input217_def : input217 = (.seq input216 input213) := by
  unfold input217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output216 output213)).val
theorem output217_def : output217 = (.seq output216 output213) := by
  unfold output217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output217_skip : Flapjack.WordAlloc.isSkip output217 = false := by
  rw [output217_def]
  kernel_rfl
theorem node217_eq : Flapjack.WordAlloc.removeDeadStructural input217 value110 value1 value2 = (output217, value4, value1) := by
  rw [input217_def, output217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node213_eq]
  dsimp only
  rw [node216_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output213_skip, output216_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input217 input212)).val
theorem input218_def : input218 = (.seq input217 input212) := by
  unfold input218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output217 output212)).val
theorem output218_def : output218 = (.seq output217 output212) := by
  unfold output218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output218_skip : Flapjack.WordAlloc.isSkip output218 = false := by
  rw [output218_def]
  kernel_rfl
theorem node218_eq : Flapjack.WordAlloc.removeDeadStructural input218 value109 value1 value2 = (output218, value4, value1) := by
  rw [input218_def, output218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node212_eq]
  dsimp only
  rw [node217_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output212_skip, output217_skip]
  kernel_rfl

def value113 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2105 (Flapjack.WordLangAddr.addr 2109 0#64)))).val
theorem input219_def : input219 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2105 (Flapjack.WordLangAddr.addr 2109 0#64))) := by
  unfold input219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2105 (Flapjack.WordLangAddr.addr 2109 0#64)))).val
theorem output219_def : output219 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2105 (Flapjack.WordLangAddr.addr 2109 0#64))) := by
  unfold output219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output219_skip : Flapjack.WordAlloc.isSkip output219 = false := by
  rw [output219_def]
  kernel_rfl
theorem node219_eq : Flapjack.WordAlloc.removeDeadStructural input219 value4 value1 value2 = (output219, value113, value1) := by
  rw [input219_def, output219_def]
  kernel_rfl

def value114 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2109, 2097)])).val
theorem input220_def : input220 = (Flapjack.WordLangProgHOL.move 0 [(2109, 2097)]) := by
  unfold input220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2109, 2097)])).val
theorem output220_def : output220 = (Flapjack.WordLangProgHOL.move 0 [(2109, 2097)]) := by
  unfold output220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output220_skip : Flapjack.WordAlloc.isSkip output220 = false := by
  rw [output220_def]
  kernel_rfl
theorem node220_eq : Flapjack.WordAlloc.removeDeadStructural input220 value113 value1 value2 = (output220, value114, value1) := by
  rw [input220_def, output220_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input220 input219)).val
theorem input221_def : input221 = (.seq input220 input219) := by
  unfold input221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output220 output219)).val
theorem output221_def : output221 = (.seq output220 output219) := by
  unfold output221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output221_skip : Flapjack.WordAlloc.isSkip output221 = false := by
  rw [output221_def]
  kernel_rfl
theorem node221_eq : Flapjack.WordAlloc.removeDeadStructural input221 value4 value1 value2 = (output221, value114, value1) := by
  rw [input221_def, output221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node219_eq]
  dsimp only
  rw [node220_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output219_skip, output220_skip]
  kernel_rfl

def value115 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2105 0#64))).val
theorem input222_def : input222 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2105 0#64)) := by
  unfold input222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2105 0#64))).val
theorem output222_def : output222 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2105 0#64)) := by
  unfold output222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output222_skip : Flapjack.WordAlloc.isSkip output222 = false := by
  rw [output222_def]
  kernel_rfl
theorem node222_eq : Flapjack.WordAlloc.removeDeadStructural input222 value114 value1 value2 = (output222, value115, value1) := by
  rw [input222_def, output222_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2101 0#64))).val
theorem input223_def : input223 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2101 0#64)) := by
  unfold input223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output223_def : output223 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output223_skip : Flapjack.WordAlloc.isSkip output223 = true := by
  rw [output223_def]
  kernel_rfl
theorem node223_eq : Flapjack.WordAlloc.removeDeadStructural input223 value115 value1 value2 = (output223, value115, value1) := by
  rw [input223_def, output223_def]
  kernel_rfl

def value116 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2097 2093 (Flapjack.WordRegImm.imm 18446744073709551016#64))))).val
theorem input224_def : input224 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2097 2093 (Flapjack.WordRegImm.imm 18446744073709551016#64)))) := by
  unfold input224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2097 2093 (Flapjack.WordRegImm.imm 18446744073709551016#64))))).val
theorem output224_def : output224 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2097 2093 (Flapjack.WordRegImm.imm 18446744073709551016#64)))) := by
  unfold output224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output224_skip : Flapjack.WordAlloc.isSkip output224 = false := by
  rw [output224_def]
  kernel_rfl
theorem node224_eq : Flapjack.WordAlloc.removeDeadStructural input224 value115 value1 value2 = (output224, value116, value1) := by
  rw [input224_def, output224_def]
  kernel_rfl

def value117 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2093 2089)).val
theorem input225_def : input225 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2093 2089) := by
  unfold input225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2093 2089)).val
theorem output225_def : output225 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2093 2089) := by
  unfold output225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output225_skip : Flapjack.WordAlloc.isSkip output225 = false := by
  rw [output225_def]
  kernel_rfl
theorem node225_eq : Flapjack.WordAlloc.removeDeadStructural input225 value116 value1 value2 = (output225, value117, value1) := by
  rw [input225_def, output225_def]
  kernel_rfl

def value118 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2089 2085 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input226_def : input226 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2089 2085 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2089 2085 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output226_def : output226 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2089 2085 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output226_skip : Flapjack.WordAlloc.isSkip output226 = false := by
  rw [output226_def]
  kernel_rfl
theorem node226_eq : Flapjack.WordAlloc.removeDeadStructural input226 value117 value1 value2 = (output226, value118, value1) := by
  rw [input226_def, output226_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2085 Flapjack.WordStore.heapLength)).val
theorem input227_def : input227 = (Flapjack.WordLangProgHOL.get 2085 Flapjack.WordStore.heapLength) := by
  unfold input227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2085 Flapjack.WordStore.heapLength)).val
theorem output227_def : output227 = (Flapjack.WordLangProgHOL.get 2085 Flapjack.WordStore.heapLength) := by
  unfold output227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output227_skip : Flapjack.WordAlloc.isSkip output227 = false := by
  rw [output227_def]
  kernel_rfl
theorem node227_eq : Flapjack.WordAlloc.removeDeadStructural input227 value118 value1 value2 = (output227, value4, value1) := by
  rw [input227_def, output227_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input227 input226)).val
theorem input228_def : input228 = (.seq input227 input226) := by
  unfold input228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output227 output226)).val
theorem output228_def : output228 = (.seq output227 output226) := by
  unfold output228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output228_skip : Flapjack.WordAlloc.isSkip output228 = false := by
  rw [output228_def]
  kernel_rfl
theorem node228_eq : Flapjack.WordAlloc.removeDeadStructural input228 value117 value1 value2 = (output228, value4, value1) := by
  rw [input228_def, output228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node226_eq]
  dsimp only
  rw [node227_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output226_skip, output227_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input228 input225)).val
theorem input229_def : input229 = (.seq input228 input225) := by
  unfold input229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output228 output225)).val
theorem output229_def : output229 = (.seq output228 output225) := by
  unfold output229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output229_skip : Flapjack.WordAlloc.isSkip output229 = false := by
  rw [output229_def]
  kernel_rfl
theorem node229_eq : Flapjack.WordAlloc.removeDeadStructural input229 value116 value1 value2 = (output229, value4, value1) := by
  rw [input229_def, output229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node225_eq]
  dsimp only
  rw [node228_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output225_skip, output228_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input229 input224)).val
theorem input230_def : input230 = (.seq input229 input224) := by
  unfold input230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output229 output224)).val
theorem output230_def : output230 = (.seq output229 output224) := by
  unfold output230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output230_skip : Flapjack.WordAlloc.isSkip output230 = false := by
  rw [output230_def]
  kernel_rfl
theorem node230_eq : Flapjack.WordAlloc.removeDeadStructural input230 value115 value1 value2 = (output230, value4, value1) := by
  rw [input230_def, output230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node224_eq]
  dsimp only
  rw [node229_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output224_skip, output229_skip]
  kernel_rfl

def value119 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2077 (Flapjack.WordLangAddr.addr 2081 0#64)))).val
theorem input231_def : input231 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2077 (Flapjack.WordLangAddr.addr 2081 0#64))) := by
  unfold input231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2077 (Flapjack.WordLangAddr.addr 2081 0#64)))).val
theorem output231_def : output231 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2077 (Flapjack.WordLangAddr.addr 2081 0#64))) := by
  unfold output231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output231_skip : Flapjack.WordAlloc.isSkip output231 = false := by
  rw [output231_def]
  kernel_rfl
theorem node231_eq : Flapjack.WordAlloc.removeDeadStructural input231 value4 value1 value2 = (output231, value119, value1) := by
  rw [input231_def, output231_def]
  kernel_rfl

def value120 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2081, 2069)])).val
theorem input232_def : input232 = (Flapjack.WordLangProgHOL.move 0 [(2081, 2069)]) := by
  unfold input232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2081, 2069)])).val
theorem output232_def : output232 = (Flapjack.WordLangProgHOL.move 0 [(2081, 2069)]) := by
  unfold output232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output232_skip : Flapjack.WordAlloc.isSkip output232 = false := by
  rw [output232_def]
  kernel_rfl
theorem node232_eq : Flapjack.WordAlloc.removeDeadStructural input232 value119 value1 value2 = (output232, value120, value1) := by
  rw [input232_def, output232_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input232 input231)).val
theorem input233_def : input233 = (.seq input232 input231) := by
  unfold input233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output232 output231)).val
theorem output233_def : output233 = (.seq output232 output231) := by
  unfold output233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output233_skip : Flapjack.WordAlloc.isSkip output233 = false := by
  rw [output233_def]
  kernel_rfl
theorem node233_eq : Flapjack.WordAlloc.removeDeadStructural input233 value4 value1 value2 = (output233, value120, value1) := by
  rw [input233_def, output233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node231_eq]
  dsimp only
  rw [node232_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output231_skip, output232_skip]
  kernel_rfl

def value121 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2077 0#64))).val
theorem input234_def : input234 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2077 0#64)) := by
  unfold input234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2077 0#64))).val
theorem output234_def : output234 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2077 0#64)) := by
  unfold output234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output234_skip : Flapjack.WordAlloc.isSkip output234 = false := by
  rw [output234_def]
  kernel_rfl
theorem node234_eq : Flapjack.WordAlloc.removeDeadStructural input234 value120 value1 value2 = (output234, value121, value1) := by
  rw [input234_def, output234_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2073 0#64))).val
theorem input235_def : input235 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2073 0#64)) := by
  unfold input235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output235_def : output235 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output235_skip : Flapjack.WordAlloc.isSkip output235 = true := by
  rw [output235_def]
  kernel_rfl
theorem node235_eq : Flapjack.WordAlloc.removeDeadStructural input235 value121 value1 value2 = (output235, value121, value1) := by
  rw [input235_def, output235_def]
  kernel_rfl

def value122 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2069 2065 (Flapjack.WordRegImm.imm 18446744073709551024#64))))).val
theorem input236_def : input236 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2069 2065 (Flapjack.WordRegImm.imm 18446744073709551024#64)))) := by
  unfold input236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2069 2065 (Flapjack.WordRegImm.imm 18446744073709551024#64))))).val
theorem output236_def : output236 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2069 2065 (Flapjack.WordRegImm.imm 18446744073709551024#64)))) := by
  unfold output236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output236_skip : Flapjack.WordAlloc.isSkip output236 = false := by
  rw [output236_def]
  kernel_rfl
theorem node236_eq : Flapjack.WordAlloc.removeDeadStructural input236 value121 value1 value2 = (output236, value122, value1) := by
  rw [input236_def, output236_def]
  kernel_rfl

def value123 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2065 2061)).val
theorem input237_def : input237 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2065 2061) := by
  unfold input237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2065 2061)).val
theorem output237_def : output237 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2065 2061) := by
  unfold output237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output237_skip : Flapjack.WordAlloc.isSkip output237 = false := by
  rw [output237_def]
  kernel_rfl
theorem node237_eq : Flapjack.WordAlloc.removeDeadStructural input237 value122 value1 value2 = (output237, value123, value1) := by
  rw [input237_def, output237_def]
  kernel_rfl

def value124 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2061 2057 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input238_def : input238 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2061 2057 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2061 2057 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output238_def : output238 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2061 2057 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output238_skip : Flapjack.WordAlloc.isSkip output238 = false := by
  rw [output238_def]
  kernel_rfl
theorem node238_eq : Flapjack.WordAlloc.removeDeadStructural input238 value123 value1 value2 = (output238, value124, value1) := by
  rw [input238_def, output238_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2057 Flapjack.WordStore.heapLength)).val
theorem input239_def : input239 = (Flapjack.WordLangProgHOL.get 2057 Flapjack.WordStore.heapLength) := by
  unfold input239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2057 Flapjack.WordStore.heapLength)).val
theorem output239_def : output239 = (Flapjack.WordLangProgHOL.get 2057 Flapjack.WordStore.heapLength) := by
  unfold output239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output239_skip : Flapjack.WordAlloc.isSkip output239 = false := by
  rw [output239_def]
  kernel_rfl
theorem node239_eq : Flapjack.WordAlloc.removeDeadStructural input239 value124 value1 value2 = (output239, value4, value1) := by
  rw [input239_def, output239_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input239 input238)).val
theorem input240_def : input240 = (.seq input239 input238) := by
  unfold input240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output239 output238)).val
theorem output240_def : output240 = (.seq output239 output238) := by
  unfold output240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output240_skip : Flapjack.WordAlloc.isSkip output240 = false := by
  rw [output240_def]
  kernel_rfl
theorem node240_eq : Flapjack.WordAlloc.removeDeadStructural input240 value123 value1 value2 = (output240, value4, value1) := by
  rw [input240_def, output240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node238_eq]
  dsimp only
  rw [node239_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output238_skip, output239_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input240 input237)).val
theorem input241_def : input241 = (.seq input240 input237) := by
  unfold input241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output240 output237)).val
theorem output241_def : output241 = (.seq output240 output237) := by
  unfold output241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output241_skip : Flapjack.WordAlloc.isSkip output241 = false := by
  rw [output241_def]
  kernel_rfl
theorem node241_eq : Flapjack.WordAlloc.removeDeadStructural input241 value122 value1 value2 = (output241, value4, value1) := by
  rw [input241_def, output241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node237_eq]
  dsimp only
  rw [node240_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output237_skip, output240_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input241 input236)).val
theorem input242_def : input242 = (.seq input241 input236) := by
  unfold input242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output241 output236)).val
theorem output242_def : output242 = (.seq output241 output236) := by
  unfold output242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output242_skip : Flapjack.WordAlloc.isSkip output242 = false := by
  rw [output242_def]
  kernel_rfl
theorem node242_eq : Flapjack.WordAlloc.removeDeadStructural input242 value121 value1 value2 = (output242, value4, value1) := by
  rw [input242_def, output242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node236_eq]
  dsimp only
  rw [node241_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output236_skip, output241_skip]
  kernel_rfl

def value125 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2049 (Flapjack.WordLangAddr.addr 2053 0#64)))).val
theorem input243_def : input243 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2049 (Flapjack.WordLangAddr.addr 2053 0#64))) := by
  unfold input243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2049 (Flapjack.WordLangAddr.addr 2053 0#64)))).val
theorem output243_def : output243 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2049 (Flapjack.WordLangAddr.addr 2053 0#64))) := by
  unfold output243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output243_skip : Flapjack.WordAlloc.isSkip output243 = false := by
  rw [output243_def]
  kernel_rfl
theorem node243_eq : Flapjack.WordAlloc.removeDeadStructural input243 value4 value1 value2 = (output243, value125, value1) := by
  rw [input243_def, output243_def]
  kernel_rfl

def value126 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2053, 2041)])).val
theorem input244_def : input244 = (Flapjack.WordLangProgHOL.move 0 [(2053, 2041)]) := by
  unfold input244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2053, 2041)])).val
theorem output244_def : output244 = (Flapjack.WordLangProgHOL.move 0 [(2053, 2041)]) := by
  unfold output244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output244_skip : Flapjack.WordAlloc.isSkip output244 = false := by
  rw [output244_def]
  kernel_rfl
theorem node244_eq : Flapjack.WordAlloc.removeDeadStructural input244 value125 value1 value2 = (output244, value126, value1) := by
  rw [input244_def, output244_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input244 input243)).val
theorem input245_def : input245 = (.seq input244 input243) := by
  unfold input245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output244 output243)).val
theorem output245_def : output245 = (.seq output244 output243) := by
  unfold output245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output245_skip : Flapjack.WordAlloc.isSkip output245 = false := by
  rw [output245_def]
  kernel_rfl
theorem node245_eq : Flapjack.WordAlloc.removeDeadStructural input245 value4 value1 value2 = (output245, value126, value1) := by
  rw [input245_def, output245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node243_eq]
  dsimp only
  rw [node244_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output243_skip, output244_skip]
  kernel_rfl

def value127 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2049 0#64))).val
theorem input246_def : input246 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2049 0#64)) := by
  unfold input246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2049 0#64))).val
theorem output246_def : output246 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2049 0#64)) := by
  unfold output246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output246_skip : Flapjack.WordAlloc.isSkip output246 = false := by
  rw [output246_def]
  kernel_rfl
theorem node246_eq : Flapjack.WordAlloc.removeDeadStructural input246 value126 value1 value2 = (output246, value127, value1) := by
  rw [input246_def, output246_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2045 0#64))).val
theorem input247_def : input247 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2045 0#64)) := by
  unfold input247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output247_def : output247 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output247_skip : Flapjack.WordAlloc.isSkip output247 = true := by
  rw [output247_def]
  kernel_rfl
theorem node247_eq : Flapjack.WordAlloc.removeDeadStructural input247 value127 value1 value2 = (output247, value127, value1) := by
  rw [input247_def, output247_def]
  kernel_rfl

def value128 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2041 2037 (Flapjack.WordRegImm.imm 18446744073709551032#64))))).val
theorem input248_def : input248 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2041 2037 (Flapjack.WordRegImm.imm 18446744073709551032#64)))) := by
  unfold input248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2041 2037 (Flapjack.WordRegImm.imm 18446744073709551032#64))))).val
theorem output248_def : output248 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2041 2037 (Flapjack.WordRegImm.imm 18446744073709551032#64)))) := by
  unfold output248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output248_skip : Flapjack.WordAlloc.isSkip output248 = false := by
  rw [output248_def]
  kernel_rfl
theorem node248_eq : Flapjack.WordAlloc.removeDeadStructural input248 value127 value1 value2 = (output248, value128, value1) := by
  rw [input248_def, output248_def]
  kernel_rfl

def value129 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2037 2033)).val
theorem input249_def : input249 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2037 2033) := by
  unfold input249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2037 2033)).val
theorem output249_def : output249 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2037 2033) := by
  unfold output249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output249_skip : Flapjack.WordAlloc.isSkip output249 = false := by
  rw [output249_def]
  kernel_rfl
theorem node249_eq : Flapjack.WordAlloc.removeDeadStructural input249 value128 value1 value2 = (output249, value129, value1) := by
  rw [input249_def, output249_def]
  kernel_rfl

def value130 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2033 2029 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input250_def : input250 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2033 2029 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2033 2029 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output250_def : output250 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2033 2029 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output250_skip : Flapjack.WordAlloc.isSkip output250 = false := by
  rw [output250_def]
  kernel_rfl
theorem node250_eq : Flapjack.WordAlloc.removeDeadStructural input250 value129 value1 value2 = (output250, value130, value1) := by
  rw [input250_def, output250_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2029 Flapjack.WordStore.heapLength)).val
theorem input251_def : input251 = (Flapjack.WordLangProgHOL.get 2029 Flapjack.WordStore.heapLength) := by
  unfold input251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2029 Flapjack.WordStore.heapLength)).val
theorem output251_def : output251 = (Flapjack.WordLangProgHOL.get 2029 Flapjack.WordStore.heapLength) := by
  unfold output251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output251_skip : Flapjack.WordAlloc.isSkip output251 = false := by
  rw [output251_def]
  kernel_rfl
theorem node251_eq : Flapjack.WordAlloc.removeDeadStructural input251 value130 value1 value2 = (output251, value4, value1) := by
  rw [input251_def, output251_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input251 input250)).val
theorem input252_def : input252 = (.seq input251 input250) := by
  unfold input252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output251 output250)).val
theorem output252_def : output252 = (.seq output251 output250) := by
  unfold output252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output252_skip : Flapjack.WordAlloc.isSkip output252 = false := by
  rw [output252_def]
  kernel_rfl
theorem node252_eq : Flapjack.WordAlloc.removeDeadStructural input252 value129 value1 value2 = (output252, value4, value1) := by
  rw [input252_def, output252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node250_eq]
  dsimp only
  rw [node251_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output250_skip, output251_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input252 input249)).val
theorem input253_def : input253 = (.seq input252 input249) := by
  unfold input253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output252 output249)).val
theorem output253_def : output253 = (.seq output252 output249) := by
  unfold output253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output253_skip : Flapjack.WordAlloc.isSkip output253 = false := by
  rw [output253_def]
  kernel_rfl
theorem node253_eq : Flapjack.WordAlloc.removeDeadStructural input253 value128 value1 value2 = (output253, value4, value1) := by
  rw [input253_def, output253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node249_eq]
  dsimp only
  rw [node252_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output249_skip, output252_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input253 input248)).val
theorem input254_def : input254 = (.seq input253 input248) := by
  unfold input254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output253 output248)).val
theorem output254_def : output254 = (.seq output253 output248) := by
  unfold output254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output254_skip : Flapjack.WordAlloc.isSkip output254 = false := by
  rw [output254_def]
  kernel_rfl
theorem node254_eq : Flapjack.WordAlloc.removeDeadStructural input254 value127 value1 value2 = (output254, value4, value1) := by
  rw [input254_def, output254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node248_eq]
  dsimp only
  rw [node253_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output248_skip, output253_skip]
  kernel_rfl

def value131 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2021 (Flapjack.WordLangAddr.addr 2025 0#64)))).val
theorem input255_def : input255 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2021 (Flapjack.WordLangAddr.addr 2025 0#64))) := by
  unfold input255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2021 (Flapjack.WordLangAddr.addr 2025 0#64)))).val
theorem output255_def : output255 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2021 (Flapjack.WordLangAddr.addr 2025 0#64))) := by
  unfold output255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output255_skip : Flapjack.WordAlloc.isSkip output255 = false := by
  rw [output255_def]
  kernel_rfl
theorem node255_eq : Flapjack.WordAlloc.removeDeadStructural input255 value4 value1 value2 = (output255, value131, value1) := by
  rw [input255_def, output255_def]
  kernel_rfl

#print axioms node255_eq
end InitECandidate.Proofs.DeadStages64
