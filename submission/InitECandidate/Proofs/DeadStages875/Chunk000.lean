import InitECandidate.Proofs.CompilerComputation
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages875
def value0 : Flapjack.NumSet :=
Flapjack.Spt.ln

def value1 : List Flapjack.WordStoreHOL :=
[]

def value2 : List (Flapjack.NumSet × Flapjack.NumSet) :=
[]

def value3 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input0 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 32809 [2])).val
theorem input0_def : input0 = (Flapjack.WordLangProgHOL.return 32809 [2]) := by
  unfold input0
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output0 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 32809 [2])).val
theorem output0_def : output0 = (Flapjack.WordLangProgHOL.return 32809 [2]) := by
  unfold output0
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output0_skip : Flapjack.WordAlloc.isSkip output0 = false := by
  rw [output0_def]
  conv => lhs; cbv
  try rfl
theorem node0_eq : Flapjack.WordAlloc.removeDeadStructural input0 value0 value1 value2 = (output0, value3, value1) := by
  rw [input0_def, output0_def]
  try (conv => lhs; cbv)
  try rfl

def value4 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 32833)])).val
theorem input1_def : input1 = (Flapjack.WordLangProgHOL.move 0 [(2, 32833)]) := by
  unfold input1
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 32833)])).val
theorem output1_def : output1 = (Flapjack.WordLangProgHOL.move 0 [(2, 32833)]) := by
  unfold output1
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1_skip : Flapjack.WordAlloc.isSkip output1 = false := by
  rw [output1_def]
  conv => lhs; cbv
  try rfl
theorem node1_eq : Flapjack.WordAlloc.removeDeadStructural input1 value3 value1 value2 = (output1, value4, value1) := by
  rw [input1_def, output1_def]
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node2_eq : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1) := by
  rw [input2_def, output2_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node0_eq]
  try dsimp only
  rw [node1_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32833 0#64))).val
theorem input3_def : input3 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32833 0#64)) := by
  unfold input3
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32833 0#64))).val
theorem output3_def : output3 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32833 0#64)) := by
  unfold output3
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3_skip : Flapjack.WordAlloc.isSkip output3 = false := by
  rw [output3_def]
  conv => lhs; cbv
  try rfl
theorem node3_eq : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1) := by
  rw [input3_def, output3_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4_def : input4 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4_def : output4 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4_skip : Flapjack.WordAlloc.isSkip output4 = false := by
  rw [output4_def]
  conv => lhs; cbv
  try rfl
theorem node4_eq : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value5, value1) := by
  rw [input4_def, output4_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32829 0#64))).val
theorem input5_def : input5 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32829 0#64)) := by
  unfold input5
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5_def : output5 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5_skip : Flapjack.WordAlloc.isSkip output5 = true := by
  rw [output5_def]
  conv => lhs; cbv
  try rfl
theorem node5_eq : Flapjack.WordAlloc.removeDeadStructural input5 value5 value1 value2 = (output5, value5, value1) := by
  rw [input5_def, output5_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32825 0#64))).val
theorem input6_def : input6 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32825 0#64)) := by
  unfold input6
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6_def : output6 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6_skip : Flapjack.WordAlloc.isSkip output6 = true := by
  rw [output6_def]
  conv => lhs; cbv
  try rfl
theorem node6_eq : Flapjack.WordAlloc.removeDeadStructural input6 value5 value1 value2 = (output6, value5, value1) := by
  rw [input6_def, output6_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32821 0#64))).val
theorem input7_def : input7 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32821 0#64)) := by
  unfold input7
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7_def : output7 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7_skip : Flapjack.WordAlloc.isSkip output7 = true := by
  rw [output7_def]
  conv => lhs; cbv
  try rfl
theorem node7_eq : Flapjack.WordAlloc.removeDeadStructural input7 value5 value1 value2 = (output7, value5, value1) := by
  rw [input7_def, output7_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32817 0#64))).val
theorem input8_def : input8 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32817 0#64)) := by
  unfold input8
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8_def : output8 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8_skip : Flapjack.WordAlloc.isSkip output8 = true := by
  rw [output8_def]
  conv => lhs; cbv
  try rfl
theorem node8_eq : Flapjack.WordAlloc.removeDeadStructural input8 value5 value1 value2 = (output8, value5, value1) := by
  rw [input8_def, output8_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32813 0#64))).val
theorem input9_def : input9 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32813 0#64)) := by
  unfold input9
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9_def : output9 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9_skip : Flapjack.WordAlloc.isSkip output9 = true := by
  rw [output9_def]
  conv => lhs; cbv
  try rfl
theorem node9_eq : Flapjack.WordAlloc.removeDeadStructural input9 value5 value1 value2 = (output9, value5, value1) := by
  rw [input9_def, output9_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input10_def : input10 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input10
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10_def : output10 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10_skip : Flapjack.WordAlloc.isSkip output10 = true := by
  rw [output10_def]
  conv => lhs; cbv
  try rfl
theorem node10_eq : Flapjack.WordAlloc.removeDeadStructural input10 value5 value1 value2 = (output10, value5, value1) := by
  rw [input10_def, output10_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10 input9)).val
theorem input11_def : input11 = (.seq input10 input9) := by
  unfold input11
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output9)).val
theorem output11_def : output11 = (output9) := by
  unfold output11
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11_skip : Flapjack.WordAlloc.isSkip output11 = true := by
  rw [output11_def]
  conv => lhs; cbv
  try rfl
theorem node11_eq : Flapjack.WordAlloc.removeDeadStructural input11 value5 value1 value2 = (output11, value5, value1) := by
  rw [input11_def, output11_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9_eq]
  try dsimp only
  rw [node10_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11 input8)).val
theorem input12_def : input12 = (.seq input11 input8) := by
  unfold input12
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output8)).val
theorem output12_def : output12 = (output8) := by
  unfold output12
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12_skip : Flapjack.WordAlloc.isSkip output12 = true := by
  rw [output12_def]
  conv => lhs; cbv
  try rfl
theorem node12_eq : Flapjack.WordAlloc.removeDeadStructural input12 value5 value1 value2 = (output12, value5, value1) := by
  rw [input12_def, output12_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8_eq]
  try dsimp only
  rw [node11_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12 input7)).val
theorem input13_def : input13 = (.seq input12 input7) := by
  unfold input13
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output7)).val
theorem output13_def : output13 = (output7) := by
  unfold output13
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13_skip : Flapjack.WordAlloc.isSkip output13 = true := by
  rw [output13_def]
  conv => lhs; cbv
  try rfl
theorem node13_eq : Flapjack.WordAlloc.removeDeadStructural input13 value5 value1 value2 = (output13, value5, value1) := by
  rw [input13_def, output13_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7_eq]
  try dsimp only
  rw [node12_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13 input6)).val
theorem input14_def : input14 = (.seq input13 input6) := by
  unfold input14
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output6)).val
theorem output14_def : output14 = (output6) := by
  unfold output14
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14_skip : Flapjack.WordAlloc.isSkip output14 = true := by
  rw [output14_def]
  conv => lhs; cbv
  try rfl
theorem node14_eq : Flapjack.WordAlloc.removeDeadStructural input14 value5 value1 value2 = (output14, value5, value1) := by
  rw [input14_def, output14_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6_eq]
  try dsimp only
  rw [node13_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14 input5)).val
theorem input15_def : input15 = (.seq input14 input5) := by
  unfold input15
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output5)).val
theorem output15_def : output15 = (output5) := by
  unfold output15
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15_skip : Flapjack.WordAlloc.isSkip output15 = true := by
  rw [output15_def]
  conv => lhs; cbv
  try rfl
theorem node15_eq : Flapjack.WordAlloc.removeDeadStructural input15 value5 value1 value2 = (output15, value5, value1) := by
  rw [input15_def, output15_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5_eq]
  try dsimp only
  rw [node14_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input16 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(32809, 32773), (32805, 32789), (32801, 32785)])).val
theorem input16_def : input16 = (Flapjack.WordLangProgHOL.move 1 [(32809, 32773), (32805, 32789), (32801, 32785)]) := by
  unfold input16
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(32809, 32773)])).val
theorem output16_def : output16 = (Flapjack.WordLangProgHOL.move 1 [(32809, 32773)]) := by
  unfold output16
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16_skip : Flapjack.WordAlloc.isSkip output16 = false := by
  rw [output16_def]
  conv => lhs; cbv
  try rfl
theorem node16_eq : Flapjack.WordAlloc.removeDeadStructural input16 value5 value1 value2 = (output16, value6, value1) := by
  rw [input16_def, output16_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input17 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16 input15)).val
theorem input17_def : input17 = (.seq input16 input15) := by
  unfold input17
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16)).val
theorem output17_def : output17 = (output16) := by
  unfold output17
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17_skip : Flapjack.WordAlloc.isSkip output17 = false := by
  rw [output17_def]
  conv => lhs; cbv
  try rfl
theorem node17_eq : Flapjack.WordAlloc.removeDeadStructural input17 value5 value1 value2 = (output17, value6, value1) := by
  rw [input17_def, output17_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node15_eq]
  try dsimp only
  rw [node16_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input18 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input18_def : input18 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input18
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output18 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output18_def : output18 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output18
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output18_skip : Flapjack.WordAlloc.isSkip output18 = false := by
  rw [output18_def]
  conv => lhs; cbv
  try rfl
theorem node18_eq : Flapjack.WordAlloc.removeDeadStructural input18 value6 value1 value2 = (output18, value6, value1) := by
  rw [input18_def, output18_def]
  try (conv => lhs; cbv)
  try rfl

def value7 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))))))))

@[irreducible, cbv_opaque] def input19 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                  (Flapjack.Spt.bn Flapjack.Spt.ln
                                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))))))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(32773, 32767)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(32777, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32785 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(32789, 32777)]))),
      875, 118))
  (some 73) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(32773, 32767)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(32781, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 32781)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(32785, 32781)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32789 0#64)))),
      875, 119)))).val
theorem input19_def : input19 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                  (Flapjack.Spt.bn Flapjack.Spt.ln
                                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))))))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(32773, 32767)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(32777, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32785 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(32789, 32777)]))),
      875, 118))
  (some 73) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(32773, 32767)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(32781, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 32781)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(32785, 32781)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32789 0#64)))),
      875, 119))) := by
  unfold input19
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output19 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                  (Flapjack.Spt.bn Flapjack.Spt.ln
                                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))))))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(32773, 32767)], 875, 118))
  (some 73) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(32773, 32767)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(32781, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 32781)])
            (Flapjack.WordLangProgHOL.raise 2))),
      875, 119)))).val
theorem output19_def : output19 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                  (Flapjack.Spt.bn Flapjack.Spt.ln
                                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))))))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(32773, 32767)], 875, 118))
  (some 73) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(32773, 32767)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(32781, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 32781)])
            (Flapjack.WordLangProgHOL.raise 2))),
      875, 119))) := by
  unfold output19
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output19_skip : Flapjack.WordAlloc.isSkip output19 = false := by
  rw [output19_def]
  conv => lhs; cbv
  try rfl
theorem node19_eq : Flapjack.WordAlloc.removeDeadStructural input19 value6 value1 value2 = (output19, value7, value1) := by
  rw [input19_def, output19_def]
  try (conv => lhs; cbv)
  try rfl

def value8 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))))))))

@[irreducible, cbv_opaque] def input20 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 32761)])).val
theorem input20_def : input20 = (Flapjack.WordLangProgHOL.move 1 [(2, 32761)]) := by
  unfold input20
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output20 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 32761)])).val
theorem output20_def : output20 = (Flapjack.WordLangProgHOL.move 1 [(2, 32761)]) := by
  unfold output20
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output20_skip : Flapjack.WordAlloc.isSkip output20 = false := by
  rw [output20_def]
  conv => lhs; cbv
  try rfl
theorem node20_eq : Flapjack.WordAlloc.removeDeadStructural input20 value7 value1 value2 = (output20, value8, value1) := by
  rw [input20_def, output20_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input21 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input20 input19)).val
theorem input21_def : input21 = (.seq input20 input19) := by
  unfold input21
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output21 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output20 output19)).val
theorem output21_def : output21 = (.seq output20 output19) := by
  unfold output21
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output21_skip : Flapjack.WordAlloc.isSkip output21 = false := by
  rw [output21_def]
  conv => lhs; cbv
  try rfl
theorem node21_eq : Flapjack.WordAlloc.removeDeadStructural input21 value6 value1 value2 = (output21, value8, value1) := by
  rw [input21_def, output21_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node19_eq]
  try dsimp only
  rw [node20_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value9 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input22 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(32767, 32733)])).val
theorem input22_def : input22 = (Flapjack.WordLangProgHOL.move 0 [(32767, 32733)]) := by
  unfold input22
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output22 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(32767, 32733)])).val
theorem output22_def : output22 = (Flapjack.WordLangProgHOL.move 0 [(32767, 32733)]) := by
  unfold output22
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output22_skip : Flapjack.WordAlloc.isSkip output22 = false := by
  rw [output22_def]
  conv => lhs; cbv
  try rfl
theorem node22_eq : Flapjack.WordAlloc.removeDeadStructural input22 value8 value1 value2 = (output22, value9, value1) := by
  rw [input22_def, output22_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input23 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input22 input21)).val
theorem input23_def : input23 = (.seq input22 input21) := by
  unfold input23
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output23 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output22 output21)).val
theorem output23_def : output23 = (.seq output22 output21) := by
  unfold output23
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output23_skip : Flapjack.WordAlloc.isSkip output23 = false := by
  rw [output23_def]
  conv => lhs; cbv
  try rfl
theorem node23_eq : Flapjack.WordAlloc.removeDeadStructural input23 value6 value1 value2 = (output23, value9, value1) := by
  rw [input23_def, output23_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node21_eq]
  try dsimp only
  rw [node22_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value10 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input24 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32761 (Flapjack.WordLangAddr.addr 32757 88#64)))).val
theorem input24_def : input24 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32761 (Flapjack.WordLangAddr.addr 32757 88#64))) := by
  unfold input24
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output24 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32761 (Flapjack.WordLangAddr.addr 32757 88#64)))).val
theorem output24_def : output24 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32761 (Flapjack.WordLangAddr.addr 32757 88#64))) := by
  unfold output24
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output24_skip : Flapjack.WordAlloc.isSkip output24 = false := by
  rw [output24_def]
  conv => lhs; cbv
  try rfl
theorem node24_eq : Flapjack.WordAlloc.removeDeadStructural input24 value9 value1 value2 = (output24, value10, value1) := by
  rw [input24_def, output24_def]
  try (conv => lhs; cbv)
  try rfl

def value11 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input25 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(32757, 32737)])).val
theorem input25_def : input25 = (Flapjack.WordLangProgHOL.move 0 [(32757, 32737)]) := by
  unfold input25
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output25 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(32757, 32737)])).val
theorem output25_def : output25 = (Flapjack.WordLangProgHOL.move 0 [(32757, 32737)]) := by
  unfold output25
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output25_skip : Flapjack.WordAlloc.isSkip output25 = false := by
  rw [output25_def]
  conv => lhs; cbv
  try rfl
theorem node25_eq : Flapjack.WordAlloc.removeDeadStructural input25 value10 value1 value2 = (output25, value11, value1) := by
  rw [input25_def, output25_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input26 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input25 input24)).val
theorem input26_def : input26 = (.seq input25 input24) := by
  unfold input26
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output26 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output25 output24)).val
theorem output26_def : output26 = (.seq output25 output24) := by
  unfold output26
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output26_skip : Flapjack.WordAlloc.isSkip output26 = false := by
  rw [output26_def]
  conv => lhs; cbv
  try rfl
theorem node26_eq : Flapjack.WordAlloc.removeDeadStructural input26 value9 value1 value2 = (output26, value11, value1) := by
  rw [input26_def, output26_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node24_eq]
  try dsimp only
  rw [node25_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input27 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input27_def : input27 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input27
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output27 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output27_def : output27 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output27
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output27_skip : Flapjack.WordAlloc.isSkip output27 = false := by
  rw [output27_def]
  conv => lhs; cbv
  try rfl
theorem node27_eq : Flapjack.WordAlloc.removeDeadStructural input27 value11 value1 value2 = (output27, value11, value1) := by
  rw [input27_def, output27_def]
  try (conv => lhs; cbv)
  try rfl

def value12 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)))

@[irreducible, cbv_opaque] def input28 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  Flapjack.Spt.ln)
                                Flapjack.Spt.ln)
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  Flapjack.Spt.ln)
                                Flapjack.Spt.ln)
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(32733, 32723), (32737, 32727)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(32741, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32749 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(32753, 32741)]))),
      875, 116))
  (some 76) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(32733, 32723), (32737, 32727)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(32745, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 32745)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(32749, 32745)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32753 0#64)))),
      875, 117)))).val
