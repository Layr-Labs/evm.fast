import InitECandidate.Proofs.DeadStages713.Chunk018
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input4864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4863 input4862)).val
theorem input4864_def : input4864 = (.seq input4863 input4862) := by
  unfold input4864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4863 output4862)).val
theorem output4864_def : output4864 = (.seq output4863 output4862) := by
  unfold output4864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4864_skip : Flapjack.WordAlloc.isSkip output4864 = false := by
  rw [output4864_def]
  conv => lhs; cbv
  try rfl
theorem node4864_eq : Flapjack.WordAlloc.removeDeadStructural input4864 value2436 value1 value2 = (output4864, value5, value1) := by
  rw [input4864_def, output4864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4862_eq]
  dsimp only
  rw [node4863_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4864 input4861)).val
theorem input4865_def : input4865 = (.seq input4864 input4861) := by
  unfold input4865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4864 output4861)).val
theorem output4865_def : output4865 = (.seq output4864 output4861) := by
  unfold output4865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4865_skip : Flapjack.WordAlloc.isSkip output4865 = false := by
  rw [output4865_def]
  conv => lhs; cbv
  try rfl
theorem node4865_eq : Flapjack.WordAlloc.removeDeadStructural input4865 value2435 value1 value2 = (output4865, value5, value1) := by
  rw [input4865_def, output4865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4861_eq]
  dsimp only
  rw [node4864_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4865 input4860)).val
theorem input4866_def : input4866 = (.seq input4865 input4860) := by
  unfold input4866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4865 output4860)).val
theorem output4866_def : output4866 = (.seq output4865 output4860) := by
  unfold output4866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4866_skip : Flapjack.WordAlloc.isSkip output4866 = false := by
  rw [output4866_def]
  conv => lhs; cbv
  try rfl
theorem node4866_eq : Flapjack.WordAlloc.removeDeadStructural input4866 value2434 value1 value2 = (output4866, value5, value1) := by
  rw [input4866_def, output4866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4860_eq]
  dsimp only
  rw [node4865_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4866 input4859)).val
theorem input4867_def : input4867 = (.seq input4866 input4859) := by
  unfold input4867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4866 output4859)).val
theorem output4867_def : output4867 = (.seq output4866 output4859) := by
  unfold output4867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4867_skip : Flapjack.WordAlloc.isSkip output4867 = false := by
  rw [output4867_def]
  conv => lhs; cbv
  try rfl
theorem node4867_eq : Flapjack.WordAlloc.removeDeadStructural input4867 value2432 value1 value2 = (output4867, value5, value1) := by
  rw [input4867_def, output4867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4859_eq]
  dsimp only
  rw [node4866_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2438 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20265 (Flapjack.WordLangAddr.addr 20269 0#64)))).val
theorem input4868_def : input4868 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20265 (Flapjack.WordLangAddr.addr 20269 0#64))) := by
  unfold input4868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20265 (Flapjack.WordLangAddr.addr 20269 0#64)))).val
theorem output4868_def : output4868 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20265 (Flapjack.WordLangAddr.addr 20269 0#64))) := by
  unfold output4868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4868_skip : Flapjack.WordAlloc.isSkip output4868 = false := by
  rw [output4868_def]
  conv => lhs; cbv
  try rfl
theorem node4868_eq : Flapjack.WordAlloc.removeDeadStructural input4868 value5 value1 value2 = (output4868, value2438, value1) := by
  rw [input4868_def, output4868_def]
  try (conv => lhs; cbv)
  try rfl

def value2439 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20269, 20257)])).val
theorem input4869_def : input4869 = (Flapjack.WordLangProgHOL.move 0 [(20269, 20257)]) := by
  unfold input4869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20269, 20257)])).val
theorem output4869_def : output4869 = (Flapjack.WordLangProgHOL.move 0 [(20269, 20257)]) := by
  unfold output4869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4869_skip : Flapjack.WordAlloc.isSkip output4869 = false := by
  rw [output4869_def]
  conv => lhs; cbv
  try rfl
theorem node4869_eq : Flapjack.WordAlloc.removeDeadStructural input4869 value2438 value1 value2 = (output4869, value2439, value1) := by
  rw [input4869_def, output4869_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4869 input4868)).val
theorem input4870_def : input4870 = (.seq input4869 input4868) := by
  unfold input4870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4869 output4868)).val
theorem output4870_def : output4870 = (.seq output4869 output4868) := by
  unfold output4870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4870_skip : Flapjack.WordAlloc.isSkip output4870 = false := by
  rw [output4870_def]
  conv => lhs; cbv
  try rfl
theorem node4870_eq : Flapjack.WordAlloc.removeDeadStructural input4870 value5 value1 value2 = (output4870, value2439, value1) := by
  rw [input4870_def, output4870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4868_eq]
  dsimp only
  rw [node4869_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2440 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20265 0#64))).val
theorem input4871_def : input4871 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20265 0#64)) := by
  unfold input4871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20265 0#64))).val
theorem output4871_def : output4871 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20265 0#64)) := by
  unfold output4871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4871_skip : Flapjack.WordAlloc.isSkip output4871 = false := by
  rw [output4871_def]
  conv => lhs; cbv
  try rfl
theorem node4871_eq : Flapjack.WordAlloc.removeDeadStructural input4871 value2439 value1 value2 = (output4871, value2440, value1) := by
  rw [input4871_def, output4871_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20261 0#64))).val
theorem input4872_def : input4872 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20261 0#64)) := by
  unfold input4872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4872_def : output4872 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4872_skip : Flapjack.WordAlloc.isSkip output4872 = true := by
  rw [output4872_def]
  conv => lhs; cbv
  try rfl
theorem node4872_eq : Flapjack.WordAlloc.removeDeadStructural input4872 value2440 value1 value2 = (output4872, value2440, value1) := by
  rw [input4872_def, output4872_def]
  try (conv => lhs; cbv)
  try rfl

def value2441 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20257 20249 (Flapjack.WordRegImm.reg 20253))))).val
theorem input4873_def : input4873 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20257 20249 (Flapjack.WordRegImm.reg 20253)))) := by
  unfold input4873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20257 20249 (Flapjack.WordRegImm.reg 20253))))).val
theorem output4873_def : output4873 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20257 20249 (Flapjack.WordRegImm.reg 20253)))) := by
  unfold output4873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4873_skip : Flapjack.WordAlloc.isSkip output4873 = false := by
  rw [output4873_def]
  conv => lhs; cbv
  try rfl
theorem node4873_eq : Flapjack.WordAlloc.removeDeadStructural input4873 value2440 value1 value2 = (output4873, value2441, value1) := by
  rw [input4873_def, output4873_def]
  try (conv => lhs; cbv)
  try rfl

def value2442 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20253 4696#64))).val
theorem input4874_def : input4874 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20253 4696#64)) := by
  unfold input4874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20253 4696#64))).val
theorem output4874_def : output4874 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20253 4696#64)) := by
  unfold output4874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4874_skip : Flapjack.WordAlloc.isSkip output4874 = false := by
  rw [output4874_def]
  conv => lhs; cbv
  try rfl
theorem node4874_eq : Flapjack.WordAlloc.removeDeadStructural input4874 value2441 value1 value2 = (output4874, value2442, value1) := by
  rw [input4874_def, output4874_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4874 input4873)).val
theorem input4875_def : input4875 = (.seq input4874 input4873) := by
  unfold input4875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4874 output4873)).val
theorem output4875_def : output4875 = (.seq output4874 output4873) := by
  unfold output4875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4875_skip : Flapjack.WordAlloc.isSkip output4875 = false := by
  rw [output4875_def]
  conv => lhs; cbv
  try rfl
theorem node4875_eq : Flapjack.WordAlloc.removeDeadStructural input4875 value2440 value1 value2 = (output4875, value2442, value1) := by
  rw [input4875_def, output4875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4873_eq]
  dsimp only
  rw [node4874_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2443 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20249 (Flapjack.WordLangAddr.addr 20245 18446744073709551104#64)))).val
theorem input4876_def : input4876 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20249 (Flapjack.WordLangAddr.addr 20245 18446744073709551104#64))) := by
  unfold input4876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20249 (Flapjack.WordLangAddr.addr 20245 18446744073709551104#64)))).val
theorem output4876_def : output4876 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20249 (Flapjack.WordLangAddr.addr 20245 18446744073709551104#64))) := by
  unfold output4876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4876_skip : Flapjack.WordAlloc.isSkip output4876 = false := by
  rw [output4876_def]
  conv => lhs; cbv
  try rfl
theorem node4876_eq : Flapjack.WordAlloc.removeDeadStructural input4876 value2442 value1 value2 = (output4876, value2443, value1) := by
  rw [input4876_def, output4876_def]
  try (conv => lhs; cbv)
  try rfl

def value2444 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20245 20241)).val
theorem input4877_def : input4877 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20245 20241) := by
  unfold input4877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20245 20241)).val
theorem output4877_def : output4877 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20245 20241) := by
  unfold output4877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4877_skip : Flapjack.WordAlloc.isSkip output4877 = false := by
  rw [output4877_def]
  conv => lhs; cbv
  try rfl
theorem node4877_eq : Flapjack.WordAlloc.removeDeadStructural input4877 value2443 value1 value2 = (output4877, value2444, value1) := by
  rw [input4877_def, output4877_def]
  try (conv => lhs; cbv)
  try rfl

def value2445 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20241 20237 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4878_def : input4878 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20241 20237 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20241 20237 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4878_def : output4878 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20241 20237 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4878_skip : Flapjack.WordAlloc.isSkip output4878 = false := by
  rw [output4878_def]
  conv => lhs; cbv
  try rfl
theorem node4878_eq : Flapjack.WordAlloc.removeDeadStructural input4878 value2444 value1 value2 = (output4878, value2445, value1) := by
  rw [input4878_def, output4878_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20237 Flapjack.WordStore.heapLength)).val
theorem input4879_def : input4879 = (Flapjack.WordLangProgHOL.get 20237 Flapjack.WordStore.heapLength) := by
  unfold input4879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20237 Flapjack.WordStore.heapLength)).val
theorem output4879_def : output4879 = (Flapjack.WordLangProgHOL.get 20237 Flapjack.WordStore.heapLength) := by
  unfold output4879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4879_skip : Flapjack.WordAlloc.isSkip output4879 = false := by
  rw [output4879_def]
  conv => lhs; cbv
  try rfl
theorem node4879_eq : Flapjack.WordAlloc.removeDeadStructural input4879 value2445 value1 value2 = (output4879, value5, value1) := by
  rw [input4879_def, output4879_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4879 input4878)).val
theorem input4880_def : input4880 = (.seq input4879 input4878) := by
  unfold input4880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4879 output4878)).val
theorem output4880_def : output4880 = (.seq output4879 output4878) := by
  unfold output4880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4880_skip : Flapjack.WordAlloc.isSkip output4880 = false := by
  rw [output4880_def]
  conv => lhs; cbv
  try rfl
theorem node4880_eq : Flapjack.WordAlloc.removeDeadStructural input4880 value2444 value1 value2 = (output4880, value5, value1) := by
  rw [input4880_def, output4880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4878_eq]
  dsimp only
  rw [node4879_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4880 input4877)).val
theorem input4881_def : input4881 = (.seq input4880 input4877) := by
  unfold input4881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4880 output4877)).val
theorem output4881_def : output4881 = (.seq output4880 output4877) := by
  unfold output4881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4881_skip : Flapjack.WordAlloc.isSkip output4881 = false := by
  rw [output4881_def]
  conv => lhs; cbv
  try rfl
theorem node4881_eq : Flapjack.WordAlloc.removeDeadStructural input4881 value2443 value1 value2 = (output4881, value5, value1) := by
  rw [input4881_def, output4881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4877_eq]
  dsimp only
  rw [node4880_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4881 input4876)).val
theorem input4882_def : input4882 = (.seq input4881 input4876) := by
  unfold input4882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4881 output4876)).val
theorem output4882_def : output4882 = (.seq output4881 output4876) := by
  unfold output4882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4882_skip : Flapjack.WordAlloc.isSkip output4882 = false := by
  rw [output4882_def]
  conv => lhs; cbv
  try rfl
theorem node4882_eq : Flapjack.WordAlloc.removeDeadStructural input4882 value2442 value1 value2 = (output4882, value5, value1) := by
  rw [input4882_def, output4882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4876_eq]
  dsimp only
  rw [node4881_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4882 input4875)).val
theorem input4883_def : input4883 = (.seq input4882 input4875) := by
  unfold input4883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4882 output4875)).val
theorem output4883_def : output4883 = (.seq output4882 output4875) := by
  unfold output4883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4883_skip : Flapjack.WordAlloc.isSkip output4883 = false := by
  rw [output4883_def]
  conv => lhs; cbv
  try rfl
theorem node4883_eq : Flapjack.WordAlloc.removeDeadStructural input4883 value2440 value1 value2 = (output4883, value5, value1) := by
  rw [input4883_def, output4883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4875_eq]
  dsimp only
  rw [node4882_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2446 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                  Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20229 (Flapjack.WordLangAddr.addr 20233 0#64)))).val
theorem input4884_def : input4884 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20229 (Flapjack.WordLangAddr.addr 20233 0#64))) := by
  unfold input4884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20229 (Flapjack.WordLangAddr.addr 20233 0#64)))).val
theorem output4884_def : output4884 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20229 (Flapjack.WordLangAddr.addr 20233 0#64))) := by
  unfold output4884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4884_skip : Flapjack.WordAlloc.isSkip output4884 = false := by
  rw [output4884_def]
  conv => lhs; cbv
  try rfl
theorem node4884_eq : Flapjack.WordAlloc.removeDeadStructural input4884 value5 value1 value2 = (output4884, value2446, value1) := by
  rw [input4884_def, output4884_def]
  try (conv => lhs; cbv)
  try rfl

def value2447 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20233, 20221)])).val
theorem input4885_def : input4885 = (Flapjack.WordLangProgHOL.move 0 [(20233, 20221)]) := by
  unfold input4885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20233, 20221)])).val
theorem output4885_def : output4885 = (Flapjack.WordLangProgHOL.move 0 [(20233, 20221)]) := by
  unfold output4885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4885_skip : Flapjack.WordAlloc.isSkip output4885 = false := by
  rw [output4885_def]
  conv => lhs; cbv
  try rfl
theorem node4885_eq : Flapjack.WordAlloc.removeDeadStructural input4885 value2446 value1 value2 = (output4885, value2447, value1) := by
  rw [input4885_def, output4885_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4885 input4884)).val
theorem input4886_def : input4886 = (.seq input4885 input4884) := by
  unfold input4886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4885 output4884)).val
theorem output4886_def : output4886 = (.seq output4885 output4884) := by
  unfold output4886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4886_skip : Flapjack.WordAlloc.isSkip output4886 = false := by
  rw [output4886_def]
  conv => lhs; cbv
  try rfl
theorem node4886_eq : Flapjack.WordAlloc.removeDeadStructural input4886 value5 value1 value2 = (output4886, value2447, value1) := by
  rw [input4886_def, output4886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4884_eq]
  dsimp only
  rw [node4885_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2448 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20229 1012#64))).val
theorem input4887_def : input4887 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20229 1012#64)) := by
  unfold input4887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20229 1012#64))).val
theorem output4887_def : output4887 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20229 1012#64)) := by
  unfold output4887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4887_skip : Flapjack.WordAlloc.isSkip output4887 = false := by
  rw [output4887_def]
  conv => lhs; cbv
  try rfl
theorem node4887_eq : Flapjack.WordAlloc.removeDeadStructural input4887 value2447 value1 value2 = (output4887, value2448, value1) := by
  rw [input4887_def, output4887_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20225 1012#64))).val
theorem input4888_def : input4888 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20225 1012#64)) := by
  unfold input4888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4888_def : output4888 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4888_skip : Flapjack.WordAlloc.isSkip output4888 = true := by
  rw [output4888_def]
  conv => lhs; cbv
  try rfl
theorem node4888_eq : Flapjack.WordAlloc.removeDeadStructural input4888 value2448 value1 value2 = (output4888, value2448, value1) := by
  rw [input4888_def, output4888_def]
  try (conv => lhs; cbv)
  try rfl

def value2449 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20221 20213 (Flapjack.WordRegImm.reg 20217))))).val
theorem input4889_def : input4889 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20221 20213 (Flapjack.WordRegImm.reg 20217)))) := by
  unfold input4889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20221 20213 (Flapjack.WordRegImm.reg 20217))))).val
theorem output4889_def : output4889 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20221 20213 (Flapjack.WordRegImm.reg 20217)))) := by
  unfold output4889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4889_skip : Flapjack.WordAlloc.isSkip output4889 = false := by
  rw [output4889_def]
  conv => lhs; cbv
  try rfl
theorem node4889_eq : Flapjack.WordAlloc.removeDeadStructural input4889 value2448 value1 value2 = (output4889, value2449, value1) := by
  rw [input4889_def, output4889_def]
  try (conv => lhs; cbv)
  try rfl

def value2450 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20217 4688#64))).val
theorem input4890_def : input4890 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20217 4688#64)) := by
  unfold input4890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20217 4688#64))).val
theorem output4890_def : output4890 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20217 4688#64)) := by
  unfold output4890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4890_skip : Flapjack.WordAlloc.isSkip output4890 = false := by
  rw [output4890_def]
  conv => lhs; cbv
  try rfl
theorem node4890_eq : Flapjack.WordAlloc.removeDeadStructural input4890 value2449 value1 value2 = (output4890, value2450, value1) := by
  rw [input4890_def, output4890_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4890 input4889)).val
theorem input4891_def : input4891 = (.seq input4890 input4889) := by
  unfold input4891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4890 output4889)).val
theorem output4891_def : output4891 = (.seq output4890 output4889) := by
  unfold output4891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4891_skip : Flapjack.WordAlloc.isSkip output4891 = false := by
  rw [output4891_def]
  conv => lhs; cbv
  try rfl
theorem node4891_eq : Flapjack.WordAlloc.removeDeadStructural input4891 value2448 value1 value2 = (output4891, value2450, value1) := by
  rw [input4891_def, output4891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4889_eq]
  dsimp only
  rw [node4890_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2451 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20213 (Flapjack.WordLangAddr.addr 20209 18446744073709551104#64)))).val
theorem input4892_def : input4892 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20213 (Flapjack.WordLangAddr.addr 20209 18446744073709551104#64))) := by
  unfold input4892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20213 (Flapjack.WordLangAddr.addr 20209 18446744073709551104#64)))).val
theorem output4892_def : output4892 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20213 (Flapjack.WordLangAddr.addr 20209 18446744073709551104#64))) := by
  unfold output4892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4892_skip : Flapjack.WordAlloc.isSkip output4892 = false := by
  rw [output4892_def]
  conv => lhs; cbv
  try rfl
theorem node4892_eq : Flapjack.WordAlloc.removeDeadStructural input4892 value2450 value1 value2 = (output4892, value2451, value1) := by
  rw [input4892_def, output4892_def]
  try (conv => lhs; cbv)
  try rfl

def value2452 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20209 20205)).val
theorem input4893_def : input4893 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20209 20205) := by
  unfold input4893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20209 20205)).val
theorem output4893_def : output4893 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20209 20205) := by
  unfold output4893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4893_skip : Flapjack.WordAlloc.isSkip output4893 = false := by
  rw [output4893_def]
  conv => lhs; cbv
  try rfl
theorem node4893_eq : Flapjack.WordAlloc.removeDeadStructural input4893 value2451 value1 value2 = (output4893, value2452, value1) := by
  rw [input4893_def, output4893_def]
  try (conv => lhs; cbv)
  try rfl

def value2453 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20205 20201 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4894_def : input4894 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20205 20201 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20205 20201 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4894_def : output4894 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20205 20201 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4894_skip : Flapjack.WordAlloc.isSkip output4894 = false := by
  rw [output4894_def]
  conv => lhs; cbv
  try rfl
theorem node4894_eq : Flapjack.WordAlloc.removeDeadStructural input4894 value2452 value1 value2 = (output4894, value2453, value1) := by
  rw [input4894_def, output4894_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20201 Flapjack.WordStore.heapLength)).val
theorem input4895_def : input4895 = (Flapjack.WordLangProgHOL.get 20201 Flapjack.WordStore.heapLength) := by
  unfold input4895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20201 Flapjack.WordStore.heapLength)).val
theorem output4895_def : output4895 = (Flapjack.WordLangProgHOL.get 20201 Flapjack.WordStore.heapLength) := by
  unfold output4895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4895_skip : Flapjack.WordAlloc.isSkip output4895 = false := by
  rw [output4895_def]
  conv => lhs; cbv
  try rfl
theorem node4895_eq : Flapjack.WordAlloc.removeDeadStructural input4895 value2453 value1 value2 = (output4895, value5, value1) := by
  rw [input4895_def, output4895_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4895 input4894)).val
theorem input4896_def : input4896 = (.seq input4895 input4894) := by
  unfold input4896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4895 output4894)).val
theorem output4896_def : output4896 = (.seq output4895 output4894) := by
  unfold output4896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4896_skip : Flapjack.WordAlloc.isSkip output4896 = false := by
  rw [output4896_def]
  conv => lhs; cbv
  try rfl
theorem node4896_eq : Flapjack.WordAlloc.removeDeadStructural input4896 value2452 value1 value2 = (output4896, value5, value1) := by
  rw [input4896_def, output4896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4894_eq]
  dsimp only
  rw [node4895_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4896 input4893)).val
theorem input4897_def : input4897 = (.seq input4896 input4893) := by
  unfold input4897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4896 output4893)).val
theorem output4897_def : output4897 = (.seq output4896 output4893) := by
  unfold output4897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4897_skip : Flapjack.WordAlloc.isSkip output4897 = false := by
  rw [output4897_def]
  conv => lhs; cbv
  try rfl
theorem node4897_eq : Flapjack.WordAlloc.removeDeadStructural input4897 value2451 value1 value2 = (output4897, value5, value1) := by
  rw [input4897_def, output4897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4893_eq]
  dsimp only
  rw [node4896_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4897 input4892)).val
theorem input4898_def : input4898 = (.seq input4897 input4892) := by
  unfold input4898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4897 output4892)).val
theorem output4898_def : output4898 = (.seq output4897 output4892) := by
  unfold output4898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4898_skip : Flapjack.WordAlloc.isSkip output4898 = false := by
  rw [output4898_def]
  conv => lhs; cbv
  try rfl
theorem node4898_eq : Flapjack.WordAlloc.removeDeadStructural input4898 value2450 value1 value2 = (output4898, value5, value1) := by
  rw [input4898_def, output4898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4892_eq]
  dsimp only
  rw [node4897_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4898 input4891)).val
theorem input4899_def : input4899 = (.seq input4898 input4891) := by
  unfold input4899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4898 output4891)).val
theorem output4899_def : output4899 = (.seq output4898 output4891) := by
  unfold output4899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4899_skip : Flapjack.WordAlloc.isSkip output4899 = false := by
  rw [output4899_def]
  conv => lhs; cbv
  try rfl
theorem node4899_eq : Flapjack.WordAlloc.removeDeadStructural input4899 value2448 value1 value2 = (output4899, value5, value1) := by
  rw [input4899_def, output4899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4891_eq]
  dsimp only
  rw [node4898_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2454 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20193 (Flapjack.WordLangAddr.addr 20197 0#64)))).val
theorem input4900_def : input4900 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20193 (Flapjack.WordLangAddr.addr 20197 0#64))) := by
  unfold input4900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20193 (Flapjack.WordLangAddr.addr 20197 0#64)))).val
theorem output4900_def : output4900 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20193 (Flapjack.WordLangAddr.addr 20197 0#64))) := by
  unfold output4900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4900_skip : Flapjack.WordAlloc.isSkip output4900 = false := by
  rw [output4900_def]
  conv => lhs; cbv
  try rfl
theorem node4900_eq : Flapjack.WordAlloc.removeDeadStructural input4900 value5 value1 value2 = (output4900, value2454, value1) := by
  rw [input4900_def, output4900_def]
  try (conv => lhs; cbv)
  try rfl

def value2455 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20197, 20185)])).val
theorem input4901_def : input4901 = (Flapjack.WordLangProgHOL.move 0 [(20197, 20185)]) := by
  unfold input4901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20197, 20185)])).val
theorem output4901_def : output4901 = (Flapjack.WordLangProgHOL.move 0 [(20197, 20185)]) := by
  unfold output4901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4901_skip : Flapjack.WordAlloc.isSkip output4901 = false := by
  rw [output4901_def]
  conv => lhs; cbv
  try rfl
theorem node4901_eq : Flapjack.WordAlloc.removeDeadStructural input4901 value2454 value1 value2 = (output4901, value2455, value1) := by
  rw [input4901_def, output4901_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4901 input4900)).val
theorem input4902_def : input4902 = (.seq input4901 input4900) := by
  unfold input4902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4901 output4900)).val
theorem output4902_def : output4902 = (.seq output4901 output4900) := by
  unfold output4902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4902_skip : Flapjack.WordAlloc.isSkip output4902 = false := by
  rw [output4902_def]
  conv => lhs; cbv
  try rfl
theorem node4902_eq : Flapjack.WordAlloc.removeDeadStructural input4902 value5 value1 value2 = (output4902, value2455, value1) := by
  rw [input4902_def, output4902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4900_eq]
  dsimp only
  rw [node4901_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2456 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20193 0#64))).val
theorem input4903_def : input4903 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20193 0#64)) := by
  unfold input4903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20193 0#64))).val
theorem output4903_def : output4903 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20193 0#64)) := by
  unfold output4903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4903_skip : Flapjack.WordAlloc.isSkip output4903 = false := by
  rw [output4903_def]
  conv => lhs; cbv
  try rfl
theorem node4903_eq : Flapjack.WordAlloc.removeDeadStructural input4903 value2455 value1 value2 = (output4903, value2456, value1) := by
  rw [input4903_def, output4903_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20189 0#64))).val
theorem input4904_def : input4904 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20189 0#64)) := by
  unfold input4904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4904_def : output4904 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4904_skip : Flapjack.WordAlloc.isSkip output4904 = true := by
  rw [output4904_def]
  conv => lhs; cbv
  try rfl
theorem node4904_eq : Flapjack.WordAlloc.removeDeadStructural input4904 value2456 value1 value2 = (output4904, value2456, value1) := by
  rw [input4904_def, output4904_def]
  try (conv => lhs; cbv)
  try rfl

def value2457 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
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
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20185 20177 (Flapjack.WordRegImm.reg 20181))))).val
theorem input4905_def : input4905 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20185 20177 (Flapjack.WordRegImm.reg 20181)))) := by
  unfold input4905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20185 20177 (Flapjack.WordRegImm.reg 20181))))).val
theorem output4905_def : output4905 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20185 20177 (Flapjack.WordRegImm.reg 20181)))) := by
  unfold output4905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4905_skip : Flapjack.WordAlloc.isSkip output4905 = false := by
  rw [output4905_def]
  conv => lhs; cbv
  try rfl
theorem node4905_eq : Flapjack.WordAlloc.removeDeadStructural input4905 value2456 value1 value2 = (output4905, value2457, value1) := by
  rw [input4905_def, output4905_def]
  try (conv => lhs; cbv)
  try rfl

def value2458 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20181 4680#64))).val
theorem input4906_def : input4906 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20181 4680#64)) := by
  unfold input4906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20181 4680#64))).val
theorem output4906_def : output4906 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20181 4680#64)) := by
  unfold output4906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4906_skip : Flapjack.WordAlloc.isSkip output4906 = false := by
  rw [output4906_def]
  conv => lhs; cbv
  try rfl
theorem node4906_eq : Flapjack.WordAlloc.removeDeadStructural input4906 value2457 value1 value2 = (output4906, value2458, value1) := by
  rw [input4906_def, output4906_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4906 input4905)).val
theorem input4907_def : input4907 = (.seq input4906 input4905) := by
  unfold input4907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4906 output4905)).val
theorem output4907_def : output4907 = (.seq output4906 output4905) := by
  unfold output4907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4907_skip : Flapjack.WordAlloc.isSkip output4907 = false := by
  rw [output4907_def]
  conv => lhs; cbv
  try rfl
theorem node4907_eq : Flapjack.WordAlloc.removeDeadStructural input4907 value2456 value1 value2 = (output4907, value2458, value1) := by
  rw [input4907_def, output4907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4905_eq]
  dsimp only
  rw [node4906_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2459 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20177 (Flapjack.WordLangAddr.addr 20173 18446744073709551104#64)))).val
theorem input4908_def : input4908 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20177 (Flapjack.WordLangAddr.addr 20173 18446744073709551104#64))) := by
  unfold input4908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20177 (Flapjack.WordLangAddr.addr 20173 18446744073709551104#64)))).val
theorem output4908_def : output4908 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20177 (Flapjack.WordLangAddr.addr 20173 18446744073709551104#64))) := by
  unfold output4908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4908_skip : Flapjack.WordAlloc.isSkip output4908 = false := by
  rw [output4908_def]
  conv => lhs; cbv
  try rfl
theorem node4908_eq : Flapjack.WordAlloc.removeDeadStructural input4908 value2458 value1 value2 = (output4908, value2459, value1) := by
  rw [input4908_def, output4908_def]
  try (conv => lhs; cbv)
  try rfl

def value2460 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20173 20169)).val
theorem input4909_def : input4909 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20173 20169) := by
  unfold input4909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20173 20169)).val
theorem output4909_def : output4909 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20173 20169) := by
  unfold output4909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4909_skip : Flapjack.WordAlloc.isSkip output4909 = false := by
  rw [output4909_def]
  conv => lhs; cbv
  try rfl
theorem node4909_eq : Flapjack.WordAlloc.removeDeadStructural input4909 value2459 value1 value2 = (output4909, value2460, value1) := by
  rw [input4909_def, output4909_def]
  try (conv => lhs; cbv)
  try rfl

def value2461 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20169 20165 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4910_def : input4910 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20169 20165 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20169 20165 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4910_def : output4910 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20169 20165 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4910_skip : Flapjack.WordAlloc.isSkip output4910 = false := by
  rw [output4910_def]
  conv => lhs; cbv
  try rfl
theorem node4910_eq : Flapjack.WordAlloc.removeDeadStructural input4910 value2460 value1 value2 = (output4910, value2461, value1) := by
  rw [input4910_def, output4910_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20165 Flapjack.WordStore.heapLength)).val
theorem input4911_def : input4911 = (Flapjack.WordLangProgHOL.get 20165 Flapjack.WordStore.heapLength) := by
  unfold input4911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20165 Flapjack.WordStore.heapLength)).val
theorem output4911_def : output4911 = (Flapjack.WordLangProgHOL.get 20165 Flapjack.WordStore.heapLength) := by
  unfold output4911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4911_skip : Flapjack.WordAlloc.isSkip output4911 = false := by
  rw [output4911_def]
  conv => lhs; cbv
  try rfl
theorem node4911_eq : Flapjack.WordAlloc.removeDeadStructural input4911 value2461 value1 value2 = (output4911, value5, value1) := by
  rw [input4911_def, output4911_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4911 input4910)).val
theorem input4912_def : input4912 = (.seq input4911 input4910) := by
  unfold input4912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4911 output4910)).val
theorem output4912_def : output4912 = (.seq output4911 output4910) := by
  unfold output4912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4912_skip : Flapjack.WordAlloc.isSkip output4912 = false := by
  rw [output4912_def]
  conv => lhs; cbv
  try rfl
theorem node4912_eq : Flapjack.WordAlloc.removeDeadStructural input4912 value2460 value1 value2 = (output4912, value5, value1) := by
  rw [input4912_def, output4912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4910_eq]
  dsimp only
  rw [node4911_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4912 input4909)).val
theorem input4913_def : input4913 = (.seq input4912 input4909) := by
  unfold input4913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4912 output4909)).val
theorem output4913_def : output4913 = (.seq output4912 output4909) := by
  unfold output4913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4913_skip : Flapjack.WordAlloc.isSkip output4913 = false := by
  rw [output4913_def]
  conv => lhs; cbv
  try rfl
theorem node4913_eq : Flapjack.WordAlloc.removeDeadStructural input4913 value2459 value1 value2 = (output4913, value5, value1) := by
  rw [input4913_def, output4913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4909_eq]
  dsimp only
  rw [node4912_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4913 input4908)).val
theorem input4914_def : input4914 = (.seq input4913 input4908) := by
  unfold input4914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4913 output4908)).val
theorem output4914_def : output4914 = (.seq output4913 output4908) := by
  unfold output4914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4914_skip : Flapjack.WordAlloc.isSkip output4914 = false := by
  rw [output4914_def]
  conv => lhs; cbv
  try rfl
theorem node4914_eq : Flapjack.WordAlloc.removeDeadStructural input4914 value2458 value1 value2 = (output4914, value5, value1) := by
  rw [input4914_def, output4914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4908_eq]
  dsimp only
  rw [node4913_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4914 input4907)).val
theorem input4915_def : input4915 = (.seq input4914 input4907) := by
  unfold input4915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4914 output4907)).val
theorem output4915_def : output4915 = (.seq output4914 output4907) := by
  unfold output4915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4915_skip : Flapjack.WordAlloc.isSkip output4915 = false := by
  rw [output4915_def]
  conv => lhs; cbv
  try rfl
theorem node4915_eq : Flapjack.WordAlloc.removeDeadStructural input4915 value2456 value1 value2 = (output4915, value5, value1) := by
  rw [input4915_def, output4915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4907_eq]
  dsimp only
  rw [node4914_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2462 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20157 (Flapjack.WordLangAddr.addr 20161 0#64)))).val
theorem input4916_def : input4916 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20157 (Flapjack.WordLangAddr.addr 20161 0#64))) := by
  unfold input4916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20157 (Flapjack.WordLangAddr.addr 20161 0#64)))).val
theorem output4916_def : output4916 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20157 (Flapjack.WordLangAddr.addr 20161 0#64))) := by
  unfold output4916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4916_skip : Flapjack.WordAlloc.isSkip output4916 = false := by
  rw [output4916_def]
  conv => lhs; cbv
  try rfl
theorem node4916_eq : Flapjack.WordAlloc.removeDeadStructural input4916 value5 value1 value2 = (output4916, value2462, value1) := by
  rw [input4916_def, output4916_def]
  try (conv => lhs; cbv)
  try rfl

def value2463 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20161, 20149)])).val
theorem input4917_def : input4917 = (Flapjack.WordLangProgHOL.move 0 [(20161, 20149)]) := by
  unfold input4917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20161, 20149)])).val
theorem output4917_def : output4917 = (Flapjack.WordLangProgHOL.move 0 [(20161, 20149)]) := by
  unfold output4917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4917_skip : Flapjack.WordAlloc.isSkip output4917 = false := by
  rw [output4917_def]
  conv => lhs; cbv
  try rfl
theorem node4917_eq : Flapjack.WordAlloc.removeDeadStructural input4917 value2462 value1 value2 = (output4917, value2463, value1) := by
  rw [input4917_def, output4917_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4917 input4916)).val
theorem input4918_def : input4918 = (.seq input4917 input4916) := by
  unfold input4918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4917 output4916)).val
theorem output4918_def : output4918 = (.seq output4917 output4916) := by
  unfold output4918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4918_skip : Flapjack.WordAlloc.isSkip output4918 = false := by
  rw [output4918_def]
  conv => lhs; cbv
  try rfl
theorem node4918_eq : Flapjack.WordAlloc.removeDeadStructural input4918 value5 value1 value2 = (output4918, value2463, value1) := by
  rw [input4918_def, output4918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4916_eq]
  dsimp only
  rw [node4917_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2464 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20157 0#64))).val
theorem input4919_def : input4919 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20157 0#64)) := by
  unfold input4919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20157 0#64))).val
theorem output4919_def : output4919 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20157 0#64)) := by
  unfold output4919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4919_skip : Flapjack.WordAlloc.isSkip output4919 = false := by
  rw [output4919_def]
  conv => lhs; cbv
  try rfl
theorem node4919_eq : Flapjack.WordAlloc.removeDeadStructural input4919 value2463 value1 value2 = (output4919, value2464, value1) := by
  rw [input4919_def, output4919_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20153 0#64))).val
theorem input4920_def : input4920 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20153 0#64)) := by
  unfold input4920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4920_def : output4920 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4920_skip : Flapjack.WordAlloc.isSkip output4920 = true := by
  rw [output4920_def]
  conv => lhs; cbv
  try rfl
theorem node4920_eq : Flapjack.WordAlloc.removeDeadStructural input4920 value2464 value1 value2 = (output4920, value2464, value1) := by
  rw [input4920_def, output4920_def]
  try (conv => lhs; cbv)
  try rfl

def value2465 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20149 20141 (Flapjack.WordRegImm.reg 20145))))).val
theorem input4921_def : input4921 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20149 20141 (Flapjack.WordRegImm.reg 20145)))) := by
  unfold input4921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20149 20141 (Flapjack.WordRegImm.reg 20145))))).val
theorem output4921_def : output4921 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20149 20141 (Flapjack.WordRegImm.reg 20145)))) := by
  unfold output4921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4921_skip : Flapjack.WordAlloc.isSkip output4921 = false := by
  rw [output4921_def]
  conv => lhs; cbv
  try rfl
theorem node4921_eq : Flapjack.WordAlloc.removeDeadStructural input4921 value2464 value1 value2 = (output4921, value2465, value1) := by
  rw [input4921_def, output4921_def]
  try (conv => lhs; cbv)
  try rfl

def value2466 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20145 4672#64))).val
theorem input4922_def : input4922 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20145 4672#64)) := by
  unfold input4922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20145 4672#64))).val
theorem output4922_def : output4922 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20145 4672#64)) := by
  unfold output4922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4922_skip : Flapjack.WordAlloc.isSkip output4922 = false := by
  rw [output4922_def]
  conv => lhs; cbv
  try rfl
theorem node4922_eq : Flapjack.WordAlloc.removeDeadStructural input4922 value2465 value1 value2 = (output4922, value2466, value1) := by
  rw [input4922_def, output4922_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4922 input4921)).val
theorem input4923_def : input4923 = (.seq input4922 input4921) := by
  unfold input4923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4922 output4921)).val
theorem output4923_def : output4923 = (.seq output4922 output4921) := by
  unfold output4923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4923_skip : Flapjack.WordAlloc.isSkip output4923 = false := by
  rw [output4923_def]
  conv => lhs; cbv
  try rfl
theorem node4923_eq : Flapjack.WordAlloc.removeDeadStructural input4923 value2464 value1 value2 = (output4923, value2466, value1) := by
  rw [input4923_def, output4923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4921_eq]
  dsimp only
  rw [node4922_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2467 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20141 (Flapjack.WordLangAddr.addr 20137 18446744073709551104#64)))).val
theorem input4924_def : input4924 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20141 (Flapjack.WordLangAddr.addr 20137 18446744073709551104#64))) := by
  unfold input4924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20141 (Flapjack.WordLangAddr.addr 20137 18446744073709551104#64)))).val
theorem output4924_def : output4924 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20141 (Flapjack.WordLangAddr.addr 20137 18446744073709551104#64))) := by
  unfold output4924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4924_skip : Flapjack.WordAlloc.isSkip output4924 = false := by
  rw [output4924_def]
  conv => lhs; cbv
  try rfl
theorem node4924_eq : Flapjack.WordAlloc.removeDeadStructural input4924 value2466 value1 value2 = (output4924, value2467, value1) := by
  rw [input4924_def, output4924_def]
  try (conv => lhs; cbv)
  try rfl

def value2468 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20137 20133)).val
theorem input4925_def : input4925 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20137 20133) := by
  unfold input4925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20137 20133)).val
theorem output4925_def : output4925 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20137 20133) := by
  unfold output4925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4925_skip : Flapjack.WordAlloc.isSkip output4925 = false := by
  rw [output4925_def]
  conv => lhs; cbv
  try rfl
theorem node4925_eq : Flapjack.WordAlloc.removeDeadStructural input4925 value2467 value1 value2 = (output4925, value2468, value1) := by
  rw [input4925_def, output4925_def]
  try (conv => lhs; cbv)
  try rfl

def value2469 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20133 20129 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4926_def : input4926 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20133 20129 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20133 20129 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4926_def : output4926 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20133 20129 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4926_skip : Flapjack.WordAlloc.isSkip output4926 = false := by
  rw [output4926_def]
  conv => lhs; cbv
  try rfl
theorem node4926_eq : Flapjack.WordAlloc.removeDeadStructural input4926 value2468 value1 value2 = (output4926, value2469, value1) := by
  rw [input4926_def, output4926_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20129 Flapjack.WordStore.heapLength)).val
theorem input4927_def : input4927 = (Flapjack.WordLangProgHOL.get 20129 Flapjack.WordStore.heapLength) := by
  unfold input4927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20129 Flapjack.WordStore.heapLength)).val
theorem output4927_def : output4927 = (Flapjack.WordLangProgHOL.get 20129 Flapjack.WordStore.heapLength) := by
  unfold output4927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4927_skip : Flapjack.WordAlloc.isSkip output4927 = false := by
  rw [output4927_def]
  conv => lhs; cbv
  try rfl
theorem node4927_eq : Flapjack.WordAlloc.removeDeadStructural input4927 value2469 value1 value2 = (output4927, value5, value1) := by
  rw [input4927_def, output4927_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4927 input4926)).val