theorem input28_def : input28 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  Flapjack.Spt.ln)
                                Flapjack.Spt.ln)
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  Flapjack.Spt.ln)
                                Flapjack.Spt.ln)
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(32733, 32723), (32737, 32727)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(32741, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32749 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(32753, 32741)]))),
      875, 116))
  (some 76) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(32733, 32723), (32737, 32727)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(32745, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 32745)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(32749, 32745)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32753 0#64)))),
      875, 117))) := by
  unfold input28
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output28 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  Flapjack.Spt.ln)
                                Flapjack.Spt.ln)
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  Flapjack.Spt.ln)
                                Flapjack.Spt.ln)
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(32733, 32723), (32737, 32727)], 875, 116))
  (some 76) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(32733, 32723), (32737, 32727)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(32745, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 32745)])
            (Flapjack.WordLangProgHOL.raise 2))),
      875, 117)))).val
theorem output28_def : output28 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  Flapjack.Spt.ln)
                                Flapjack.Spt.ln)
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  Flapjack.Spt.ln)
                                Flapjack.Spt.ln)
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(32733, 32723), (32737, 32727)], 875, 116))
  (some 76) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(32733, 32723), (32737, 32727)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(32745, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 32745)])
            (Flapjack.WordLangProgHOL.raise 2))),
      875, 117))) := by
  unfold output28
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output28_skip : Flapjack.WordAlloc.isSkip output28 = false := by
  rw [output28_def]
  conv => lhs; cbv
  try rfl
theorem node28_eq : Flapjack.WordAlloc.removeDeadStructural input28 value11 value1 value2 = (output28, value12, value1) := by
  rw [input28_def, output28_def]
  try (conv => lhs; cbv)
  try rfl

def value13 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)))

@[irreducible, cbv_opaque] def input29 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 32717)])).val
theorem input29_def : input29 = (Flapjack.WordLangProgHOL.move 1 [(2, 32717)]) := by
  unfold input29
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output29 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 32717)])).val
theorem output29_def : output29 = (Flapjack.WordLangProgHOL.move 1 [(2, 32717)]) := by
  unfold output29
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output29_skip : Flapjack.WordAlloc.isSkip output29 = false := by
  rw [output29_def]
  conv => lhs; cbv
  try rfl
theorem node29_eq : Flapjack.WordAlloc.removeDeadStructural input29 value12 value1 value2 = (output29, value13, value1) := by
  rw [input29_def, output29_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input30 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input29 input28)).val
theorem input30_def : input30 = (.seq input29 input28) := by
  unfold input30
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output30 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output29 output28)).val
theorem output30_def : output30 = (.seq output29 output28) := by
  unfold output30
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output30_skip : Flapjack.WordAlloc.isSkip output30 = false := by
  rw [output30_def]
  conv => lhs; cbv
  try rfl
theorem node30_eq : Flapjack.WordAlloc.removeDeadStructural input30 value11 value1 value2 = (output30, value13, value1) := by
  rw [input30_def, output30_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node28_eq]
  try dsimp only
  rw [node29_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value14 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input31 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(32723, 32669), (32727, 32693)])).val
theorem input31_def : input31 = (Flapjack.WordLangProgHOL.move 0 [(32723, 32669), (32727, 32693)]) := by
  unfold input31
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output31 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(32723, 32669), (32727, 32693)])).val
theorem output31_def : output31 = (Flapjack.WordLangProgHOL.move 0 [(32723, 32669), (32727, 32693)]) := by
  unfold output31
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output31_skip : Flapjack.WordAlloc.isSkip output31 = false := by
  rw [output31_def]
  conv => lhs; cbv
  try rfl
theorem node31_eq : Flapjack.WordAlloc.removeDeadStructural input31 value13 value1 value2 = (output31, value14, value1) := by
  rw [input31_def, output31_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input32 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input31 input30)).val
theorem input32_def : input32 = (.seq input31 input30) := by
  unfold input32
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output32 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output31 output30)).val
theorem output32_def : output32 = (.seq output31 output30) := by
  unfold output32
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output32_skip : Flapjack.WordAlloc.isSkip output32 = false := by
  rw [output32_def]
  conv => lhs; cbv
  try rfl
theorem node32_eq : Flapjack.WordAlloc.removeDeadStructural input32 value11 value1 value2 = (output32, value14, value1) := by
  rw [input32_def, output32_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node30_eq]
  try dsimp only
  rw [node31_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value15 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input33 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(32717, 32701)])).val
theorem input33_def : input33 = (Flapjack.WordLangProgHOL.move 0 [(32717, 32701)]) := by
  unfold input33
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output33 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(32717, 32701)])).val
theorem output33_def : output33 = (Flapjack.WordLangProgHOL.move 0 [(32717, 32701)]) := by
  unfold output33
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output33_skip : Flapjack.WordAlloc.isSkip output33 = false := by
  rw [output33_def]
  conv => lhs; cbv
  try rfl
theorem node33_eq : Flapjack.WordAlloc.removeDeadStructural input33 value14 value1 value2 = (output33, value15, value1) := by
  rw [input33_def, output33_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input34 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32713 1#64))).val
theorem input34_def : input34 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32713 1#64)) := by
  unfold input34
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output34 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output34_def : output34 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output34
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output34_skip : Flapjack.WordAlloc.isSkip output34 = true := by
  rw [output34_def]
  conv => lhs; cbv
  try rfl
theorem node34_eq : Flapjack.WordAlloc.removeDeadStructural input34 value15 value1 value2 = (output34, value15, value1) := by
  rw [input34_def, output34_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input35 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input35_def : input35 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input35
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output35 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output35_def : output35 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output35
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output35_skip : Flapjack.WordAlloc.isSkip output35 = false := by
  rw [output35_def]
  conv => lhs; cbv
  try rfl
theorem node35_eq : Flapjack.WordAlloc.removeDeadStructural input35 value15 value1 value2 = (output35, value15, value1) := by
  rw [input35_def, output35_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input36 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32709 1#64))).val
theorem input36_def : input36 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32709 1#64)) := by
  unfold input36
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output36 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output36_def : output36 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output36
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output36_skip : Flapjack.WordAlloc.isSkip output36 = true := by
  rw [output36_def]
  conv => lhs; cbv
  try rfl
theorem node36_eq : Flapjack.WordAlloc.removeDeadStructural input36 value15 value1 value2 = (output36, value15, value1) := by
  rw [input36_def, output36_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input37 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input36 input35)).val
theorem input37_def : input37 = (.seq input36 input35) := by
  unfold input37
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output37 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output35)).val
theorem output37_def : output37 = (output35) := by
  unfold output37
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output37_skip : Flapjack.WordAlloc.isSkip output37 = false := by
  rw [output37_def]
  conv => lhs; cbv
  try rfl
theorem node37_eq : Flapjack.WordAlloc.removeDeadStructural input37 value15 value1 value2 = (output37, value15, value1) := by
  rw [input37_def, output37_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node35_eq]
  try dsimp only
  rw [node36_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input38 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input37 input34)).val
theorem input38_def : input38 = (.seq input37 input34) := by
  unfold input38
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output38 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output37)).val
theorem output38_def : output38 = (output37) := by
  unfold output38
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output38_skip : Flapjack.WordAlloc.isSkip output38 = false := by
  rw [output38_def]
  conv => lhs; cbv
  try rfl
theorem node38_eq : Flapjack.WordAlloc.removeDeadStructural input38 value15 value1 value2 = (output38, value15, value1) := by
  rw [input38_def, output38_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node34_eq]
  try dsimp only
  rw [node37_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input39 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input38 input33)).val
theorem input39_def : input39 = (.seq input38 input33) := by
  unfold input39
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output39 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output38 output33)).val
theorem output39_def : output39 = (.seq output38 output33) := by
  unfold output39
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output39_skip : Flapjack.WordAlloc.isSkip output39 = false := by
  rw [output39_def]
  conv => lhs; cbv
  try rfl
theorem node39_eq : Flapjack.WordAlloc.removeDeadStructural input39 value14 value1 value2 = (output39, value15, value1) := by
  rw [input39_def, output39_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node33_eq]
  try dsimp only
  rw [node38_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input40 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input39 input32)).val
theorem input40_def : input40 = (.seq input39 input32) := by
  unfold input40
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output40 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output39 output32)).val
theorem output40_def : output40 = (.seq output39 output32) := by
  unfold output40
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output40_skip : Flapjack.WordAlloc.isSkip output40 = false := by
  rw [output40_def]
  conv => lhs; cbv
  try rfl
theorem node40_eq : Flapjack.WordAlloc.removeDeadStructural input40 value11 value1 value2 = (output40, value15, value1) := by
  rw [input40_def, output40_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node32_eq]
  try dsimp only
  rw [node39_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input41 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input40 input27)).val
theorem input41_def : input41 = (.seq input40 input27) := by
  unfold input41
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output41 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output40 output27)).val
theorem output41_def : output41 = (.seq output40 output27) := by
  unfold output41
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output41_skip : Flapjack.WordAlloc.isSkip output41 = false := by
  rw [output41_def]
  conv => lhs; cbv
  try rfl
theorem node41_eq : Flapjack.WordAlloc.removeDeadStructural input41 value11 value1 value2 = (output41, value15, value1) := by
  rw [input41_def, output41_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node27_eq]
  try dsimp only
  rw [node40_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input42 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input41 input26)).val
theorem input42_def : input42 = (.seq input41 input26) := by
  unfold input42
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output42 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output41 output26)).val
theorem output42_def : output42 = (.seq output41 output26) := by
  unfold output42
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output42_skip : Flapjack.WordAlloc.isSkip output42 = false := by
  rw [output42_def]
  conv => lhs; cbv
  try rfl
theorem node42_eq : Flapjack.WordAlloc.removeDeadStructural input42 value9 value1 value2 = (output42, value15, value1) := by
  rw [input42_def, output42_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node26_eq]
  try dsimp only
  rw [node41_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input43 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input42 input23)).val
theorem input43_def : input43 = (.seq input42 input23) := by
  unfold input43
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output43 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output42 output23)).val
theorem output43_def : output43 = (.seq output42 output23) := by
  unfold output43
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output43_skip : Flapjack.WordAlloc.isSkip output43 = false := by
  rw [output43_def]
  conv => lhs; cbv
  try rfl
theorem node43_eq : Flapjack.WordAlloc.removeDeadStructural input43 value6 value1 value2 = (output43, value15, value1) := by
  rw [input43_def, output43_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node23_eq]
  try dsimp only
  rw [node42_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input44 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input43 input18)).val
theorem input44_def : input44 = (.seq input43 input18) := by
  unfold input44
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output44 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output43 output18)).val
theorem output44_def : output44 = (.seq output43 output18) := by
  unfold output44
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output44_skip : Flapjack.WordAlloc.isSkip output44 = false := by
  rw [output44_def]
  conv => lhs; cbv
  try rfl
theorem node44_eq : Flapjack.WordAlloc.removeDeadStructural input44 value6 value1 value2 = (output44, value15, value1) := by
  rw [input44_def, output44_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node18_eq]
  try dsimp only
  rw [node43_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input45 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input44 input17)).val
theorem input45_def : input45 = (.seq input44 input17) := by
  unfold input45
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output45 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output44 output17)).val
theorem output45_def : output45 = (.seq output44 output17) := by
  unfold output45
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output45_skip : Flapjack.WordAlloc.isSkip output45 = false := by
  rw [output45_def]
  conv => lhs; cbv
  try rfl
theorem node45_eq : Flapjack.WordAlloc.removeDeadStructural input45 value5 value1 value2 = (output45, value15, value1) := by
  rw [input45_def, output45_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node17_eq]
  try dsimp only
  rw [node44_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input46 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(32829, 32693)])).val
theorem input46_def : input46 = (Flapjack.WordLangProgHOL.move 1 [(32829, 32693)]) := by
  unfold input46
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output46 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output46_def : output46 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output46
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output46_skip : Flapjack.WordAlloc.isSkip output46 = true := by
  rw [output46_def]
  conv => lhs; cbv
  try rfl
theorem node46_eq : Flapjack.WordAlloc.removeDeadStructural input46 value5 value1 value2 = (output46, value5, value1) := by
  rw [input46_def, output46_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input47 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(32825, 32797)])).val
theorem input47_def : input47 = (Flapjack.WordLangProgHOL.move 1 [(32825, 32797)]) := by
  unfold input47
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output47 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output47_def : output47 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output47
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output47_skip : Flapjack.WordAlloc.isSkip output47 = true := by
  rw [output47_def]
  conv => lhs; cbv
  try rfl
theorem node47_eq : Flapjack.WordAlloc.removeDeadStructural input47 value5 value1 value2 = (output47, value5, value1) := by
  rw [input47_def, output47_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input48 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(32821, 32705)])).val
theorem input48_def : input48 = (Flapjack.WordLangProgHOL.move 1 [(32821, 32705)]) := by
  unfold input48
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output48 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output48_def : output48 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output48
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output48_skip : Flapjack.WordAlloc.isSkip output48 = true := by
  rw [output48_def]
  conv => lhs; cbv
  try rfl
theorem node48_eq : Flapjack.WordAlloc.removeDeadStructural input48 value5 value1 value2 = (output48, value5, value1) := by
  rw [input48_def, output48_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input49 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(32817, 32701)])).val
theorem input49_def : input49 = (Flapjack.WordLangProgHOL.move 1 [(32817, 32701)]) := by
  unfold input49
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output49 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output49_def : output49 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output49
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output49_skip : Flapjack.WordAlloc.isSkip output49 = true := by
  rw [output49_def]
  conv => lhs; cbv
  try rfl
theorem node49_eq : Flapjack.WordAlloc.removeDeadStructural input49 value5 value1 value2 = (output49, value5, value1) := by
  rw [input49_def, output49_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input50 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(32813, 32693)])).val
theorem input50_def : input50 = (Flapjack.WordLangProgHOL.move 1 [(32813, 32693)]) := by
  unfold input50
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output50 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output50_def : output50 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output50
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output50_skip : Flapjack.WordAlloc.isSkip output50 = true := by
  rw [output50_def]
  conv => lhs; cbv
  try rfl
theorem node50_eq : Flapjack.WordAlloc.removeDeadStructural input50 value5 value1 value2 = (output50, value5, value1) := by
  rw [input50_def, output50_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input51 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input51_def : input51 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input51
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output51 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output51_def : output51 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output51
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output51_skip : Flapjack.WordAlloc.isSkip output51 = true := by
  rw [output51_def]
  conv => lhs; cbv
  try rfl
theorem node51_eq : Flapjack.WordAlloc.removeDeadStructural input51 value5 value1 value2 = (output51, value5, value1) := by
  rw [input51_def, output51_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input52 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input51 input50)).val
theorem input52_def : input52 = (.seq input51 input50) := by
  unfold input52
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output52 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output50)).val
theorem output52_def : output52 = (output50) := by
  unfold output52
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output52_skip : Flapjack.WordAlloc.isSkip output52 = true := by
  rw [output52_def]
  conv => lhs; cbv
  try rfl
theorem node52_eq : Flapjack.WordAlloc.removeDeadStructural input52 value5 value1 value2 = (output52, value5, value1) := by
  rw [input52_def, output52_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node50_eq]
  try dsimp only
  rw [node51_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input53 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input52 input49)).val
theorem input53_def : input53 = (.seq input52 input49) := by
  unfold input53
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output53 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output49)).val
theorem output53_def : output53 = (output49) := by
  unfold output53
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output53_skip : Flapjack.WordAlloc.isSkip output53 = true := by
  rw [output53_def]
  conv => lhs; cbv
  try rfl
theorem node53_eq : Flapjack.WordAlloc.removeDeadStructural input53 value5 value1 value2 = (output53, value5, value1) := by
  rw [input53_def, output53_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node49_eq]
  try dsimp only
  rw [node52_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input54 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input53 input48)).val
theorem input54_def : input54 = (.seq input53 input48) := by
  unfold input54
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output54 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output48)).val
theorem output54_def : output54 = (output48) := by
  unfold output54
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output54_skip : Flapjack.WordAlloc.isSkip output54 = true := by
  rw [output54_def]
  conv => lhs; cbv
  try rfl
theorem node54_eq : Flapjack.WordAlloc.removeDeadStructural input54 value5 value1 value2 = (output54, value5, value1) := by
  rw [input54_def, output54_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node48_eq]
  try dsimp only
  rw [node53_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input55 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input54 input47)).val
theorem input55_def : input55 = (.seq input54 input47) := by
  unfold input55
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output55 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output47)).val
theorem output55_def : output55 = (output47) := by
  unfold output55
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output55_skip : Flapjack.WordAlloc.isSkip output55 = true := by
  rw [output55_def]
  conv => lhs; cbv
  try rfl
theorem node55_eq : Flapjack.WordAlloc.removeDeadStructural input55 value5 value1 value2 = (output55, value5, value1) := by
  rw [input55_def, output55_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node47_eq]
  try dsimp only
  rw [node54_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input56 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input55 input46)).val