theorem input4928_def : input4928 = (.seq input4927 input4926) := by
  unfold input4928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4927 output4926)).val
theorem output4928_def : output4928 = (.seq output4927 output4926) := by
  unfold output4928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4928_skip : Flapjack.WordAlloc.isSkip output4928 = false := by
  rw [output4928_def]
  conv => lhs; cbv
  try rfl
theorem node4928_eq : Flapjack.WordAlloc.removeDeadStructural input4928 value2468 value1 value2 = (output4928, value5, value1) := by
  rw [input4928_def, output4928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4926_eq]
  dsimp only
  rw [node4927_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4928 input4925)).val
theorem input4929_def : input4929 = (.seq input4928 input4925) := by
  unfold input4929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4928 output4925)).val
theorem output4929_def : output4929 = (.seq output4928 output4925) := by
  unfold output4929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4929_skip : Flapjack.WordAlloc.isSkip output4929 = false := by
  rw [output4929_def]
  conv => lhs; cbv
  try rfl
theorem node4929_eq : Flapjack.WordAlloc.removeDeadStructural input4929 value2467 value1 value2 = (output4929, value5, value1) := by
  rw [input4929_def, output4929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4925_eq]
  dsimp only
  rw [node4928_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4929 input4924)).val
theorem input4930_def : input4930 = (.seq input4929 input4924) := by
  unfold input4930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4929 output4924)).val
theorem output4930_def : output4930 = (.seq output4929 output4924) := by
  unfold output4930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4930_skip : Flapjack.WordAlloc.isSkip output4930 = false := by
  rw [output4930_def]
  conv => lhs; cbv
  try rfl
theorem node4930_eq : Flapjack.WordAlloc.removeDeadStructural input4930 value2466 value1 value2 = (output4930, value5, value1) := by
  rw [input4930_def, output4930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4924_eq]
  dsimp only
  rw [node4929_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4930 input4923)).val
theorem input4931_def : input4931 = (.seq input4930 input4923) := by
  unfold input4931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4930 output4923)).val
theorem output4931_def : output4931 = (.seq output4930 output4923) := by
  unfold output4931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4931_skip : Flapjack.WordAlloc.isSkip output4931 = false := by
  rw [output4931_def]
  conv => lhs; cbv
  try rfl
theorem node4931_eq : Flapjack.WordAlloc.removeDeadStructural input4931 value2464 value1 value2 = (output4931, value5, value1) := by
  rw [input4931_def, output4931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4923_eq]
  dsimp only
  rw [node4930_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2470 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20121 (Flapjack.WordLangAddr.addr 20125 0#64)))).val
theorem input4932_def : input4932 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20121 (Flapjack.WordLangAddr.addr 20125 0#64))) := by
  unfold input4932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20121 (Flapjack.WordLangAddr.addr 20125 0#64)))).val
theorem output4932_def : output4932 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20121 (Flapjack.WordLangAddr.addr 20125 0#64))) := by
  unfold output4932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4932_skip : Flapjack.WordAlloc.isSkip output4932 = false := by
  rw [output4932_def]
  conv => lhs; cbv
  try rfl
theorem node4932_eq : Flapjack.WordAlloc.removeDeadStructural input4932 value5 value1 value2 = (output4932, value2470, value1) := by
  rw [input4932_def, output4932_def]
  try (conv => lhs; cbv)
  try rfl

def value2471 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20125, 20113)])).val
theorem input4933_def : input4933 = (Flapjack.WordLangProgHOL.move 0 [(20125, 20113)]) := by
  unfold input4933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20125, 20113)])).val
theorem output4933_def : output4933 = (Flapjack.WordLangProgHOL.move 0 [(20125, 20113)]) := by
  unfold output4933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4933_skip : Flapjack.WordAlloc.isSkip output4933 = false := by
  rw [output4933_def]
  conv => lhs; cbv
  try rfl
theorem node4933_eq : Flapjack.WordAlloc.removeDeadStructural input4933 value2470 value1 value2 = (output4933, value2471, value1) := by
  rw [input4933_def, output4933_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4933 input4932)).val
theorem input4934_def : input4934 = (.seq input4933 input4932) := by
  unfold input4934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4933 output4932)).val
theorem output4934_def : output4934 = (.seq output4933 output4932) := by
  unfold output4934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4934_skip : Flapjack.WordAlloc.isSkip output4934 = false := by
  rw [output4934_def]
  conv => lhs; cbv
  try rfl
theorem node4934_eq : Flapjack.WordAlloc.removeDeadStructural input4934 value5 value1 value2 = (output4934, value2471, value1) := by
  rw [input4934_def, output4934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4932_eq]
  dsimp only
  rw [node4933_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2472 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20121 0#64))).val
theorem input4935_def : input4935 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20121 0#64)) := by
  unfold input4935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20121 0#64))).val
theorem output4935_def : output4935 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20121 0#64)) := by
  unfold output4935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4935_skip : Flapjack.WordAlloc.isSkip output4935 = false := by
  rw [output4935_def]
  conv => lhs; cbv
  try rfl
theorem node4935_eq : Flapjack.WordAlloc.removeDeadStructural input4935 value2471 value1 value2 = (output4935, value2472, value1) := by
  rw [input4935_def, output4935_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20117 0#64))).val
theorem input4936_def : input4936 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20117 0#64)) := by
  unfold input4936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4936_def : output4936 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4936_skip : Flapjack.WordAlloc.isSkip output4936 = true := by
  rw [output4936_def]
  conv => lhs; cbv
  try rfl
theorem node4936_eq : Flapjack.WordAlloc.removeDeadStructural input4936 value2472 value1 value2 = (output4936, value2472, value1) := by
  rw [input4936_def, output4936_def]
  try (conv => lhs; cbv)
  try rfl

def value2473 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20113 20105 (Flapjack.WordRegImm.reg 20109))))).val
theorem input4937_def : input4937 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20113 20105 (Flapjack.WordRegImm.reg 20109)))) := by
  unfold input4937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20113 20105 (Flapjack.WordRegImm.reg 20109))))).val
theorem output4937_def : output4937 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20113 20105 (Flapjack.WordRegImm.reg 20109)))) := by
  unfold output4937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4937_skip : Flapjack.WordAlloc.isSkip output4937 = false := by
  rw [output4937_def]
  conv => lhs; cbv
  try rfl
theorem node4937_eq : Flapjack.WordAlloc.removeDeadStructural input4937 value2472 value1 value2 = (output4937, value2473, value1) := by
  rw [input4937_def, output4937_def]
  try (conv => lhs; cbv)
  try rfl

def value2474 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20109 4664#64))).val
theorem input4938_def : input4938 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20109 4664#64)) := by
  unfold input4938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20109 4664#64))).val
theorem output4938_def : output4938 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20109 4664#64)) := by
  unfold output4938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4938_skip : Flapjack.WordAlloc.isSkip output4938 = false := by
  rw [output4938_def]
  conv => lhs; cbv
  try rfl
theorem node4938_eq : Flapjack.WordAlloc.removeDeadStructural input4938 value2473 value1 value2 = (output4938, value2474, value1) := by
  rw [input4938_def, output4938_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4938 input4937)).val
theorem input4939_def : input4939 = (.seq input4938 input4937) := by
  unfold input4939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4938 output4937)).val
theorem output4939_def : output4939 = (.seq output4938 output4937) := by
  unfold output4939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4939_skip : Flapjack.WordAlloc.isSkip output4939 = false := by
  rw [output4939_def]
  conv => lhs; cbv
  try rfl
theorem node4939_eq : Flapjack.WordAlloc.removeDeadStructural input4939 value2472 value1 value2 = (output4939, value2474, value1) := by
  rw [input4939_def, output4939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4937_eq]
  dsimp only
  rw [node4938_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2475 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20105 (Flapjack.WordLangAddr.addr 20101 18446744073709551104#64)))).val
theorem input4940_def : input4940 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20105 (Flapjack.WordLangAddr.addr 20101 18446744073709551104#64))) := by
  unfold input4940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20105 (Flapjack.WordLangAddr.addr 20101 18446744073709551104#64)))).val
theorem output4940_def : output4940 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20105 (Flapjack.WordLangAddr.addr 20101 18446744073709551104#64))) := by
  unfold output4940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4940_skip : Flapjack.WordAlloc.isSkip output4940 = false := by
  rw [output4940_def]
  conv => lhs; cbv
  try rfl
theorem node4940_eq : Flapjack.WordAlloc.removeDeadStructural input4940 value2474 value1 value2 = (output4940, value2475, value1) := by
  rw [input4940_def, output4940_def]
  try (conv => lhs; cbv)
  try rfl

def value2476 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20101 20097)).val
theorem input4941_def : input4941 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20101 20097) := by
  unfold input4941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20101 20097)).val
theorem output4941_def : output4941 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20101 20097) := by
  unfold output4941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4941_skip : Flapjack.WordAlloc.isSkip output4941 = false := by
  rw [output4941_def]
  conv => lhs; cbv
  try rfl
theorem node4941_eq : Flapjack.WordAlloc.removeDeadStructural input4941 value2475 value1 value2 = (output4941, value2476, value1) := by
  rw [input4941_def, output4941_def]
  try (conv => lhs; cbv)
  try rfl

def value2477 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20097 20093 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4942_def : input4942 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20097 20093 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20097 20093 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4942_def : output4942 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20097 20093 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4942_skip : Flapjack.WordAlloc.isSkip output4942 = false := by
  rw [output4942_def]
  conv => lhs; cbv
  try rfl
theorem node4942_eq : Flapjack.WordAlloc.removeDeadStructural input4942 value2476 value1 value2 = (output4942, value2477, value1) := by
  rw [input4942_def, output4942_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20093 Flapjack.WordStore.heapLength)).val
theorem input4943_def : input4943 = (Flapjack.WordLangProgHOL.get 20093 Flapjack.WordStore.heapLength) := by
  unfold input4943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20093 Flapjack.WordStore.heapLength)).val
theorem output4943_def : output4943 = (Flapjack.WordLangProgHOL.get 20093 Flapjack.WordStore.heapLength) := by
  unfold output4943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4943_skip : Flapjack.WordAlloc.isSkip output4943 = false := by
  rw [output4943_def]
  conv => lhs; cbv
  try rfl
theorem node4943_eq : Flapjack.WordAlloc.removeDeadStructural input4943 value2477 value1 value2 = (output4943, value5, value1) := by
  rw [input4943_def, output4943_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4943 input4942)).val
theorem input4944_def : input4944 = (.seq input4943 input4942) := by
  unfold input4944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4943 output4942)).val
theorem output4944_def : output4944 = (.seq output4943 output4942) := by
  unfold output4944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4944_skip : Flapjack.WordAlloc.isSkip output4944 = false := by
  rw [output4944_def]
  conv => lhs; cbv
  try rfl
theorem node4944_eq : Flapjack.WordAlloc.removeDeadStructural input4944 value2476 value1 value2 = (output4944, value5, value1) := by
  rw [input4944_def, output4944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4942_eq]
  dsimp only
  rw [node4943_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4944 input4941)).val
theorem input4945_def : input4945 = (.seq input4944 input4941) := by
  unfold input4945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4944 output4941)).val
theorem output4945_def : output4945 = (.seq output4944 output4941) := by
  unfold output4945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4945_skip : Flapjack.WordAlloc.isSkip output4945 = false := by
  rw [output4945_def]
  conv => lhs; cbv
  try rfl
theorem node4945_eq : Flapjack.WordAlloc.removeDeadStructural input4945 value2475 value1 value2 = (output4945, value5, value1) := by
  rw [input4945_def, output4945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4941_eq]
  dsimp only
  rw [node4944_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4945 input4940)).val
theorem input4946_def : input4946 = (.seq input4945 input4940) := by
  unfold input4946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4945 output4940)).val
theorem output4946_def : output4946 = (.seq output4945 output4940) := by
  unfold output4946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4946_skip : Flapjack.WordAlloc.isSkip output4946 = false := by
  rw [output4946_def]
  conv => lhs; cbv
  try rfl
theorem node4946_eq : Flapjack.WordAlloc.removeDeadStructural input4946 value2474 value1 value2 = (output4946, value5, value1) := by
  rw [input4946_def, output4946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4940_eq]
  dsimp only
  rw [node4945_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4946 input4939)).val
theorem input4947_def : input4947 = (.seq input4946 input4939) := by
  unfold input4947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4946 output4939)).val
theorem output4947_def : output4947 = (.seq output4946 output4939) := by
  unfold output4947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4947_skip : Flapjack.WordAlloc.isSkip output4947 = false := by
  rw [output4947_def]
  conv => lhs; cbv
  try rfl
theorem node4947_eq : Flapjack.WordAlloc.removeDeadStructural input4947 value2472 value1 value2 = (output4947, value5, value1) := by
  rw [input4947_def, output4947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4939_eq]
  dsimp only
  rw [node4946_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2478 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20085 (Flapjack.WordLangAddr.addr 20089 0#64)))).val
theorem input4948_def : input4948 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20085 (Flapjack.WordLangAddr.addr 20089 0#64))) := by
  unfold input4948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20085 (Flapjack.WordLangAddr.addr 20089 0#64)))).val
theorem output4948_def : output4948 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20085 (Flapjack.WordLangAddr.addr 20089 0#64))) := by
  unfold output4948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4948_skip : Flapjack.WordAlloc.isSkip output4948 = false := by
  rw [output4948_def]
  conv => lhs; cbv
  try rfl
theorem node4948_eq : Flapjack.WordAlloc.removeDeadStructural input4948 value5 value1 value2 = (output4948, value2478, value1) := by
  rw [input4948_def, output4948_def]
  try (conv => lhs; cbv)
  try rfl

def value2479 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
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
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20089, 20077)])).val
theorem input4949_def : input4949 = (Flapjack.WordLangProgHOL.move 0 [(20089, 20077)]) := by
  unfold input4949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20089, 20077)])).val
theorem output4949_def : output4949 = (Flapjack.WordLangProgHOL.move 0 [(20089, 20077)]) := by
  unfold output4949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4949_skip : Flapjack.WordAlloc.isSkip output4949 = false := by
  rw [output4949_def]
  conv => lhs; cbv
  try rfl
theorem node4949_eq : Flapjack.WordAlloc.removeDeadStructural input4949 value2478 value1 value2 = (output4949, value2479, value1) := by
  rw [input4949_def, output4949_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4949 input4948)).val
theorem input4950_def : input4950 = (.seq input4949 input4948) := by
  unfold input4950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4949 output4948)).val
theorem output4950_def : output4950 = (.seq output4949 output4948) := by
  unfold output4950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4950_skip : Flapjack.WordAlloc.isSkip output4950 = false := by
  rw [output4950_def]
  conv => lhs; cbv
  try rfl
theorem node4950_eq : Flapjack.WordAlloc.removeDeadStructural input4950 value5 value1 value2 = (output4950, value2479, value1) := by
  rw [input4950_def, output4950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4948_eq]
  dsimp only
  rw [node4949_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2480 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20085 0#64))).val
theorem input4951_def : input4951 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20085 0#64)) := by
  unfold input4951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20085 0#64))).val
theorem output4951_def : output4951 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20085 0#64)) := by
  unfold output4951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4951_skip : Flapjack.WordAlloc.isSkip output4951 = false := by
  rw [output4951_def]
  conv => lhs; cbv
  try rfl
theorem node4951_eq : Flapjack.WordAlloc.removeDeadStructural input4951 value2479 value1 value2 = (output4951, value2480, value1) := by
  rw [input4951_def, output4951_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20081 0#64))).val
theorem input4952_def : input4952 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20081 0#64)) := by
  unfold input4952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4952_def : output4952 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4952_skip : Flapjack.WordAlloc.isSkip output4952 = true := by
  rw [output4952_def]
  conv => lhs; cbv
  try rfl
theorem node4952_eq : Flapjack.WordAlloc.removeDeadStructural input4952 value2480 value1 value2 = (output4952, value2480, value1) := by
  rw [input4952_def, output4952_def]
  try (conv => lhs; cbv)
  try rfl

def value2481 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20077 20069 (Flapjack.WordRegImm.reg 20073))))).val
theorem input4953_def : input4953 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20077 20069 (Flapjack.WordRegImm.reg 20073)))) := by
  unfold input4953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20077 20069 (Flapjack.WordRegImm.reg 20073))))).val
theorem output4953_def : output4953 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20077 20069 (Flapjack.WordRegImm.reg 20073)))) := by
  unfold output4953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4953_skip : Flapjack.WordAlloc.isSkip output4953 = false := by
  rw [output4953_def]
  conv => lhs; cbv
  try rfl
theorem node4953_eq : Flapjack.WordAlloc.removeDeadStructural input4953 value2480 value1 value2 = (output4953, value2481, value1) := by
  rw [input4953_def, output4953_def]
  try (conv => lhs; cbv)
  try rfl

def value2482 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20073 4656#64))).val
theorem input4954_def : input4954 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20073 4656#64)) := by
  unfold input4954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20073 4656#64))).val
theorem output4954_def : output4954 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20073 4656#64)) := by
  unfold output4954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4954_skip : Flapjack.WordAlloc.isSkip output4954 = false := by
  rw [output4954_def]
  conv => lhs; cbv
  try rfl
theorem node4954_eq : Flapjack.WordAlloc.removeDeadStructural input4954 value2481 value1 value2 = (output4954, value2482, value1) := by
  rw [input4954_def, output4954_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4954 input4953)).val
theorem input4955_def : input4955 = (.seq input4954 input4953) := by
  unfold input4955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4954 output4953)).val
theorem output4955_def : output4955 = (.seq output4954 output4953) := by
  unfold output4955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4955_skip : Flapjack.WordAlloc.isSkip output4955 = false := by
  rw [output4955_def]
  conv => lhs; cbv
  try rfl
theorem node4955_eq : Flapjack.WordAlloc.removeDeadStructural input4955 value2480 value1 value2 = (output4955, value2482, value1) := by
  rw [input4955_def, output4955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4953_eq]
  dsimp only
  rw [node4954_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2483 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20069 (Flapjack.WordLangAddr.addr 20065 18446744073709551104#64)))).val
theorem input4956_def : input4956 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20069 (Flapjack.WordLangAddr.addr 20065 18446744073709551104#64))) := by
  unfold input4956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20069 (Flapjack.WordLangAddr.addr 20065 18446744073709551104#64)))).val
theorem output4956_def : output4956 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20069 (Flapjack.WordLangAddr.addr 20065 18446744073709551104#64))) := by
  unfold output4956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4956_skip : Flapjack.WordAlloc.isSkip output4956 = false := by
  rw [output4956_def]
  conv => lhs; cbv
  try rfl
theorem node4956_eq : Flapjack.WordAlloc.removeDeadStructural input4956 value2482 value1 value2 = (output4956, value2483, value1) := by
  rw [input4956_def, output4956_def]
  try (conv => lhs; cbv)
  try rfl

def value2484 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20065 20061)).val
theorem input4957_def : input4957 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20065 20061) := by
  unfold input4957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20065 20061)).val
theorem output4957_def : output4957 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20065 20061) := by
  unfold output4957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4957_skip : Flapjack.WordAlloc.isSkip output4957 = false := by
  rw [output4957_def]
  conv => lhs; cbv
  try rfl
theorem node4957_eq : Flapjack.WordAlloc.removeDeadStructural input4957 value2483 value1 value2 = (output4957, value2484, value1) := by
  rw [input4957_def, output4957_def]
  try (conv => lhs; cbv)
  try rfl

def value2485 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20061 20057 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4958_def : input4958 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20061 20057 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20061 20057 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4958_def : output4958 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20061 20057 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4958_skip : Flapjack.WordAlloc.isSkip output4958 = false := by
  rw [output4958_def]
  conv => lhs; cbv
  try rfl
theorem node4958_eq : Flapjack.WordAlloc.removeDeadStructural input4958 value2484 value1 value2 = (output4958, value2485, value1) := by
  rw [input4958_def, output4958_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20057 Flapjack.WordStore.heapLength)).val
theorem input4959_def : input4959 = (Flapjack.WordLangProgHOL.get 20057 Flapjack.WordStore.heapLength) := by
  unfold input4959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20057 Flapjack.WordStore.heapLength)).val
theorem output4959_def : output4959 = (Flapjack.WordLangProgHOL.get 20057 Flapjack.WordStore.heapLength) := by
  unfold output4959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4959_skip : Flapjack.WordAlloc.isSkip output4959 = false := by
  rw [output4959_def]
  conv => lhs; cbv
  try rfl
theorem node4959_eq : Flapjack.WordAlloc.removeDeadStructural input4959 value2485 value1 value2 = (output4959, value5, value1) := by
  rw [input4959_def, output4959_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4959 input4958)).val
theorem input4960_def : input4960 = (.seq input4959 input4958) := by
  unfold input4960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4959 output4958)).val
theorem output4960_def : output4960 = (.seq output4959 output4958) := by
  unfold output4960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4960_skip : Flapjack.WordAlloc.isSkip output4960 = false := by
  rw [output4960_def]
  conv => lhs; cbv
  try rfl
theorem node4960_eq : Flapjack.WordAlloc.removeDeadStructural input4960 value2484 value1 value2 = (output4960, value5, value1) := by
  rw [input4960_def, output4960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4958_eq]
  dsimp only
  rw [node4959_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4960 input4957)).val
theorem input4961_def : input4961 = (.seq input4960 input4957) := by
  unfold input4961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4960 output4957)).val
theorem output4961_def : output4961 = (.seq output4960 output4957) := by
  unfold output4961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4961_skip : Flapjack.WordAlloc.isSkip output4961 = false := by
  rw [output4961_def]
  conv => lhs; cbv
  try rfl
theorem node4961_eq : Flapjack.WordAlloc.removeDeadStructural input4961 value2483 value1 value2 = (output4961, value5, value1) := by
  rw [input4961_def, output4961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4957_eq]
  dsimp only
  rw [node4960_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4961 input4956)).val
theorem input4962_def : input4962 = (.seq input4961 input4956) := by
  unfold input4962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4961 output4956)).val
theorem output4962_def : output4962 = (.seq output4961 output4956) := by
  unfold output4962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4962_skip : Flapjack.WordAlloc.isSkip output4962 = false := by
  rw [output4962_def]
  conv => lhs; cbv
  try rfl
theorem node4962_eq : Flapjack.WordAlloc.removeDeadStructural input4962 value2482 value1 value2 = (output4962, value5, value1) := by
  rw [input4962_def, output4962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4956_eq]
  dsimp only
  rw [node4961_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4962 input4955)).val
theorem input4963_def : input4963 = (.seq input4962 input4955) := by
  unfold input4963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4962 output4955)).val
theorem output4963_def : output4963 = (.seq output4962 output4955) := by
  unfold output4963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4963_skip : Flapjack.WordAlloc.isSkip output4963 = false := by
  rw [output4963_def]
  conv => lhs; cbv
  try rfl
theorem node4963_eq : Flapjack.WordAlloc.removeDeadStructural input4963 value2480 value1 value2 = (output4963, value5, value1) := by
  rw [input4963_def, output4963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4955_eq]
  dsimp only
  rw [node4962_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2486 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20049 (Flapjack.WordLangAddr.addr 20053 0#64)))).val
theorem input4964_def : input4964 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20049 (Flapjack.WordLangAddr.addr 20053 0#64))) := by
  unfold input4964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20049 (Flapjack.WordLangAddr.addr 20053 0#64)))).val
theorem output4964_def : output4964 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20049 (Flapjack.WordLangAddr.addr 20053 0#64))) := by
  unfold output4964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4964_skip : Flapjack.WordAlloc.isSkip output4964 = false := by
  rw [output4964_def]
  conv => lhs; cbv
  try rfl
theorem node4964_eq : Flapjack.WordAlloc.removeDeadStructural input4964 value5 value1 value2 = (output4964, value2486, value1) := by
  rw [input4964_def, output4964_def]
  try (conv => lhs; cbv)
  try rfl

def value2487 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20053, 20041)])).val
theorem input4965_def : input4965 = (Flapjack.WordLangProgHOL.move 0 [(20053, 20041)]) := by
  unfold input4965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20053, 20041)])).val
theorem output4965_def : output4965 = (Flapjack.WordLangProgHOL.move 0 [(20053, 20041)]) := by
  unfold output4965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4965_skip : Flapjack.WordAlloc.isSkip output4965 = false := by
  rw [output4965_def]
  conv => lhs; cbv
  try rfl
theorem node4965_eq : Flapjack.WordAlloc.removeDeadStructural input4965 value2486 value1 value2 = (output4965, value2487, value1) := by
  rw [input4965_def, output4965_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4965 input4964)).val
theorem input4966_def : input4966 = (.seq input4965 input4964) := by
  unfold input4966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4965 output4964)).val
theorem output4966_def : output4966 = (.seq output4965 output4964) := by
  unfold output4966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4966_skip : Flapjack.WordAlloc.isSkip output4966 = false := by
  rw [output4966_def]
  conv => lhs; cbv
  try rfl
theorem node4966_eq : Flapjack.WordAlloc.removeDeadStructural input4966 value5 value1 value2 = (output4966, value2487, value1) := by
  rw [input4966_def, output4966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4964_eq]
  dsimp only
  rw [node4965_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2488 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20049 0#64))).val
theorem input4967_def : input4967 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20049 0#64)) := by
  unfold input4967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20049 0#64))).val
theorem output4967_def : output4967 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20049 0#64)) := by
  unfold output4967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4967_skip : Flapjack.WordAlloc.isSkip output4967 = false := by
  rw [output4967_def]
  conv => lhs; cbv
  try rfl
theorem node4967_eq : Flapjack.WordAlloc.removeDeadStructural input4967 value2487 value1 value2 = (output4967, value2488, value1) := by
  rw [input4967_def, output4967_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20045 0#64))).val
theorem input4968_def : input4968 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20045 0#64)) := by
  unfold input4968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4968_def : output4968 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4968_skip : Flapjack.WordAlloc.isSkip output4968 = true := by
  rw [output4968_def]
  conv => lhs; cbv
  try rfl
theorem node4968_eq : Flapjack.WordAlloc.removeDeadStructural input4968 value2488 value1 value2 = (output4968, value2488, value1) := by
  rw [input4968_def, output4968_def]
  try (conv => lhs; cbv)
  try rfl

def value2489 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20041 20033 (Flapjack.WordRegImm.reg 20037))))).val
theorem input4969_def : input4969 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20041 20033 (Flapjack.WordRegImm.reg 20037)))) := by
  unfold input4969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20041 20033 (Flapjack.WordRegImm.reg 20037))))).val
theorem output4969_def : output4969 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20041 20033 (Flapjack.WordRegImm.reg 20037)))) := by
  unfold output4969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4969_skip : Flapjack.WordAlloc.isSkip output4969 = false := by
  rw [output4969_def]
  conv => lhs; cbv
  try rfl
theorem node4969_eq : Flapjack.WordAlloc.removeDeadStructural input4969 value2488 value1 value2 = (output4969, value2489, value1) := by
  rw [input4969_def, output4969_def]
  try (conv => lhs; cbv)
  try rfl

def value2490 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20037 4648#64))).val
theorem input4970_def : input4970 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20037 4648#64)) := by
  unfold input4970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20037 4648#64))).val
theorem output4970_def : output4970 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20037 4648#64)) := by
  unfold output4970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4970_skip : Flapjack.WordAlloc.isSkip output4970 = false := by
  rw [output4970_def]
  conv => lhs; cbv
  try rfl
theorem node4970_eq : Flapjack.WordAlloc.removeDeadStructural input4970 value2489 value1 value2 = (output4970, value2490, value1) := by
  rw [input4970_def, output4970_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4970 input4969)).val
theorem input4971_def : input4971 = (.seq input4970 input4969) := by
  unfold input4971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4970 output4969)).val
theorem output4971_def : output4971 = (.seq output4970 output4969) := by
  unfold output4971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4971_skip : Flapjack.WordAlloc.isSkip output4971 = false := by
  rw [output4971_def]
  conv => lhs; cbv
  try rfl
theorem node4971_eq : Flapjack.WordAlloc.removeDeadStructural input4971 value2488 value1 value2 = (output4971, value2490, value1) := by
  rw [input4971_def, output4971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4969_eq]
  dsimp only
  rw [node4970_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2491 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20033 (Flapjack.WordLangAddr.addr 20029 18446744073709551104#64)))).val
theorem input4972_def : input4972 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20033 (Flapjack.WordLangAddr.addr 20029 18446744073709551104#64))) := by
  unfold input4972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20033 (Flapjack.WordLangAddr.addr 20029 18446744073709551104#64)))).val
theorem output4972_def : output4972 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20033 (Flapjack.WordLangAddr.addr 20029 18446744073709551104#64))) := by
  unfold output4972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4972_skip : Flapjack.WordAlloc.isSkip output4972 = false := by
  rw [output4972_def]
  conv => lhs; cbv
  try rfl
theorem node4972_eq : Flapjack.WordAlloc.removeDeadStructural input4972 value2490 value1 value2 = (output4972, value2491, value1) := by
  rw [input4972_def, output4972_def]
  try (conv => lhs; cbv)
  try rfl

def value2492 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20029 20025)).val
theorem input4973_def : input4973 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20029 20025) := by
  unfold input4973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20029 20025)).val
theorem output4973_def : output4973 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20029 20025) := by
  unfold output4973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4973_skip : Flapjack.WordAlloc.isSkip output4973 = false := by
  rw [output4973_def]
  conv => lhs; cbv
  try rfl
theorem node4973_eq : Flapjack.WordAlloc.removeDeadStructural input4973 value2491 value1 value2 = (output4973, value2492, value1) := by
  rw [input4973_def, output4973_def]
  try (conv => lhs; cbv)
  try rfl

def value2493 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20025 20021 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4974_def : input4974 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20025 20021 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20025 20021 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4974_def : output4974 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20025 20021 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4974_skip : Flapjack.WordAlloc.isSkip output4974 = false := by
  rw [output4974_def]
  conv => lhs; cbv
  try rfl
theorem node4974_eq : Flapjack.WordAlloc.removeDeadStructural input4974 value2492 value1 value2 = (output4974, value2493, value1) := by
  rw [input4974_def, output4974_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20021 Flapjack.WordStore.heapLength)).val
theorem input4975_def : input4975 = (Flapjack.WordLangProgHOL.get 20021 Flapjack.WordStore.heapLength) := by
  unfold input4975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20021 Flapjack.WordStore.heapLength)).val
theorem output4975_def : output4975 = (Flapjack.WordLangProgHOL.get 20021 Flapjack.WordStore.heapLength) := by
  unfold output4975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4975_skip : Flapjack.WordAlloc.isSkip output4975 = false := by
  rw [output4975_def]
  conv => lhs; cbv
  try rfl
theorem node4975_eq : Flapjack.WordAlloc.removeDeadStructural input4975 value2493 value1 value2 = (output4975, value5, value1) := by
  rw [input4975_def, output4975_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4975 input4974)).val
theorem input4976_def : input4976 = (.seq input4975 input4974) := by
  unfold input4976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4975 output4974)).val
theorem output4976_def : output4976 = (.seq output4975 output4974) := by
  unfold output4976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4976_skip : Flapjack.WordAlloc.isSkip output4976 = false := by
  rw [output4976_def]
  conv => lhs; cbv
  try rfl
theorem node4976_eq : Flapjack.WordAlloc.removeDeadStructural input4976 value2492 value1 value2 = (output4976, value5, value1) := by
  rw [input4976_def, output4976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4974_eq]
  dsimp only
  rw [node4975_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4976 input4973)).val
theorem input4977_def : input4977 = (.seq input4976 input4973) := by
  unfold input4977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4976 output4973)).val
theorem output4977_def : output4977 = (.seq output4976 output4973) := by
  unfold output4977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4977_skip : Flapjack.WordAlloc.isSkip output4977 = false := by
  rw [output4977_def]
  conv => lhs; cbv
  try rfl
theorem node4977_eq : Flapjack.WordAlloc.removeDeadStructural input4977 value2491 value1 value2 = (output4977, value5, value1) := by
  rw [input4977_def, output4977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4973_eq]
  dsimp only
  rw [node4976_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4977 input4972)).val
theorem input4978_def : input4978 = (.seq input4977 input4972) := by
  unfold input4978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4977 output4972)).val
theorem output4978_def : output4978 = (.seq output4977 output4972) := by
  unfold output4978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4978_skip : Flapjack.WordAlloc.isSkip output4978 = false := by
  rw [output4978_def]
  conv => lhs; cbv
  try rfl
theorem node4978_eq : Flapjack.WordAlloc.removeDeadStructural input4978 value2490 value1 value2 = (output4978, value5, value1) := by
  rw [input4978_def, output4978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4972_eq]
  dsimp only
  rw [node4977_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4978 input4971)).val
theorem input4979_def : input4979 = (.seq input4978 input4971) := by
  unfold input4979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4978 output4971)).val
theorem output4979_def : output4979 = (.seq output4978 output4971) := by
  unfold output4979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4979_skip : Flapjack.WordAlloc.isSkip output4979 = false := by
  rw [output4979_def]
  conv => lhs; cbv
  try rfl
theorem node4979_eq : Flapjack.WordAlloc.removeDeadStructural input4979 value2488 value1 value2 = (output4979, value5, value1) := by
  rw [input4979_def, output4979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4971_eq]
  dsimp only
  rw [node4978_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2494 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20013 (Flapjack.WordLangAddr.addr 20017 0#64)))).val
theorem input4980_def : input4980 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20013 (Flapjack.WordLangAddr.addr 20017 0#64))) := by
  unfold input4980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20013 (Flapjack.WordLangAddr.addr 20017 0#64)))).val
theorem output4980_def : output4980 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20013 (Flapjack.WordLangAddr.addr 20017 0#64))) := by
  unfold output4980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4980_skip : Flapjack.WordAlloc.isSkip output4980 = false := by
  rw [output4980_def]
  conv => lhs; cbv
  try rfl
theorem node4980_eq : Flapjack.WordAlloc.removeDeadStructural input4980 value5 value1 value2 = (output4980, value2494, value1) := by
  rw [input4980_def, output4980_def]
  try (conv => lhs; cbv)
  try rfl

def value2495 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20017, 20005)])).val
theorem input4981_def : input4981 = (Flapjack.WordLangProgHOL.move 0 [(20017, 20005)]) := by
  unfold input4981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20017, 20005)])).val
theorem output4981_def : output4981 = (Flapjack.WordLangProgHOL.move 0 [(20017, 20005)]) := by
  unfold output4981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4981_skip : Flapjack.WordAlloc.isSkip output4981 = false := by
  rw [output4981_def]
  conv => lhs; cbv
  try rfl
theorem node4981_eq : Flapjack.WordAlloc.removeDeadStructural input4981 value2494 value1 value2 = (output4981, value2495, value1) := by
  rw [input4981_def, output4981_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4981 input4980)).val
theorem input4982_def : input4982 = (.seq input4981 input4980) := by
  unfold input4982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4981 output4980)).val
theorem output4982_def : output4982 = (.seq output4981 output4980) := by
  unfold output4982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4982_skip : Flapjack.WordAlloc.isSkip output4982 = false := by
  rw [output4982_def]
  conv => lhs; cbv
  try rfl
theorem node4982_eq : Flapjack.WordAlloc.removeDeadStructural input4982 value5 value1 value2 = (output4982, value2495, value1) := by
  rw [input4982_def, output4982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4980_eq]
  dsimp only
  rw [node4981_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2496 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20013 1012#64))).val
theorem input4983_def : input4983 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20013 1012#64)) := by
  unfold input4983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20013 1012#64))).val
theorem output4983_def : output4983 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20013 1012#64)) := by
  unfold output4983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4983_skip : Flapjack.WordAlloc.isSkip output4983 = false := by
  rw [output4983_def]
  conv => lhs; cbv
  try rfl
theorem node4983_eq : Flapjack.WordAlloc.removeDeadStructural input4983 value2495 value1 value2 = (output4983, value2496, value1) := by
  rw [input4983_def, output4983_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20009 1012#64))).val
theorem input4984_def : input4984 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20009 1012#64)) := by
  unfold input4984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4984_def : output4984 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4984_skip : Flapjack.WordAlloc.isSkip output4984 = true := by
  rw [output4984_def]
  conv => lhs; cbv
  try rfl
theorem node4984_eq : Flapjack.WordAlloc.removeDeadStructural input4984 value2496 value1 value2 = (output4984, value2496, value1) := by
  rw [input4984_def, output4984_def]
  try (conv => lhs; cbv)
  try rfl

def value2497 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20005 19997 (Flapjack.WordRegImm.reg 20001))))).val
theorem input4985_def : input4985 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20005 19997 (Flapjack.WordRegImm.reg 20001)))) := by
  unfold input4985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20005 19997 (Flapjack.WordRegImm.reg 20001))))).val
theorem output4985_def : output4985 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20005 19997 (Flapjack.WordRegImm.reg 20001)))) := by
  unfold output4985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4985_skip : Flapjack.WordAlloc.isSkip output4985 = false := by
  rw [output4985_def]
  conv => lhs; cbv
  try rfl
theorem node4985_eq : Flapjack.WordAlloc.removeDeadStructural input4985 value2496 value1 value2 = (output4985, value2497, value1) := by
  rw [input4985_def, output4985_def]
  try (conv => lhs; cbv)
  try rfl

def value2498 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20001 4640#64))).val
theorem input4986_def : input4986 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20001 4640#64)) := by
  unfold input4986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20001 4640#64))).val
theorem output4986_def : output4986 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20001 4640#64)) := by
  unfold output4986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4986_skip : Flapjack.WordAlloc.isSkip output4986 = false := by
  rw [output4986_def]
  conv => lhs; cbv
  try rfl
theorem node4986_eq : Flapjack.WordAlloc.removeDeadStructural input4986 value2497 value1 value2 = (output4986, value2498, value1) := by
  rw [input4986_def, output4986_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4986 input4985)).val
theorem input4987_def : input4987 = (.seq input4986 input4985) := by
  unfold input4987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4986 output4985)).val
theorem output4987_def : output4987 = (.seq output4986 output4985) := by
  unfold output4987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4987_skip : Flapjack.WordAlloc.isSkip output4987 = false := by
  rw [output4987_def]
  conv => lhs; cbv
  try rfl
theorem node4987_eq : Flapjack.WordAlloc.removeDeadStructural input4987 value2496 value1 value2 = (output4987, value2498, value1) := by
  rw [input4987_def, output4987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4985_eq]
  dsimp only
  rw [node4986_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2499 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19997 (Flapjack.WordLangAddr.addr 19993 18446744073709551104#64)))).val
theorem input4988_def : input4988 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19997 (Flapjack.WordLangAddr.addr 19993 18446744073709551104#64))) := by
  unfold input4988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19997 (Flapjack.WordLangAddr.addr 19993 18446744073709551104#64)))).val
theorem output4988_def : output4988 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19997 (Flapjack.WordLangAddr.addr 19993 18446744073709551104#64))) := by
  unfold output4988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4988_skip : Flapjack.WordAlloc.isSkip output4988 = false := by
  rw [output4988_def]
  conv => lhs; cbv
  try rfl
theorem node4988_eq : Flapjack.WordAlloc.removeDeadStructural input4988 value2498 value1 value2 = (output4988, value2499, value1) := by
  rw [input4988_def, output4988_def]
  try (conv => lhs; cbv)
  try rfl

def value2500 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19993 19989)).val
theorem input4989_def : input4989 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19993 19989) := by
  unfold input4989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19993 19989)).val
theorem output4989_def : output4989 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19993 19989) := by
  unfold output4989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4989_skip : Flapjack.WordAlloc.isSkip output4989 = false := by
  rw [output4989_def]
  conv => lhs; cbv
  try rfl
theorem node4989_eq : Flapjack.WordAlloc.removeDeadStructural input4989 value2499 value1 value2 = (output4989, value2500, value1) := by
  rw [input4989_def, output4989_def]
  try (conv => lhs; cbv)
  try rfl

def value2501 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19989 19985 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4990_def : input4990 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19989 19985 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19989 19985 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4990_def : output4990 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19989 19985 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4990_skip : Flapjack.WordAlloc.isSkip output4990 = false := by
  rw [output4990_def]
  conv => lhs; cbv
  try rfl
theorem node4990_eq : Flapjack.WordAlloc.removeDeadStructural input4990 value2500 value1 value2 = (output4990, value2501, value1) := by
  rw [input4990_def, output4990_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19985 Flapjack.WordStore.heapLength)).val
theorem input4991_def : input4991 = (Flapjack.WordLangProgHOL.get 19985 Flapjack.WordStore.heapLength) := by
  unfold input4991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19985 Flapjack.WordStore.heapLength)).val
theorem output4991_def : output4991 = (Flapjack.WordLangProgHOL.get 19985 Flapjack.WordStore.heapLength) := by
  unfold output4991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4991_skip : Flapjack.WordAlloc.isSkip output4991 = false := by
  rw [output4991_def]
  conv => lhs; cbv
  try rfl
theorem node4991_eq : Flapjack.WordAlloc.removeDeadStructural input4991 value2501 value1 value2 = (output4991, value5, value1) := by
  rw [input4991_def, output4991_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4991 input4990)).val