theorem input56_def : input56 = (.seq input55 input46) := by
  unfold input56
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output56 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output46)).val
theorem output56_def : output56 = (output46) := by
  unfold output56
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output56_skip : Flapjack.WordAlloc.isSkip output56 = true := by
  rw [output56_def]
  conv => lhs; cbv
  try rfl
theorem node56_eq : Flapjack.WordAlloc.removeDeadStructural input56 value5 value1 value2 = (output56, value5, value1) := by
  rw [input56_def, output56_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node46_eq]
  try dsimp only
  rw [node55_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value16 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input57 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(32809, 32669), (32805, 32685), (32801, 32793)])).val
theorem input57_def : input57 = (Flapjack.WordLangProgHOL.move 1 [(32809, 32669), (32805, 32685), (32801, 32793)]) := by
  unfold input57
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output57 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(32809, 32669)])).val
theorem output57_def : output57 = (Flapjack.WordLangProgHOL.move 1 [(32809, 32669)]) := by
  unfold output57
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output57_skip : Flapjack.WordAlloc.isSkip output57 = false := by
  rw [output57_def]
  conv => lhs; cbv
  try rfl
theorem node57_eq : Flapjack.WordAlloc.removeDeadStructural input57 value5 value1 value2 = (output57, value16, value1) := by
  rw [input57_def, output57_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input58 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input57 input56)).val
theorem input58_def : input58 = (.seq input57 input56) := by
  unfold input58
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output58 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output57)).val
theorem output58_def : output58 = (output57) := by
  unfold output58
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output58_skip : Flapjack.WordAlloc.isSkip output58 = false := by
  rw [output58_def]
  conv => lhs; cbv
  try rfl
theorem node58_eq : Flapjack.WordAlloc.removeDeadStructural input58 value5 value1 value2 = (output58, value16, value1) := by
  rw [input58_def, output58_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node56_eq]
  try dsimp only
  rw [node57_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input59 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32797 0#64))).val
theorem input59_def : input59 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32797 0#64)) := by
  unfold input59
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output59 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output59_def : output59 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output59
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output59_skip : Flapjack.WordAlloc.isSkip output59 = true := by
  rw [output59_def]
  conv => lhs; cbv
  try rfl
theorem node59_eq : Flapjack.WordAlloc.removeDeadStructural input59 value16 value1 value2 = (output59, value16, value1) := by
  rw [input59_def, output59_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input60 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input60_def : input60 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input60
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output60 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output60_def : output60 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output60
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output60_skip : Flapjack.WordAlloc.isSkip output60 = false := by
  rw [output60_def]
  conv => lhs; cbv
  try rfl
theorem node60_eq : Flapjack.WordAlloc.removeDeadStructural input60 value16 value1 value2 = (output60, value16, value1) := by
  rw [input60_def, output60_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input61 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32793 0#64))).val
theorem input61_def : input61 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32793 0#64)) := by
  unfold input61
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output61 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output61_def : output61 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output61
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output61_skip : Flapjack.WordAlloc.isSkip output61 = true := by
  rw [output61_def]
  conv => lhs; cbv
  try rfl
theorem node61_eq : Flapjack.WordAlloc.removeDeadStructural input61 value16 value1 value2 = (output61, value16, value1) := by
  rw [input61_def, output61_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input62 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input61 input60)).val
theorem input62_def : input62 = (.seq input61 input60) := by
  unfold input62
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output62 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output60)).val
theorem output62_def : output62 = (output60) := by
  unfold output62
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output62_skip : Flapjack.WordAlloc.isSkip output62 = false := by
  rw [output62_def]
  conv => lhs; cbv
  try rfl
theorem node62_eq : Flapjack.WordAlloc.removeDeadStructural input62 value16 value1 value2 = (output62, value16, value1) := by
  rw [input62_def, output62_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node60_eq]
  try dsimp only
  rw [node61_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input63 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input62 input59)).val
theorem input63_def : input63 = (.seq input62 input59) := by
  unfold input63
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output63 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output62)).val
theorem output63_def : output63 = (output62) := by
  unfold output63
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output63_skip : Flapjack.WordAlloc.isSkip output63 = false := by
  rw [output63_def]
  conv => lhs; cbv
  try rfl
theorem node63_eq : Flapjack.WordAlloc.removeDeadStructural input63 value16 value1 value2 = (output63, value16, value1) := by
  rw [input63_def, output63_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node59_eq]
  try dsimp only
  rw [node62_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input64 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input63 input58)).val
theorem input64_def : input64 = (.seq input63 input58) := by
  unfold input64
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output64 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output63 output58)).val
theorem output64_def : output64 = (.seq output63 output58) := by
  unfold output64
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output64_skip : Flapjack.WordAlloc.isSkip output64 = false := by
  rw [output64_def]
  conv => lhs; cbv
  try rfl
theorem node64_eq : Flapjack.WordAlloc.removeDeadStructural input64 value5 value1 value2 = (output64, value16, value1) := by
  rw [input64_def, output64_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node58_eq]
  try dsimp only
  rw [node63_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value17 : Flapjack.Cmp :=
Flapjack.Cmp.notEqual

def value18 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 32705

def value19 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input65 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value17 32701 value18 input45 input64)).val
theorem input65_def : input65 = (.ite value17 32701 value18 input45 input64) := by
  unfold input65
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output65 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value17 32701 value18 output45 output64)).val
theorem output65_def : output65 = (.ite value17 32701 value18 output45 output64) := by
  unfold output65
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output65_skip : Flapjack.WordAlloc.isSkip output65 = false := by
  rw [output65_def]
  conv => lhs; cbv
  try rfl
theorem node65_eq : Flapjack.WordAlloc.removeDeadStructural input65 value5 value1 value2 = (output65, value19, value1) := by
  rw [input65_def, output65_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node45_eq]
  try dsimp only
  rw [node64_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input66 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32705 0#64))).val
theorem input66_def : input66 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32705 0#64)) := by
  unfold input66
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output66 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32705 0#64))).val
theorem output66_def : output66 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32705 0#64)) := by
  unfold output66
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output66_skip : Flapjack.WordAlloc.isSkip output66 = false := by
  rw [output66_def]
  conv => lhs; cbv
  try rfl
theorem node66_eq : Flapjack.WordAlloc.removeDeadStructural input66 value19 value1 value2 = (output66, value15, value1) := by
  rw [input66_def, output66_def]
  try (conv => lhs; cbv)
  try rfl

def value20 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input67 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(32701, 32697)])).val
theorem input67_def : input67 = (Flapjack.WordLangProgHOL.move 0 [(32701, 32697)]) := by
  unfold input67
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output67 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(32701, 32697)])).val
theorem output67_def : output67 = (Flapjack.WordLangProgHOL.move 0 [(32701, 32697)]) := by
  unfold output67
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output67_skip : Flapjack.WordAlloc.isSkip output67 = false := by
  rw [output67_def]
  conv => lhs; cbv
  try rfl
theorem node67_eq : Flapjack.WordAlloc.removeDeadStructural input67 value15 value1 value2 = (output67, value20, value1) := by
  rw [input67_def, output67_def]
  try (conv => lhs; cbv)
  try rfl

def value21 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input68 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32697 (Flapjack.WordLangAddr.addr 32693 80#64)))).val
theorem input68_def : input68 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32697 (Flapjack.WordLangAddr.addr 32693 80#64))) := by
  unfold input68
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output68 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32697 (Flapjack.WordLangAddr.addr 32693 80#64)))).val
theorem output68_def : output68 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32697 (Flapjack.WordLangAddr.addr 32693 80#64))) := by
  unfold output68
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output68_skip : Flapjack.WordAlloc.isSkip output68 = false := by
  rw [output68_def]
  conv => lhs; cbv
  try rfl
theorem node68_eq : Flapjack.WordAlloc.removeDeadStructural input68 value20 value1 value2 = (output68, value21, value1) := by
  rw [input68_def, output68_def]
  try (conv => lhs; cbv)
  try rfl

def value22 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input69 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(32693, 32673)])).val
theorem input69_def : input69 = (Flapjack.WordLangProgHOL.move 0 [(32693, 32673)]) := by
  unfold input69
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output69 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(32693, 32673)])).val
theorem output69_def : output69 = (Flapjack.WordLangProgHOL.move 0 [(32693, 32673)]) := by
  unfold output69
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output69_skip : Flapjack.WordAlloc.isSkip output69 = false := by
  rw [output69_def]
  conv => lhs; cbv
  try rfl
theorem node69_eq : Flapjack.WordAlloc.removeDeadStructural input69 value21 value1 value2 = (output69, value22, value1) := by
  rw [input69_def, output69_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input70 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input69 input68)).val
theorem input70_def : input70 = (.seq input69 input68) := by
  unfold input70
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output70 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output69 output68)).val
theorem output70_def : output70 = (.seq output69 output68) := by
  unfold output70
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output70_skip : Flapjack.WordAlloc.isSkip output70 = false := by
  rw [output70_def]
  conv => lhs; cbv
  try rfl
theorem node70_eq : Flapjack.WordAlloc.removeDeadStructural input70 value20 value1 value2 = (output70, value22, value1) := by
  rw [input70_def, output70_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node68_eq]
  try dsimp only
  rw [node69_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input71 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input71_def : input71 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input71
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output71 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output71_def : output71 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output71
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output71_skip : Flapjack.WordAlloc.isSkip output71 = false := by
  rw [output71_def]
  conv => lhs; cbv
  try rfl
theorem node71_eq : Flapjack.WordAlloc.removeDeadStructural input71 value22 value1 value2 = (output71, value22, value1) := by
  rw [input71_def, output71_def]
  try (conv => lhs; cbv)
  try rfl

def value23 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)))

@[irreducible, cbv_opaque] def input72 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  Flapjack.Spt.ln)
                                Flapjack.Spt.ln)
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  Flapjack.Spt.ln)
                                Flapjack.Spt.ln)
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(32669, 32659), (32673, 32663)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(32677, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32685 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(32689, 32677)]))),
      875, 114))
  (some 457) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(32669, 32659), (32673, 32663)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(32681, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 32681)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(32685, 32681)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32689 0#64)))),
      875, 115)))).val
theorem input72_def : input72 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  Flapjack.Spt.ln)
                                Flapjack.Spt.ln)
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  Flapjack.Spt.ln)
                                Flapjack.Spt.ln)
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(32669, 32659), (32673, 32663)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(32677, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32685 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(32689, 32677)]))),
      875, 114))
  (some 457) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(32669, 32659), (32673, 32663)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(32681, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 32681)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(32685, 32681)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32689 0#64)))),
      875, 115))) := by
  unfold input72
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output72 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  Flapjack.Spt.ln)
                                Flapjack.Spt.ln)
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  Flapjack.Spt.ln)
                                Flapjack.Spt.ln)
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(32669, 32659), (32673, 32663)], 875, 114))
  (some 457) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(32669, 32659), (32673, 32663)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(32681, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 32681)])
            (Flapjack.WordLangProgHOL.raise 2))),
      875, 115)))).val
theorem output72_def : output72 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  Flapjack.Spt.ln)
                                Flapjack.Spt.ln)
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  Flapjack.Spt.ln)
                                Flapjack.Spt.ln)
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(32669, 32659), (32673, 32663)], 875, 114))
  (some 457) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(32669, 32659), (32673, 32663)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(32681, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 32681)])
            (Flapjack.WordLangProgHOL.raise 2))),
      875, 115))) := by
  unfold output72
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output72_skip : Flapjack.WordAlloc.isSkip output72 = false := by
  rw [output72_def]
  conv => lhs; cbv
  try rfl
theorem node72_eq : Flapjack.WordAlloc.removeDeadStructural input72 value22 value1 value2 = (output72, value23, value1) := by
  rw [input72_def, output72_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input73 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input73_def : input73 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input73
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output73 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output73_def : output73 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output73
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output73_skip : Flapjack.WordAlloc.isSkip output73 = true := by
  rw [output73_def]
  conv => lhs; cbv
  try rfl
theorem node73_eq : Flapjack.WordAlloc.removeDeadStructural input73 value23 value1 value2 = (output73, value23, value1) := by
  rw [input73_def, output73_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input74 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input73 input72)).val
theorem input74_def : input74 = (.seq input73 input72) := by
  unfold input74
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output74 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output72)).val
theorem output74_def : output74 = (output72) := by
  unfold output74
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output74_skip : Flapjack.WordAlloc.isSkip output74 = false := by
  rw [output74_def]
  conv => lhs; cbv
  try rfl
theorem node74_eq : Flapjack.WordAlloc.removeDeadStructural input74 value22 value1 value2 = (output74, value23, value1) := by
  rw [input74_def, output74_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node72_eq]
  try dsimp only
  rw [node73_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value24 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input75 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(32659, 32285), (32663, 32281)])).val
theorem input75_def : input75 = (Flapjack.WordLangProgHOL.move 0 [(32659, 32285), (32663, 32281)]) := by
  unfold input75
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output75 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(32659, 32285), (32663, 32281)])).val
theorem output75_def : output75 = (Flapjack.WordLangProgHOL.move 0 [(32659, 32285), (32663, 32281)]) := by
  unfold output75
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output75_skip : Flapjack.WordAlloc.isSkip output75 = false := by
  rw [output75_def]
  conv => lhs; cbv
  try rfl
theorem node75_eq : Flapjack.WordAlloc.removeDeadStructural input75 value23 value1 value2 = (output75, value24, value1) := by
  rw [input75_def, output75_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input76 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input75 input74)).val
theorem input76_def : input76 = (.seq input75 input74) := by
  unfold input76
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output76 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output75 output74)).val
theorem output76_def : output76 = (.seq output75 output74) := by
  unfold output76
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output76_skip : Flapjack.WordAlloc.isSkip output76 = false := by
  rw [output76_def]
  conv => lhs; cbv
  try rfl