theorem input4992_def : input4992 = (.seq input4991 input4990) := by
  unfold input4992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4991 output4990)).val
theorem output4992_def : output4992 = (.seq output4991 output4990) := by
  unfold output4992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4992_skip : Flapjack.WordAlloc.isSkip output4992 = false := by
  rw [output4992_def]
  conv => lhs; cbv
  try rfl
theorem node4992_eq : Flapjack.WordAlloc.removeDeadStructural input4992 value2500 value1 value2 = (output4992, value5, value1) := by
  rw [input4992_def, output4992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4990_eq]
  dsimp only
  rw [node4991_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4992 input4989)).val
theorem input4993_def : input4993 = (.seq input4992 input4989) := by
  unfold input4993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4992 output4989)).val
theorem output4993_def : output4993 = (.seq output4992 output4989) := by
  unfold output4993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4993_skip : Flapjack.WordAlloc.isSkip output4993 = false := by
  rw [output4993_def]
  conv => lhs; cbv
  try rfl
theorem node4993_eq : Flapjack.WordAlloc.removeDeadStructural input4993 value2499 value1 value2 = (output4993, value5, value1) := by
  rw [input4993_def, output4993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4989_eq]
  dsimp only
  rw [node4992_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4993 input4988)).val
theorem input4994_def : input4994 = (.seq input4993 input4988) := by
  unfold input4994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4993 output4988)).val
theorem output4994_def : output4994 = (.seq output4993 output4988) := by
  unfold output4994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4994_skip : Flapjack.WordAlloc.isSkip output4994 = false := by
  rw [output4994_def]
  conv => lhs; cbv
  try rfl
theorem node4994_eq : Flapjack.WordAlloc.removeDeadStructural input4994 value2498 value1 value2 = (output4994, value5, value1) := by
  rw [input4994_def, output4994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4988_eq]
  dsimp only
  rw [node4993_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4994 input4987)).val
theorem input4995_def : input4995 = (.seq input4994 input4987) := by
  unfold input4995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4994 output4987)).val
theorem output4995_def : output4995 = (.seq output4994 output4987) := by
  unfold output4995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4995_skip : Flapjack.WordAlloc.isSkip output4995 = false := by
  rw [output4995_def]
  conv => lhs; cbv
  try rfl
theorem node4995_eq : Flapjack.WordAlloc.removeDeadStructural input4995 value2496 value1 value2 = (output4995, value5, value1) := by
  rw [input4995_def, output4995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4987_eq]
  dsimp only
  rw [node4994_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2502 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19977 (Flapjack.WordLangAddr.addr 19981 0#64)))).val
theorem input4996_def : input4996 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19977 (Flapjack.WordLangAddr.addr 19981 0#64))) := by
  unfold input4996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19977 (Flapjack.WordLangAddr.addr 19981 0#64)))).val
theorem output4996_def : output4996 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19977 (Flapjack.WordLangAddr.addr 19981 0#64))) := by
  unfold output4996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4996_skip : Flapjack.WordAlloc.isSkip output4996 = false := by
  rw [output4996_def]
  conv => lhs; cbv
  try rfl
theorem node4996_eq : Flapjack.WordAlloc.removeDeadStructural input4996 value5 value1 value2 = (output4996, value2502, value1) := by
  rw [input4996_def, output4996_def]
  try (conv => lhs; cbv)
  try rfl

def value2503 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19981, 19969)])).val
theorem input4997_def : input4997 = (Flapjack.WordLangProgHOL.move 0 [(19981, 19969)]) := by
  unfold input4997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19981, 19969)])).val
theorem output4997_def : output4997 = (Flapjack.WordLangProgHOL.move 0 [(19981, 19969)]) := by
  unfold output4997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4997_skip : Flapjack.WordAlloc.isSkip output4997 = false := by
  rw [output4997_def]
  conv => lhs; cbv
  try rfl
theorem node4997_eq : Flapjack.WordAlloc.removeDeadStructural input4997 value2502 value1 value2 = (output4997, value2503, value1) := by
  rw [input4997_def, output4997_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4997 input4996)).val
theorem input4998_def : input4998 = (.seq input4997 input4996) := by
  unfold input4998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4997 output4996)).val
theorem output4998_def : output4998 = (.seq output4997 output4996) := by
  unfold output4998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4998_skip : Flapjack.WordAlloc.isSkip output4998 = false := by
  rw [output4998_def]
  conv => lhs; cbv
  try rfl
theorem node4998_eq : Flapjack.WordAlloc.removeDeadStructural input4998 value5 value1 value2 = (output4998, value2503, value1) := by
  rw [input4998_def, output4998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4996_eq]
  dsimp only
  rw [node4997_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2504 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19977 0#64))).val
theorem input4999_def : input4999 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19977 0#64)) := by
  unfold input4999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19977 0#64))).val
theorem output4999_def : output4999 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19977 0#64)) := by
  unfold output4999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4999_skip : Flapjack.WordAlloc.isSkip output4999 = false := by
  rw [output4999_def]
  conv => lhs; cbv
  try rfl
theorem node4999_eq : Flapjack.WordAlloc.removeDeadStructural input4999 value2503 value1 value2 = (output4999, value2504, value1) := by
  rw [input4999_def, output4999_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19973 0#64))).val
theorem input5000_def : input5000 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19973 0#64)) := by
  unfold input5000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5000_def : output5000 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5000_skip : Flapjack.WordAlloc.isSkip output5000 = true := by
  rw [output5000_def]
  conv => lhs; cbv
  try rfl
theorem node5000_eq : Flapjack.WordAlloc.removeDeadStructural input5000 value2504 value1 value2 = (output5000, value2504, value1) := by
  rw [input5000_def, output5000_def]
  try (conv => lhs; cbv)
  try rfl

def value2505 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19969 19961 (Flapjack.WordRegImm.reg 19965))))).val
theorem input5001_def : input5001 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19969 19961 (Flapjack.WordRegImm.reg 19965)))) := by
  unfold input5001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19969 19961 (Flapjack.WordRegImm.reg 19965))))).val
theorem output5001_def : output5001 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19969 19961 (Flapjack.WordRegImm.reg 19965)))) := by
  unfold output5001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5001_skip : Flapjack.WordAlloc.isSkip output5001 = false := by
  rw [output5001_def]
  conv => lhs; cbv
  try rfl
theorem node5001_eq : Flapjack.WordAlloc.removeDeadStructural input5001 value2504 value1 value2 = (output5001, value2505, value1) := by
  rw [input5001_def, output5001_def]
  try (conv => lhs; cbv)
  try rfl

def value2506 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19965 4632#64))).val
theorem input5002_def : input5002 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19965 4632#64)) := by
  unfold input5002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19965 4632#64))).val
theorem output5002_def : output5002 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19965 4632#64)) := by
  unfold output5002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5002_skip : Flapjack.WordAlloc.isSkip output5002 = false := by
  rw [output5002_def]
  conv => lhs; cbv
  try rfl
theorem node5002_eq : Flapjack.WordAlloc.removeDeadStructural input5002 value2505 value1 value2 = (output5002, value2506, value1) := by
  rw [input5002_def, output5002_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5002 input5001)).val
theorem input5003_def : input5003 = (.seq input5002 input5001) := by
  unfold input5003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5002 output5001)).val
theorem output5003_def : output5003 = (.seq output5002 output5001) := by
  unfold output5003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5003_skip : Flapjack.WordAlloc.isSkip output5003 = false := by
  rw [output5003_def]
  conv => lhs; cbv
  try rfl
theorem node5003_eq : Flapjack.WordAlloc.removeDeadStructural input5003 value2504 value1 value2 = (output5003, value2506, value1) := by
  rw [input5003_def, output5003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5001_eq]
  dsimp only
  rw [node5002_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2507 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19961 (Flapjack.WordLangAddr.addr 19957 18446744073709551104#64)))).val
theorem input5004_def : input5004 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19961 (Flapjack.WordLangAddr.addr 19957 18446744073709551104#64))) := by
  unfold input5004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19961 (Flapjack.WordLangAddr.addr 19957 18446744073709551104#64)))).val
theorem output5004_def : output5004 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19961 (Flapjack.WordLangAddr.addr 19957 18446744073709551104#64))) := by
  unfold output5004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5004_skip : Flapjack.WordAlloc.isSkip output5004 = false := by
  rw [output5004_def]
  conv => lhs; cbv
  try rfl
theorem node5004_eq : Flapjack.WordAlloc.removeDeadStructural input5004 value2506 value1 value2 = (output5004, value2507, value1) := by
  rw [input5004_def, output5004_def]
  try (conv => lhs; cbv)
  try rfl

def value2508 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19957 19953)).val
theorem input5005_def : input5005 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19957 19953) := by
  unfold input5005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19957 19953)).val
theorem output5005_def : output5005 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19957 19953) := by
  unfold output5005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5005_skip : Flapjack.WordAlloc.isSkip output5005 = false := by
  rw [output5005_def]
  conv => lhs; cbv
  try rfl
theorem node5005_eq : Flapjack.WordAlloc.removeDeadStructural input5005 value2507 value1 value2 = (output5005, value2508, value1) := by
  rw [input5005_def, output5005_def]
  try (conv => lhs; cbv)
  try rfl

def value2509 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19953 19949 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5006_def : input5006 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19953 19949 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19953 19949 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5006_def : output5006 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19953 19949 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5006_skip : Flapjack.WordAlloc.isSkip output5006 = false := by
  rw [output5006_def]
  conv => lhs; cbv
  try rfl
theorem node5006_eq : Flapjack.WordAlloc.removeDeadStructural input5006 value2508 value1 value2 = (output5006, value2509, value1) := by
  rw [input5006_def, output5006_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19949 Flapjack.WordStore.heapLength)).val
theorem input5007_def : input5007 = (Flapjack.WordLangProgHOL.get 19949 Flapjack.WordStore.heapLength) := by
  unfold input5007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19949 Flapjack.WordStore.heapLength)).val
theorem output5007_def : output5007 = (Flapjack.WordLangProgHOL.get 19949 Flapjack.WordStore.heapLength) := by
  unfold output5007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5007_skip : Flapjack.WordAlloc.isSkip output5007 = false := by
  rw [output5007_def]
  conv => lhs; cbv
  try rfl
theorem node5007_eq : Flapjack.WordAlloc.removeDeadStructural input5007 value2509 value1 value2 = (output5007, value5, value1) := by
  rw [input5007_def, output5007_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5007 input5006)).val
theorem input5008_def : input5008 = (.seq input5007 input5006) := by
  unfold input5008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5007 output5006)).val
theorem output5008_def : output5008 = (.seq output5007 output5006) := by
  unfold output5008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5008_skip : Flapjack.WordAlloc.isSkip output5008 = false := by
  rw [output5008_def]
  conv => lhs; cbv
  try rfl
theorem node5008_eq : Flapjack.WordAlloc.removeDeadStructural input5008 value2508 value1 value2 = (output5008, value5, value1) := by
  rw [input5008_def, output5008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5006_eq]
  dsimp only
  rw [node5007_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5008 input5005)).val
theorem input5009_def : input5009 = (.seq input5008 input5005) := by
  unfold input5009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5008 output5005)).val
theorem output5009_def : output5009 = (.seq output5008 output5005) := by
  unfold output5009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5009_skip : Flapjack.WordAlloc.isSkip output5009 = false := by
  rw [output5009_def]
  conv => lhs; cbv
  try rfl
theorem node5009_eq : Flapjack.WordAlloc.removeDeadStructural input5009 value2507 value1 value2 = (output5009, value5, value1) := by
  rw [input5009_def, output5009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5005_eq]
  dsimp only
  rw [node5008_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5009 input5004)).val
theorem input5010_def : input5010 = (.seq input5009 input5004) := by
  unfold input5010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5009 output5004)).val
theorem output5010_def : output5010 = (.seq output5009 output5004) := by
  unfold output5010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5010_skip : Flapjack.WordAlloc.isSkip output5010 = false := by
  rw [output5010_def]
  conv => lhs; cbv
  try rfl
theorem node5010_eq : Flapjack.WordAlloc.removeDeadStructural input5010 value2506 value1 value2 = (output5010, value5, value1) := by
  rw [input5010_def, output5010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5004_eq]
  dsimp only
  rw [node5009_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5010 input5003)).val
theorem input5011_def : input5011 = (.seq input5010 input5003) := by
  unfold input5011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5010 output5003)).val
theorem output5011_def : output5011 = (.seq output5010 output5003) := by
  unfold output5011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5011_skip : Flapjack.WordAlloc.isSkip output5011 = false := by
  rw [output5011_def]
  conv => lhs; cbv
  try rfl
theorem node5011_eq : Flapjack.WordAlloc.removeDeadStructural input5011 value2504 value1 value2 = (output5011, value5, value1) := by
  rw [input5011_def, output5011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5003_eq]
  dsimp only
  rw [node5010_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2510 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19941 (Flapjack.WordLangAddr.addr 19945 0#64)))).val
theorem input5012_def : input5012 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19941 (Flapjack.WordLangAddr.addr 19945 0#64))) := by
  unfold input5012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19941 (Flapjack.WordLangAddr.addr 19945 0#64)))).val
theorem output5012_def : output5012 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19941 (Flapjack.WordLangAddr.addr 19945 0#64))) := by
  unfold output5012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5012_skip : Flapjack.WordAlloc.isSkip output5012 = false := by
  rw [output5012_def]
  conv => lhs; cbv
  try rfl
theorem node5012_eq : Flapjack.WordAlloc.removeDeadStructural input5012 value5 value1 value2 = (output5012, value2510, value1) := by
  rw [input5012_def, output5012_def]
  try (conv => lhs; cbv)
  try rfl

def value2511 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
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
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19945, 19933)])).val
theorem input5013_def : input5013 = (Flapjack.WordLangProgHOL.move 0 [(19945, 19933)]) := by
  unfold input5013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19945, 19933)])).val
theorem output5013_def : output5013 = (Flapjack.WordLangProgHOL.move 0 [(19945, 19933)]) := by
  unfold output5013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5013_skip : Flapjack.WordAlloc.isSkip output5013 = false := by
  rw [output5013_def]
  conv => lhs; cbv
  try rfl
theorem node5013_eq : Flapjack.WordAlloc.removeDeadStructural input5013 value2510 value1 value2 = (output5013, value2511, value1) := by
  rw [input5013_def, output5013_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5013 input5012)).val
theorem input5014_def : input5014 = (.seq input5013 input5012) := by
  unfold input5014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5013 output5012)).val
theorem output5014_def : output5014 = (.seq output5013 output5012) := by
  unfold output5014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5014_skip : Flapjack.WordAlloc.isSkip output5014 = false := by
  rw [output5014_def]
  conv => lhs; cbv
  try rfl
theorem node5014_eq : Flapjack.WordAlloc.removeDeadStructural input5014 value5 value1 value2 = (output5014, value2511, value1) := by
  rw [input5014_def, output5014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5012_eq]
  dsimp only
  rw [node5013_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2512 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
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
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19941 0#64))).val
theorem input5015_def : input5015 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19941 0#64)) := by
  unfold input5015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19941 0#64))).val
theorem output5015_def : output5015 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19941 0#64)) := by
  unfold output5015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5015_skip : Flapjack.WordAlloc.isSkip output5015 = false := by
  rw [output5015_def]
  conv => lhs; cbv
  try rfl
theorem node5015_eq : Flapjack.WordAlloc.removeDeadStructural input5015 value2511 value1 value2 = (output5015, value2512, value1) := by
  rw [input5015_def, output5015_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19937 0#64))).val
theorem input5016_def : input5016 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19937 0#64)) := by
  unfold input5016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5016_def : output5016 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5016_skip : Flapjack.WordAlloc.isSkip output5016 = true := by
  rw [output5016_def]
  conv => lhs; cbv
  try rfl
theorem node5016_eq : Flapjack.WordAlloc.removeDeadStructural input5016 value2512 value1 value2 = (output5016, value2512, value1) := by
  rw [input5016_def, output5016_def]
  try (conv => lhs; cbv)
  try rfl

def value2513 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
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
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19933 19925 (Flapjack.WordRegImm.reg 19929))))).val
theorem input5017_def : input5017 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19933 19925 (Flapjack.WordRegImm.reg 19929)))) := by
  unfold input5017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19933 19925 (Flapjack.WordRegImm.reg 19929))))).val
theorem output5017_def : output5017 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19933 19925 (Flapjack.WordRegImm.reg 19929)))) := by
  unfold output5017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5017_skip : Flapjack.WordAlloc.isSkip output5017 = false := by
  rw [output5017_def]
  conv => lhs; cbv
  try rfl
theorem node5017_eq : Flapjack.WordAlloc.removeDeadStructural input5017 value2512 value1 value2 = (output5017, value2513, value1) := by
  rw [input5017_def, output5017_def]
  try (conv => lhs; cbv)
  try rfl

def value2514 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19929 4624#64))).val
theorem input5018_def : input5018 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19929 4624#64)) := by
  unfold input5018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19929 4624#64))).val
theorem output5018_def : output5018 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19929 4624#64)) := by
  unfold output5018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5018_skip : Flapjack.WordAlloc.isSkip output5018 = false := by
  rw [output5018_def]
  conv => lhs; cbv
  try rfl
theorem node5018_eq : Flapjack.WordAlloc.removeDeadStructural input5018 value2513 value1 value2 = (output5018, value2514, value1) := by
  rw [input5018_def, output5018_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5018 input5017)).val
theorem input5019_def : input5019 = (.seq input5018 input5017) := by
  unfold input5019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5018 output5017)).val
theorem output5019_def : output5019 = (.seq output5018 output5017) := by
  unfold output5019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5019_skip : Flapjack.WordAlloc.isSkip output5019 = false := by
  rw [output5019_def]
  conv => lhs; cbv
  try rfl
theorem node5019_eq : Flapjack.WordAlloc.removeDeadStructural input5019 value2512 value1 value2 = (output5019, value2514, value1) := by
  rw [input5019_def, output5019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5017_eq]
  dsimp only
  rw [node5018_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2515 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
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
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19925 (Flapjack.WordLangAddr.addr 19921 18446744073709551104#64)))).val
theorem input5020_def : input5020 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19925 (Flapjack.WordLangAddr.addr 19921 18446744073709551104#64))) := by
  unfold input5020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19925 (Flapjack.WordLangAddr.addr 19921 18446744073709551104#64)))).val
theorem output5020_def : output5020 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19925 (Flapjack.WordLangAddr.addr 19921 18446744073709551104#64))) := by
  unfold output5020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5020_skip : Flapjack.WordAlloc.isSkip output5020 = false := by
  rw [output5020_def]
  conv => lhs; cbv
  try rfl
theorem node5020_eq : Flapjack.WordAlloc.removeDeadStructural input5020 value2514 value1 value2 = (output5020, value2515, value1) := by
  rw [input5020_def, output5020_def]
  try (conv => lhs; cbv)
  try rfl

def value2516 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19921 19917)).val
theorem input5021_def : input5021 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19921 19917) := by
  unfold input5021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19921 19917)).val
theorem output5021_def : output5021 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19921 19917) := by
  unfold output5021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5021_skip : Flapjack.WordAlloc.isSkip output5021 = false := by
  rw [output5021_def]
  conv => lhs; cbv
  try rfl
theorem node5021_eq : Flapjack.WordAlloc.removeDeadStructural input5021 value2515 value1 value2 = (output5021, value2516, value1) := by
  rw [input5021_def, output5021_def]
  try (conv => lhs; cbv)
  try rfl

def value2517 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19917 19913 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5022_def : input5022 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19917 19913 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19917 19913 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5022_def : output5022 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19917 19913 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5022_skip : Flapjack.WordAlloc.isSkip output5022 = false := by
  rw [output5022_def]
  conv => lhs; cbv
  try rfl
theorem node5022_eq : Flapjack.WordAlloc.removeDeadStructural input5022 value2516 value1 value2 = (output5022, value2517, value1) := by
  rw [input5022_def, output5022_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19913 Flapjack.WordStore.heapLength)).val
theorem input5023_def : input5023 = (Flapjack.WordLangProgHOL.get 19913 Flapjack.WordStore.heapLength) := by
  unfold input5023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19913 Flapjack.WordStore.heapLength)).val
theorem output5023_def : output5023 = (Flapjack.WordLangProgHOL.get 19913 Flapjack.WordStore.heapLength) := by
  unfold output5023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5023_skip : Flapjack.WordAlloc.isSkip output5023 = false := by
  rw [output5023_def]
  conv => lhs; cbv
  try rfl
theorem node5023_eq : Flapjack.WordAlloc.removeDeadStructural input5023 value2517 value1 value2 = (output5023, value5, value1) := by
  rw [input5023_def, output5023_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5023 input5022)).val