theorem node76_eq : Flapjack.WordAlloc.removeDeadStructural input76 value22 value1 value2 = (output76, value24, value1) := by
  rw [input76_def, output76_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node74_eq]
  try dsimp only
  rw [node75_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input77 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input77_def : input77 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input77
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output77 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output77_def : output77 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output77
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output77_skip : Flapjack.WordAlloc.isSkip output77 = false := by
  rw [output77_def]
  conv => lhs; cbv
  try rfl
theorem node77_eq : Flapjack.WordAlloc.removeDeadStructural input77 value24 value1 value2 = (output77, value24, value1) := by
  rw [input77_def, output77_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input78 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32653 0#64))).val
theorem input78_def : input78 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32653 0#64)) := by
  unfold input78
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output78 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output78_def : output78 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output78
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output78_skip : Flapjack.WordAlloc.isSkip output78 = true := by
  rw [output78_def]
  conv => lhs; cbv
  try rfl
theorem node78_eq : Flapjack.WordAlloc.removeDeadStructural input78 value24 value1 value2 = (output78, value24, value1) := by
  rw [input78_def, output78_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input79 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32649 0#64))).val
theorem input79_def : input79 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32649 0#64)) := by
  unfold input79
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output79 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output79_def : output79 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output79
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output79_skip : Flapjack.WordAlloc.isSkip output79 = true := by
  rw [output79_def]
  conv => lhs; cbv
  try rfl
theorem node79_eq : Flapjack.WordAlloc.removeDeadStructural input79 value24 value1 value2 = (output79, value24, value1) := by
  rw [input79_def, output79_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input80 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32645 0#64))).val
theorem input80_def : input80 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32645 0#64)) := by
  unfold input80
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output80 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output80_def : output80 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output80
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output80_skip : Flapjack.WordAlloc.isSkip output80 = true := by
  rw [output80_def]
  conv => lhs; cbv
  try rfl
theorem node80_eq : Flapjack.WordAlloc.removeDeadStructural input80 value24 value1 value2 = (output80, value24, value1) := by
  rw [input80_def, output80_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input81 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32641 0#64))).val
theorem input81_def : input81 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32641 0#64)) := by
  unfold input81
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output81 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output81_def : output81 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output81
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output81_skip : Flapjack.WordAlloc.isSkip output81 = true := by
  rw [output81_def]
  conv => lhs; cbv
  try rfl
theorem node81_eq : Flapjack.WordAlloc.removeDeadStructural input81 value24 value1 value2 = (output81, value24, value1) := by
  rw [input81_def, output81_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input82 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32637 0#64))).val
theorem input82_def : input82 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32637 0#64)) := by
  unfold input82
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output82 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output82_def : output82 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output82
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output82_skip : Flapjack.WordAlloc.isSkip output82 = true := by
  rw [output82_def]
  conv => lhs; cbv
  try rfl
theorem node82_eq : Flapjack.WordAlloc.removeDeadStructural input82 value24 value1 value2 = (output82, value24, value1) := by
  rw [input82_def, output82_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input83 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32633 0#64))).val
theorem input83_def : input83 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32633 0#64)) := by
  unfold input83
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output83 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output83_def : output83 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output83
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output83_skip : Flapjack.WordAlloc.isSkip output83 = true := by
  rw [output83_def]
  conv => lhs; cbv
  try rfl
theorem node83_eq : Flapjack.WordAlloc.removeDeadStructural input83 value24 value1 value2 = (output83, value24, value1) := by
  rw [input83_def, output83_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input84 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32629 0#64))).val
theorem input84_def : input84 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32629 0#64)) := by
  unfold input84
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output84 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output84_def : output84 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output84
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output84_skip : Flapjack.WordAlloc.isSkip output84 = true := by
  rw [output84_def]
  conv => lhs; cbv
  try rfl
theorem node84_eq : Flapjack.WordAlloc.removeDeadStructural input84 value24 value1 value2 = (output84, value24, value1) := by
  rw [input84_def, output84_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input85 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32625 0#64))).val
theorem input85_def : input85 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32625 0#64)) := by
  unfold input85
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output85 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output85_def : output85 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output85
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output85_skip : Flapjack.WordAlloc.isSkip output85 = true := by
  rw [output85_def]
  conv => lhs; cbv
  try rfl
theorem node85_eq : Flapjack.WordAlloc.removeDeadStructural input85 value24 value1 value2 = (output85, value24, value1) := by
  rw [input85_def, output85_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input86 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32621 0#64))).val
theorem input86_def : input86 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32621 0#64)) := by
  unfold input86
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output86 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output86_def : output86 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output86
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output86_skip : Flapjack.WordAlloc.isSkip output86 = true := by
  rw [output86_def]
  conv => lhs; cbv
  try rfl
theorem node86_eq : Flapjack.WordAlloc.removeDeadStructural input86 value24 value1 value2 = (output86, value24, value1) := by
  rw [input86_def, output86_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input87 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32617 0#64))).val
theorem input87_def : input87 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32617 0#64)) := by
  unfold input87
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output87 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output87_def : output87 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output87
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output87_skip : Flapjack.WordAlloc.isSkip output87 = true := by
  rw [output87_def]
  conv => lhs; cbv
  try rfl
theorem node87_eq : Flapjack.WordAlloc.removeDeadStructural input87 value24 value1 value2 = (output87, value24, value1) := by
  rw [input87_def, output87_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input88 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32613 0#64))).val
theorem input88_def : input88 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32613 0#64)) := by
  unfold input88
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output88 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output88_def : output88 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output88
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output88_skip : Flapjack.WordAlloc.isSkip output88 = true := by
  rw [output88_def]
  conv => lhs; cbv
  try rfl
theorem node88_eq : Flapjack.WordAlloc.removeDeadStructural input88 value24 value1 value2 = (output88, value24, value1) := by
  rw [input88_def, output88_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input89 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32609 0#64))).val
theorem input89_def : input89 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32609 0#64)) := by
  unfold input89
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output89 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output89_def : output89 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output89
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output89_skip : Flapjack.WordAlloc.isSkip output89 = true := by
  rw [output89_def]
  conv => lhs; cbv
  try rfl
theorem node89_eq : Flapjack.WordAlloc.removeDeadStructural input89 value24 value1 value2 = (output89, value24, value1) := by
  rw [input89_def, output89_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input90 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32605 0#64))).val
theorem input90_def : input90 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32605 0#64)) := by
  unfold input90
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output90 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output90_def : output90 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output90
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output90_skip : Flapjack.WordAlloc.isSkip output90 = true := by
  rw [output90_def]
  conv => lhs; cbv
  try rfl
theorem node90_eq : Flapjack.WordAlloc.removeDeadStructural input90 value24 value1 value2 = (output90, value24, value1) := by
  rw [input90_def, output90_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input91 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32601 0#64))).val
theorem input91_def : input91 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32601 0#64)) := by
  unfold input91
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output91 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output91_def : output91 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output91
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output91_skip : Flapjack.WordAlloc.isSkip output91 = true := by
  rw [output91_def]
  conv => lhs; cbv
  try rfl
theorem node91_eq : Flapjack.WordAlloc.removeDeadStructural input91 value24 value1 value2 = (output91, value24, value1) := by
  rw [input91_def, output91_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input92 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32597 0#64))).val
theorem input92_def : input92 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32597 0#64)) := by
  unfold input92
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output92 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output92_def : output92 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output92
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output92_skip : Flapjack.WordAlloc.isSkip output92 = true := by
  rw [output92_def]
  conv => lhs; cbv
  try rfl
theorem node92_eq : Flapjack.WordAlloc.removeDeadStructural input92 value24 value1 value2 = (output92, value24, value1) := by
  rw [input92_def, output92_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input93 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32593 0#64))).val
theorem input93_def : input93 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32593 0#64)) := by
  unfold input93
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output93 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output93_def : output93 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output93
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output93_skip : Flapjack.WordAlloc.isSkip output93 = true := by
  rw [output93_def]
  conv => lhs; cbv
  try rfl
theorem node93_eq : Flapjack.WordAlloc.removeDeadStructural input93 value24 value1 value2 = (output93, value24, value1) := by
  rw [input93_def, output93_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input94 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32589 0#64))).val
theorem input94_def : input94 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32589 0#64)) := by
  unfold input94
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output94 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output94_def : output94 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output94
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output94_skip : Flapjack.WordAlloc.isSkip output94 = true := by
  rw [output94_def]
  conv => lhs; cbv
  try rfl
theorem node94_eq : Flapjack.WordAlloc.removeDeadStructural input94 value24 value1 value2 = (output94, value24, value1) := by
  rw [input94_def, output94_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input95 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32585 0#64))).val
theorem input95_def : input95 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32585 0#64)) := by
  unfold input95
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output95 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output95_def : output95 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output95
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output95_skip : Flapjack.WordAlloc.isSkip output95 = true := by
  rw [output95_def]
  conv => lhs; cbv
  try rfl
theorem node95_eq : Flapjack.WordAlloc.removeDeadStructural input95 value24 value1 value2 = (output95, value24, value1) := by
  rw [input95_def, output95_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input96 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32581 0#64))).val
theorem input96_def : input96 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32581 0#64)) := by
  unfold input96
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output96 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output96_def : output96 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output96
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output96_skip : Flapjack.WordAlloc.isSkip output96 = true := by
  rw [output96_def]
  conv => lhs; cbv
  try rfl
theorem node96_eq : Flapjack.WordAlloc.removeDeadStructural input96 value24 value1 value2 = (output96, value24, value1) := by
  rw [input96_def, output96_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input97 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32577 0#64))).val
theorem input97_def : input97 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32577 0#64)) := by
  unfold input97
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output97 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output97_def : output97 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output97
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output97_skip : Flapjack.WordAlloc.isSkip output97 = true := by
  rw [output97_def]
  conv => lhs; cbv
  try rfl
theorem node97_eq : Flapjack.WordAlloc.removeDeadStructural input97 value24 value1 value2 = (output97, value24, value1) := by
  rw [input97_def, output97_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input98 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32573 0#64))).val
theorem input98_def : input98 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32573 0#64)) := by
  unfold input98
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output98 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output98_def : output98 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output98
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output98_skip : Flapjack.WordAlloc.isSkip output98 = true := by
  rw [output98_def]
  conv => lhs; cbv
  try rfl
theorem node98_eq : Flapjack.WordAlloc.removeDeadStructural input98 value24 value1 value2 = (output98, value24, value1) := by
  rw [input98_def, output98_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input99 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32569 0#64))).val
theorem input99_def : input99 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32569 0#64)) := by
  unfold input99
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output99 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output99_def : output99 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output99
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output99_skip : Flapjack.WordAlloc.isSkip output99 = true := by
  rw [output99_def]
  conv => lhs; cbv
  try rfl
theorem node99_eq : Flapjack.WordAlloc.removeDeadStructural input99 value24 value1 value2 = (output99, value24, value1) := by
  rw [input99_def, output99_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32565 0#64))).val
theorem input100_def : input100 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32565 0#64)) := by
  unfold input100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output100_def : output100 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output100_skip : Flapjack.WordAlloc.isSkip output100 = true := by
  rw [output100_def]
  conv => lhs; cbv
  try rfl
theorem node100_eq : Flapjack.WordAlloc.removeDeadStructural input100 value24 value1 value2 = (output100, value24, value1) := by
  rw [input100_def, output100_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32561 0#64))).val
theorem input101_def : input101 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32561 0#64)) := by
  unfold input101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output101_def : output101 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output101_skip : Flapjack.WordAlloc.isSkip output101 = true := by
  rw [output101_def]
  conv => lhs; cbv
  try rfl
theorem node101_eq : Flapjack.WordAlloc.removeDeadStructural input101 value24 value1 value2 = (output101, value24, value1) := by
  rw [input101_def, output101_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32557 0#64))).val
theorem input102_def : input102 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32557 0#64)) := by
  unfold input102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output102_def : output102 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output102_skip : Flapjack.WordAlloc.isSkip output102 = true := by
  rw [output102_def]
  conv => lhs; cbv
  try rfl
theorem node102_eq : Flapjack.WordAlloc.removeDeadStructural input102 value24 value1 value2 = (output102, value24, value1) := by
  rw [input102_def, output102_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32553 0#64))).val
theorem input103_def : input103 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32553 0#64)) := by
  unfold input103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output103_def : output103 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output103_skip : Flapjack.WordAlloc.isSkip output103 = true := by
  rw [output103_def]
  conv => lhs; cbv
  try rfl
theorem node103_eq : Flapjack.WordAlloc.removeDeadStructural input103 value24 value1 value2 = (output103, value24, value1) := by
  rw [input103_def, output103_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32549 0#64))).val
theorem input104_def : input104 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32549 0#64)) := by
  unfold input104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output104_def : output104 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output104_skip : Flapjack.WordAlloc.isSkip output104 = true := by
  rw [output104_def]
  conv => lhs; cbv
  try rfl
theorem node104_eq : Flapjack.WordAlloc.removeDeadStructural input104 value24 value1 value2 = (output104, value24, value1) := by
  rw [input104_def, output104_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32545 0#64))).val
theorem input105_def : input105 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32545 0#64)) := by
  unfold input105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output105_def : output105 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output105_skip : Flapjack.WordAlloc.isSkip output105 = true := by
  rw [output105_def]
  conv => lhs; cbv
  try rfl
theorem node105_eq : Flapjack.WordAlloc.removeDeadStructural input105 value24 value1 value2 = (output105, value24, value1) := by
  rw [input105_def, output105_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32541 0#64))).val
theorem input106_def : input106 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32541 0#64)) := by
  unfold input106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output106_def : output106 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output106_skip : Flapjack.WordAlloc.isSkip output106 = true := by
  rw [output106_def]
  conv => lhs; cbv
  try rfl
theorem node106_eq : Flapjack.WordAlloc.removeDeadStructural input106 value24 value1 value2 = (output106, value24, value1) := by
  rw [input106_def, output106_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32537 0#64))).val
theorem input107_def : input107 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32537 0#64)) := by
  unfold input107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output107_def : output107 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output107_skip : Flapjack.WordAlloc.isSkip output107 = true := by
  rw [output107_def]
  conv => lhs; cbv
  try rfl
theorem node107_eq : Flapjack.WordAlloc.removeDeadStructural input107 value24 value1 value2 = (output107, value24, value1) := by
  rw [input107_def, output107_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32533 0#64))).val
theorem input108_def : input108 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32533 0#64)) := by
  unfold input108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output108_def : output108 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output108_skip : Flapjack.WordAlloc.isSkip output108 = true := by
  rw [output108_def]
  conv => lhs; cbv
  try rfl
theorem node108_eq : Flapjack.WordAlloc.removeDeadStructural input108 value24 value1 value2 = (output108, value24, value1) := by
  rw [input108_def, output108_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32529 0#64))).val
theorem input109_def : input109 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32529 0#64)) := by
  unfold input109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output109_def : output109 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output109_skip : Flapjack.WordAlloc.isSkip output109 = true := by
  rw [output109_def]
  conv => lhs; cbv
  try rfl
theorem node109_eq : Flapjack.WordAlloc.removeDeadStructural input109 value24 value1 value2 = (output109, value24, value1) := by
  rw [input109_def, output109_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32525 0#64))).val
theorem input110_def : input110 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32525 0#64)) := by
  unfold input110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output110_def : output110 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output110_skip : Flapjack.WordAlloc.isSkip output110 = true := by
  rw [output110_def]
  conv => lhs; cbv
  try rfl
theorem node110_eq : Flapjack.WordAlloc.removeDeadStructural input110 value24 value1 value2 = (output110, value24, value1) := by
  rw [input110_def, output110_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32521 0#64))).val
theorem input111_def : input111 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32521 0#64)) := by
  unfold input111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output111_def : output111 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output111_skip : Flapjack.WordAlloc.isSkip output111 = true := by
  rw [output111_def]
  conv => lhs; cbv
  try rfl
theorem node111_eq : Flapjack.WordAlloc.removeDeadStructural input111 value24 value1 value2 = (output111, value24, value1) := by
  rw [input111_def, output111_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32517 0#64))).val
theorem input112_def : input112 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32517 0#64)) := by
  unfold input112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output112_def : output112 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output112_skip : Flapjack.WordAlloc.isSkip output112 = true := by
  rw [output112_def]
  conv => lhs; cbv
  try rfl
theorem node112_eq : Flapjack.WordAlloc.removeDeadStructural input112 value24 value1 value2 = (output112, value24, value1) := by
  rw [input112_def, output112_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32513 0#64))).val
theorem input113_def : input113 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32513 0#64)) := by
  unfold input113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output113_def : output113 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output113_skip : Flapjack.WordAlloc.isSkip output113 = true := by
  rw [output113_def]
  conv => lhs; cbv
  try rfl
theorem node113_eq : Flapjack.WordAlloc.removeDeadStructural input113 value24 value1 value2 = (output113, value24, value1) := by
  rw [input113_def, output113_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32509 0#64))).val
theorem input114_def : input114 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32509 0#64)) := by
  unfold input114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output114_def : output114 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output114_skip : Flapjack.WordAlloc.isSkip output114 = true := by
  rw [output114_def]
  conv => lhs; cbv
  try rfl
theorem node114_eq : Flapjack.WordAlloc.removeDeadStructural input114 value24 value1 value2 = (output114, value24, value1) := by
  rw [input114_def, output114_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32505 0#64))).val
theorem input115_def : input115 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32505 0#64)) := by
  unfold input115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output115_def : output115 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output115_skip : Flapjack.WordAlloc.isSkip output115 = true := by
  rw [output115_def]
  conv => lhs; cbv
  try rfl
theorem node115_eq : Flapjack.WordAlloc.removeDeadStructural input115 value24 value1 value2 = (output115, value24, value1) := by
  rw [input115_def, output115_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32501 0#64))).val
theorem input116_def : input116 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32501 0#64)) := by
  unfold input116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output116_def : output116 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output116_skip : Flapjack.WordAlloc.isSkip output116 = true := by
  rw [output116_def]
  conv => lhs; cbv
  try rfl
theorem node116_eq : Flapjack.WordAlloc.removeDeadStructural input116 value24 value1 value2 = (output116, value24, value1) := by
  rw [input116_def, output116_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32497 0#64))).val
theorem input117_def : input117 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32497 0#64)) := by
  unfold input117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output117_def : output117 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output117_skip : Flapjack.WordAlloc.isSkip output117 = true := by
  rw [output117_def]
  conv => lhs; cbv
  try rfl
theorem node117_eq : Flapjack.WordAlloc.removeDeadStructural input117 value24 value1 value2 = (output117, value24, value1) := by
  rw [input117_def, output117_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32493 0#64))).val
theorem input118_def : input118 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32493 0#64)) := by
  unfold input118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output118_def : output118 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output118_skip : Flapjack.WordAlloc.isSkip output118 = true := by
  rw [output118_def]
  conv => lhs; cbv
  try rfl
theorem node118_eq : Flapjack.WordAlloc.removeDeadStructural input118 value24 value1 value2 = (output118, value24, value1) := by
  rw [input118_def, output118_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32489 0#64))).val
theorem input119_def : input119 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32489 0#64)) := by
  unfold input119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output119_def : output119 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output119_skip : Flapjack.WordAlloc.isSkip output119 = true := by
  rw [output119_def]
  conv => lhs; cbv
  try rfl
theorem node119_eq : Flapjack.WordAlloc.removeDeadStructural input119 value24 value1 value2 = (output119, value24, value1) := by
  rw [input119_def, output119_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32485 0#64))).val
theorem input120_def : input120 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32485 0#64)) := by
  unfold input120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output120_def : output120 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output120_skip : Flapjack.WordAlloc.isSkip output120 = true := by
  rw [output120_def]
  conv => lhs; cbv
  try rfl
theorem node120_eq : Flapjack.WordAlloc.removeDeadStructural input120 value24 value1 value2 = (output120, value24, value1) := by
  rw [input120_def, output120_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32481 0#64))).val
theorem input121_def : input121 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32481 0#64)) := by
  unfold input121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output121_def : output121 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output121_skip : Flapjack.WordAlloc.isSkip output121 = true := by
  rw [output121_def]
  conv => lhs; cbv
  try rfl
theorem node121_eq : Flapjack.WordAlloc.removeDeadStructural input121 value24 value1 value2 = (output121, value24, value1) := by
  rw [input121_def, output121_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32477 0#64))).val
theorem input122_def : input122 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32477 0#64)) := by
  unfold input122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output122_def : output122 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output122_skip : Flapjack.WordAlloc.isSkip output122 = true := by
  rw [output122_def]
  conv => lhs; cbv
  try rfl
theorem node122_eq : Flapjack.WordAlloc.removeDeadStructural input122 value24 value1 value2 = (output122, value24, value1) := by
  rw [input122_def, output122_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32473 0#64))).val
theorem input123_def : input123 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32473 0#64)) := by
  unfold input123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output123_def : output123 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output123_skip : Flapjack.WordAlloc.isSkip output123 = true := by
  rw [output123_def]
  conv => lhs; cbv
  try rfl
theorem node123_eq : Flapjack.WordAlloc.removeDeadStructural input123 value24 value1 value2 = (output123, value24, value1) := by
  rw [input123_def, output123_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32469 0#64))).val
theorem input124_def : input124 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32469 0#64)) := by
  unfold input124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output124_def : output124 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output124_skip : Flapjack.WordAlloc.isSkip output124 = true := by
  rw [output124_def]
  conv => lhs; cbv
  try rfl
theorem node124_eq : Flapjack.WordAlloc.removeDeadStructural input124 value24 value1 value2 = (output124, value24, value1) := by
  rw [input124_def, output124_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32465 0#64))).val
theorem input125_def : input125 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32465 0#64)) := by
  unfold input125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output125_def : output125 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output125_skip : Flapjack.WordAlloc.isSkip output125 = true := by
  rw [output125_def]
  conv => lhs; cbv
  try rfl
theorem node125_eq : Flapjack.WordAlloc.removeDeadStructural input125 value24 value1 value2 = (output125, value24, value1) := by
  rw [input125_def, output125_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32461 0#64))).val
theorem input126_def : input126 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32461 0#64)) := by
  unfold input126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output126_def : output126 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output126_skip : Flapjack.WordAlloc.isSkip output126 = true := by
  rw [output126_def]
  conv => lhs; cbv
  try rfl
theorem node126_eq : Flapjack.WordAlloc.removeDeadStructural input126 value24 value1 value2 = (output126, value24, value1) := by
  rw [input126_def, output126_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32457 0#64))).val
theorem input127_def : input127 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32457 0#64)) := by
  unfold input127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output127_def : output127 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output127_skip : Flapjack.WordAlloc.isSkip output127 = true := by
  rw [output127_def]
  conv => lhs; cbv
  try rfl
theorem node127_eq : Flapjack.WordAlloc.removeDeadStructural input127 value24 value1 value2 = (output127, value24, value1) := by
  rw [input127_def, output127_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32453 0#64))).val
theorem input128_def : input128 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32453 0#64)) := by
  unfold input128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output128_def : output128 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output128_skip : Flapjack.WordAlloc.isSkip output128 = true := by
  rw [output128_def]
  conv => lhs; cbv
  try rfl
theorem node128_eq : Flapjack.WordAlloc.removeDeadStructural input128 value24 value1 value2 = (output128, value24, value1) := by
  rw [input128_def, output128_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32449 0#64))).val
theorem input129_def : input129 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32449 0#64)) := by
  unfold input129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output129_def : output129 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output129_skip : Flapjack.WordAlloc.isSkip output129 = true := by
  rw [output129_def]
  conv => lhs; cbv
  try rfl
theorem node129_eq : Flapjack.WordAlloc.removeDeadStructural input129 value24 value1 value2 = (output129, value24, value1) := by
  rw [input129_def, output129_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32445 0#64))).val
theorem input130_def : input130 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32445 0#64)) := by
  unfold input130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output130_def : output130 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output130_skip : Flapjack.WordAlloc.isSkip output130 = true := by
  rw [output130_def]
  conv => lhs; cbv
  try rfl
theorem node130_eq : Flapjack.WordAlloc.removeDeadStructural input130 value24 value1 value2 = (output130, value24, value1) := by
  rw [input130_def, output130_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32441 0#64))).val
theorem input131_def : input131 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32441 0#64)) := by
  unfold input131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output131_def : output131 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output131_skip : Flapjack.WordAlloc.isSkip output131 = true := by
  rw [output131_def]
  conv => lhs; cbv
  try rfl
theorem node131_eq : Flapjack.WordAlloc.removeDeadStructural input131 value24 value1 value2 = (output131, value24, value1) := by
  rw [input131_def, output131_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32437 0#64))).val
theorem input132_def : input132 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32437 0#64)) := by
  unfold input132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output132_def : output132 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output132_skip : Flapjack.WordAlloc.isSkip output132 = true := by
  rw [output132_def]
  conv => lhs; cbv
  try rfl
theorem node132_eq : Flapjack.WordAlloc.removeDeadStructural input132 value24 value1 value2 = (output132, value24, value1) := by
  rw [input132_def, output132_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32433 0#64))).val
theorem input133_def : input133 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32433 0#64)) := by
  unfold input133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output133_def : output133 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output133_skip : Flapjack.WordAlloc.isSkip output133 = true := by
  rw [output133_def]
  conv => lhs; cbv
  try rfl
theorem node133_eq : Flapjack.WordAlloc.removeDeadStructural input133 value24 value1 value2 = (output133, value24, value1) := by
  rw [input133_def, output133_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32429 0#64))).val
theorem input134_def : input134 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32429 0#64)) := by
  unfold input134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output134_def : output134 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output134_skip : Flapjack.WordAlloc.isSkip output134 = true := by
  rw [output134_def]
  conv => lhs; cbv
  try rfl
theorem node134_eq : Flapjack.WordAlloc.removeDeadStructural input134 value24 value1 value2 = (output134, value24, value1) := by
  rw [input134_def, output134_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32425 0#64))).val
theorem input135_def : input135 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32425 0#64)) := by
  unfold input135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output135_def : output135 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output135_skip : Flapjack.WordAlloc.isSkip output135 = true := by
  rw [output135_def]
  conv => lhs; cbv
  try rfl
theorem node135_eq : Flapjack.WordAlloc.removeDeadStructural input135 value24 value1 value2 = (output135, value24, value1) := by
  rw [input135_def, output135_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32421 0#64))).val
theorem input136_def : input136 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32421 0#64)) := by
  unfold input136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output136_def : output136 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output136_skip : Flapjack.WordAlloc.isSkip output136 = true := by
  rw [output136_def]
  conv => lhs; cbv
  try rfl
theorem node136_eq : Flapjack.WordAlloc.removeDeadStructural input136 value24 value1 value2 = (output136, value24, value1) := by
  rw [input136_def, output136_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32417 0#64))).val
theorem input137_def : input137 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32417 0#64)) := by
  unfold input137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output137_def : output137 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output137_skip : Flapjack.WordAlloc.isSkip output137 = true := by
  rw [output137_def]
  conv => lhs; cbv
  try rfl
theorem node137_eq : Flapjack.WordAlloc.removeDeadStructural input137 value24 value1 value2 = (output137, value24, value1) := by
  rw [input137_def, output137_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32413 0#64))).val
theorem input138_def : input138 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32413 0#64)) := by
  unfold input138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output138_def : output138 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output138_skip : Flapjack.WordAlloc.isSkip output138 = true := by
  rw [output138_def]
  conv => lhs; cbv
  try rfl
theorem node138_eq : Flapjack.WordAlloc.removeDeadStructural input138 value24 value1 value2 = (output138, value24, value1) := by
  rw [input138_def, output138_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32409 0#64))).val
theorem input139_def : input139 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32409 0#64)) := by
  unfold input139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output139_def : output139 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output139_skip : Flapjack.WordAlloc.isSkip output139 = true := by
  rw [output139_def]
  conv => lhs; cbv
  try rfl
theorem node139_eq : Flapjack.WordAlloc.removeDeadStructural input139 value24 value1 value2 = (output139, value24, value1) := by
  rw [input139_def, output139_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32405 0#64))).val
theorem input140_def : input140 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32405 0#64)) := by
  unfold input140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output140_def : output140 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output140_skip : Flapjack.WordAlloc.isSkip output140 = true := by
  rw [output140_def]
  conv => lhs; cbv
  try rfl
theorem node140_eq : Flapjack.WordAlloc.removeDeadStructural input140 value24 value1 value2 = (output140, value24, value1) := by
  rw [input140_def, output140_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32401 0#64))).val
theorem input141_def : input141 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32401 0#64)) := by
  unfold input141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output141_def : output141 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output141_skip : Flapjack.WordAlloc.isSkip output141 = true := by
  rw [output141_def]
  conv => lhs; cbv
  try rfl
theorem node141_eq : Flapjack.WordAlloc.removeDeadStructural input141 value24 value1 value2 = (output141, value24, value1) := by
  rw [input141_def, output141_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32397 0#64))).val
theorem input142_def : input142 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32397 0#64)) := by
  unfold input142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output142_def : output142 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output142_skip : Flapjack.WordAlloc.isSkip output142 = true := by
  rw [output142_def]
  conv => lhs; cbv
  try rfl
theorem node142_eq : Flapjack.WordAlloc.removeDeadStructural input142 value24 value1 value2 = (output142, value24, value1) := by
  rw [input142_def, output142_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32393 0#64))).val
theorem input143_def : input143 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32393 0#64)) := by
  unfold input143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output143_def : output143 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output143_skip : Flapjack.WordAlloc.isSkip output143 = true := by
  rw [output143_def]
  conv => lhs; cbv
  try rfl
theorem node143_eq : Flapjack.WordAlloc.removeDeadStructural input143 value24 value1 value2 = (output143, value24, value1) := by
  rw [input143_def, output143_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32389 0#64))).val
theorem input144_def : input144 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32389 0#64)) := by
  unfold input144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output144_def : output144 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output144_skip : Flapjack.WordAlloc.isSkip output144 = true := by
  rw [output144_def]
  conv => lhs; cbv
  try rfl
theorem node144_eq : Flapjack.WordAlloc.removeDeadStructural input144 value24 value1 value2 = (output144, value24, value1) := by
  rw [input144_def, output144_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32385 0#64))).val
theorem input145_def : input145 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32385 0#64)) := by
  unfold input145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output145_def : output145 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output145_skip : Flapjack.WordAlloc.isSkip output145 = true := by
  rw [output145_def]
  conv => lhs; cbv
  try rfl
theorem node145_eq : Flapjack.WordAlloc.removeDeadStructural input145 value24 value1 value2 = (output145, value24, value1) := by
  rw [input145_def, output145_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32381 0#64))).val
theorem input146_def : input146 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32381 0#64)) := by
  unfold input146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output146_def : output146 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output146_skip : Flapjack.WordAlloc.isSkip output146 = true := by
  rw [output146_def]
  conv => lhs; cbv
  try rfl
theorem node146_eq : Flapjack.WordAlloc.removeDeadStructural input146 value24 value1 value2 = (output146, value24, value1) := by
  rw [input146_def, output146_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32377 0#64))).val
theorem input147_def : input147 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32377 0#64)) := by
  unfold input147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output147_def : output147 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output147_skip : Flapjack.WordAlloc.isSkip output147 = true := by
  rw [output147_def]
  conv => lhs; cbv
  try rfl
theorem node147_eq : Flapjack.WordAlloc.removeDeadStructural input147 value24 value1 value2 = (output147, value24, value1) := by
  rw [input147_def, output147_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32373 0#64))).val
theorem input148_def : input148 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32373 0#64)) := by
  unfold input148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output148_def : output148 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output148_skip : Flapjack.WordAlloc.isSkip output148 = true := by
  rw [output148_def]
  conv => lhs; cbv
  try rfl
theorem node148_eq : Flapjack.WordAlloc.removeDeadStructural input148 value24 value1 value2 = (output148, value24, value1) := by
  rw [input148_def, output148_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32369 0#64))).val
theorem input149_def : input149 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32369 0#64)) := by
  unfold input149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output149_def : output149 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output149_skip : Flapjack.WordAlloc.isSkip output149 = true := by
  rw [output149_def]
  conv => lhs; cbv
  try rfl
theorem node149_eq : Flapjack.WordAlloc.removeDeadStructural input149 value24 value1 value2 = (output149, value24, value1) := by
  rw [input149_def, output149_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32365 0#64))).val
theorem input150_def : input150 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32365 0#64)) := by
  unfold input150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output150_def : output150 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output150_skip : Flapjack.WordAlloc.isSkip output150 = true := by
  rw [output150_def]
  conv => lhs; cbv
  try rfl
theorem node150_eq : Flapjack.WordAlloc.removeDeadStructural input150 value24 value1 value2 = (output150, value24, value1) := by
  rw [input150_def, output150_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32361 0#64))).val
theorem input151_def : input151 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32361 0#64)) := by
  unfold input151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output151_def : output151 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output151_skip : Flapjack.WordAlloc.isSkip output151 = true := by
  rw [output151_def]
  conv => lhs; cbv
  try rfl
theorem node151_eq : Flapjack.WordAlloc.removeDeadStructural input151 value24 value1 value2 = (output151, value24, value1) := by
  rw [input151_def, output151_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32357 0#64))).val
theorem input152_def : input152 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32357 0#64)) := by
  unfold input152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output152_def : output152 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output152_skip : Flapjack.WordAlloc.isSkip output152 = true := by
  rw [output152_def]
  conv => lhs; cbv
  try rfl
theorem node152_eq : Flapjack.WordAlloc.removeDeadStructural input152 value24 value1 value2 = (output152, value24, value1) := by
  rw [input152_def, output152_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32353 0#64))).val
theorem input153_def : input153 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32353 0#64)) := by
  unfold input153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output153_def : output153 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output153_skip : Flapjack.WordAlloc.isSkip output153 = true := by
  rw [output153_def]
  conv => lhs; cbv
  try rfl
theorem node153_eq : Flapjack.WordAlloc.removeDeadStructural input153 value24 value1 value2 = (output153, value24, value1) := by
  rw [input153_def, output153_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32349 0#64))).val
theorem input154_def : input154 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32349 0#64)) := by
  unfold input154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output154_def : output154 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output154_skip : Flapjack.WordAlloc.isSkip output154 = true := by
  rw [output154_def]
  conv => lhs; cbv
  try rfl
theorem node154_eq : Flapjack.WordAlloc.removeDeadStructural input154 value24 value1 value2 = (output154, value24, value1) := by
  rw [input154_def, output154_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32345 0#64))).val
theorem input155_def : input155 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32345 0#64)) := by
  unfold input155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output155_def : output155 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output155_skip : Flapjack.WordAlloc.isSkip output155 = true := by
  rw [output155_def]
  conv => lhs; cbv
  try rfl
theorem node155_eq : Flapjack.WordAlloc.removeDeadStructural input155 value24 value1 value2 = (output155, value24, value1) := by
  rw [input155_def, output155_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32341 0#64))).val
theorem input156_def : input156 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32341 0#64)) := by
  unfold input156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output156_def : output156 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output156_skip : Flapjack.WordAlloc.isSkip output156 = true := by
  rw [output156_def]
  conv => lhs; cbv
  try rfl
theorem node156_eq : Flapjack.WordAlloc.removeDeadStructural input156 value24 value1 value2 = (output156, value24, value1) := by
  rw [input156_def, output156_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32337 0#64))).val
theorem input157_def : input157 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32337 0#64)) := by
  unfold input157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output157_def : output157 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output157_skip : Flapjack.WordAlloc.isSkip output157 = true := by
  rw [output157_def]
  conv => lhs; cbv
  try rfl
theorem node157_eq : Flapjack.WordAlloc.removeDeadStructural input157 value24 value1 value2 = (output157, value24, value1) := by
  rw [input157_def, output157_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32333 0#64))).val
theorem input158_def : input158 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32333 0#64)) := by
  unfold input158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output158_def : output158 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output158_skip : Flapjack.WordAlloc.isSkip output158 = true := by
  rw [output158_def]
  conv => lhs; cbv
  try rfl
theorem node158_eq : Flapjack.WordAlloc.removeDeadStructural input158 value24 value1 value2 = (output158, value24, value1) := by
  rw [input158_def, output158_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32329 0#64))).val
theorem input159_def : input159 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32329 0#64)) := by
  unfold input159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output159_def : output159 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output159_skip : Flapjack.WordAlloc.isSkip output159 = true := by
  rw [output159_def]
  conv => lhs; cbv
  try rfl
theorem node159_eq : Flapjack.WordAlloc.removeDeadStructural input159 value24 value1 value2 = (output159, value24, value1) := by
  rw [input159_def, output159_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32325 0#64))).val
theorem input160_def : input160 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32325 0#64)) := by
  unfold input160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output160_def : output160 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output160_skip : Flapjack.WordAlloc.isSkip output160 = true := by
  rw [output160_def]
  conv => lhs; cbv
  try rfl
theorem node160_eq : Flapjack.WordAlloc.removeDeadStructural input160 value24 value1 value2 = (output160, value24, value1) := by
  rw [input160_def, output160_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32321 0#64))).val
theorem input161_def : input161 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32321 0#64)) := by
  unfold input161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output161_def : output161 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output161_skip : Flapjack.WordAlloc.isSkip output161 = true := by
  rw [output161_def]
  conv => lhs; cbv
  try rfl
theorem node161_eq : Flapjack.WordAlloc.removeDeadStructural input161 value24 value1 value2 = (output161, value24, value1) := by
  rw [input161_def, output161_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32317 0#64))).val
theorem input162_def : input162 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32317 0#64)) := by
  unfold input162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output162_def : output162 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output162_skip : Flapjack.WordAlloc.isSkip output162 = true := by
  rw [output162_def]
  conv => lhs; cbv
  try rfl
theorem node162_eq : Flapjack.WordAlloc.removeDeadStructural input162 value24 value1 value2 = (output162, value24, value1) := by
  rw [input162_def, output162_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32313 0#64))).val
theorem input163_def : input163 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32313 0#64)) := by
  unfold input163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output163_def : output163 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output163_skip : Flapjack.WordAlloc.isSkip output163 = true := by
  rw [output163_def]
  conv => lhs; cbv
  try rfl
theorem node163_eq : Flapjack.WordAlloc.removeDeadStructural input163 value24 value1 value2 = (output163, value24, value1) := by
  rw [input163_def, output163_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32309 0#64))).val
theorem input164_def : input164 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32309 0#64)) := by
  unfold input164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output164_def : output164 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output164_skip : Flapjack.WordAlloc.isSkip output164 = true := by
  rw [output164_def]
  conv => lhs; cbv
  try rfl
theorem node164_eq : Flapjack.WordAlloc.removeDeadStructural input164 value24 value1 value2 = (output164, value24, value1) := by
  rw [input164_def, output164_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32305 0#64))).val
theorem input165_def : input165 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32305 0#64)) := by
  unfold input165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output165_def : output165 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output165_skip : Flapjack.WordAlloc.isSkip output165 = true := by
  rw [output165_def]
  conv => lhs; cbv
  try rfl
theorem node165_eq : Flapjack.WordAlloc.removeDeadStructural input165 value24 value1 value2 = (output165, value24, value1) := by
  rw [input165_def, output165_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32301 0#64))).val
theorem input166_def : input166 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32301 0#64)) := by
  unfold input166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output166_def : output166 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output166_skip : Flapjack.WordAlloc.isSkip output166 = true := by
  rw [output166_def]
  conv => lhs; cbv
  try rfl
theorem node166_eq : Flapjack.WordAlloc.removeDeadStructural input166 value24 value1 value2 = (output166, value24, value1) := by
  rw [input166_def, output166_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32297 0#64))).val
theorem input167_def : input167 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32297 0#64)) := by
  unfold input167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output167_def : output167 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output167_skip : Flapjack.WordAlloc.isSkip output167 = true := by
  rw [output167_def]
  conv => lhs; cbv
  try rfl
theorem node167_eq : Flapjack.WordAlloc.removeDeadStructural input167 value24 value1 value2 = (output167, value24, value1) := by
  rw [input167_def, output167_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32293 0#64))).val
theorem input168_def : input168 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32293 0#64)) := by
  unfold input168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output168_def : output168 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output168_skip : Flapjack.WordAlloc.isSkip output168 = true := by
  rw [output168_def]
  conv => lhs; cbv
  try rfl
theorem node168_eq : Flapjack.WordAlloc.removeDeadStructural input168 value24 value1 value2 = (output168, value24, value1) := by
  rw [input168_def, output168_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32289 0#64))).val
theorem input169_def : input169 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32289 0#64)) := by
  unfold input169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output169_def : output169 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output169_skip : Flapjack.WordAlloc.isSkip output169 = true := by
  rw [output169_def]
  conv => lhs; cbv
  try rfl
theorem node169_eq : Flapjack.WordAlloc.removeDeadStructural input169 value24 value1 value2 = (output169, value24, value1) := by
  rw [input169_def, output169_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input170_def : input170 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output170_def : output170 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output170_skip : Flapjack.WordAlloc.isSkip output170 = true := by
  rw [output170_def]
  conv => lhs; cbv
  try rfl
theorem node170_eq : Flapjack.WordAlloc.removeDeadStructural input170 value24 value1 value2 = (output170, value24, value1) := by
  rw [input170_def, output170_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input170 input169)).val
theorem input171_def : input171 = (.seq input170 input169) := by
  unfold input171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output169)).val
theorem output171_def : output171 = (output169) := by
  unfold output171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output171_skip : Flapjack.WordAlloc.isSkip output171 = true := by
  rw [output171_def]
  conv => lhs; cbv
  try rfl
theorem node171_eq : Flapjack.WordAlloc.removeDeadStructural input171 value24 value1 value2 = (output171, value24, value1) := by
  rw [input171_def, output171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node169_eq]
  try dsimp only
  rw [node170_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input171 input168)).val
theorem input172_def : input172 = (.seq input171 input168) := by
  unfold input172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output168)).val
theorem output172_def : output172 = (output168) := by
  unfold output172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output172_skip : Flapjack.WordAlloc.isSkip output172 = true := by
  rw [output172_def]
  conv => lhs; cbv
  try rfl
theorem node172_eq : Flapjack.WordAlloc.removeDeadStructural input172 value24 value1 value2 = (output172, value24, value1) := by
  rw [input172_def, output172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node168_eq]
  try dsimp only
  rw [node171_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input172 input167)).val
theorem input173_def : input173 = (.seq input172 input167) := by
  unfold input173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output167)).val
theorem output173_def : output173 = (output167) := by
  unfold output173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output173_skip : Flapjack.WordAlloc.isSkip output173 = true := by
  rw [output173_def]
  conv => lhs; cbv
  try rfl
theorem node173_eq : Flapjack.WordAlloc.removeDeadStructural input173 value24 value1 value2 = (output173, value24, value1) := by
  rw [input173_def, output173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node167_eq]
  try dsimp only
  rw [node172_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input173 input166)).val
theorem input174_def : input174 = (.seq input173 input166) := by
  unfold input174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output166)).val
theorem output174_def : output174 = (output166) := by
  unfold output174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output174_skip : Flapjack.WordAlloc.isSkip output174 = true := by
  rw [output174_def]
  conv => lhs; cbv
  try rfl
theorem node174_eq : Flapjack.WordAlloc.removeDeadStructural input174 value24 value1 value2 = (output174, value24, value1) := by
  rw [input174_def, output174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node166_eq]
  try dsimp only
  rw [node173_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input174 input165)).val
theorem input175_def : input175 = (.seq input174 input165) := by
  unfold input175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output165)).val
theorem output175_def : output175 = (output165) := by
  unfold output175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output175_skip : Flapjack.WordAlloc.isSkip output175 = true := by
  rw [output175_def]
  conv => lhs; cbv
  try rfl
theorem node175_eq : Flapjack.WordAlloc.removeDeadStructural input175 value24 value1 value2 = (output175, value24, value1) := by
  rw [input175_def, output175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node165_eq]
  try dsimp only
  rw [node174_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input175 input164)).val
theorem input176_def : input176 = (.seq input175 input164) := by
  unfold input176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output164)).val
theorem output176_def : output176 = (output164) := by
  unfold output176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output176_skip : Flapjack.WordAlloc.isSkip output176 = true := by
  rw [output176_def]
  conv => lhs; cbv
  try rfl
theorem node176_eq : Flapjack.WordAlloc.removeDeadStructural input176 value24 value1 value2 = (output176, value24, value1) := by
  rw [input176_def, output176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node164_eq]
  try dsimp only
  rw [node175_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input176 input163)).val
theorem input177_def : input177 = (.seq input176 input163) := by
  unfold input177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output163)).val
theorem output177_def : output177 = (output163) := by
  unfold output177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output177_skip : Flapjack.WordAlloc.isSkip output177 = true := by
  rw [output177_def]
  conv => lhs; cbv
  try rfl
theorem node177_eq : Flapjack.WordAlloc.removeDeadStructural input177 value24 value1 value2 = (output177, value24, value1) := by
  rw [input177_def, output177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node163_eq]
  try dsimp only
  rw [node176_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input177 input162)).val
theorem input178_def : input178 = (.seq input177 input162) := by
  unfold input178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output162)).val
theorem output178_def : output178 = (output162) := by
  unfold output178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output178_skip : Flapjack.WordAlloc.isSkip output178 = true := by
  rw [output178_def]
  conv => lhs; cbv
  try rfl
theorem node178_eq : Flapjack.WordAlloc.removeDeadStructural input178 value24 value1 value2 = (output178, value24, value1) := by
  rw [input178_def, output178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node162_eq]
  try dsimp only
  rw [node177_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input178 input161)).val
theorem input179_def : input179 = (.seq input178 input161) := by
  unfold input179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output161)).val
theorem output179_def : output179 = (output161) := by
  unfold output179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output179_skip : Flapjack.WordAlloc.isSkip output179 = true := by
  rw [output179_def]
  conv => lhs; cbv
  try rfl
theorem node179_eq : Flapjack.WordAlloc.removeDeadStructural input179 value24 value1 value2 = (output179, value24, value1) := by
  rw [input179_def, output179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node161_eq]
  try dsimp only
  rw [node178_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input179 input160)).val
theorem input180_def : input180 = (.seq input179 input160) := by
  unfold input180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output160)).val
theorem output180_def : output180 = (output160) := by
  unfold output180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output180_skip : Flapjack.WordAlloc.isSkip output180 = true := by
  rw [output180_def]
  conv => lhs; cbv
  try rfl
theorem node180_eq : Flapjack.WordAlloc.removeDeadStructural input180 value24 value1 value2 = (output180, value24, value1) := by
  rw [input180_def, output180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node160_eq]
  try dsimp only
  rw [node179_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input180 input159)).val
theorem input181_def : input181 = (.seq input180 input159) := by
  unfold input181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output159)).val
theorem output181_def : output181 = (output159) := by
  unfold output181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output181_skip : Flapjack.WordAlloc.isSkip output181 = true := by
  rw [output181_def]
  conv => lhs; cbv
  try rfl
theorem node181_eq : Flapjack.WordAlloc.removeDeadStructural input181 value24 value1 value2 = (output181, value24, value1) := by
  rw [input181_def, output181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node159_eq]
  try dsimp only
  rw [node180_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input181 input158)).val
theorem input182_def : input182 = (.seq input181 input158) := by
  unfold input182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output158)).val
theorem output182_def : output182 = (output158) := by
  unfold output182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output182_skip : Flapjack.WordAlloc.isSkip output182 = true := by
  rw [output182_def]
  conv => lhs; cbv
  try rfl
theorem node182_eq : Flapjack.WordAlloc.removeDeadStructural input182 value24 value1 value2 = (output182, value24, value1) := by
  rw [input182_def, output182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node158_eq]
  try dsimp only
  rw [node181_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input182 input157)).val
theorem input183_def : input183 = (.seq input182 input157) := by
  unfold input183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output157)).val
theorem output183_def : output183 = (output157) := by
  unfold output183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output183_skip : Flapjack.WordAlloc.isSkip output183 = true := by
  rw [output183_def]
  conv => lhs; cbv
  try rfl
theorem node183_eq : Flapjack.WordAlloc.removeDeadStructural input183 value24 value1 value2 = (output183, value24, value1) := by
  rw [input183_def, output183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node157_eq]
  try dsimp only
  rw [node182_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input183 input156)).val
theorem input184_def : input184 = (.seq input183 input156) := by
  unfold input184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output156)).val
theorem output184_def : output184 = (output156) := by
  unfold output184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output184_skip : Flapjack.WordAlloc.isSkip output184 = true := by
  rw [output184_def]
  conv => lhs; cbv
  try rfl
theorem node184_eq : Flapjack.WordAlloc.removeDeadStructural input184 value24 value1 value2 = (output184, value24, value1) := by
  rw [input184_def, output184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node156_eq]
  try dsimp only
  rw [node183_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input184 input155)).val
theorem input185_def : input185 = (.seq input184 input155) := by
  unfold input185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output155)).val
theorem output185_def : output185 = (output155) := by
  unfold output185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output185_skip : Flapjack.WordAlloc.isSkip output185 = true := by
  rw [output185_def]
  conv => lhs; cbv
  try rfl
theorem node185_eq : Flapjack.WordAlloc.removeDeadStructural input185 value24 value1 value2 = (output185, value24, value1) := by
  rw [input185_def, output185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node155_eq]
  try dsimp only
  rw [node184_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input185 input154)).val
theorem input186_def : input186 = (.seq input185 input154) := by
  unfold input186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output154)).val
theorem output186_def : output186 = (output154) := by
  unfold output186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output186_skip : Flapjack.WordAlloc.isSkip output186 = true := by
  rw [output186_def]
  conv => lhs; cbv
  try rfl
theorem node186_eq : Flapjack.WordAlloc.removeDeadStructural input186 value24 value1 value2 = (output186, value24, value1) := by
  rw [input186_def, output186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node154_eq]
  try dsimp only
  rw [node185_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input186 input153)).val
theorem input187_def : input187 = (.seq input186 input153) := by
  unfold input187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output153)).val
theorem output187_def : output187 = (output153) := by
  unfold output187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output187_skip : Flapjack.WordAlloc.isSkip output187 = true := by
  rw [output187_def]
  conv => lhs; cbv
  try rfl
theorem node187_eq : Flapjack.WordAlloc.removeDeadStructural input187 value24 value1 value2 = (output187, value24, value1) := by
  rw [input187_def, output187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node153_eq]
  try dsimp only
  rw [node186_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input187 input152)).val
theorem input188_def : input188 = (.seq input187 input152) := by
  unfold input188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output152)).val
theorem output188_def : output188 = (output152) := by
  unfold output188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output188_skip : Flapjack.WordAlloc.isSkip output188 = true := by
  rw [output188_def]
  conv => lhs; cbv
  try rfl
theorem node188_eq : Flapjack.WordAlloc.removeDeadStructural input188 value24 value1 value2 = (output188, value24, value1) := by
  rw [input188_def, output188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node152_eq]
  try dsimp only
  rw [node187_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input188 input151)).val
theorem input189_def : input189 = (.seq input188 input151) := by
  unfold input189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output151)).val
theorem output189_def : output189 = (output151) := by
  unfold output189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output189_skip : Flapjack.WordAlloc.isSkip output189 = true := by
  rw [output189_def]
  conv => lhs; cbv
  try rfl
theorem node189_eq : Flapjack.WordAlloc.removeDeadStructural input189 value24 value1 value2 = (output189, value24, value1) := by
  rw [input189_def, output189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node151_eq]
  try dsimp only
  rw [node188_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input189 input150)).val
theorem input190_def : input190 = (.seq input189 input150) := by
  unfold input190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output150)).val
theorem output190_def : output190 = (output150) := by
  unfold output190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output190_skip : Flapjack.WordAlloc.isSkip output190 = true := by
  rw [output190_def]
  conv => lhs; cbv
  try rfl
theorem node190_eq : Flapjack.WordAlloc.removeDeadStructural input190 value24 value1 value2 = (output190, value24, value1) := by
  rw [input190_def, output190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node150_eq]
  try dsimp only
  rw [node189_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input190 input149)).val
theorem input191_def : input191 = (.seq input190 input149) := by
  unfold input191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output149)).val
theorem output191_def : output191 = (output149) := by
  unfold output191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output191_skip : Flapjack.WordAlloc.isSkip output191 = true := by
  rw [output191_def]
  conv => lhs; cbv
  try rfl
theorem node191_eq : Flapjack.WordAlloc.removeDeadStructural input191 value24 value1 value2 = (output191, value24, value1) := by
  rw [input191_def, output191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node149_eq]
  try dsimp only
  rw [node190_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input191 input148)).val
theorem input192_def : input192 = (.seq input191 input148) := by
  unfold input192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output148)).val
theorem output192_def : output192 = (output148) := by
  unfold output192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output192_skip : Flapjack.WordAlloc.isSkip output192 = true := by
  rw [output192_def]
  conv => lhs; cbv
  try rfl
theorem node192_eq : Flapjack.WordAlloc.removeDeadStructural input192 value24 value1 value2 = (output192, value24, value1) := by
  rw [input192_def, output192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node148_eq]
  try dsimp only
  rw [node191_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input192 input147)).val
theorem input193_def : input193 = (.seq input192 input147) := by
  unfold input193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output147)).val
theorem output193_def : output193 = (output147) := by
  unfold output193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output193_skip : Flapjack.WordAlloc.isSkip output193 = true := by
  rw [output193_def]
  conv => lhs; cbv
  try rfl
theorem node193_eq : Flapjack.WordAlloc.removeDeadStructural input193 value24 value1 value2 = (output193, value24, value1) := by
  rw [input193_def, output193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node147_eq]
  try dsimp only
  rw [node192_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input193 input146)).val
theorem input194_def : input194 = (.seq input193 input146) := by
  unfold input194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output146)).val
theorem output194_def : output194 = (output146) := by
  unfold output194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output194_skip : Flapjack.WordAlloc.isSkip output194 = true := by
  rw [output194_def]
  conv => lhs; cbv
  try rfl
theorem node194_eq : Flapjack.WordAlloc.removeDeadStructural input194 value24 value1 value2 = (output194, value24, value1) := by
  rw [input194_def, output194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node146_eq]
  try dsimp only
  rw [node193_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input194 input145)).val
theorem input195_def : input195 = (.seq input194 input145) := by
  unfold input195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output145)).val
theorem output195_def : output195 = (output145) := by
  unfold output195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output195_skip : Flapjack.WordAlloc.isSkip output195 = true := by
  rw [output195_def]
  conv => lhs; cbv
  try rfl
theorem node195_eq : Flapjack.WordAlloc.removeDeadStructural input195 value24 value1 value2 = (output195, value24, value1) := by
  rw [input195_def, output195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node145_eq]
  try dsimp only
  rw [node194_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input195 input144)).val
theorem input196_def : input196 = (.seq input195 input144) := by
  unfold input196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output144)).val
theorem output196_def : output196 = (output144) := by
  unfold output196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output196_skip : Flapjack.WordAlloc.isSkip output196 = true := by
  rw [output196_def]
  conv => lhs; cbv
  try rfl
theorem node196_eq : Flapjack.WordAlloc.removeDeadStructural input196 value24 value1 value2 = (output196, value24, value1) := by
  rw [input196_def, output196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node144_eq]
  try dsimp only
  rw [node195_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input196 input143)).val
theorem input197_def : input197 = (.seq input196 input143) := by
  unfold input197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output143)).val
theorem output197_def : output197 = (output143) := by
  unfold output197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output197_skip : Flapjack.WordAlloc.isSkip output197 = true := by
  rw [output197_def]
  conv => lhs; cbv
  try rfl
theorem node197_eq : Flapjack.WordAlloc.removeDeadStructural input197 value24 value1 value2 = (output197, value24, value1) := by
  rw [input197_def, output197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node143_eq]
  try dsimp only
  rw [node196_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input197 input142)).val
theorem input198_def : input198 = (.seq input197 input142) := by
  unfold input198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output142)).val
theorem output198_def : output198 = (output142) := by
  unfold output198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output198_skip : Flapjack.WordAlloc.isSkip output198 = true := by
  rw [output198_def]
  conv => lhs; cbv
  try rfl
theorem node198_eq : Flapjack.WordAlloc.removeDeadStructural input198 value24 value1 value2 = (output198, value24, value1) := by
  rw [input198_def, output198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node142_eq]
  try dsimp only
  rw [node197_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input198 input141)).val
theorem input199_def : input199 = (.seq input198 input141) := by
  unfold input199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output141)).val
theorem output199_def : output199 = (output141) := by
  unfold output199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output199_skip : Flapjack.WordAlloc.isSkip output199 = true := by
  rw [output199_def]
  conv => lhs; cbv
  try rfl
theorem node199_eq : Flapjack.WordAlloc.removeDeadStructural input199 value24 value1 value2 = (output199, value24, value1) := by
  rw [input199_def, output199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node141_eq]
  try dsimp only
  rw [node198_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input199 input140)).val
theorem input200_def : input200 = (.seq input199 input140) := by
  unfold input200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output140)).val
theorem output200_def : output200 = (output140) := by
  unfold output200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output200_skip : Flapjack.WordAlloc.isSkip output200 = true := by
  rw [output200_def]
  conv => lhs; cbv
  try rfl
theorem node200_eq : Flapjack.WordAlloc.removeDeadStructural input200 value24 value1 value2 = (output200, value24, value1) := by
  rw [input200_def, output200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node140_eq]
  try dsimp only
  rw [node199_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input200 input139)).val
theorem input201_def : input201 = (.seq input200 input139) := by
  unfold input201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output139)).val
theorem output201_def : output201 = (output139) := by
  unfold output201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output201_skip : Flapjack.WordAlloc.isSkip output201 = true := by
  rw [output201_def]
  conv => lhs; cbv
  try rfl
theorem node201_eq : Flapjack.WordAlloc.removeDeadStructural input201 value24 value1 value2 = (output201, value24, value1) := by
  rw [input201_def, output201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node139_eq]
  try dsimp only
  rw [node200_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input201 input138)).val
theorem input202_def : input202 = (.seq input201 input138) := by
  unfold input202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output138)).val
theorem output202_def : output202 = (output138) := by
  unfold output202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output202_skip : Flapjack.WordAlloc.isSkip output202 = true := by
  rw [output202_def]
  conv => lhs; cbv
  try rfl
theorem node202_eq : Flapjack.WordAlloc.removeDeadStructural input202 value24 value1 value2 = (output202, value24, value1) := by
  rw [input202_def, output202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node138_eq]
  try dsimp only
  rw [node201_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input202 input137)).val
theorem input203_def : input203 = (.seq input202 input137) := by
  unfold input203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output137)).val
theorem output203_def : output203 = (output137) := by
  unfold output203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output203_skip : Flapjack.WordAlloc.isSkip output203 = true := by
  rw [output203_def]
  conv => lhs; cbv
  try rfl
theorem node203_eq : Flapjack.WordAlloc.removeDeadStructural input203 value24 value1 value2 = (output203, value24, value1) := by
  rw [input203_def, output203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node137_eq]
  try dsimp only
  rw [node202_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input203 input136)).val
theorem input204_def : input204 = (.seq input203 input136) := by
  unfold input204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output136)).val
theorem output204_def : output204 = (output136) := by
  unfold output204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output204_skip : Flapjack.WordAlloc.isSkip output204 = true := by
  rw [output204_def]
  conv => lhs; cbv
  try rfl