theorem input5024_def : input5024 = (.seq input5023 input5022) := by
  unfold input5024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5023 output5022)).val
theorem output5024_def : output5024 = (.seq output5023 output5022) := by
  unfold output5024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5024_skip : Flapjack.WordAlloc.isSkip output5024 = false := by
  rw [output5024_def]
  conv => lhs; cbv
  try rfl
theorem node5024_eq : Flapjack.WordAlloc.removeDeadStructural input5024 value2516 value1 value2 = (output5024, value5, value1) := by
  rw [input5024_def, output5024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5022_eq]
  dsimp only
  rw [node5023_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5024 input5021)).val
theorem input5025_def : input5025 = (.seq input5024 input5021) := by
  unfold input5025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5024 output5021)).val
theorem output5025_def : output5025 = (.seq output5024 output5021) := by
  unfold output5025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5025_skip : Flapjack.WordAlloc.isSkip output5025 = false := by
  rw [output5025_def]
  conv => lhs; cbv
  try rfl
theorem node5025_eq : Flapjack.WordAlloc.removeDeadStructural input5025 value2515 value1 value2 = (output5025, value5, value1) := by
  rw [input5025_def, output5025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5021_eq]
  dsimp only
  rw [node5024_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5025 input5020)).val
theorem input5026_def : input5026 = (.seq input5025 input5020) := by
  unfold input5026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5025 output5020)).val
theorem output5026_def : output5026 = (.seq output5025 output5020) := by
  unfold output5026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5026_skip : Flapjack.WordAlloc.isSkip output5026 = false := by
  rw [output5026_def]
  conv => lhs; cbv
  try rfl
theorem node5026_eq : Flapjack.WordAlloc.removeDeadStructural input5026 value2514 value1 value2 = (output5026, value5, value1) := by
  rw [input5026_def, output5026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5020_eq]
  dsimp only
  rw [node5025_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5026 input5019)).val
theorem input5027_def : input5027 = (.seq input5026 input5019) := by
  unfold input5027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5026 output5019)).val
theorem output5027_def : output5027 = (.seq output5026 output5019) := by
  unfold output5027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5027_skip : Flapjack.WordAlloc.isSkip output5027 = false := by
  rw [output5027_def]
  conv => lhs; cbv
  try rfl
theorem node5027_eq : Flapjack.WordAlloc.removeDeadStructural input5027 value2512 value1 value2 = (output5027, value5, value1) := by
  rw [input5027_def, output5027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5019_eq]
  dsimp only
  rw [node5026_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2518 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
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
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19905 (Flapjack.WordLangAddr.addr 19909 0#64)))).val
theorem input5028_def : input5028 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19905 (Flapjack.WordLangAddr.addr 19909 0#64))) := by
  unfold input5028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19905 (Flapjack.WordLangAddr.addr 19909 0#64)))).val
theorem output5028_def : output5028 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19905 (Flapjack.WordLangAddr.addr 19909 0#64))) := by
  unfold output5028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5028_skip : Flapjack.WordAlloc.isSkip output5028 = false := by
  rw [output5028_def]
  conv => lhs; cbv
  try rfl
theorem node5028_eq : Flapjack.WordAlloc.removeDeadStructural input5028 value5 value1 value2 = (output5028, value2518, value1) := by
  rw [input5028_def, output5028_def]
  try (conv => lhs; cbv)
  try rfl

def value2519 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19909, 19897)])).val
theorem input5029_def : input5029 = (Flapjack.WordLangProgHOL.move 0 [(19909, 19897)]) := by
  unfold input5029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19909, 19897)])).val
theorem output5029_def : output5029 = (Flapjack.WordLangProgHOL.move 0 [(19909, 19897)]) := by
  unfold output5029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5029_skip : Flapjack.WordAlloc.isSkip output5029 = false := by
  rw [output5029_def]
  conv => lhs; cbv
  try rfl
theorem node5029_eq : Flapjack.WordAlloc.removeDeadStructural input5029 value2518 value1 value2 = (output5029, value2519, value1) := by
  rw [input5029_def, output5029_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5029 input5028)).val
theorem input5030_def : input5030 = (.seq input5029 input5028) := by
  unfold input5030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5029 output5028)).val
theorem output5030_def : output5030 = (.seq output5029 output5028) := by
  unfold output5030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5030_skip : Flapjack.WordAlloc.isSkip output5030 = false := by
  rw [output5030_def]
  conv => lhs; cbv
  try rfl
theorem node5030_eq : Flapjack.WordAlloc.removeDeadStructural input5030 value5 value1 value2 = (output5030, value2519, value1) := by
  rw [input5030_def, output5030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5028_eq]
  dsimp only
  rw [node5029_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2520 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19905 0#64))).val
theorem input5031_def : input5031 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19905 0#64)) := by
  unfold input5031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19905 0#64))).val
theorem output5031_def : output5031 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19905 0#64)) := by
  unfold output5031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5031_skip : Flapjack.WordAlloc.isSkip output5031 = false := by
  rw [output5031_def]
  conv => lhs; cbv
  try rfl
theorem node5031_eq : Flapjack.WordAlloc.removeDeadStructural input5031 value2519 value1 value2 = (output5031, value2520, value1) := by
  rw [input5031_def, output5031_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19901 0#64))).val
theorem input5032_def : input5032 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19901 0#64)) := by
  unfold input5032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5032_def : output5032 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5032_skip : Flapjack.WordAlloc.isSkip output5032 = true := by
  rw [output5032_def]
  conv => lhs; cbv
  try rfl
theorem node5032_eq : Flapjack.WordAlloc.removeDeadStructural input5032 value2520 value1 value2 = (output5032, value2520, value1) := by
  rw [input5032_def, output5032_def]
  try (conv => lhs; cbv)
  try rfl

def value2521 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19897 19889 (Flapjack.WordRegImm.reg 19893))))).val
theorem input5033_def : input5033 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19897 19889 (Flapjack.WordRegImm.reg 19893)))) := by
  unfold input5033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19897 19889 (Flapjack.WordRegImm.reg 19893))))).val
theorem output5033_def : output5033 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19897 19889 (Flapjack.WordRegImm.reg 19893)))) := by
  unfold output5033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5033_skip : Flapjack.WordAlloc.isSkip output5033 = false := by
  rw [output5033_def]
  conv => lhs; cbv
  try rfl
theorem node5033_eq : Flapjack.WordAlloc.removeDeadStructural input5033 value2520 value1 value2 = (output5033, value2521, value1) := by
  rw [input5033_def, output5033_def]
  try (conv => lhs; cbv)
  try rfl

def value2522 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19893 4616#64))).val
theorem input5034_def : input5034 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19893 4616#64)) := by
  unfold input5034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19893 4616#64))).val
theorem output5034_def : output5034 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19893 4616#64)) := by
  unfold output5034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5034_skip : Flapjack.WordAlloc.isSkip output5034 = false := by
  rw [output5034_def]
  conv => lhs; cbv
  try rfl
theorem node5034_eq : Flapjack.WordAlloc.removeDeadStructural input5034 value2521 value1 value2 = (output5034, value2522, value1) := by
  rw [input5034_def, output5034_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5034 input5033)).val
theorem input5035_def : input5035 = (.seq input5034 input5033) := by
  unfold input5035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5034 output5033)).val
theorem output5035_def : output5035 = (.seq output5034 output5033) := by
  unfold output5035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5035_skip : Flapjack.WordAlloc.isSkip output5035 = false := by
  rw [output5035_def]
  conv => lhs; cbv
  try rfl
theorem node5035_eq : Flapjack.WordAlloc.removeDeadStructural input5035 value2520 value1 value2 = (output5035, value2522, value1) := by
  rw [input5035_def, output5035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5033_eq]
  dsimp only
  rw [node5034_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2523 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19889 (Flapjack.WordLangAddr.addr 19885 18446744073709551104#64)))).val
theorem input5036_def : input5036 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19889 (Flapjack.WordLangAddr.addr 19885 18446744073709551104#64))) := by
  unfold input5036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19889 (Flapjack.WordLangAddr.addr 19885 18446744073709551104#64)))).val
theorem output5036_def : output5036 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19889 (Flapjack.WordLangAddr.addr 19885 18446744073709551104#64))) := by
  unfold output5036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5036_skip : Flapjack.WordAlloc.isSkip output5036 = false := by
  rw [output5036_def]
  conv => lhs; cbv
  try rfl
theorem node5036_eq : Flapjack.WordAlloc.removeDeadStructural input5036 value2522 value1 value2 = (output5036, value2523, value1) := by
  rw [input5036_def, output5036_def]
  try (conv => lhs; cbv)
  try rfl

def value2524 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19885 19881)).val
theorem input5037_def : input5037 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19885 19881) := by
  unfold input5037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19885 19881)).val
theorem output5037_def : output5037 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19885 19881) := by
  unfold output5037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5037_skip : Flapjack.WordAlloc.isSkip output5037 = false := by
  rw [output5037_def]
  conv => lhs; cbv
  try rfl
theorem node5037_eq : Flapjack.WordAlloc.removeDeadStructural input5037 value2523 value1 value2 = (output5037, value2524, value1) := by
  rw [input5037_def, output5037_def]
  try (conv => lhs; cbv)
  try rfl

def value2525 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19881 19877 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5038_def : input5038 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19881 19877 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19881 19877 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5038_def : output5038 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19881 19877 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5038_skip : Flapjack.WordAlloc.isSkip output5038 = false := by
  rw [output5038_def]
  conv => lhs; cbv
  try rfl
theorem node5038_eq : Flapjack.WordAlloc.removeDeadStructural input5038 value2524 value1 value2 = (output5038, value2525, value1) := by
  rw [input5038_def, output5038_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19877 Flapjack.WordStore.heapLength)).val
theorem input5039_def : input5039 = (Flapjack.WordLangProgHOL.get 19877 Flapjack.WordStore.heapLength) := by
  unfold input5039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19877 Flapjack.WordStore.heapLength)).val
theorem output5039_def : output5039 = (Flapjack.WordLangProgHOL.get 19877 Flapjack.WordStore.heapLength) := by
  unfold output5039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5039_skip : Flapjack.WordAlloc.isSkip output5039 = false := by
  rw [output5039_def]
  conv => lhs; cbv
  try rfl
theorem node5039_eq : Flapjack.WordAlloc.removeDeadStructural input5039 value2525 value1 value2 = (output5039, value5, value1) := by
  rw [input5039_def, output5039_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5039 input5038)).val
theorem input5040_def : input5040 = (.seq input5039 input5038) := by
  unfold input5040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5039 output5038)).val
theorem output5040_def : output5040 = (.seq output5039 output5038) := by
  unfold output5040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5040_skip : Flapjack.WordAlloc.isSkip output5040 = false := by
  rw [output5040_def]
  conv => lhs; cbv
  try rfl
theorem node5040_eq : Flapjack.WordAlloc.removeDeadStructural input5040 value2524 value1 value2 = (output5040, value5, value1) := by
  rw [input5040_def, output5040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5038_eq]
  dsimp only
  rw [node5039_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5040 input5037)).val
theorem input5041_def : input5041 = (.seq input5040 input5037) := by
  unfold input5041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5040 output5037)).val
theorem output5041_def : output5041 = (.seq output5040 output5037) := by
  unfold output5041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5041_skip : Flapjack.WordAlloc.isSkip output5041 = false := by
  rw [output5041_def]
  conv => lhs; cbv
  try rfl
theorem node5041_eq : Flapjack.WordAlloc.removeDeadStructural input5041 value2523 value1 value2 = (output5041, value5, value1) := by
  rw [input5041_def, output5041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5037_eq]
  dsimp only
  rw [node5040_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5041 input5036)).val
theorem input5042_def : input5042 = (.seq input5041 input5036) := by
  unfold input5042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5041 output5036)).val
theorem output5042_def : output5042 = (.seq output5041 output5036) := by
  unfold output5042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5042_skip : Flapjack.WordAlloc.isSkip output5042 = false := by
  rw [output5042_def]
  conv => lhs; cbv
  try rfl
theorem node5042_eq : Flapjack.WordAlloc.removeDeadStructural input5042 value2522 value1 value2 = (output5042, value5, value1) := by
  rw [input5042_def, output5042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5036_eq]
  dsimp only
  rw [node5041_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5042 input5035)).val
theorem input5043_def : input5043 = (.seq input5042 input5035) := by
  unfold input5043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5042 output5035)).val
theorem output5043_def : output5043 = (.seq output5042 output5035) := by
  unfold output5043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5043_skip : Flapjack.WordAlloc.isSkip output5043 = false := by
  rw [output5043_def]
  conv => lhs; cbv
  try rfl
theorem node5043_eq : Flapjack.WordAlloc.removeDeadStructural input5043 value2520 value1 value2 = (output5043, value5, value1) := by
  rw [input5043_def, output5043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5035_eq]
  dsimp only
  rw [node5042_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2526 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19869 (Flapjack.WordLangAddr.addr 19873 0#64)))).val
theorem input5044_def : input5044 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19869 (Flapjack.WordLangAddr.addr 19873 0#64))) := by
  unfold input5044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19869 (Flapjack.WordLangAddr.addr 19873 0#64)))).val
theorem output5044_def : output5044 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19869 (Flapjack.WordLangAddr.addr 19873 0#64))) := by
  unfold output5044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5044_skip : Flapjack.WordAlloc.isSkip output5044 = false := by
  rw [output5044_def]
  conv => lhs; cbv
  try rfl
theorem node5044_eq : Flapjack.WordAlloc.removeDeadStructural input5044 value5 value1 value2 = (output5044, value2526, value1) := by
  rw [input5044_def, output5044_def]
  try (conv => lhs; cbv)
  try rfl

def value2527 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19873, 19861)])).val
theorem input5045_def : input5045 = (Flapjack.WordLangProgHOL.move 0 [(19873, 19861)]) := by
  unfold input5045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19873, 19861)])).val
theorem output5045_def : output5045 = (Flapjack.WordLangProgHOL.move 0 [(19873, 19861)]) := by
  unfold output5045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5045_skip : Flapjack.WordAlloc.isSkip output5045 = false := by
  rw [output5045_def]
  conv => lhs; cbv
  try rfl
theorem node5045_eq : Flapjack.WordAlloc.removeDeadStructural input5045 value2526 value1 value2 = (output5045, value2527, value1) := by
  rw [input5045_def, output5045_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5045 input5044)).val
theorem input5046_def : input5046 = (.seq input5045 input5044) := by
  unfold input5046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5045 output5044)).val
theorem output5046_def : output5046 = (.seq output5045 output5044) := by
  unfold output5046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5046_skip : Flapjack.WordAlloc.isSkip output5046 = false := by
  rw [output5046_def]
  conv => lhs; cbv
  try rfl
theorem node5046_eq : Flapjack.WordAlloc.removeDeadStructural input5046 value5 value1 value2 = (output5046, value2527, value1) := by
  rw [input5046_def, output5046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5044_eq]
  dsimp only
  rw [node5045_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2528 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19869 0#64))).val
theorem input5047_def : input5047 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19869 0#64)) := by
  unfold input5047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19869 0#64))).val
theorem output5047_def : output5047 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19869 0#64)) := by
  unfold output5047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5047_skip : Flapjack.WordAlloc.isSkip output5047 = false := by
  rw [output5047_def]
  conv => lhs; cbv
  try rfl
theorem node5047_eq : Flapjack.WordAlloc.removeDeadStructural input5047 value2527 value1 value2 = (output5047, value2528, value1) := by
  rw [input5047_def, output5047_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19865 0#64))).val
theorem input5048_def : input5048 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19865 0#64)) := by
  unfold input5048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5048_def : output5048 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5048_skip : Flapjack.WordAlloc.isSkip output5048 = true := by
  rw [output5048_def]
  conv => lhs; cbv
  try rfl
theorem node5048_eq : Flapjack.WordAlloc.removeDeadStructural input5048 value2528 value1 value2 = (output5048, value2528, value1) := by
  rw [input5048_def, output5048_def]
  try (conv => lhs; cbv)
  try rfl

def value2529 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19861 19853 (Flapjack.WordRegImm.reg 19857))))).val
theorem input5049_def : input5049 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19861 19853 (Flapjack.WordRegImm.reg 19857)))) := by
  unfold input5049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19861 19853 (Flapjack.WordRegImm.reg 19857))))).val
theorem output5049_def : output5049 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19861 19853 (Flapjack.WordRegImm.reg 19857)))) := by
  unfold output5049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5049_skip : Flapjack.WordAlloc.isSkip output5049 = false := by
  rw [output5049_def]
  conv => lhs; cbv
  try rfl
theorem node5049_eq : Flapjack.WordAlloc.removeDeadStructural input5049 value2528 value1 value2 = (output5049, value2529, value1) := by
  rw [input5049_def, output5049_def]
  try (conv => lhs; cbv)
  try rfl

def value2530 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19857 4608#64))).val
theorem input5050_def : input5050 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19857 4608#64)) := by
  unfold input5050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19857 4608#64))).val
theorem output5050_def : output5050 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19857 4608#64)) := by
  unfold output5050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5050_skip : Flapjack.WordAlloc.isSkip output5050 = false := by
  rw [output5050_def]
  conv => lhs; cbv
  try rfl
theorem node5050_eq : Flapjack.WordAlloc.removeDeadStructural input5050 value2529 value1 value2 = (output5050, value2530, value1) := by
  rw [input5050_def, output5050_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5050 input5049)).val
theorem input5051_def : input5051 = (.seq input5050 input5049) := by
  unfold input5051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5050 output5049)).val
theorem output5051_def : output5051 = (.seq output5050 output5049) := by
  unfold output5051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5051_skip : Flapjack.WordAlloc.isSkip output5051 = false := by
  rw [output5051_def]
  conv => lhs; cbv
  try rfl
theorem node5051_eq : Flapjack.WordAlloc.removeDeadStructural input5051 value2528 value1 value2 = (output5051, value2530, value1) := by
  rw [input5051_def, output5051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5049_eq]
  dsimp only
  rw [node5050_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2531 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19853 (Flapjack.WordLangAddr.addr 19849 18446744073709551104#64)))).val
theorem input5052_def : input5052 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19853 (Flapjack.WordLangAddr.addr 19849 18446744073709551104#64))) := by
  unfold input5052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19853 (Flapjack.WordLangAddr.addr 19849 18446744073709551104#64)))).val
theorem output5052_def : output5052 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19853 (Flapjack.WordLangAddr.addr 19849 18446744073709551104#64))) := by
  unfold output5052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5052_skip : Flapjack.WordAlloc.isSkip output5052 = false := by
  rw [output5052_def]
  conv => lhs; cbv
  try rfl
theorem node5052_eq : Flapjack.WordAlloc.removeDeadStructural input5052 value2530 value1 value2 = (output5052, value2531, value1) := by
  rw [input5052_def, output5052_def]
  try (conv => lhs; cbv)
  try rfl

def value2532 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19849 19845)).val
theorem input5053_def : input5053 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19849 19845) := by
  unfold input5053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19849 19845)).val
theorem output5053_def : output5053 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19849 19845) := by
  unfold output5053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5053_skip : Flapjack.WordAlloc.isSkip output5053 = false := by
  rw [output5053_def]
  conv => lhs; cbv
  try rfl
theorem node5053_eq : Flapjack.WordAlloc.removeDeadStructural input5053 value2531 value1 value2 = (output5053, value2532, value1) := by
  rw [input5053_def, output5053_def]
  try (conv => lhs; cbv)
  try rfl

def value2533 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19845 19841 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5054_def : input5054 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19845 19841 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19845 19841 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5054_def : output5054 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19845 19841 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5054_skip : Flapjack.WordAlloc.isSkip output5054 = false := by
  rw [output5054_def]
  conv => lhs; cbv
  try rfl
theorem node5054_eq : Flapjack.WordAlloc.removeDeadStructural input5054 value2532 value1 value2 = (output5054, value2533, value1) := by
  rw [input5054_def, output5054_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19841 Flapjack.WordStore.heapLength)).val
theorem input5055_def : input5055 = (Flapjack.WordLangProgHOL.get 19841 Flapjack.WordStore.heapLength) := by
  unfold input5055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19841 Flapjack.WordStore.heapLength)).val
theorem output5055_def : output5055 = (Flapjack.WordLangProgHOL.get 19841 Flapjack.WordStore.heapLength) := by
  unfold output5055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5055_skip : Flapjack.WordAlloc.isSkip output5055 = false := by
  rw [output5055_def]
  conv => lhs; cbv
  try rfl
theorem node5055_eq : Flapjack.WordAlloc.removeDeadStructural input5055 value2533 value1 value2 = (output5055, value5, value1) := by
  rw [input5055_def, output5055_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5055 input5054)).val
theorem input5056_def : input5056 = (.seq input5055 input5054) := by
  unfold input5056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5055 output5054)).val
theorem output5056_def : output5056 = (.seq output5055 output5054) := by
  unfold output5056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5056_skip : Flapjack.WordAlloc.isSkip output5056 = false := by
  rw [output5056_def]
  conv => lhs; cbv
  try rfl
theorem node5056_eq : Flapjack.WordAlloc.removeDeadStructural input5056 value2532 value1 value2 = (output5056, value5, value1) := by
  rw [input5056_def, output5056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5054_eq]
  dsimp only
  rw [node5055_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5056 input5053)).val
theorem input5057_def : input5057 = (.seq input5056 input5053) := by
  unfold input5057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5056 output5053)).val
theorem output5057_def : output5057 = (.seq output5056 output5053) := by
  unfold output5057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5057_skip : Flapjack.WordAlloc.isSkip output5057 = false := by
  rw [output5057_def]
  conv => lhs; cbv
  try rfl
theorem node5057_eq : Flapjack.WordAlloc.removeDeadStructural input5057 value2531 value1 value2 = (output5057, value5, value1) := by
  rw [input5057_def, output5057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5053_eq]
  dsimp only
  rw [node5056_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5057 input5052)).val
theorem input5058_def : input5058 = (.seq input5057 input5052) := by
  unfold input5058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5057 output5052)).val
theorem output5058_def : output5058 = (.seq output5057 output5052) := by
  unfold output5058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5058_skip : Flapjack.WordAlloc.isSkip output5058 = false := by
  rw [output5058_def]
  conv => lhs; cbv
  try rfl
theorem node5058_eq : Flapjack.WordAlloc.removeDeadStructural input5058 value2530 value1 value2 = (output5058, value5, value1) := by
  rw [input5058_def, output5058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5052_eq]
  dsimp only
  rw [node5057_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5058 input5051)).val
theorem input5059_def : input5059 = (.seq input5058 input5051) := by
  unfold input5059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5058 output5051)).val
theorem output5059_def : output5059 = (.seq output5058 output5051) := by
  unfold output5059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5059_skip : Flapjack.WordAlloc.isSkip output5059 = false := by
  rw [output5059_def]
  conv => lhs; cbv
  try rfl
theorem node5059_eq : Flapjack.WordAlloc.removeDeadStructural input5059 value2528 value1 value2 = (output5059, value5, value1) := by
  rw [input5059_def, output5059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5051_eq]
  dsimp only
  rw [node5058_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2534 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19833 (Flapjack.WordLangAddr.addr 19837 0#64)))).val
theorem input5060_def : input5060 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19833 (Flapjack.WordLangAddr.addr 19837 0#64))) := by
  unfold input5060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19833 (Flapjack.WordLangAddr.addr 19837 0#64)))).val
theorem output5060_def : output5060 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19833 (Flapjack.WordLangAddr.addr 19837 0#64))) := by
  unfold output5060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5060_skip : Flapjack.WordAlloc.isSkip output5060 = false := by
  rw [output5060_def]
  conv => lhs; cbv
  try rfl
theorem node5060_eq : Flapjack.WordAlloc.removeDeadStructural input5060 value5 value1 value2 = (output5060, value2534, value1) := by
  rw [input5060_def, output5060_def]
  try (conv => lhs; cbv)
  try rfl

def value2535 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19837, 19825)])).val
theorem input5061_def : input5061 = (Flapjack.WordLangProgHOL.move 0 [(19837, 19825)]) := by
  unfold input5061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19837, 19825)])).val
theorem output5061_def : output5061 = (Flapjack.WordLangProgHOL.move 0 [(19837, 19825)]) := by
  unfold output5061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5061_skip : Flapjack.WordAlloc.isSkip output5061 = false := by
  rw [output5061_def]
  conv => lhs; cbv
  try rfl
theorem node5061_eq : Flapjack.WordAlloc.removeDeadStructural input5061 value2534 value1 value2 = (output5061, value2535, value1) := by
  rw [input5061_def, output5061_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5061 input5060)).val
theorem input5062_def : input5062 = (.seq input5061 input5060) := by
  unfold input5062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5061 output5060)).val
theorem output5062_def : output5062 = (.seq output5061 output5060) := by
  unfold output5062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5062_skip : Flapjack.WordAlloc.isSkip output5062 = false := by
  rw [output5062_def]
  conv => lhs; cbv
  try rfl
theorem node5062_eq : Flapjack.WordAlloc.removeDeadStructural input5062 value5 value1 value2 = (output5062, value2535, value1) := by
  rw [input5062_def, output5062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5060_eq]
  dsimp only
  rw [node5061_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2536 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19833 0#64))).val
theorem input5063_def : input5063 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19833 0#64)) := by
  unfold input5063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19833 0#64))).val
theorem output5063_def : output5063 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19833 0#64)) := by
  unfold output5063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5063_skip : Flapjack.WordAlloc.isSkip output5063 = false := by
  rw [output5063_def]
  conv => lhs; cbv
  try rfl
theorem node5063_eq : Flapjack.WordAlloc.removeDeadStructural input5063 value2535 value1 value2 = (output5063, value2536, value1) := by
  rw [input5063_def, output5063_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19829 0#64))).val
theorem input5064_def : input5064 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19829 0#64)) := by
  unfold input5064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5064_def : output5064 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5064_skip : Flapjack.WordAlloc.isSkip output5064 = true := by
  rw [output5064_def]
  conv => lhs; cbv
  try rfl
theorem node5064_eq : Flapjack.WordAlloc.removeDeadStructural input5064 value2536 value1 value2 = (output5064, value2536, value1) := by
  rw [input5064_def, output5064_def]
  try (conv => lhs; cbv)
  try rfl

def value2537 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19825 19817 (Flapjack.WordRegImm.reg 19821))))).val
theorem input5065_def : input5065 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19825 19817 (Flapjack.WordRegImm.reg 19821)))) := by
  unfold input5065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19825 19817 (Flapjack.WordRegImm.reg 19821))))).val
theorem output5065_def : output5065 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19825 19817 (Flapjack.WordRegImm.reg 19821)))) := by
  unfold output5065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5065_skip : Flapjack.WordAlloc.isSkip output5065 = false := by
  rw [output5065_def]
  conv => lhs; cbv
  try rfl
theorem node5065_eq : Flapjack.WordAlloc.removeDeadStructural input5065 value2536 value1 value2 = (output5065, value2537, value1) := by
  rw [input5065_def, output5065_def]
  try (conv => lhs; cbv)
  try rfl

def value2538 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19821 4600#64))).val
theorem input5066_def : input5066 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19821 4600#64)) := by
  unfold input5066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19821 4600#64))).val
theorem output5066_def : output5066 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19821 4600#64)) := by
  unfold output5066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5066_skip : Flapjack.WordAlloc.isSkip output5066 = false := by
  rw [output5066_def]
  conv => lhs; cbv
  try rfl
theorem node5066_eq : Flapjack.WordAlloc.removeDeadStructural input5066 value2537 value1 value2 = (output5066, value2538, value1) := by
  rw [input5066_def, output5066_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5066 input5065)).val
theorem input5067_def : input5067 = (.seq input5066 input5065) := by
  unfold input5067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5066 output5065)).val
theorem output5067_def : output5067 = (.seq output5066 output5065) := by
  unfold output5067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5067_skip : Flapjack.WordAlloc.isSkip output5067 = false := by
  rw [output5067_def]
  conv => lhs; cbv
  try rfl
theorem node5067_eq : Flapjack.WordAlloc.removeDeadStructural input5067 value2536 value1 value2 = (output5067, value2538, value1) := by
  rw [input5067_def, output5067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5065_eq]
  dsimp only
  rw [node5066_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2539 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19817 (Flapjack.WordLangAddr.addr 19813 18446744073709551104#64)))).val
theorem input5068_def : input5068 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19817 (Flapjack.WordLangAddr.addr 19813 18446744073709551104#64))) := by
  unfold input5068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19817 (Flapjack.WordLangAddr.addr 19813 18446744073709551104#64)))).val
theorem output5068_def : output5068 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19817 (Flapjack.WordLangAddr.addr 19813 18446744073709551104#64))) := by
  unfold output5068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5068_skip : Flapjack.WordAlloc.isSkip output5068 = false := by
  rw [output5068_def]
  conv => lhs; cbv
  try rfl
theorem node5068_eq : Flapjack.WordAlloc.removeDeadStructural input5068 value2538 value1 value2 = (output5068, value2539, value1) := by
  rw [input5068_def, output5068_def]
  try (conv => lhs; cbv)
  try rfl

def value2540 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19813 19809)).val
theorem input5069_def : input5069 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19813 19809) := by
  unfold input5069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19813 19809)).val
theorem output5069_def : output5069 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19813 19809) := by
  unfold output5069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5069_skip : Flapjack.WordAlloc.isSkip output5069 = false := by
  rw [output5069_def]
  conv => lhs; cbv
  try rfl
theorem node5069_eq : Flapjack.WordAlloc.removeDeadStructural input5069 value2539 value1 value2 = (output5069, value2540, value1) := by
  rw [input5069_def, output5069_def]
  try (conv => lhs; cbv)
  try rfl

def value2541 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19809 19805 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5070_def : input5070 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19809 19805 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19809 19805 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5070_def : output5070 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19809 19805 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5070_skip : Flapjack.WordAlloc.isSkip output5070 = false := by
  rw [output5070_def]
  conv => lhs; cbv
  try rfl
theorem node5070_eq : Flapjack.WordAlloc.removeDeadStructural input5070 value2540 value1 value2 = (output5070, value2541, value1) := by
  rw [input5070_def, output5070_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19805 Flapjack.WordStore.heapLength)).val
theorem input5071_def : input5071 = (Flapjack.WordLangProgHOL.get 19805 Flapjack.WordStore.heapLength) := by
  unfold input5071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19805 Flapjack.WordStore.heapLength)).val
theorem output5071_def : output5071 = (Flapjack.WordLangProgHOL.get 19805 Flapjack.WordStore.heapLength) := by
  unfold output5071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5071_skip : Flapjack.WordAlloc.isSkip output5071 = false := by
  rw [output5071_def]
  conv => lhs; cbv
  try rfl
theorem node5071_eq : Flapjack.WordAlloc.removeDeadStructural input5071 value2541 value1 value2 = (output5071, value5, value1) := by
  rw [input5071_def, output5071_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5071 input5070)).val
theorem input5072_def : input5072 = (.seq input5071 input5070) := by
  unfold input5072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5071 output5070)).val
theorem output5072_def : output5072 = (.seq output5071 output5070) := by
  unfold output5072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5072_skip : Flapjack.WordAlloc.isSkip output5072 = false := by
  rw [output5072_def]
  conv => lhs; cbv
  try rfl
theorem node5072_eq : Flapjack.WordAlloc.removeDeadStructural input5072 value2540 value1 value2 = (output5072, value5, value1) := by
  rw [input5072_def, output5072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5070_eq]
  dsimp only
  rw [node5071_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5072 input5069)).val
theorem input5073_def : input5073 = (.seq input5072 input5069) := by
  unfold input5073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5072 output5069)).val
theorem output5073_def : output5073 = (.seq output5072 output5069) := by
  unfold output5073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5073_skip : Flapjack.WordAlloc.isSkip output5073 = false := by
  rw [output5073_def]
  conv => lhs; cbv
  try rfl
theorem node5073_eq : Flapjack.WordAlloc.removeDeadStructural input5073 value2539 value1 value2 = (output5073, value5, value1) := by
  rw [input5073_def, output5073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5069_eq]
  dsimp only
  rw [node5072_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5073 input5068)).val
theorem input5074_def : input5074 = (.seq input5073 input5068) := by
  unfold input5074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5073 output5068)).val
theorem output5074_def : output5074 = (.seq output5073 output5068) := by
  unfold output5074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5074_skip : Flapjack.WordAlloc.isSkip output5074 = false := by
  rw [output5074_def]
  conv => lhs; cbv
  try rfl
theorem node5074_eq : Flapjack.WordAlloc.removeDeadStructural input5074 value2538 value1 value2 = (output5074, value5, value1) := by
  rw [input5074_def, output5074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5068_eq]
  dsimp only
  rw [node5073_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5074 input5067)).val
theorem input5075_def : input5075 = (.seq input5074 input5067) := by
  unfold input5075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5074 output5067)).val
theorem output5075_def : output5075 = (.seq output5074 output5067) := by
  unfold output5075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5075_skip : Flapjack.WordAlloc.isSkip output5075 = false := by
  rw [output5075_def]
  conv => lhs; cbv
  try rfl
theorem node5075_eq : Flapjack.WordAlloc.removeDeadStructural input5075 value2536 value1 value2 = (output5075, value5, value1) := by
  rw [input5075_def, output5075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5067_eq]
  dsimp only
  rw [node5074_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2542 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19797 (Flapjack.WordLangAddr.addr 19801 0#64)))).val
theorem input5076_def : input5076 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19797 (Flapjack.WordLangAddr.addr 19801 0#64))) := by
  unfold input5076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19797 (Flapjack.WordLangAddr.addr 19801 0#64)))).val
theorem output5076_def : output5076 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19797 (Flapjack.WordLangAddr.addr 19801 0#64))) := by
  unfold output5076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5076_skip : Flapjack.WordAlloc.isSkip output5076 = false := by
  rw [output5076_def]
  conv => lhs; cbv
  try rfl
theorem node5076_eq : Flapjack.WordAlloc.removeDeadStructural input5076 value5 value1 value2 = (output5076, value2542, value1) := by
  rw [input5076_def, output5076_def]
  try (conv => lhs; cbv)
  try rfl

def value2543 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19801, 19789)])).val
theorem input5077_def : input5077 = (Flapjack.WordLangProgHOL.move 0 [(19801, 19789)]) := by
  unfold input5077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19801, 19789)])).val
theorem output5077_def : output5077 = (Flapjack.WordLangProgHOL.move 0 [(19801, 19789)]) := by
  unfold output5077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5077_skip : Flapjack.WordAlloc.isSkip output5077 = false := by
  rw [output5077_def]
  conv => lhs; cbv
  try rfl
theorem node5077_eq : Flapjack.WordAlloc.removeDeadStructural input5077 value2542 value1 value2 = (output5077, value2543, value1) := by
  rw [input5077_def, output5077_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5077 input5076)).val
theorem input5078_def : input5078 = (.seq input5077 input5076) := by
  unfold input5078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5077 output5076)).val
theorem output5078_def : output5078 = (.seq output5077 output5076) := by
  unfold output5078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5078_skip : Flapjack.WordAlloc.isSkip output5078 = false := by
  rw [output5078_def]
  conv => lhs; cbv
  try rfl
theorem node5078_eq : Flapjack.WordAlloc.removeDeadStructural input5078 value5 value1 value2 = (output5078, value2543, value1) := by
  rw [input5078_def, output5078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5076_eq]
  dsimp only
  rw [node5077_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2544 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19797 240#64))).val
theorem input5079_def : input5079 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19797 240#64)) := by
  unfold input5079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19797 240#64))).val
theorem output5079_def : output5079 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19797 240#64)) := by
  unfold output5079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5079_skip : Flapjack.WordAlloc.isSkip output5079 = false := by
  rw [output5079_def]
  conv => lhs; cbv
  try rfl
theorem node5079_eq : Flapjack.WordAlloc.removeDeadStructural input5079 value2543 value1 value2 = (output5079, value2544, value1) := by
  rw [input5079_def, output5079_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19793 240#64))).val
theorem input5080_def : input5080 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19793 240#64)) := by
  unfold input5080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5080_def : output5080 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5080_skip : Flapjack.WordAlloc.isSkip output5080 = true := by
  rw [output5080_def]
  conv => lhs; cbv
  try rfl
theorem node5080_eq : Flapjack.WordAlloc.removeDeadStructural input5080 value2544 value1 value2 = (output5080, value2544, value1) := by
  rw [input5080_def, output5080_def]
  try (conv => lhs; cbv)
  try rfl

def value2545 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19789 19781 (Flapjack.WordRegImm.reg 19785))))).val
theorem input5081_def : input5081 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19789 19781 (Flapjack.WordRegImm.reg 19785)))) := by
  unfold input5081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19789 19781 (Flapjack.WordRegImm.reg 19785))))).val
theorem output5081_def : output5081 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19789 19781 (Flapjack.WordRegImm.reg 19785)))) := by
  unfold output5081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5081_skip : Flapjack.WordAlloc.isSkip output5081 = false := by
  rw [output5081_def]
  conv => lhs; cbv
  try rfl
theorem node5081_eq : Flapjack.WordAlloc.removeDeadStructural input5081 value2544 value1 value2 = (output5081, value2545, value1) := by
  rw [input5081_def, output5081_def]
  try (conv => lhs; cbv)
  try rfl

def value2546 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19785 4592#64))).val
theorem input5082_def : input5082 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19785 4592#64)) := by
  unfold input5082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19785 4592#64))).val
theorem output5082_def : output5082 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19785 4592#64)) := by
  unfold output5082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5082_skip : Flapjack.WordAlloc.isSkip output5082 = false := by
  rw [output5082_def]
  conv => lhs; cbv
  try rfl
theorem node5082_eq : Flapjack.WordAlloc.removeDeadStructural input5082 value2545 value1 value2 = (output5082, value2546, value1) := by
  rw [input5082_def, output5082_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5082 input5081)).val
theorem input5083_def : input5083 = (.seq input5082 input5081) := by
  unfold input5083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5082 output5081)).val
theorem output5083_def : output5083 = (.seq output5082 output5081) := by
  unfold output5083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5083_skip : Flapjack.WordAlloc.isSkip output5083 = false := by
  rw [output5083_def]
  conv => lhs; cbv
  try rfl
theorem node5083_eq : Flapjack.WordAlloc.removeDeadStructural input5083 value2544 value1 value2 = (output5083, value2546, value1) := by
  rw [input5083_def, output5083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5081_eq]
  dsimp only
  rw [node5082_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2547 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19781 (Flapjack.WordLangAddr.addr 19777 18446744073709551104#64)))).val
theorem input5084_def : input5084 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19781 (Flapjack.WordLangAddr.addr 19777 18446744073709551104#64))) := by
  unfold input5084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19781 (Flapjack.WordLangAddr.addr 19777 18446744073709551104#64)))).val
theorem output5084_def : output5084 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19781 (Flapjack.WordLangAddr.addr 19777 18446744073709551104#64))) := by
  unfold output5084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5084_skip : Flapjack.WordAlloc.isSkip output5084 = false := by
  rw [output5084_def]
  conv => lhs; cbv
  try rfl
theorem node5084_eq : Flapjack.WordAlloc.removeDeadStructural input5084 value2546 value1 value2 = (output5084, value2547, value1) := by
  rw [input5084_def, output5084_def]
  try (conv => lhs; cbv)
  try rfl

def value2548 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19777 19773)).val
theorem input5085_def : input5085 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19777 19773) := by
  unfold input5085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19777 19773)).val
theorem output5085_def : output5085 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19777 19773) := by
  unfold output5085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5085_skip : Flapjack.WordAlloc.isSkip output5085 = false := by
  rw [output5085_def]
  conv => lhs; cbv
  try rfl
theorem node5085_eq : Flapjack.WordAlloc.removeDeadStructural input5085 value2547 value1 value2 = (output5085, value2548, value1) := by
  rw [input5085_def, output5085_def]
  try (conv => lhs; cbv)
  try rfl

def value2549 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19773 19769 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5086_def : input5086 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19773 19769 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19773 19769 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5086_def : output5086 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19773 19769 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5086_skip : Flapjack.WordAlloc.isSkip output5086 = false := by
  rw [output5086_def]
  conv => lhs; cbv
  try rfl
theorem node5086_eq : Flapjack.WordAlloc.removeDeadStructural input5086 value2548 value1 value2 = (output5086, value2549, value1) := by
  rw [input5086_def, output5086_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19769 Flapjack.WordStore.heapLength)).val
theorem input5087_def : input5087 = (Flapjack.WordLangProgHOL.get 19769 Flapjack.WordStore.heapLength) := by
  unfold input5087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19769 Flapjack.WordStore.heapLength)).val
theorem output5087_def : output5087 = (Flapjack.WordLangProgHOL.get 19769 Flapjack.WordStore.heapLength) := by
  unfold output5087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5087_skip : Flapjack.WordAlloc.isSkip output5087 = false := by
  rw [output5087_def]
  conv => lhs; cbv
  try rfl
theorem node5087_eq : Flapjack.WordAlloc.removeDeadStructural input5087 value2549 value1 value2 = (output5087, value5, value1) := by
  rw [input5087_def, output5087_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5087 input5086)).val