theorem node204_eq : Flapjack.WordAlloc.removeDeadStructural input204 value24 value1 value2 = (output204, value24, value1) := by
  rw [input204_def, output204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node136_eq]
  try dsimp only
  rw [node203_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input204 input135)).val
theorem input205_def : input205 = (.seq input204 input135) := by
  unfold input205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output135)).val
theorem output205_def : output205 = (output135) := by
  unfold output205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output205_skip : Flapjack.WordAlloc.isSkip output205 = true := by
  rw [output205_def]
  conv => lhs; cbv
  try rfl
theorem node205_eq : Flapjack.WordAlloc.removeDeadStructural input205 value24 value1 value2 = (output205, value24, value1) := by
  rw [input205_def, output205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node135_eq]
  try dsimp only
  rw [node204_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input205 input134)).val
theorem input206_def : input206 = (.seq input205 input134) := by
  unfold input206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output134)).val
theorem output206_def : output206 = (output134) := by
  unfold output206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output206_skip : Flapjack.WordAlloc.isSkip output206 = true := by
  rw [output206_def]
  conv => lhs; cbv
  try rfl
theorem node206_eq : Flapjack.WordAlloc.removeDeadStructural input206 value24 value1 value2 = (output206, value24, value1) := by
  rw [input206_def, output206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node134_eq]
  try dsimp only
  rw [node205_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input206 input133)).val