theorem input5088_def : input5088 = (.seq input5087 input5086) := by
  unfold input5088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5087 output5086)).val
theorem output5088_def : output5088 = (.seq output5087 output5086) := by
  unfold output5088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5088_skip : Flapjack.WordAlloc.isSkip output5088 = false := by
  rw [output5088_def]
  conv => lhs; cbv
  try rfl
theorem node5088_eq : Flapjack.WordAlloc.removeDeadStructural input5088 value2548 value1 value2 = (output5088, value5, value1) := by
  rw [input5088_def, output5088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5086_eq]
  dsimp only
  rw [node5087_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5088 input5085)).val
theorem input5089_def : input5089 = (.seq input5088 input5085) := by
  unfold input5089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5088 output5085)).val
theorem output5089_def : output5089 = (.seq output5088 output5085) := by
  unfold output5089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5089_skip : Flapjack.WordAlloc.isSkip output5089 = false := by
  rw [output5089_def]
  conv => lhs; cbv
  try rfl
theorem node5089_eq : Flapjack.WordAlloc.removeDeadStructural input5089 value2547 value1 value2 = (output5089, value5, value1) := by
  rw [input5089_def, output5089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5085_eq]
  dsimp only
  rw [node5088_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5089 input5084)).val
theorem input5090_def : input5090 = (.seq input5089 input5084) := by
  unfold input5090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5089 output5084)).val
theorem output5090_def : output5090 = (.seq output5089 output5084) := by
  unfold output5090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5090_skip : Flapjack.WordAlloc.isSkip output5090 = false := by
  rw [output5090_def]
  conv => lhs; cbv
  try rfl
theorem node5090_eq : Flapjack.WordAlloc.removeDeadStructural input5090 value2546 value1 value2 = (output5090, value5, value1) := by
  rw [input5090_def, output5090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5084_eq]
  dsimp only
  rw [node5089_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5090 input5083)).val
theorem input5091_def : input5091 = (.seq input5090 input5083) := by
  unfold input5091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5090 output5083)).val
theorem output5091_def : output5091 = (.seq output5090 output5083) := by
  unfold output5091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5091_skip : Flapjack.WordAlloc.isSkip output5091 = false := by
  rw [output5091_def]
  conv => lhs; cbv
  try rfl
theorem node5091_eq : Flapjack.WordAlloc.removeDeadStructural input5091 value2544 value1 value2 = (output5091, value5, value1) := by
  rw [input5091_def, output5091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5083_eq]
  dsimp only
  rw [node5090_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2550 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19761 (Flapjack.WordLangAddr.addr 19765 0#64)))).val
theorem input5092_def : input5092 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19761 (Flapjack.WordLangAddr.addr 19765 0#64))) := by
  unfold input5092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19761 (Flapjack.WordLangAddr.addr 19765 0#64)))).val
theorem output5092_def : output5092 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19761 (Flapjack.WordLangAddr.addr 19765 0#64))) := by
  unfold output5092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5092_skip : Flapjack.WordAlloc.isSkip output5092 = false := by
  rw [output5092_def]
  conv => lhs; cbv
  try rfl
theorem node5092_eq : Flapjack.WordAlloc.removeDeadStructural input5092 value5 value1 value2 = (output5092, value2550, value1) := by
  rw [input5092_def, output5092_def]
  try (conv => lhs; cbv)
  try rfl

def value2551 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19765, 19753)])).val
theorem input5093_def : input5093 = (Flapjack.WordLangProgHOL.move 0 [(19765, 19753)]) := by
  unfold input5093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19765, 19753)])).val
theorem output5093_def : output5093 = (Flapjack.WordLangProgHOL.move 0 [(19765, 19753)]) := by
  unfold output5093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5093_skip : Flapjack.WordAlloc.isSkip output5093 = false := by
  rw [output5093_def]
  conv => lhs; cbv
  try rfl
theorem node5093_eq : Flapjack.WordAlloc.removeDeadStructural input5093 value2550 value1 value2 = (output5093, value2551, value1) := by
  rw [input5093_def, output5093_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5093 input5092)).val
theorem input5094_def : input5094 = (.seq input5093 input5092) := by
  unfold input5094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5093 output5092)).val
theorem output5094_def : output5094 = (.seq output5093 output5092) := by
  unfold output5094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5094_skip : Flapjack.WordAlloc.isSkip output5094 = false := by
  rw [output5094_def]
  conv => lhs; cbv
  try rfl
theorem node5094_eq : Flapjack.WordAlloc.removeDeadStructural input5094 value5 value1 value2 = (output5094, value2551, value1) := by
  rw [input5094_def, output5094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5092_eq]
  dsimp only
  rw [node5093_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2552 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19761 0#64))).val
theorem input5095_def : input5095 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19761 0#64)) := by
  unfold input5095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19761 0#64))).val
theorem output5095_def : output5095 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19761 0#64)) := by
  unfold output5095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5095_skip : Flapjack.WordAlloc.isSkip output5095 = false := by
  rw [output5095_def]
  conv => lhs; cbv
  try rfl
theorem node5095_eq : Flapjack.WordAlloc.removeDeadStructural input5095 value2551 value1 value2 = (output5095, value2552, value1) := by
  rw [input5095_def, output5095_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19757 0#64))).val
theorem input5096_def : input5096 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19757 0#64)) := by
  unfold input5096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5096_def : output5096 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5096_skip : Flapjack.WordAlloc.isSkip output5096 = true := by
  rw [output5096_def]
  conv => lhs; cbv
  try rfl
theorem node5096_eq : Flapjack.WordAlloc.removeDeadStructural input5096 value2552 value1 value2 = (output5096, value2552, value1) := by
  rw [input5096_def, output5096_def]
  try (conv => lhs; cbv)
  try rfl

def value2553 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19753 19745 (Flapjack.WordRegImm.reg 19749))))).val
theorem input5097_def : input5097 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19753 19745 (Flapjack.WordRegImm.reg 19749)))) := by
  unfold input5097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19753 19745 (Flapjack.WordRegImm.reg 19749))))).val
theorem output5097_def : output5097 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19753 19745 (Flapjack.WordRegImm.reg 19749)))) := by
  unfold output5097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5097_skip : Flapjack.WordAlloc.isSkip output5097 = false := by
  rw [output5097_def]
  conv => lhs; cbv
  try rfl
theorem node5097_eq : Flapjack.WordAlloc.removeDeadStructural input5097 value2552 value1 value2 = (output5097, value2553, value1) := by
  rw [input5097_def, output5097_def]
  try (conv => lhs; cbv)
  try rfl

def value2554 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19749 4584#64))).val
theorem input5098_def : input5098 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19749 4584#64)) := by
  unfold input5098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19749 4584#64))).val
theorem output5098_def : output5098 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19749 4584#64)) := by
  unfold output5098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5098_skip : Flapjack.WordAlloc.isSkip output5098 = false := by
  rw [output5098_def]
  conv => lhs; cbv
  try rfl
theorem node5098_eq : Flapjack.WordAlloc.removeDeadStructural input5098 value2553 value1 value2 = (output5098, value2554, value1) := by
  rw [input5098_def, output5098_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5098 input5097)).val
theorem input5099_def : input5099 = (.seq input5098 input5097) := by
  unfold input5099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5098 output5097)).val
theorem output5099_def : output5099 = (.seq output5098 output5097) := by
  unfold output5099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5099_skip : Flapjack.WordAlloc.isSkip output5099 = false := by
  rw [output5099_def]
  conv => lhs; cbv
  try rfl
theorem node5099_eq : Flapjack.WordAlloc.removeDeadStructural input5099 value2552 value1 value2 = (output5099, value2554, value1) := by
  rw [input5099_def, output5099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5097_eq]
  dsimp only
  rw [node5098_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2555 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19745 (Flapjack.WordLangAddr.addr 19741 18446744073709551104#64)))).val
theorem input5100_def : input5100 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19745 (Flapjack.WordLangAddr.addr 19741 18446744073709551104#64))) := by
  unfold input5100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19745 (Flapjack.WordLangAddr.addr 19741 18446744073709551104#64)))).val
theorem output5100_def : output5100 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19745 (Flapjack.WordLangAddr.addr 19741 18446744073709551104#64))) := by
  unfold output5100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5100_skip : Flapjack.WordAlloc.isSkip output5100 = false := by
  rw [output5100_def]
  conv => lhs; cbv
  try rfl
theorem node5100_eq : Flapjack.WordAlloc.removeDeadStructural input5100 value2554 value1 value2 = (output5100, value2555, value1) := by
  rw [input5100_def, output5100_def]
  try (conv => lhs; cbv)
  try rfl

def value2556 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19741 19737)).val
theorem input5101_def : input5101 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19741 19737) := by
  unfold input5101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19741 19737)).val
theorem output5101_def : output5101 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19741 19737) := by
  unfold output5101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5101_skip : Flapjack.WordAlloc.isSkip output5101 = false := by
  rw [output5101_def]
  conv => lhs; cbv
  try rfl
theorem node5101_eq : Flapjack.WordAlloc.removeDeadStructural input5101 value2555 value1 value2 = (output5101, value2556, value1) := by
  rw [input5101_def, output5101_def]
  try (conv => lhs; cbv)
  try rfl

def value2557 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19737 19733 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5102_def : input5102 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19737 19733 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19737 19733 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5102_def : output5102 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19737 19733 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5102_skip : Flapjack.WordAlloc.isSkip output5102 = false := by
  rw [output5102_def]
  conv => lhs; cbv
  try rfl
theorem node5102_eq : Flapjack.WordAlloc.removeDeadStructural input5102 value2556 value1 value2 = (output5102, value2557, value1) := by
  rw [input5102_def, output5102_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19733 Flapjack.WordStore.heapLength)).val
theorem input5103_def : input5103 = (Flapjack.WordLangProgHOL.get 19733 Flapjack.WordStore.heapLength) := by
  unfold input5103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19733 Flapjack.WordStore.heapLength)).val
theorem output5103_def : output5103 = (Flapjack.WordLangProgHOL.get 19733 Flapjack.WordStore.heapLength) := by
  unfold output5103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5103_skip : Flapjack.WordAlloc.isSkip output5103 = false := by
  rw [output5103_def]
  conv => lhs; cbv
  try rfl
theorem node5103_eq : Flapjack.WordAlloc.removeDeadStructural input5103 value2557 value1 value2 = (output5103, value5, value1) := by
  rw [input5103_def, output5103_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5103 input5102)).val
theorem input5104_def : input5104 = (.seq input5103 input5102) := by
  unfold input5104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5103 output5102)).val
theorem output5104_def : output5104 = (.seq output5103 output5102) := by
  unfold output5104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5104_skip : Flapjack.WordAlloc.isSkip output5104 = false := by
  rw [output5104_def]
  conv => lhs; cbv
  try rfl
theorem node5104_eq : Flapjack.WordAlloc.removeDeadStructural input5104 value2556 value1 value2 = (output5104, value5, value1) := by
  rw [input5104_def, output5104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5102_eq]
  dsimp only
  rw [node5103_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5104 input5101)).val
theorem input5105_def : input5105 = (.seq input5104 input5101) := by
  unfold input5105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5104 output5101)).val
theorem output5105_def : output5105 = (.seq output5104 output5101) := by
  unfold output5105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5105_skip : Flapjack.WordAlloc.isSkip output5105 = false := by
  rw [output5105_def]
  conv => lhs; cbv
  try rfl
theorem node5105_eq : Flapjack.WordAlloc.removeDeadStructural input5105 value2555 value1 value2 = (output5105, value5, value1) := by
  rw [input5105_def, output5105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5101_eq]
  dsimp only
  rw [node5104_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5105 input5100)).val
theorem input5106_def : input5106 = (.seq input5105 input5100) := by
  unfold input5106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5105 output5100)).val
theorem output5106_def : output5106 = (.seq output5105 output5100) := by
  unfold output5106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5106_skip : Flapjack.WordAlloc.isSkip output5106 = false := by
  rw [output5106_def]
  conv => lhs; cbv
  try rfl
theorem node5106_eq : Flapjack.WordAlloc.removeDeadStructural input5106 value2554 value1 value2 = (output5106, value5, value1) := by
  rw [input5106_def, output5106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5100_eq]
  dsimp only
  rw [node5105_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5106 input5099)).val
theorem input5107_def : input5107 = (.seq input5106 input5099) := by
  unfold input5107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5106 output5099)).val
theorem output5107_def : output5107 = (.seq output5106 output5099) := by
  unfold output5107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5107_skip : Flapjack.WordAlloc.isSkip output5107 = false := by
  rw [output5107_def]
  conv => lhs; cbv
  try rfl
theorem node5107_eq : Flapjack.WordAlloc.removeDeadStructural input5107 value2552 value1 value2 = (output5107, value5, value1) := by
  rw [input5107_def, output5107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5099_eq]
  dsimp only
  rw [node5106_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2558 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19725 (Flapjack.WordLangAddr.addr 19729 0#64)))).val
theorem input5108_def : input5108 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19725 (Flapjack.WordLangAddr.addr 19729 0#64))) := by
  unfold input5108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19725 (Flapjack.WordLangAddr.addr 19729 0#64)))).val
theorem output5108_def : output5108 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19725 (Flapjack.WordLangAddr.addr 19729 0#64))) := by
  unfold output5108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5108_skip : Flapjack.WordAlloc.isSkip output5108 = false := by
  rw [output5108_def]
  conv => lhs; cbv
  try rfl
theorem node5108_eq : Flapjack.WordAlloc.removeDeadStructural input5108 value5 value1 value2 = (output5108, value2558, value1) := by
  rw [input5108_def, output5108_def]
  try (conv => lhs; cbv)
  try rfl

def value2559 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19729, 19717)])).val
theorem input5109_def : input5109 = (Flapjack.WordLangProgHOL.move 0 [(19729, 19717)]) := by
  unfold input5109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19729, 19717)])).val
theorem output5109_def : output5109 = (Flapjack.WordLangProgHOL.move 0 [(19729, 19717)]) := by
  unfold output5109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5109_skip : Flapjack.WordAlloc.isSkip output5109 = false := by
  rw [output5109_def]
  conv => lhs; cbv
  try rfl
theorem node5109_eq : Flapjack.WordAlloc.removeDeadStructural input5109 value2558 value1 value2 = (output5109, value2559, value1) := by
  rw [input5109_def, output5109_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5109 input5108)).val
theorem input5110_def : input5110 = (.seq input5109 input5108) := by
  unfold input5110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5109 output5108)).val
theorem output5110_def : output5110 = (.seq output5109 output5108) := by
  unfold output5110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5110_skip : Flapjack.WordAlloc.isSkip output5110 = false := by
  rw [output5110_def]
  conv => lhs; cbv
  try rfl
theorem node5110_eq : Flapjack.WordAlloc.removeDeadStructural input5110 value5 value1 value2 = (output5110, value2559, value1) := by
  rw [input5110_def, output5110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5108_eq]
  dsimp only
  rw [node5109_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2560 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19725 0#64))).val
theorem input5111_def : input5111 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19725 0#64)) := by
  unfold input5111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19725 0#64))).val
theorem output5111_def : output5111 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19725 0#64)) := by
  unfold output5111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5111_skip : Flapjack.WordAlloc.isSkip output5111 = false := by
  rw [output5111_def]
  conv => lhs; cbv
  try rfl
theorem node5111_eq : Flapjack.WordAlloc.removeDeadStructural input5111 value2559 value1 value2 = (output5111, value2560, value1) := by
  rw [input5111_def, output5111_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19721 0#64))).val
theorem input5112_def : input5112 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19721 0#64)) := by
  unfold input5112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5112_def : output5112 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5112_skip : Flapjack.WordAlloc.isSkip output5112 = true := by
  rw [output5112_def]
  conv => lhs; cbv
  try rfl
theorem node5112_eq : Flapjack.WordAlloc.removeDeadStructural input5112 value2560 value1 value2 = (output5112, value2560, value1) := by
  rw [input5112_def, output5112_def]
  try (conv => lhs; cbv)
  try rfl

def value2561 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19717 19709 (Flapjack.WordRegImm.reg 19713))))).val
theorem input5113_def : input5113 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19717 19709 (Flapjack.WordRegImm.reg 19713)))) := by
  unfold input5113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19717 19709 (Flapjack.WordRegImm.reg 19713))))).val
theorem output5113_def : output5113 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19717 19709 (Flapjack.WordRegImm.reg 19713)))) := by
  unfold output5113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5113_skip : Flapjack.WordAlloc.isSkip output5113 = false := by
  rw [output5113_def]
  conv => lhs; cbv
  try rfl
theorem node5113_eq : Flapjack.WordAlloc.removeDeadStructural input5113 value2560 value1 value2 = (output5113, value2561, value1) := by
  rw [input5113_def, output5113_def]
  try (conv => lhs; cbv)
  try rfl

def value2562 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19713 4576#64))).val
theorem input5114_def : input5114 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19713 4576#64)) := by
  unfold input5114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19713 4576#64))).val
theorem output5114_def : output5114 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19713 4576#64)) := by
  unfold output5114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5114_skip : Flapjack.WordAlloc.isSkip output5114 = false := by
  rw [output5114_def]
  conv => lhs; cbv
  try rfl
theorem node5114_eq : Flapjack.WordAlloc.removeDeadStructural input5114 value2561 value1 value2 = (output5114, value2562, value1) := by
  rw [input5114_def, output5114_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5114 input5113)).val
theorem input5115_def : input5115 = (.seq input5114 input5113) := by
  unfold input5115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5114 output5113)).val
theorem output5115_def : output5115 = (.seq output5114 output5113) := by
  unfold output5115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5115_skip : Flapjack.WordAlloc.isSkip output5115 = false := by
  rw [output5115_def]
  conv => lhs; cbv
  try rfl
theorem node5115_eq : Flapjack.WordAlloc.removeDeadStructural input5115 value2560 value1 value2 = (output5115, value2562, value1) := by
  rw [input5115_def, output5115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5113_eq]
  dsimp only
  rw [node5114_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2563 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19709 (Flapjack.WordLangAddr.addr 19705 18446744073709551104#64)))).val
theorem input5116_def : input5116 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19709 (Flapjack.WordLangAddr.addr 19705 18446744073709551104#64))) := by
  unfold input5116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19709 (Flapjack.WordLangAddr.addr 19705 18446744073709551104#64)))).val
theorem output5116_def : output5116 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19709 (Flapjack.WordLangAddr.addr 19705 18446744073709551104#64))) := by
  unfold output5116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5116_skip : Flapjack.WordAlloc.isSkip output5116 = false := by
  rw [output5116_def]
  conv => lhs; cbv
  try rfl
theorem node5116_eq : Flapjack.WordAlloc.removeDeadStructural input5116 value2562 value1 value2 = (output5116, value2563, value1) := by
  rw [input5116_def, output5116_def]
  try (conv => lhs; cbv)
  try rfl

def value2564 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19705 19701)).val
theorem input5117_def : input5117 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19705 19701) := by
  unfold input5117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19705 19701)).val
theorem output5117_def : output5117 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19705 19701) := by
  unfold output5117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5117_skip : Flapjack.WordAlloc.isSkip output5117 = false := by
  rw [output5117_def]
  conv => lhs; cbv
  try rfl
theorem node5117_eq : Flapjack.WordAlloc.removeDeadStructural input5117 value2563 value1 value2 = (output5117, value2564, value1) := by
  rw [input5117_def, output5117_def]
  try (conv => lhs; cbv)
  try rfl

def value2565 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19701 19697 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5118_def : input5118 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19701 19697 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19701 19697 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5118_def : output5118 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19701 19697 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5118_skip : Flapjack.WordAlloc.isSkip output5118 = false := by
  rw [output5118_def]
  conv => lhs; cbv
  try rfl
theorem node5118_eq : Flapjack.WordAlloc.removeDeadStructural input5118 value2564 value1 value2 = (output5118, value2565, value1) := by
  rw [input5118_def, output5118_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19697 Flapjack.WordStore.heapLength)).val
theorem input5119_def : input5119 = (Flapjack.WordLangProgHOL.get 19697 Flapjack.WordStore.heapLength) := by
  unfold input5119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19697 Flapjack.WordStore.heapLength)).val
theorem output5119_def : output5119 = (Flapjack.WordLangProgHOL.get 19697 Flapjack.WordStore.heapLength) := by
  unfold output5119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5119_skip : Flapjack.WordAlloc.isSkip output5119 = false := by
  rw [output5119_def]
  conv => lhs; cbv
  try rfl
theorem node5119_eq : Flapjack.WordAlloc.removeDeadStructural input5119 value2565 value1 value2 = (output5119, value5, value1) := by
  rw [input5119_def, output5119_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node5119_eq
end InitECandidate.Proofs.DeadStages713