theorem input207_def : input207 = (.seq input206 input133) := by
  unfold input207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output133)).val
theorem output207_def : output207 = (output133) := by
  unfold output207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output207_skip : Flapjack.WordAlloc.isSkip output207 = true := by
  rw [output207_def]
  conv => lhs; cbv
  try rfl
theorem node207_eq : Flapjack.WordAlloc.removeDeadStructural input207 value24 value1 value2 = (output207, value24, value1) := by
  rw [input207_def, output207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node133_eq]
  try dsimp only
  rw [node206_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input207 input132)).val
theorem input208_def : input208 = (.seq input207 input132) := by
  unfold input208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output132)).val
theorem output208_def : output208 = (output132) := by
  unfold output208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output208_skip : Flapjack.WordAlloc.isSkip output208 = true := by
  rw [output208_def]
  conv => lhs; cbv
  try rfl
theorem node208_eq : Flapjack.WordAlloc.removeDeadStructural input208 value24 value1 value2 = (output208, value24, value1) := by
  rw [input208_def, output208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node132_eq]
  try dsimp only
  rw [node207_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input208 input131)).val
theorem input209_def : input209 = (.seq input208 input131) := by
  unfold input209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output131)).val
theorem output209_def : output209 = (output131) := by
  unfold output209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output209_skip : Flapjack.WordAlloc.isSkip output209 = true := by
  rw [output209_def]
  conv => lhs; cbv
  try rfl
theorem node209_eq : Flapjack.WordAlloc.removeDeadStructural input209 value24 value1 value2 = (output209, value24, value1) := by
  rw [input209_def, output209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node131_eq]
  try dsimp only
  rw [node208_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input209 input130)).val
theorem input210_def : input210 = (.seq input209 input130) := by
  unfold input210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output130)).val
theorem output210_def : output210 = (output130) := by
  unfold output210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output210_skip : Flapjack.WordAlloc.isSkip output210 = true := by
  rw [output210_def]
  conv => lhs; cbv
  try rfl
theorem node210_eq : Flapjack.WordAlloc.removeDeadStructural input210 value24 value1 value2 = (output210, value24, value1) := by
  rw [input210_def, output210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node130_eq]
  try dsimp only
  rw [node209_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input210 input129)).val
theorem input211_def : input211 = (.seq input210 input129) := by
  unfold input211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output129)).val
theorem output211_def : output211 = (output129) := by
  unfold output211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output211_skip : Flapjack.WordAlloc.isSkip output211 = true := by
  rw [output211_def]
  conv => lhs; cbv
  try rfl
theorem node211_eq : Flapjack.WordAlloc.removeDeadStructural input211 value24 value1 value2 = (output211, value24, value1) := by
  rw [input211_def, output211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node129_eq]
  try dsimp only
  rw [node210_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input211 input128)).val
theorem input212_def : input212 = (.seq input211 input128) := by
  unfold input212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output128)).val
theorem output212_def : output212 = (output128) := by
  unfold output212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output212_skip : Flapjack.WordAlloc.isSkip output212 = true := by
  rw [output212_def]
  conv => lhs; cbv
  try rfl
theorem node212_eq : Flapjack.WordAlloc.removeDeadStructural input212 value24 value1 value2 = (output212, value24, value1) := by
  rw [input212_def, output212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node128_eq]
  try dsimp only
  rw [node211_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input212 input127)).val
theorem input213_def : input213 = (.seq input212 input127) := by
  unfold input213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output127)).val
theorem output213_def : output213 = (output127) := by
  unfold output213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output213_skip : Flapjack.WordAlloc.isSkip output213 = true := by
  rw [output213_def]
  conv => lhs; cbv
  try rfl
theorem node213_eq : Flapjack.WordAlloc.removeDeadStructural input213 value24 value1 value2 = (output213, value24, value1) := by
  rw [input213_def, output213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node127_eq]
  try dsimp only
  rw [node212_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input213 input126)).val
theorem input214_def : input214 = (.seq input213 input126) := by
  unfold input214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output126)).val
theorem output214_def : output214 = (output126) := by
  unfold output214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output214_skip : Flapjack.WordAlloc.isSkip output214 = true := by
  rw [output214_def]
  conv => lhs; cbv
  try rfl
theorem node214_eq : Flapjack.WordAlloc.removeDeadStructural input214 value24 value1 value2 = (output214, value24, value1) := by
  rw [input214_def, output214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node126_eq]
  try dsimp only
  rw [node213_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input214 input125)).val
theorem input215_def : input215 = (.seq input214 input125) := by
  unfold input215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output125)).val
theorem output215_def : output215 = (output125) := by
  unfold output215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output215_skip : Flapjack.WordAlloc.isSkip output215 = true := by
  rw [output215_def]
  conv => lhs; cbv
  try rfl
theorem node215_eq : Flapjack.WordAlloc.removeDeadStructural input215 value24 value1 value2 = (output215, value24, value1) := by
  rw [input215_def, output215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node125_eq]
  try dsimp only
  rw [node214_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input215 input124)).val
theorem input216_def : input216 = (.seq input215 input124) := by
  unfold input216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output124)).val
theorem output216_def : output216 = (output124) := by
  unfold output216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output216_skip : Flapjack.WordAlloc.isSkip output216 = true := by
  rw [output216_def]
  conv => lhs; cbv
  try rfl
theorem node216_eq : Flapjack.WordAlloc.removeDeadStructural input216 value24 value1 value2 = (output216, value24, value1) := by
  rw [input216_def, output216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node124_eq]
  try dsimp only
  rw [node215_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input216 input123)).val
theorem input217_def : input217 = (.seq input216 input123) := by
  unfold input217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output123)).val
theorem output217_def : output217 = (output123) := by
  unfold output217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output217_skip : Flapjack.WordAlloc.isSkip output217 = true := by
  rw [output217_def]
  conv => lhs; cbv
  try rfl
theorem node217_eq : Flapjack.WordAlloc.removeDeadStructural input217 value24 value1 value2 = (output217, value24, value1) := by
  rw [input217_def, output217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node123_eq]
  try dsimp only
  rw [node216_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input217 input122)).val
theorem input218_def : input218 = (.seq input217 input122) := by
  unfold input218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output122)).val
theorem output218_def : output218 = (output122) := by
  unfold output218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output218_skip : Flapjack.WordAlloc.isSkip output218 = true := by
  rw [output218_def]
  conv => lhs; cbv
  try rfl
theorem node218_eq : Flapjack.WordAlloc.removeDeadStructural input218 value24 value1 value2 = (output218, value24, value1) := by
  rw [input218_def, output218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node122_eq]
  try dsimp only
  rw [node217_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input218 input121)).val
theorem input219_def : input219 = (.seq input218 input121) := by
  unfold input219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output121)).val
theorem output219_def : output219 = (output121) := by
  unfold output219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output219_skip : Flapjack.WordAlloc.isSkip output219 = true := by
  rw [output219_def]
  conv => lhs; cbv
  try rfl
theorem node219_eq : Flapjack.WordAlloc.removeDeadStructural input219 value24 value1 value2 = (output219, value24, value1) := by
  rw [input219_def, output219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node121_eq]
  try dsimp only
  rw [node218_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input219 input120)).val
theorem input220_def : input220 = (.seq input219 input120) := by
  unfold input220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output120)).val
theorem output220_def : output220 = (output120) := by
  unfold output220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output220_skip : Flapjack.WordAlloc.isSkip output220 = true := by
  rw [output220_def]
  conv => lhs; cbv
  try rfl
theorem node220_eq : Flapjack.WordAlloc.removeDeadStructural input220 value24 value1 value2 = (output220, value24, value1) := by
  rw [input220_def, output220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node120_eq]
  try dsimp only
  rw [node219_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input220 input119)).val
theorem input221_def : input221 = (.seq input220 input119) := by
  unfold input221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output119)).val
theorem output221_def : output221 = (output119) := by
  unfold output221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output221_skip : Flapjack.WordAlloc.isSkip output221 = true := by
  rw [output221_def]
  conv => lhs; cbv
  try rfl
theorem node221_eq : Flapjack.WordAlloc.removeDeadStructural input221 value24 value1 value2 = (output221, value24, value1) := by
  rw [input221_def, output221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node119_eq]
  try dsimp only
  rw [node220_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input221 input118)).val
theorem input222_def : input222 = (.seq input221 input118) := by
  unfold input222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output118)).val
theorem output222_def : output222 = (output118) := by
  unfold output222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output222_skip : Flapjack.WordAlloc.isSkip output222 = true := by
  rw [output222_def]
  conv => lhs; cbv
  try rfl
theorem node222_eq : Flapjack.WordAlloc.removeDeadStructural input222 value24 value1 value2 = (output222, value24, value1) := by
  rw [input222_def, output222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node118_eq]
  try dsimp only
  rw [node221_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input222 input117)).val
theorem input223_def : input223 = (.seq input222 input117) := by
  unfold input223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output117)).val
theorem output223_def : output223 = (output117) := by
  unfold output223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output223_skip : Flapjack.WordAlloc.isSkip output223 = true := by
  rw [output223_def]
  conv => lhs; cbv
  try rfl
theorem node223_eq : Flapjack.WordAlloc.removeDeadStructural input223 value24 value1 value2 = (output223, value24, value1) := by
  rw [input223_def, output223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node117_eq]
  try dsimp only
  rw [node222_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input223 input116)).val
theorem input224_def : input224 = (.seq input223 input116) := by
  unfold input224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output116)).val
theorem output224_def : output224 = (output116) := by
  unfold output224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output224_skip : Flapjack.WordAlloc.isSkip output224 = true := by
  rw [output224_def]
  conv => lhs; cbv
  try rfl
theorem node224_eq : Flapjack.WordAlloc.removeDeadStructural input224 value24 value1 value2 = (output224, value24, value1) := by
  rw [input224_def, output224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node116_eq]
  try dsimp only
  rw [node223_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input224 input115)).val
theorem input225_def : input225 = (.seq input224 input115) := by
  unfold input225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output115)).val
theorem output225_def : output225 = (output115) := by
  unfold output225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output225_skip : Flapjack.WordAlloc.isSkip output225 = true := by
  rw [output225_def]
  conv => lhs; cbv
  try rfl
theorem node225_eq : Flapjack.WordAlloc.removeDeadStructural input225 value24 value1 value2 = (output225, value24, value1) := by
  rw [input225_def, output225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node115_eq]
  try dsimp only
  rw [node224_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input225 input114)).val
theorem input226_def : input226 = (.seq input225 input114) := by
  unfold input226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output114)).val
theorem output226_def : output226 = (output114) := by
  unfold output226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output226_skip : Flapjack.WordAlloc.isSkip output226 = true := by
  rw [output226_def]
  conv => lhs; cbv
  try rfl
theorem node226_eq : Flapjack.WordAlloc.removeDeadStructural input226 value24 value1 value2 = (output226, value24, value1) := by
  rw [input226_def, output226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node114_eq]
  try dsimp only
  rw [node225_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input226 input113)).val
theorem input227_def : input227 = (.seq input226 input113) := by
  unfold input227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output113)).val
theorem output227_def : output227 = (output113) := by
  unfold output227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output227_skip : Flapjack.WordAlloc.isSkip output227 = true := by
  rw [output227_def]
  conv => lhs; cbv
  try rfl
theorem node227_eq : Flapjack.WordAlloc.removeDeadStructural input227 value24 value1 value2 = (output227, value24, value1) := by
  rw [input227_def, output227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node113_eq]
  try dsimp only
  rw [node226_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input227 input112)).val
theorem input228_def : input228 = (.seq input227 input112) := by
  unfold input228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output112)).val
theorem output228_def : output228 = (output112) := by
  unfold output228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output228_skip : Flapjack.WordAlloc.isSkip output228 = true := by
  rw [output228_def]
  conv => lhs; cbv
  try rfl
theorem node228_eq : Flapjack.WordAlloc.removeDeadStructural input228 value24 value1 value2 = (output228, value24, value1) := by
  rw [input228_def, output228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node112_eq]
  try dsimp only
  rw [node227_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input228 input111)).val
theorem input229_def : input229 = (.seq input228 input111) := by
  unfold input229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output111)).val
theorem output229_def : output229 = (output111) := by
  unfold output229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output229_skip : Flapjack.WordAlloc.isSkip output229 = true := by
  rw [output229_def]
  conv => lhs; cbv
  try rfl
theorem node229_eq : Flapjack.WordAlloc.removeDeadStructural input229 value24 value1 value2 = (output229, value24, value1) := by
  rw [input229_def, output229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node111_eq]
  try dsimp only
  rw [node228_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input229 input110)).val
theorem input230_def : input230 = (.seq input229 input110) := by
  unfold input230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output110)).val
theorem output230_def : output230 = (output110) := by
  unfold output230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output230_skip : Flapjack.WordAlloc.isSkip output230 = true := by
  rw [output230_def]
  conv => lhs; cbv
  try rfl
theorem node230_eq : Flapjack.WordAlloc.removeDeadStructural input230 value24 value1 value2 = (output230, value24, value1) := by
  rw [input230_def, output230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node110_eq]
  try dsimp only
  rw [node229_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input230 input109)).val
theorem input231_def : input231 = (.seq input230 input109) := by
  unfold input231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output109)).val
theorem output231_def : output231 = (output109) := by
  unfold output231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output231_skip : Flapjack.WordAlloc.isSkip output231 = true := by
  rw [output231_def]
  conv => lhs; cbv
  try rfl
theorem node231_eq : Flapjack.WordAlloc.removeDeadStructural input231 value24 value1 value2 = (output231, value24, value1) := by
  rw [input231_def, output231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node109_eq]
  try dsimp only
  rw [node230_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input231 input108)).val
theorem input232_def : input232 = (.seq input231 input108) := by
  unfold input232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output108)).val
theorem output232_def : output232 = (output108) := by
  unfold output232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output232_skip : Flapjack.WordAlloc.isSkip output232 = true := by
  rw [output232_def]
  conv => lhs; cbv
  try rfl
theorem node232_eq : Flapjack.WordAlloc.removeDeadStructural input232 value24 value1 value2 = (output232, value24, value1) := by
  rw [input232_def, output232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node108_eq]
  try dsimp only
  rw [node231_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input232 input107)).val
theorem input233_def : input233 = (.seq input232 input107) := by
  unfold input233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output107)).val
theorem output233_def : output233 = (output107) := by
  unfold output233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output233_skip : Flapjack.WordAlloc.isSkip output233 = true := by
  rw [output233_def]
  conv => lhs; cbv
  try rfl
theorem node233_eq : Flapjack.WordAlloc.removeDeadStructural input233 value24 value1 value2 = (output233, value24, value1) := by
  rw [input233_def, output233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node107_eq]
  try dsimp only
  rw [node232_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input233 input106)).val
theorem input234_def : input234 = (.seq input233 input106) := by
  unfold input234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output106)).val
theorem output234_def : output234 = (output106) := by
  unfold output234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output234_skip : Flapjack.WordAlloc.isSkip output234 = true := by
  rw [output234_def]
  conv => lhs; cbv
  try rfl
theorem node234_eq : Flapjack.WordAlloc.removeDeadStructural input234 value24 value1 value2 = (output234, value24, value1) := by
  rw [input234_def, output234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node106_eq]
  try dsimp only
  rw [node233_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input234 input105)).val
theorem input235_def : input235 = (.seq input234 input105) := by
  unfold input235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output105)).val
theorem output235_def : output235 = (output105) := by
  unfold output235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output235_skip : Flapjack.WordAlloc.isSkip output235 = true := by
  rw [output235_def]
  conv => lhs; cbv
  try rfl
theorem node235_eq : Flapjack.WordAlloc.removeDeadStructural input235 value24 value1 value2 = (output235, value24, value1) := by
  rw [input235_def, output235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node105_eq]
  try dsimp only
  rw [node234_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input235 input104)).val
theorem input236_def : input236 = (.seq input235 input104) := by
  unfold input236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output104)).val
theorem output236_def : output236 = (output104) := by
  unfold output236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output236_skip : Flapjack.WordAlloc.isSkip output236 = true := by
  rw [output236_def]
  conv => lhs; cbv
  try rfl
theorem node236_eq : Flapjack.WordAlloc.removeDeadStructural input236 value24 value1 value2 = (output236, value24, value1) := by
  rw [input236_def, output236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node104_eq]
  try dsimp only
  rw [node235_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input236 input103)).val
theorem input237_def : input237 = (.seq input236 input103) := by
  unfold input237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output103)).val
theorem output237_def : output237 = (output103) := by
  unfold output237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output237_skip : Flapjack.WordAlloc.isSkip output237 = true := by
  rw [output237_def]
  conv => lhs; cbv
  try rfl
theorem node237_eq : Flapjack.WordAlloc.removeDeadStructural input237 value24 value1 value2 = (output237, value24, value1) := by
  rw [input237_def, output237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node103_eq]
  try dsimp only
  rw [node236_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input237 input102)).val
theorem input238_def : input238 = (.seq input237 input102) := by
  unfold input238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output102)).val
theorem output238_def : output238 = (output102) := by
  unfold output238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output238_skip : Flapjack.WordAlloc.isSkip output238 = true := by
  rw [output238_def]
  conv => lhs; cbv
  try rfl
theorem node238_eq : Flapjack.WordAlloc.removeDeadStructural input238 value24 value1 value2 = (output238, value24, value1) := by
  rw [input238_def, output238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node102_eq]
  try dsimp only
  rw [node237_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input238 input101)).val
theorem input239_def : input239 = (.seq input238 input101) := by
  unfold input239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output101)).val
theorem output239_def : output239 = (output101) := by
  unfold output239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output239_skip : Flapjack.WordAlloc.isSkip output239 = true := by
  rw [output239_def]
  conv => lhs; cbv
  try rfl
theorem node239_eq : Flapjack.WordAlloc.removeDeadStructural input239 value24 value1 value2 = (output239, value24, value1) := by
  rw [input239_def, output239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node101_eq]
  try dsimp only
  rw [node238_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input239 input100)).val
theorem input240_def : input240 = (.seq input239 input100) := by
  unfold input240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output100)).val
theorem output240_def : output240 = (output100) := by
  unfold output240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output240_skip : Flapjack.WordAlloc.isSkip output240 = true := by
  rw [output240_def]
  conv => lhs; cbv
  try rfl
theorem node240_eq : Flapjack.WordAlloc.removeDeadStructural input240 value24 value1 value2 = (output240, value24, value1) := by
  rw [input240_def, output240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node100_eq]
  try dsimp only
  rw [node239_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input240 input99)).val
theorem input241_def : input241 = (.seq input240 input99) := by
  unfold input241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output99)).val
theorem output241_def : output241 = (output99) := by
  unfold output241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output241_skip : Flapjack.WordAlloc.isSkip output241 = true := by
  rw [output241_def]
  conv => lhs; cbv
  try rfl
theorem node241_eq : Flapjack.WordAlloc.removeDeadStructural input241 value24 value1 value2 = (output241, value24, value1) := by
  rw [input241_def, output241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node99_eq]
  try dsimp only
  rw [node240_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input241 input98)).val
theorem input242_def : input242 = (.seq input241 input98) := by
  unfold input242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output98)).val
theorem output242_def : output242 = (output98) := by
  unfold output242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output242_skip : Flapjack.WordAlloc.isSkip output242 = true := by
  rw [output242_def]
  conv => lhs; cbv
  try rfl
theorem node242_eq : Flapjack.WordAlloc.removeDeadStructural input242 value24 value1 value2 = (output242, value24, value1) := by
  rw [input242_def, output242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node98_eq]
  try dsimp only
  rw [node241_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input242 input97)).val
theorem input243_def : input243 = (.seq input242 input97) := by
  unfold input243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output97)).val
theorem output243_def : output243 = (output97) := by
  unfold output243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output243_skip : Flapjack.WordAlloc.isSkip output243 = true := by
  rw [output243_def]
  conv => lhs; cbv
  try rfl
theorem node243_eq : Flapjack.WordAlloc.removeDeadStructural input243 value24 value1 value2 = (output243, value24, value1) := by
  rw [input243_def, output243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node97_eq]
  try dsimp only
  rw [node242_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input243 input96)).val
theorem input244_def : input244 = (.seq input243 input96) := by
  unfold input244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output96)).val
theorem output244_def : output244 = (output96) := by
  unfold output244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output244_skip : Flapjack.WordAlloc.isSkip output244 = true := by
  rw [output244_def]
  conv => lhs; cbv
  try rfl
theorem node244_eq : Flapjack.WordAlloc.removeDeadStructural input244 value24 value1 value2 = (output244, value24, value1) := by
  rw [input244_def, output244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node96_eq]
  try dsimp only
  rw [node243_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input244 input95)).val
theorem input245_def : input245 = (.seq input244 input95) := by
  unfold input245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output95)).val
theorem output245_def : output245 = (output95) := by
  unfold output245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output245_skip : Flapjack.WordAlloc.isSkip output245 = true := by
  rw [output245_def]
  conv => lhs; cbv
  try rfl
theorem node245_eq : Flapjack.WordAlloc.removeDeadStructural input245 value24 value1 value2 = (output245, value24, value1) := by
  rw [input245_def, output245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node95_eq]
  try dsimp only
  rw [node244_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input245 input94)).val
theorem input246_def : input246 = (.seq input245 input94) := by
  unfold input246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output94)).val
theorem output246_def : output246 = (output94) := by
  unfold output246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output246_skip : Flapjack.WordAlloc.isSkip output246 = true := by
  rw [output246_def]
  conv => lhs; cbv
  try rfl
theorem node246_eq : Flapjack.WordAlloc.removeDeadStructural input246 value24 value1 value2 = (output246, value24, value1) := by
  rw [input246_def, output246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node94_eq]
  try dsimp only
  rw [node245_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input246 input93)).val
theorem input247_def : input247 = (.seq input246 input93) := by
  unfold input247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output93)).val
theorem output247_def : output247 = (output93) := by
  unfold output247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output247_skip : Flapjack.WordAlloc.isSkip output247 = true := by
  rw [output247_def]
  conv => lhs; cbv
  try rfl
theorem node247_eq : Flapjack.WordAlloc.removeDeadStructural input247 value24 value1 value2 = (output247, value24, value1) := by
  rw [input247_def, output247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node93_eq]
  try dsimp only
  rw [node246_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input247 input92)).val
theorem input248_def : input248 = (.seq input247 input92) := by
  unfold input248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output92)).val
theorem output248_def : output248 = (output92) := by
  unfold output248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output248_skip : Flapjack.WordAlloc.isSkip output248 = true := by
  rw [output248_def]
  conv => lhs; cbv
  try rfl
theorem node248_eq : Flapjack.WordAlloc.removeDeadStructural input248 value24 value1 value2 = (output248, value24, value1) := by
  rw [input248_def, output248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node92_eq]
  try dsimp only
  rw [node247_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input248 input91)).val
theorem input249_def : input249 = (.seq input248 input91) := by
  unfold input249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output91)).val
theorem output249_def : output249 = (output91) := by
  unfold output249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output249_skip : Flapjack.WordAlloc.isSkip output249 = true := by
  rw [output249_def]
  conv => lhs; cbv
  try rfl
theorem node249_eq : Flapjack.WordAlloc.removeDeadStructural input249 value24 value1 value2 = (output249, value24, value1) := by
  rw [input249_def, output249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node91_eq]
  try dsimp only
  rw [node248_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input249 input90)).val
theorem input250_def : input250 = (.seq input249 input90) := by
  unfold input250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output90)).val
theorem output250_def : output250 = (output90) := by
  unfold output250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output250_skip : Flapjack.WordAlloc.isSkip output250 = true := by
  rw [output250_def]
  conv => lhs; cbv
  try rfl
theorem node250_eq : Flapjack.WordAlloc.removeDeadStructural input250 value24 value1 value2 = (output250, value24, value1) := by
  rw [input250_def, output250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node90_eq]
  try dsimp only
  rw [node249_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input250 input89)).val
theorem input251_def : input251 = (.seq input250 input89) := by
  unfold input251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output89)).val
theorem output251_def : output251 = (output89) := by
  unfold output251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output251_skip : Flapjack.WordAlloc.isSkip output251 = true := by
  rw [output251_def]
  conv => lhs; cbv
  try rfl
theorem node251_eq : Flapjack.WordAlloc.removeDeadStructural input251 value24 value1 value2 = (output251, value24, value1) := by
  rw [input251_def, output251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node89_eq]
  try dsimp only
  rw [node250_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input251 input88)).val
theorem input252_def : input252 = (.seq input251 input88) := by
  unfold input252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output88)).val
theorem output252_def : output252 = (output88) := by
  unfold output252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output252_skip : Flapjack.WordAlloc.isSkip output252 = true := by
  rw [output252_def]
  conv => lhs; cbv
  try rfl
theorem node252_eq : Flapjack.WordAlloc.removeDeadStructural input252 value24 value1 value2 = (output252, value24, value1) := by
  rw [input252_def, output252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node88_eq]
  try dsimp only
  rw [node251_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input252 input87)).val
theorem input253_def : input253 = (.seq input252 input87) := by
  unfold input253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output87)).val
theorem output253_def : output253 = (output87) := by
  unfold output253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output253_skip : Flapjack.WordAlloc.isSkip output253 = true := by
  rw [output253_def]
  conv => lhs; cbv
  try rfl
theorem node253_eq : Flapjack.WordAlloc.removeDeadStructural input253 value24 value1 value2 = (output253, value24, value1) := by
  rw [input253_def, output253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node87_eq]
  try dsimp only
  rw [node252_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input253 input86)).val
theorem input254_def : input254 = (.seq input253 input86) := by
  unfold input254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output86)).val
theorem output254_def : output254 = (output86) := by
  unfold output254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output254_skip : Flapjack.WordAlloc.isSkip output254 = true := by
  rw [output254_def]
  conv => lhs; cbv
  try rfl
theorem node254_eq : Flapjack.WordAlloc.removeDeadStructural input254 value24 value1 value2 = (output254, value24, value1) := by
  rw [input254_def, output254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node86_eq]
  try dsimp only
  rw [node253_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input254 input85)).val
theorem input255_def : input255 = (.seq input254 input85) := by
  unfold input255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output85)).val
theorem output255_def : output255 = (output85) := by
  unfold output255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output255_skip : Flapjack.WordAlloc.isSkip output255 = true := by
  rw [output255_def]
  conv => lhs; cbv
  try rfl
theorem node255_eq : Flapjack.WordAlloc.removeDeadStructural input255 value24 value1 value2 = (output255, value24, value1) := by
  rw [input255_def, output255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node85_eq]
  try dsimp only
  rw [node254_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node255_eq
end InitECandidate.Proofs.DeadStages875
