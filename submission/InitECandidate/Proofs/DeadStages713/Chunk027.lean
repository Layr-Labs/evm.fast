import InitECandidate.Proofs.DeadStages713.Chunk026
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input6912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6911 input6910)).val
theorem input6912_def : input6912 = (.seq input6911 input6910) := by
  unfold input6912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6911 output6910)).val
theorem output6912_def : output6912 = (.seq output6911 output6910) := by
  unfold output6912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6912_skip : Flapjack.WordAlloc.isSkip output6912 = false := by
  rw [output6912_def]
  conv => lhs; cbv
  try rfl
theorem node6912_eq : Flapjack.WordAlloc.removeDeadStructural input6912 value3460 value1 value2 = (output6912, value5, value1) := by
  rw [input6912_def, output6912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6910_eq]
  dsimp only
  rw [node6911_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6912 input6909)).val
theorem input6913_def : input6913 = (.seq input6912 input6909) := by
  unfold input6913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6912 output6909)).val
theorem output6913_def : output6913 = (.seq output6912 output6909) := by
  unfold output6913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6913_skip : Flapjack.WordAlloc.isSkip output6913 = false := by
  rw [output6913_def]
  conv => lhs; cbv
  try rfl
theorem node6913_eq : Flapjack.WordAlloc.removeDeadStructural input6913 value3459 value1 value2 = (output6913, value5, value1) := by
  rw [input6913_def, output6913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6909_eq]
  dsimp only
  rw [node6912_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6913 input6908)).val
theorem input6914_def : input6914 = (.seq input6913 input6908) := by
  unfold input6914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6913 output6908)).val
theorem output6914_def : output6914 = (.seq output6913 output6908) := by
  unfold output6914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6914_skip : Flapjack.WordAlloc.isSkip output6914 = false := by
  rw [output6914_def]
  conv => lhs; cbv
  try rfl
theorem node6914_eq : Flapjack.WordAlloc.removeDeadStructural input6914 value3458 value1 value2 = (output6914, value5, value1) := by
  rw [input6914_def, output6914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6908_eq]
  dsimp only
  rw [node6913_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6914 input6907)).val
theorem input6915_def : input6915 = (.seq input6914 input6907) := by
  unfold input6915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6914 output6907)).val
theorem output6915_def : output6915 = (.seq output6914 output6907) := by
  unfold output6915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6915_skip : Flapjack.WordAlloc.isSkip output6915 = false := by
  rw [output6915_def]
  conv => lhs; cbv
  try rfl
theorem node6915_eq : Flapjack.WordAlloc.removeDeadStructural input6915 value3456 value1 value2 = (output6915, value5, value1) := by
  rw [input6915_def, output6915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6907_eq]
  dsimp only
  rw [node6914_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3462 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15657 (Flapjack.WordLangAddr.addr 15661 0#64)))).val
theorem input6916_def : input6916 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15657 (Flapjack.WordLangAddr.addr 15661 0#64))) := by
  unfold input6916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15657 (Flapjack.WordLangAddr.addr 15661 0#64)))).val
theorem output6916_def : output6916 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15657 (Flapjack.WordLangAddr.addr 15661 0#64))) := by
  unfold output6916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6916_skip : Flapjack.WordAlloc.isSkip output6916 = false := by
  rw [output6916_def]
  conv => lhs; cbv
  try rfl
theorem node6916_eq : Flapjack.WordAlloc.removeDeadStructural input6916 value5 value1 value2 = (output6916, value3462, value1) := by
  rw [input6916_def, output6916_def]
  try (conv => lhs; cbv)
  try rfl

def value3463 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15661, 15649)])).val
theorem input6917_def : input6917 = (Flapjack.WordLangProgHOL.move 0 [(15661, 15649)]) := by
  unfold input6917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15661, 15649)])).val
theorem output6917_def : output6917 = (Flapjack.WordLangProgHOL.move 0 [(15661, 15649)]) := by
  unfold output6917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6917_skip : Flapjack.WordAlloc.isSkip output6917 = false := by
  rw [output6917_def]
  conv => lhs; cbv
  try rfl
theorem node6917_eq : Flapjack.WordAlloc.removeDeadStructural input6917 value3462 value1 value2 = (output6917, value3463, value1) := by
  rw [input6917_def, output6917_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6917 input6916)).val
theorem input6918_def : input6918 = (.seq input6917 input6916) := by
  unfold input6918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6917 output6916)).val
theorem output6918_def : output6918 = (.seq output6917 output6916) := by
  unfold output6918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6918_skip : Flapjack.WordAlloc.isSkip output6918 = false := by
  rw [output6918_def]
  conv => lhs; cbv
  try rfl
theorem node6918_eq : Flapjack.WordAlloc.removeDeadStructural input6918 value5 value1 value2 = (output6918, value3463, value1) := by
  rw [input6918_def, output6918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6916_eq]
  dsimp only
  rw [node6917_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3464 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15657 163716820423854747#64))).val
theorem input6919_def : input6919 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15657 163716820423854747#64)) := by
  unfold input6919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15657 163716820423854747#64))).val
theorem output6919_def : output6919 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15657 163716820423854747#64)) := by
  unfold output6919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6919_skip : Flapjack.WordAlloc.isSkip output6919 = false := by
  rw [output6919_def]
  conv => lhs; cbv
  try rfl
theorem node6919_eq : Flapjack.WordAlloc.removeDeadStructural input6919 value3463 value1 value2 = (output6919, value3464, value1) := by
  rw [input6919_def, output6919_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15653 163716820423854747#64))).val
theorem input6920_def : input6920 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15653 163716820423854747#64)) := by
  unfold input6920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6920_def : output6920 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6920_skip : Flapjack.WordAlloc.isSkip output6920 = true := by
  rw [output6920_def]
  conv => lhs; cbv
  try rfl
theorem node6920_eq : Flapjack.WordAlloc.removeDeadStructural input6920 value3464 value1 value2 = (output6920, value3464, value1) := by
  rw [input6920_def, output6920_def]
  try (conv => lhs; cbv)
  try rfl

def value3465 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15649 15641 (Flapjack.WordRegImm.reg 15645))))).val
theorem input6921_def : input6921 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15649 15641 (Flapjack.WordRegImm.reg 15645)))) := by
  unfold input6921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15649 15641 (Flapjack.WordRegImm.reg 15645))))).val
theorem output6921_def : output6921 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15649 15641 (Flapjack.WordRegImm.reg 15645)))) := by
  unfold output6921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6921_skip : Flapjack.WordAlloc.isSkip output6921 = false := by
  rw [output6921_def]
  conv => lhs; cbv
  try rfl
theorem node6921_eq : Flapjack.WordAlloc.removeDeadStructural input6921 value3464 value1 value2 = (output6921, value3465, value1) := by
  rw [input6921_def, output6921_def]
  try (conv => lhs; cbv)
  try rfl

def value3466 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15645 3672#64))).val
theorem input6922_def : input6922 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15645 3672#64)) := by
  unfold input6922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15645 3672#64))).val
theorem output6922_def : output6922 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15645 3672#64)) := by
  unfold output6922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6922_skip : Flapjack.WordAlloc.isSkip output6922 = false := by
  rw [output6922_def]
  conv => lhs; cbv
  try rfl
theorem node6922_eq : Flapjack.WordAlloc.removeDeadStructural input6922 value3465 value1 value2 = (output6922, value3466, value1) := by
  rw [input6922_def, output6922_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6922 input6921)).val
theorem input6923_def : input6923 = (.seq input6922 input6921) := by
  unfold input6923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6922 output6921)).val
theorem output6923_def : output6923 = (.seq output6922 output6921) := by
  unfold output6923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6923_skip : Flapjack.WordAlloc.isSkip output6923 = false := by
  rw [output6923_def]
  conv => lhs; cbv
  try rfl
theorem node6923_eq : Flapjack.WordAlloc.removeDeadStructural input6923 value3464 value1 value2 = (output6923, value3466, value1) := by
  rw [input6923_def, output6923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6921_eq]
  dsimp only
  rw [node6922_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3467 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15641 (Flapjack.WordLangAddr.addr 15637 18446744073709551104#64)))).val
theorem input6924_def : input6924 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15641 (Flapjack.WordLangAddr.addr 15637 18446744073709551104#64))) := by
  unfold input6924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15641 (Flapjack.WordLangAddr.addr 15637 18446744073709551104#64)))).val
theorem output6924_def : output6924 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15641 (Flapjack.WordLangAddr.addr 15637 18446744073709551104#64))) := by
  unfold output6924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6924_skip : Flapjack.WordAlloc.isSkip output6924 = false := by
  rw [output6924_def]
  conv => lhs; cbv
  try rfl
theorem node6924_eq : Flapjack.WordAlloc.removeDeadStructural input6924 value3466 value1 value2 = (output6924, value3467, value1) := by
  rw [input6924_def, output6924_def]
  try (conv => lhs; cbv)
  try rfl

def value3468 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15637 15633)).val
theorem input6925_def : input6925 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15637 15633) := by
  unfold input6925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15637 15633)).val
theorem output6925_def : output6925 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15637 15633) := by
  unfold output6925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6925_skip : Flapjack.WordAlloc.isSkip output6925 = false := by
  rw [output6925_def]
  conv => lhs; cbv
  try rfl
theorem node6925_eq : Flapjack.WordAlloc.removeDeadStructural input6925 value3467 value1 value2 = (output6925, value3468, value1) := by
  rw [input6925_def, output6925_def]
  try (conv => lhs; cbv)
  try rfl

def value3469 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15633 15629 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6926_def : input6926 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15633 15629 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15633 15629 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6926_def : output6926 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15633 15629 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6926_skip : Flapjack.WordAlloc.isSkip output6926 = false := by
  rw [output6926_def]
  conv => lhs; cbv
  try rfl
theorem node6926_eq : Flapjack.WordAlloc.removeDeadStructural input6926 value3468 value1 value2 = (output6926, value3469, value1) := by
  rw [input6926_def, output6926_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15629 Flapjack.WordStore.heapLength)).val
theorem input6927_def : input6927 = (Flapjack.WordLangProgHOL.get 15629 Flapjack.WordStore.heapLength) := by
  unfold input6927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15629 Flapjack.WordStore.heapLength)).val
theorem output6927_def : output6927 = (Flapjack.WordLangProgHOL.get 15629 Flapjack.WordStore.heapLength) := by
  unfold output6927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6927_skip : Flapjack.WordAlloc.isSkip output6927 = false := by
  rw [output6927_def]
  conv => lhs; cbv
  try rfl
theorem node6927_eq : Flapjack.WordAlloc.removeDeadStructural input6927 value3469 value1 value2 = (output6927, value5, value1) := by
  rw [input6927_def, output6927_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6927 input6926)).val
theorem input6928_def : input6928 = (.seq input6927 input6926) := by
  unfold input6928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6927 output6926)).val
theorem output6928_def : output6928 = (.seq output6927 output6926) := by
  unfold output6928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6928_skip : Flapjack.WordAlloc.isSkip output6928 = false := by
  rw [output6928_def]
  conv => lhs; cbv
  try rfl
theorem node6928_eq : Flapjack.WordAlloc.removeDeadStructural input6928 value3468 value1 value2 = (output6928, value5, value1) := by
  rw [input6928_def, output6928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6926_eq]
  dsimp only
  rw [node6927_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6928 input6925)).val
theorem input6929_def : input6929 = (.seq input6928 input6925) := by
  unfold input6929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6928 output6925)).val
theorem output6929_def : output6929 = (.seq output6928 output6925) := by
  unfold output6929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6929_skip : Flapjack.WordAlloc.isSkip output6929 = false := by
  rw [output6929_def]
  conv => lhs; cbv
  try rfl
theorem node6929_eq : Flapjack.WordAlloc.removeDeadStructural input6929 value3467 value1 value2 = (output6929, value5, value1) := by
  rw [input6929_def, output6929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6925_eq]
  dsimp only
  rw [node6928_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6929 input6924)).val
theorem input6930_def : input6930 = (.seq input6929 input6924) := by
  unfold input6930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6929 output6924)).val
theorem output6930_def : output6930 = (.seq output6929 output6924) := by
  unfold output6930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6930_skip : Flapjack.WordAlloc.isSkip output6930 = false := by
  rw [output6930_def]
  conv => lhs; cbv
  try rfl
theorem node6930_eq : Flapjack.WordAlloc.removeDeadStructural input6930 value3466 value1 value2 = (output6930, value5, value1) := by
  rw [input6930_def, output6930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6924_eq]
  dsimp only
  rw [node6929_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6930 input6923)).val
theorem input6931_def : input6931 = (.seq input6930 input6923) := by
  unfold input6931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6930 output6923)).val
theorem output6931_def : output6931 = (.seq output6930 output6923) := by
  unfold output6931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6931_skip : Flapjack.WordAlloc.isSkip output6931 = false := by
  rw [output6931_def]
  conv => lhs; cbv
  try rfl
theorem node6931_eq : Flapjack.WordAlloc.removeDeadStructural input6931 value3464 value1 value2 = (output6931, value5, value1) := by
  rw [input6931_def, output6931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6923_eq]
  dsimp only
  rw [node6930_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3470 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15621 (Flapjack.WordLangAddr.addr 15625 0#64)))).val
theorem input6932_def : input6932 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15621 (Flapjack.WordLangAddr.addr 15625 0#64))) := by
  unfold input6932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15621 (Flapjack.WordLangAddr.addr 15625 0#64)))).val
theorem output6932_def : output6932 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15621 (Flapjack.WordLangAddr.addr 15625 0#64))) := by
  unfold output6932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6932_skip : Flapjack.WordAlloc.isSkip output6932 = false := by
  rw [output6932_def]
  conv => lhs; cbv
  try rfl
theorem node6932_eq : Flapjack.WordAlloc.removeDeadStructural input6932 value5 value1 value2 = (output6932, value3470, value1) := by
  rw [input6932_def, output6932_def]
  try (conv => lhs; cbv)
  try rfl

def value3471 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15625, 15613)])).val
theorem input6933_def : input6933 = (Flapjack.WordLangProgHOL.move 0 [(15625, 15613)]) := by
  unfold input6933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15625, 15613)])).val
theorem output6933_def : output6933 = (Flapjack.WordLangProgHOL.move 0 [(15625, 15613)]) := by
  unfold output6933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6933_skip : Flapjack.WordAlloc.isSkip output6933 = false := by
  rw [output6933_def]
  conv => lhs; cbv
  try rfl
theorem node6933_eq : Flapjack.WordAlloc.removeDeadStructural input6933 value3470 value1 value2 = (output6933, value3471, value1) := by
  rw [input6933_def, output6933_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6933 input6932)).val
theorem input6934_def : input6934 = (.seq input6933 input6932) := by
  unfold input6934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6933 output6932)).val
theorem output6934_def : output6934 = (.seq output6933 output6932) := by
  unfold output6934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6934_skip : Flapjack.WordAlloc.isSkip output6934 = false := by
  rw [output6934_def]
  conv => lhs; cbv
  try rfl
theorem node6934_eq : Flapjack.WordAlloc.removeDeadStructural input6934 value5 value1 value2 = (output6934, value3471, value1) := by
  rw [input6934_def, output6934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6932_eq]
  dsimp only
  rw [node6933_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3472 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15621 8285498163857659356#64))).val
theorem input6935_def : input6935 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15621 8285498163857659356#64)) := by
  unfold input6935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15621 8285498163857659356#64))).val
theorem output6935_def : output6935 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15621 8285498163857659356#64)) := by
  unfold output6935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6935_skip : Flapjack.WordAlloc.isSkip output6935 = false := by
  rw [output6935_def]
  conv => lhs; cbv
  try rfl
theorem node6935_eq : Flapjack.WordAlloc.removeDeadStructural input6935 value3471 value1 value2 = (output6935, value3472, value1) := by
  rw [input6935_def, output6935_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15617 8285498163857659356#64))).val
theorem input6936_def : input6936 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15617 8285498163857659356#64)) := by
  unfold input6936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6936_def : output6936 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6936_skip : Flapjack.WordAlloc.isSkip output6936 = true := by
  rw [output6936_def]
  conv => lhs; cbv
  try rfl
theorem node6936_eq : Flapjack.WordAlloc.removeDeadStructural input6936 value3472 value1 value2 = (output6936, value3472, value1) := by
  rw [input6936_def, output6936_def]
  try (conv => lhs; cbv)
  try rfl

def value3473 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15613 15605 (Flapjack.WordRegImm.reg 15609))))).val
theorem input6937_def : input6937 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15613 15605 (Flapjack.WordRegImm.reg 15609)))) := by
  unfold input6937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15613 15605 (Flapjack.WordRegImm.reg 15609))))).val
theorem output6937_def : output6937 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15613 15605 (Flapjack.WordRegImm.reg 15609)))) := by
  unfold output6937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6937_skip : Flapjack.WordAlloc.isSkip output6937 = false := by
  rw [output6937_def]
  conv => lhs; cbv
  try rfl
theorem node6937_eq : Flapjack.WordAlloc.removeDeadStructural input6937 value3472 value1 value2 = (output6937, value3473, value1) := by
  rw [input6937_def, output6937_def]
  try (conv => lhs; cbv)
  try rfl

def value3474 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15609 3664#64))).val
theorem input6938_def : input6938 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15609 3664#64)) := by
  unfold input6938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15609 3664#64))).val
theorem output6938_def : output6938 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15609 3664#64)) := by
  unfold output6938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6938_skip : Flapjack.WordAlloc.isSkip output6938 = false := by
  rw [output6938_def]
  conv => lhs; cbv
  try rfl
theorem node6938_eq : Flapjack.WordAlloc.removeDeadStructural input6938 value3473 value1 value2 = (output6938, value3474, value1) := by
  rw [input6938_def, output6938_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6938 input6937)).val
theorem input6939_def : input6939 = (.seq input6938 input6937) := by
  unfold input6939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6938 output6937)).val
theorem output6939_def : output6939 = (.seq output6938 output6937) := by
  unfold output6939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6939_skip : Flapjack.WordAlloc.isSkip output6939 = false := by
  rw [output6939_def]
  conv => lhs; cbv
  try rfl
theorem node6939_eq : Flapjack.WordAlloc.removeDeadStructural input6939 value3472 value1 value2 = (output6939, value3474, value1) := by
  rw [input6939_def, output6939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6937_eq]
  dsimp only
  rw [node6938_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3475 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15605 (Flapjack.WordLangAddr.addr 15601 18446744073709551104#64)))).val
theorem input6940_def : input6940 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15605 (Flapjack.WordLangAddr.addr 15601 18446744073709551104#64))) := by
  unfold input6940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15605 (Flapjack.WordLangAddr.addr 15601 18446744073709551104#64)))).val
theorem output6940_def : output6940 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15605 (Flapjack.WordLangAddr.addr 15601 18446744073709551104#64))) := by
  unfold output6940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6940_skip : Flapjack.WordAlloc.isSkip output6940 = false := by
  rw [output6940_def]
  conv => lhs; cbv
  try rfl
theorem node6940_eq : Flapjack.WordAlloc.removeDeadStructural input6940 value3474 value1 value2 = (output6940, value3475, value1) := by
  rw [input6940_def, output6940_def]
  try (conv => lhs; cbv)
  try rfl

def value3476 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15601 15597)).val
theorem input6941_def : input6941 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15601 15597) := by
  unfold input6941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15601 15597)).val
theorem output6941_def : output6941 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15601 15597) := by
  unfold output6941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6941_skip : Flapjack.WordAlloc.isSkip output6941 = false := by
  rw [output6941_def]
  conv => lhs; cbv
  try rfl
theorem node6941_eq : Flapjack.WordAlloc.removeDeadStructural input6941 value3475 value1 value2 = (output6941, value3476, value1) := by
  rw [input6941_def, output6941_def]
  try (conv => lhs; cbv)
  try rfl

def value3477 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15597 15593 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6942_def : input6942 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15597 15593 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15597 15593 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6942_def : output6942 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15597 15593 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6942_skip : Flapjack.WordAlloc.isSkip output6942 = false := by
  rw [output6942_def]
  conv => lhs; cbv
  try rfl
theorem node6942_eq : Flapjack.WordAlloc.removeDeadStructural input6942 value3476 value1 value2 = (output6942, value3477, value1) := by
  rw [input6942_def, output6942_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15593 Flapjack.WordStore.heapLength)).val
theorem input6943_def : input6943 = (Flapjack.WordLangProgHOL.get 15593 Flapjack.WordStore.heapLength) := by
  unfold input6943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15593 Flapjack.WordStore.heapLength)).val
theorem output6943_def : output6943 = (Flapjack.WordLangProgHOL.get 15593 Flapjack.WordStore.heapLength) := by
  unfold output6943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6943_skip : Flapjack.WordAlloc.isSkip output6943 = false := by
  rw [output6943_def]
  conv => lhs; cbv
  try rfl
theorem node6943_eq : Flapjack.WordAlloc.removeDeadStructural input6943 value3477 value1 value2 = (output6943, value5, value1) := by
  rw [input6943_def, output6943_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6943 input6942)).val
theorem input6944_def : input6944 = (.seq input6943 input6942) := by
  unfold input6944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6943 output6942)).val
theorem output6944_def : output6944 = (.seq output6943 output6942) := by
  unfold output6944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6944_skip : Flapjack.WordAlloc.isSkip output6944 = false := by
  rw [output6944_def]
  conv => lhs; cbv
  try rfl
theorem node6944_eq : Flapjack.WordAlloc.removeDeadStructural input6944 value3476 value1 value2 = (output6944, value5, value1) := by
  rw [input6944_def, output6944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6942_eq]
  dsimp only
  rw [node6943_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6944 input6941)).val
theorem input6945_def : input6945 = (.seq input6944 input6941) := by
  unfold input6945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6944 output6941)).val
theorem output6945_def : output6945 = (.seq output6944 output6941) := by
  unfold output6945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6945_skip : Flapjack.WordAlloc.isSkip output6945 = false := by
  rw [output6945_def]
  conv => lhs; cbv
  try rfl
theorem node6945_eq : Flapjack.WordAlloc.removeDeadStructural input6945 value3475 value1 value2 = (output6945, value5, value1) := by
  rw [input6945_def, output6945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6941_eq]
  dsimp only
  rw [node6944_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6945 input6940)).val
theorem input6946_def : input6946 = (.seq input6945 input6940) := by
  unfold input6946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6945 output6940)).val
theorem output6946_def : output6946 = (.seq output6945 output6940) := by
  unfold output6946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6946_skip : Flapjack.WordAlloc.isSkip output6946 = false := by
  rw [output6946_def]
  conv => lhs; cbv
  try rfl
theorem node6946_eq : Flapjack.WordAlloc.removeDeadStructural input6946 value3474 value1 value2 = (output6946, value5, value1) := by
  rw [input6946_def, output6946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6940_eq]
  dsimp only
  rw [node6945_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6946 input6939)).val
theorem input6947_def : input6947 = (.seq input6946 input6939) := by
  unfold input6947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6946 output6939)).val
theorem output6947_def : output6947 = (.seq output6946 output6939) := by
  unfold output6947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6947_skip : Flapjack.WordAlloc.isSkip output6947 = false := by
  rw [output6947_def]
  conv => lhs; cbv
  try rfl
theorem node6947_eq : Flapjack.WordAlloc.removeDeadStructural input6947 value3472 value1 value2 = (output6947, value5, value1) := by
  rw [input6947_def, output6947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6939_eq]
  dsimp only
  rw [node6946_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3478 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15585 (Flapjack.WordLangAddr.addr 15589 0#64)))).val
theorem input6948_def : input6948 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15585 (Flapjack.WordLangAddr.addr 15589 0#64))) := by
  unfold input6948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15585 (Flapjack.WordLangAddr.addr 15589 0#64)))).val
theorem output6948_def : output6948 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15585 (Flapjack.WordLangAddr.addr 15589 0#64))) := by
  unfold output6948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6948_skip : Flapjack.WordAlloc.isSkip output6948 = false := by
  rw [output6948_def]
  conv => lhs; cbv
  try rfl
theorem node6948_eq : Flapjack.WordAlloc.removeDeadStructural input6948 value5 value1 value2 = (output6948, value3478, value1) := by
  rw [input6948_def, output6948_def]
  try (conv => lhs; cbv)
  try rfl

def value3479 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15589, 15577)])).val
theorem input6949_def : input6949 = (Flapjack.WordLangProgHOL.move 0 [(15589, 15577)]) := by
  unfold input6949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15589, 15577)])).val
theorem output6949_def : output6949 = (Flapjack.WordLangProgHOL.move 0 [(15589, 15577)]) := by
  unfold output6949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6949_skip : Flapjack.WordAlloc.isSkip output6949 = false := by
  rw [output6949_def]
  conv => lhs; cbv
  try rfl
theorem node6949_eq : Flapjack.WordAlloc.removeDeadStructural input6949 value3478 value1 value2 = (output6949, value3479, value1) := by
  rw [input6949_def, output6949_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6949 input6948)).val
theorem input6950_def : input6950 = (.seq input6949 input6948) := by
  unfold input6950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6949 output6948)).val
theorem output6950_def : output6950 = (.seq output6949 output6948) := by
  unfold output6950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6950_skip : Flapjack.WordAlloc.isSkip output6950 = false := by
  rw [output6950_def]
  conv => lhs; cbv
  try rfl
theorem node6950_eq : Flapjack.WordAlloc.removeDeadStructural input6950 value5 value1 value2 = (output6950, value3479, value1) := by
  rw [input6950_def, output6950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6948_eq]
  dsimp only
  rw [node6949_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3480 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15585 8465424830341846400#64))).val
theorem input6951_def : input6951 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15585 8465424830341846400#64)) := by
  unfold input6951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15585 8465424830341846400#64))).val
theorem output6951_def : output6951 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15585 8465424830341846400#64)) := by
  unfold output6951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6951_skip : Flapjack.WordAlloc.isSkip output6951 = false := by
  rw [output6951_def]
  conv => lhs; cbv
  try rfl
theorem node6951_eq : Flapjack.WordAlloc.removeDeadStructural input6951 value3479 value1 value2 = (output6951, value3480, value1) := by
  rw [input6951_def, output6951_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15581 8465424830341846400#64))).val
theorem input6952_def : input6952 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15581 8465424830341846400#64)) := by
  unfold input6952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6952_def : output6952 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6952_skip : Flapjack.WordAlloc.isSkip output6952 = true := by
  rw [output6952_def]
  conv => lhs; cbv
  try rfl
theorem node6952_eq : Flapjack.WordAlloc.removeDeadStructural input6952 value3480 value1 value2 = (output6952, value3480, value1) := by
  rw [input6952_def, output6952_def]
  try (conv => lhs; cbv)
  try rfl

def value3481 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15577 15569 (Flapjack.WordRegImm.reg 15573))))).val
theorem input6953_def : input6953 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15577 15569 (Flapjack.WordRegImm.reg 15573)))) := by
  unfold input6953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15577 15569 (Flapjack.WordRegImm.reg 15573))))).val
theorem output6953_def : output6953 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15577 15569 (Flapjack.WordRegImm.reg 15573)))) := by
  unfold output6953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6953_skip : Flapjack.WordAlloc.isSkip output6953 = false := by
  rw [output6953_def]
  conv => lhs; cbv
  try rfl
theorem node6953_eq : Flapjack.WordAlloc.removeDeadStructural input6953 value3480 value1 value2 = (output6953, value3481, value1) := by
  rw [input6953_def, output6953_def]
  try (conv => lhs; cbv)
  try rfl

def value3482 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15573 3656#64))).val
theorem input6954_def : input6954 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15573 3656#64)) := by
  unfold input6954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15573 3656#64))).val
theorem output6954_def : output6954 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15573 3656#64)) := by
  unfold output6954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6954_skip : Flapjack.WordAlloc.isSkip output6954 = false := by
  rw [output6954_def]
  conv => lhs; cbv
  try rfl
theorem node6954_eq : Flapjack.WordAlloc.removeDeadStructural input6954 value3481 value1 value2 = (output6954, value3482, value1) := by
  rw [input6954_def, output6954_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6954 input6953)).val
theorem input6955_def : input6955 = (.seq input6954 input6953) := by
  unfold input6955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6954 output6953)).val
theorem output6955_def : output6955 = (.seq output6954 output6953) := by
  unfold output6955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6955_skip : Flapjack.WordAlloc.isSkip output6955 = false := by
  rw [output6955_def]
  conv => lhs; cbv
  try rfl
theorem node6955_eq : Flapjack.WordAlloc.removeDeadStructural input6955 value3480 value1 value2 = (output6955, value3482, value1) := by
  rw [input6955_def, output6955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6953_eq]
  dsimp only
  rw [node6954_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3483 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15569 (Flapjack.WordLangAddr.addr 15565 18446744073709551104#64)))).val
theorem input6956_def : input6956 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15569 (Flapjack.WordLangAddr.addr 15565 18446744073709551104#64))) := by
  unfold input6956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15569 (Flapjack.WordLangAddr.addr 15565 18446744073709551104#64)))).val
theorem output6956_def : output6956 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15569 (Flapjack.WordLangAddr.addr 15565 18446744073709551104#64))) := by
  unfold output6956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6956_skip : Flapjack.WordAlloc.isSkip output6956 = false := by
  rw [output6956_def]
  conv => lhs; cbv
  try rfl
theorem node6956_eq : Flapjack.WordAlloc.removeDeadStructural input6956 value3482 value1 value2 = (output6956, value3483, value1) := by
  rw [input6956_def, output6956_def]
  try (conv => lhs; cbv)
  try rfl

def value3484 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15565 15561)).val
theorem input6957_def : input6957 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15565 15561) := by
  unfold input6957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15565 15561)).val
theorem output6957_def : output6957 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15565 15561) := by
  unfold output6957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6957_skip : Flapjack.WordAlloc.isSkip output6957 = false := by
  rw [output6957_def]
  conv => lhs; cbv
  try rfl
theorem node6957_eq : Flapjack.WordAlloc.removeDeadStructural input6957 value3483 value1 value2 = (output6957, value3484, value1) := by
  rw [input6957_def, output6957_def]
  try (conv => lhs; cbv)
  try rfl

def value3485 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15561 15557 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6958_def : input6958 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15561 15557 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15561 15557 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6958_def : output6958 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15561 15557 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6958_skip : Flapjack.WordAlloc.isSkip output6958 = false := by
  rw [output6958_def]
  conv => lhs; cbv
  try rfl
theorem node6958_eq : Flapjack.WordAlloc.removeDeadStructural input6958 value3484 value1 value2 = (output6958, value3485, value1) := by
  rw [input6958_def, output6958_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15557 Flapjack.WordStore.heapLength)).val
theorem input6959_def : input6959 = (Flapjack.WordLangProgHOL.get 15557 Flapjack.WordStore.heapLength) := by
  unfold input6959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15557 Flapjack.WordStore.heapLength)).val
theorem output6959_def : output6959 = (Flapjack.WordLangProgHOL.get 15557 Flapjack.WordStore.heapLength) := by
  unfold output6959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6959_skip : Flapjack.WordAlloc.isSkip output6959 = false := by
  rw [output6959_def]
  conv => lhs; cbv
  try rfl
theorem node6959_eq : Flapjack.WordAlloc.removeDeadStructural input6959 value3485 value1 value2 = (output6959, value5, value1) := by
  rw [input6959_def, output6959_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6959 input6958)).val
theorem input6960_def : input6960 = (.seq input6959 input6958) := by
  unfold input6960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6959 output6958)).val
theorem output6960_def : output6960 = (.seq output6959 output6958) := by
  unfold output6960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6960_skip : Flapjack.WordAlloc.isSkip output6960 = false := by
  rw [output6960_def]
  conv => lhs; cbv
  try rfl
theorem node6960_eq : Flapjack.WordAlloc.removeDeadStructural input6960 value3484 value1 value2 = (output6960, value5, value1) := by
  rw [input6960_def, output6960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6958_eq]
  dsimp only
  rw [node6959_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6960 input6957)).val
theorem input6961_def : input6961 = (.seq input6960 input6957) := by
  unfold input6961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6960 output6957)).val
theorem output6961_def : output6961 = (.seq output6960 output6957) := by
  unfold output6961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6961_skip : Flapjack.WordAlloc.isSkip output6961 = false := by
  rw [output6961_def]
  conv => lhs; cbv
  try rfl
theorem node6961_eq : Flapjack.WordAlloc.removeDeadStructural input6961 value3483 value1 value2 = (output6961, value5, value1) := by
  rw [input6961_def, output6961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6957_eq]
  dsimp only
  rw [node6960_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6961 input6956)).val
theorem input6962_def : input6962 = (.seq input6961 input6956) := by
  unfold input6962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6961 output6956)).val
theorem output6962_def : output6962 = (.seq output6961 output6956) := by
  unfold output6962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6962_skip : Flapjack.WordAlloc.isSkip output6962 = false := by
  rw [output6962_def]
  conv => lhs; cbv
  try rfl
theorem node6962_eq : Flapjack.WordAlloc.removeDeadStructural input6962 value3482 value1 value2 = (output6962, value5, value1) := by
  rw [input6962_def, output6962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6956_eq]
  dsimp only
  rw [node6961_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6962 input6955)).val
theorem input6963_def : input6963 = (.seq input6962 input6955) := by
  unfold input6963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6962 output6955)).val
theorem output6963_def : output6963 = (.seq output6962 output6955) := by
  unfold output6963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6963_skip : Flapjack.WordAlloc.isSkip output6963 = false := by
  rw [output6963_def]
  conv => lhs; cbv
  try rfl
theorem node6963_eq : Flapjack.WordAlloc.removeDeadStructural input6963 value3480 value1 value2 = (output6963, value5, value1) := by
  rw [input6963_def, output6963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6955_eq]
  dsimp only
  rw [node6962_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3486 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15549 (Flapjack.WordLangAddr.addr 15553 0#64)))).val
theorem input6964_def : input6964 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15549 (Flapjack.WordLangAddr.addr 15553 0#64))) := by
  unfold input6964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15549 (Flapjack.WordLangAddr.addr 15553 0#64)))).val
theorem output6964_def : output6964 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15549 (Flapjack.WordLangAddr.addr 15553 0#64))) := by
  unfold output6964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6964_skip : Flapjack.WordAlloc.isSkip output6964 = false := by
  rw [output6964_def]
  conv => lhs; cbv
  try rfl
theorem node6964_eq : Flapjack.WordAlloc.removeDeadStructural input6964 value5 value1 value2 = (output6964, value3486, value1) := by
  rw [input6964_def, output6964_def]
  try (conv => lhs; cbv)
  try rfl

def value3487 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15553, 15541)])).val
theorem input6965_def : input6965 = (Flapjack.WordLangProgHOL.move 0 [(15553, 15541)]) := by
  unfold input6965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15553, 15541)])).val
theorem output6965_def : output6965 = (Flapjack.WordLangProgHOL.move 0 [(15553, 15541)]) := by
  unfold output6965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6965_skip : Flapjack.WordAlloc.isSkip output6965 = false := by
  rw [output6965_def]
  conv => lhs; cbv
  try rfl
theorem node6965_eq : Flapjack.WordAlloc.removeDeadStructural input6965 value3486 value1 value2 = (output6965, value3487, value1) := by
  rw [input6965_def, output6965_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6965 input6964)).val
theorem input6966_def : input6966 = (.seq input6965 input6964) := by
  unfold input6966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6965 output6964)).val
theorem output6966_def : output6966 = (.seq output6965 output6964) := by
  unfold output6966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6966_skip : Flapjack.WordAlloc.isSkip output6966 = false := by
  rw [output6966_def]
  conv => lhs; cbv
  try rfl
theorem node6966_eq : Flapjack.WordAlloc.removeDeadStructural input6966 value5 value1 value2 = (output6966, value3487, value1) := by
  rw [input6966_def, output6966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6964_eq]
  dsimp only
  rw [node6965_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3488 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15549 1433942577299613084#64))).val
theorem input6967_def : input6967 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15549 1433942577299613084#64)) := by
  unfold input6967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15549 1433942577299613084#64))).val
theorem output6967_def : output6967 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15549 1433942577299613084#64)) := by
  unfold output6967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6967_skip : Flapjack.WordAlloc.isSkip output6967 = false := by
  rw [output6967_def]
  conv => lhs; cbv
  try rfl
theorem node6967_eq : Flapjack.WordAlloc.removeDeadStructural input6967 value3487 value1 value2 = (output6967, value3488, value1) := by
  rw [input6967_def, output6967_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15545 1433942577299613084#64))).val
theorem input6968_def : input6968 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15545 1433942577299613084#64)) := by
  unfold input6968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6968_def : output6968 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6968_skip : Flapjack.WordAlloc.isSkip output6968 = true := by
  rw [output6968_def]
  conv => lhs; cbv
  try rfl
theorem node6968_eq : Flapjack.WordAlloc.removeDeadStructural input6968 value3488 value1 value2 = (output6968, value3488, value1) := by
  rw [input6968_def, output6968_def]
  try (conv => lhs; cbv)
  try rfl

def value3489 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15541 15533 (Flapjack.WordRegImm.reg 15537))))).val
theorem input6969_def : input6969 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15541 15533 (Flapjack.WordRegImm.reg 15537)))) := by
  unfold input6969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15541 15533 (Flapjack.WordRegImm.reg 15537))))).val
theorem output6969_def : output6969 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15541 15533 (Flapjack.WordRegImm.reg 15537)))) := by
  unfold output6969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6969_skip : Flapjack.WordAlloc.isSkip output6969 = false := by
  rw [output6969_def]
  conv => lhs; cbv
  try rfl
theorem node6969_eq : Flapjack.WordAlloc.removeDeadStructural input6969 value3488 value1 value2 = (output6969, value3489, value1) := by
  rw [input6969_def, output6969_def]
  try (conv => lhs; cbv)
  try rfl

def value3490 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15537 3648#64))).val
theorem input6970_def : input6970 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15537 3648#64)) := by
  unfold input6970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15537 3648#64))).val
theorem output6970_def : output6970 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15537 3648#64)) := by
  unfold output6970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6970_skip : Flapjack.WordAlloc.isSkip output6970 = false := by
  rw [output6970_def]
  conv => lhs; cbv
  try rfl
theorem node6970_eq : Flapjack.WordAlloc.removeDeadStructural input6970 value3489 value1 value2 = (output6970, value3490, value1) := by
  rw [input6970_def, output6970_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6970 input6969)).val
theorem input6971_def : input6971 = (.seq input6970 input6969) := by
  unfold input6971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6970 output6969)).val
theorem output6971_def : output6971 = (.seq output6970 output6969) := by
  unfold output6971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6971_skip : Flapjack.WordAlloc.isSkip output6971 = false := by
  rw [output6971_def]
  conv => lhs; cbv
  try rfl
theorem node6971_eq : Flapjack.WordAlloc.removeDeadStructural input6971 value3488 value1 value2 = (output6971, value3490, value1) := by
  rw [input6971_def, output6971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6969_eq]
  dsimp only
  rw [node6970_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3491 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15533 (Flapjack.WordLangAddr.addr 15529 18446744073709551104#64)))).val
theorem input6972_def : input6972 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15533 (Flapjack.WordLangAddr.addr 15529 18446744073709551104#64))) := by
  unfold input6972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15533 (Flapjack.WordLangAddr.addr 15529 18446744073709551104#64)))).val
theorem output6972_def : output6972 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15533 (Flapjack.WordLangAddr.addr 15529 18446744073709551104#64))) := by
  unfold output6972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6972_skip : Flapjack.WordAlloc.isSkip output6972 = false := by
  rw [output6972_def]
  conv => lhs; cbv
  try rfl
theorem node6972_eq : Flapjack.WordAlloc.removeDeadStructural input6972 value3490 value1 value2 = (output6972, value3491, value1) := by
  rw [input6972_def, output6972_def]
  try (conv => lhs; cbv)
  try rfl

def value3492 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15529 15525)).val
theorem input6973_def : input6973 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15529 15525) := by
  unfold input6973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15529 15525)).val
theorem output6973_def : output6973 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15529 15525) := by
  unfold output6973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6973_skip : Flapjack.WordAlloc.isSkip output6973 = false := by
  rw [output6973_def]
  conv => lhs; cbv
  try rfl
theorem node6973_eq : Flapjack.WordAlloc.removeDeadStructural input6973 value3491 value1 value2 = (output6973, value3492, value1) := by
  rw [input6973_def, output6973_def]
  try (conv => lhs; cbv)
  try rfl

def value3493 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15525 15521 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6974_def : input6974 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15525 15521 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15525 15521 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6974_def : output6974 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15525 15521 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6974_skip : Flapjack.WordAlloc.isSkip output6974 = false := by
  rw [output6974_def]
  conv => lhs; cbv
  try rfl
theorem node6974_eq : Flapjack.WordAlloc.removeDeadStructural input6974 value3492 value1 value2 = (output6974, value3493, value1) := by
  rw [input6974_def, output6974_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15521 Flapjack.WordStore.heapLength)).val
theorem input6975_def : input6975 = (Flapjack.WordLangProgHOL.get 15521 Flapjack.WordStore.heapLength) := by
  unfold input6975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15521 Flapjack.WordStore.heapLength)).val
theorem output6975_def : output6975 = (Flapjack.WordLangProgHOL.get 15521 Flapjack.WordStore.heapLength) := by
  unfold output6975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6975_skip : Flapjack.WordAlloc.isSkip output6975 = false := by
  rw [output6975_def]
  conv => lhs; cbv
  try rfl
theorem node6975_eq : Flapjack.WordAlloc.removeDeadStructural input6975 value3493 value1 value2 = (output6975, value5, value1) := by
  rw [input6975_def, output6975_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6975 input6974)).val
theorem input6976_def : input6976 = (.seq input6975 input6974) := by
  unfold input6976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6975 output6974)).val
theorem output6976_def : output6976 = (.seq output6975 output6974) := by
  unfold output6976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6976_skip : Flapjack.WordAlloc.isSkip output6976 = false := by
  rw [output6976_def]
  conv => lhs; cbv
  try rfl
theorem node6976_eq : Flapjack.WordAlloc.removeDeadStructural input6976 value3492 value1 value2 = (output6976, value5, value1) := by
  rw [input6976_def, output6976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6974_eq]
  dsimp only
  rw [node6975_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6976 input6973)).val
theorem input6977_def : input6977 = (.seq input6976 input6973) := by
  unfold input6977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6976 output6973)).val
theorem output6977_def : output6977 = (.seq output6976 output6973) := by
  unfold output6977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6977_skip : Flapjack.WordAlloc.isSkip output6977 = false := by
  rw [output6977_def]
  conv => lhs; cbv
  try rfl
theorem node6977_eq : Flapjack.WordAlloc.removeDeadStructural input6977 value3491 value1 value2 = (output6977, value5, value1) := by
  rw [input6977_def, output6977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6973_eq]
  dsimp only
  rw [node6976_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6977 input6972)).val
theorem input6978_def : input6978 = (.seq input6977 input6972) := by
  unfold input6978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6977 output6972)).val
theorem output6978_def : output6978 = (.seq output6977 output6972) := by
  unfold output6978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6978_skip : Flapjack.WordAlloc.isSkip output6978 = false := by
  rw [output6978_def]
  conv => lhs; cbv
  try rfl
theorem node6978_eq : Flapjack.WordAlloc.removeDeadStructural input6978 value3490 value1 value2 = (output6978, value5, value1) := by
  rw [input6978_def, output6978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6972_eq]
  dsimp only
  rw [node6977_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6978 input6971)).val
theorem input6979_def : input6979 = (.seq input6978 input6971) := by
  unfold input6979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6978 output6971)).val
theorem output6979_def : output6979 = (.seq output6978 output6971) := by
  unfold output6979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6979_skip : Flapjack.WordAlloc.isSkip output6979 = false := by
  rw [output6979_def]
  conv => lhs; cbv
  try rfl
theorem node6979_eq : Flapjack.WordAlloc.removeDeadStructural input6979 value3488 value1 value2 = (output6979, value5, value1) := by
  rw [input6979_def, output6979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6971_eq]
  dsimp only
  rw [node6978_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3494 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15513 (Flapjack.WordLangAddr.addr 15517 0#64)))).val
theorem input6980_def : input6980 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15513 (Flapjack.WordLangAddr.addr 15517 0#64))) := by
  unfold input6980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15513 (Flapjack.WordLangAddr.addr 15517 0#64)))).val
theorem output6980_def : output6980 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15513 (Flapjack.WordLangAddr.addr 15517 0#64))) := by
  unfold output6980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6980_skip : Flapjack.WordAlloc.isSkip output6980 = false := by
  rw [output6980_def]
  conv => lhs; cbv
  try rfl
theorem node6980_eq : Flapjack.WordAlloc.removeDeadStructural input6980 value5 value1 value2 = (output6980, value3494, value1) := by
  rw [input6980_def, output6980_def]
  try (conv => lhs; cbv)
  try rfl

def value3495 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15517, 15505)])).val
theorem input6981_def : input6981 = (Flapjack.WordLangProgHOL.move 0 [(15517, 15505)]) := by
  unfold input6981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15517, 15505)])).val
theorem output6981_def : output6981 = (Flapjack.WordLangProgHOL.move 0 [(15517, 15505)]) := by
  unfold output6981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6981_skip : Flapjack.WordAlloc.isSkip output6981 = false := by
  rw [output6981_def]
  conv => lhs; cbv
  try rfl
theorem node6981_eq : Flapjack.WordAlloc.removeDeadStructural input6981 value3494 value1 value2 = (output6981, value3495, value1) := by
  rw [input6981_def, output6981_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6981 input6980)).val
theorem input6982_def : input6982 = (.seq input6981 input6980) := by
  unfold input6982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6981 output6980)).val
theorem output6982_def : output6982 = (.seq output6981 output6980) := by
  unfold output6982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6982_skip : Flapjack.WordAlloc.isSkip output6982 = false := by
  rw [output6982_def]
  conv => lhs; cbv
  try rfl
theorem node6982_eq : Flapjack.WordAlloc.removeDeadStructural input6982 value5 value1 value2 = (output6982, value3495, value1) := by
  rw [input6982_def, output6982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6980_eq]
  dsimp only
  rw [node6981_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3496 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15513 14325828012864645732#64))).val
theorem input6983_def : input6983 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15513 14325828012864645732#64)) := by
  unfold input6983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15513 14325828012864645732#64))).val
theorem output6983_def : output6983 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15513 14325828012864645732#64)) := by
  unfold output6983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6983_skip : Flapjack.WordAlloc.isSkip output6983 = false := by
  rw [output6983_def]
  conv => lhs; cbv
  try rfl
theorem node6983_eq : Flapjack.WordAlloc.removeDeadStructural input6983 value3495 value1 value2 = (output6983, value3496, value1) := by
  rw [input6983_def, output6983_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15509 14325828012864645732#64))).val
theorem input6984_def : input6984 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15509 14325828012864645732#64)) := by
  unfold input6984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6984_def : output6984 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6984_skip : Flapjack.WordAlloc.isSkip output6984 = true := by
  rw [output6984_def]
  conv => lhs; cbv
  try rfl
theorem node6984_eq : Flapjack.WordAlloc.removeDeadStructural input6984 value3496 value1 value2 = (output6984, value3496, value1) := by
  rw [input6984_def, output6984_def]
  try (conv => lhs; cbv)
  try rfl

def value3497 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15505 15497 (Flapjack.WordRegImm.reg 15501))))).val
theorem input6985_def : input6985 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15505 15497 (Flapjack.WordRegImm.reg 15501)))) := by
  unfold input6985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15505 15497 (Flapjack.WordRegImm.reg 15501))))).val
theorem output6985_def : output6985 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15505 15497 (Flapjack.WordRegImm.reg 15501)))) := by
  unfold output6985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6985_skip : Flapjack.WordAlloc.isSkip output6985 = false := by
  rw [output6985_def]
  conv => lhs; cbv
  try rfl
theorem node6985_eq : Flapjack.WordAlloc.removeDeadStructural input6985 value3496 value1 value2 = (output6985, value3497, value1) := by
  rw [input6985_def, output6985_def]
  try (conv => lhs; cbv)
  try rfl

def value3498 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15501 3640#64))).val
theorem input6986_def : input6986 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15501 3640#64)) := by
  unfold input6986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15501 3640#64))).val
theorem output6986_def : output6986 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15501 3640#64)) := by
  unfold output6986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6986_skip : Flapjack.WordAlloc.isSkip output6986 = false := by
  rw [output6986_def]
  conv => lhs; cbv
  try rfl
theorem node6986_eq : Flapjack.WordAlloc.removeDeadStructural input6986 value3497 value1 value2 = (output6986, value3498, value1) := by
  rw [input6986_def, output6986_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6986 input6985)).val
theorem input6987_def : input6987 = (.seq input6986 input6985) := by
  unfold input6987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6986 output6985)).val
theorem output6987_def : output6987 = (.seq output6986 output6985) := by
  unfold output6987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6987_skip : Flapjack.WordAlloc.isSkip output6987 = false := by
  rw [output6987_def]
  conv => lhs; cbv
  try rfl
theorem node6987_eq : Flapjack.WordAlloc.removeDeadStructural input6987 value3496 value1 value2 = (output6987, value3498, value1) := by
  rw [input6987_def, output6987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6985_eq]
  dsimp only
  rw [node6986_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3499 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15497 (Flapjack.WordLangAddr.addr 15493 18446744073709551104#64)))).val
theorem input6988_def : input6988 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15497 (Flapjack.WordLangAddr.addr 15493 18446744073709551104#64))) := by
  unfold input6988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15497 (Flapjack.WordLangAddr.addr 15493 18446744073709551104#64)))).val
theorem output6988_def : output6988 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15497 (Flapjack.WordLangAddr.addr 15493 18446744073709551104#64))) := by
  unfold output6988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6988_skip : Flapjack.WordAlloc.isSkip output6988 = false := by
  rw [output6988_def]
  conv => lhs; cbv
  try rfl
theorem node6988_eq : Flapjack.WordAlloc.removeDeadStructural input6988 value3498 value1 value2 = (output6988, value3499, value1) := by
  rw [input6988_def, output6988_def]
  try (conv => lhs; cbv)
  try rfl

def value3500 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15493 15489)).val
theorem input6989_def : input6989 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15493 15489) := by
  unfold input6989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15493 15489)).val
theorem output6989_def : output6989 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15493 15489) := by
  unfold output6989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6989_skip : Flapjack.WordAlloc.isSkip output6989 = false := by
  rw [output6989_def]
  conv => lhs; cbv
  try rfl
theorem node6989_eq : Flapjack.WordAlloc.removeDeadStructural input6989 value3499 value1 value2 = (output6989, value3500, value1) := by
  rw [input6989_def, output6989_def]
  try (conv => lhs; cbv)
  try rfl

def value3501 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15489 15485 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6990_def : input6990 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15489 15485 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15489 15485 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6990_def : output6990 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15489 15485 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6990_skip : Flapjack.WordAlloc.isSkip output6990 = false := by
  rw [output6990_def]
  conv => lhs; cbv
  try rfl
theorem node6990_eq : Flapjack.WordAlloc.removeDeadStructural input6990 value3500 value1 value2 = (output6990, value3501, value1) := by
  rw [input6990_def, output6990_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15485 Flapjack.WordStore.heapLength)).val
theorem input6991_def : input6991 = (Flapjack.WordLangProgHOL.get 15485 Flapjack.WordStore.heapLength) := by
  unfold input6991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15485 Flapjack.WordStore.heapLength)).val
theorem output6991_def : output6991 = (Flapjack.WordLangProgHOL.get 15485 Flapjack.WordStore.heapLength) := by
  unfold output6991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6991_skip : Flapjack.WordAlloc.isSkip output6991 = false := by
  rw [output6991_def]
  conv => lhs; cbv
  try rfl
theorem node6991_eq : Flapjack.WordAlloc.removeDeadStructural input6991 value3501 value1 value2 = (output6991, value5, value1) := by
  rw [input6991_def, output6991_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6991 input6990)).val
theorem input6992_def : input6992 = (.seq input6991 input6990) := by
  unfold input6992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6991 output6990)).val
theorem output6992_def : output6992 = (.seq output6991 output6990) := by
  unfold output6992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6992_skip : Flapjack.WordAlloc.isSkip output6992 = false := by
  rw [output6992_def]
  conv => lhs; cbv
  try rfl
theorem node6992_eq : Flapjack.WordAlloc.removeDeadStructural input6992 value3500 value1 value2 = (output6992, value5, value1) := by
  rw [input6992_def, output6992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6990_eq]
  dsimp only
  rw [node6991_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6992 input6989)).val
theorem input6993_def : input6993 = (.seq input6992 input6989) := by
  unfold input6993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6992 output6989)).val
theorem output6993_def : output6993 = (.seq output6992 output6989) := by
  unfold output6993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6993_skip : Flapjack.WordAlloc.isSkip output6993 = false := by
  rw [output6993_def]
  conv => lhs; cbv
  try rfl
theorem node6993_eq : Flapjack.WordAlloc.removeDeadStructural input6993 value3499 value1 value2 = (output6993, value5, value1) := by
  rw [input6993_def, output6993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6989_eq]
  dsimp only
  rw [node6992_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6993 input6988)).val
theorem input6994_def : input6994 = (.seq input6993 input6988) := by
  unfold input6994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6993 output6988)).val
theorem output6994_def : output6994 = (.seq output6993 output6988) := by
  unfold output6994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6994_skip : Flapjack.WordAlloc.isSkip output6994 = false := by
  rw [output6994_def]
  conv => lhs; cbv
  try rfl
theorem node6994_eq : Flapjack.WordAlloc.removeDeadStructural input6994 value3498 value1 value2 = (output6994, value5, value1) := by
  rw [input6994_def, output6994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6988_eq]
  dsimp only
  rw [node6993_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6994 input6987)).val
theorem input6995_def : input6995 = (.seq input6994 input6987) := by
  unfold input6995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6994 output6987)).val
theorem output6995_def : output6995 = (.seq output6994 output6987) := by
  unfold output6995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6995_skip : Flapjack.WordAlloc.isSkip output6995 = false := by
  rw [output6995_def]
  conv => lhs; cbv
  try rfl
theorem node6995_eq : Flapjack.WordAlloc.removeDeadStructural input6995 value3496 value1 value2 = (output6995, value5, value1) := by
  rw [input6995_def, output6995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6987_eq]
  dsimp only
  rw [node6994_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3502 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15477 (Flapjack.WordLangAddr.addr 15481 0#64)))).val
theorem input6996_def : input6996 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15477 (Flapjack.WordLangAddr.addr 15481 0#64))) := by
  unfold input6996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15477 (Flapjack.WordLangAddr.addr 15481 0#64)))).val
theorem output6996_def : output6996 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15477 (Flapjack.WordLangAddr.addr 15481 0#64))) := by
  unfold output6996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6996_skip : Flapjack.WordAlloc.isSkip output6996 = false := by
  rw [output6996_def]
  conv => lhs; cbv
  try rfl
theorem node6996_eq : Flapjack.WordAlloc.removeDeadStructural input6996 value5 value1 value2 = (output6996, value3502, value1) := by
  rw [input6996_def, output6996_def]
  try (conv => lhs; cbv)
  try rfl

def value3503 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15481, 15469)])).val
theorem input6997_def : input6997 = (Flapjack.WordLangProgHOL.move 0 [(15481, 15469)]) := by
  unfold input6997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15481, 15469)])).val
theorem output6997_def : output6997 = (Flapjack.WordLangProgHOL.move 0 [(15481, 15469)]) := by
  unfold output6997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6997_skip : Flapjack.WordAlloc.isSkip output6997 = false := by
  rw [output6997_def]
  conv => lhs; cbv
  try rfl
theorem node6997_eq : Flapjack.WordAlloc.removeDeadStructural input6997 value3502 value1 value2 = (output6997, value3503, value1) := by
  rw [input6997_def, output6997_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6997 input6996)).val
theorem input6998_def : input6998 = (.seq input6997 input6996) := by
  unfold input6998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6997 output6996)).val
theorem output6998_def : output6998 = (.seq output6997 output6996) := by
  unfold output6998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6998_skip : Flapjack.WordAlloc.isSkip output6998 = false := by
  rw [output6998_def]
  conv => lhs; cbv
  try rfl
theorem node6998_eq : Flapjack.WordAlloc.removeDeadStructural input6998 value5 value1 value2 = (output6998, value3503, value1) := by
  rw [input6998_def, output6998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6996_eq]
  dsimp only
  rw [node6997_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3504 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15477 4817114329354076467#64))).val
theorem input6999_def : input6999 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15477 4817114329354076467#64)) := by
  unfold input6999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15477 4817114329354076467#64))).val
theorem output6999_def : output6999 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15477 4817114329354076467#64)) := by
  unfold output6999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6999_skip : Flapjack.WordAlloc.isSkip output6999 = false := by
  rw [output6999_def]
  conv => lhs; cbv
  try rfl
theorem node6999_eq : Flapjack.WordAlloc.removeDeadStructural input6999 value3503 value1 value2 = (output6999, value3504, value1) := by
  rw [input6999_def, output6999_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15473 4817114329354076467#64))).val
theorem input7000_def : input7000 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15473 4817114329354076467#64)) := by
  unfold input7000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7000_def : output7000 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7000_skip : Flapjack.WordAlloc.isSkip output7000 = true := by
  rw [output7000_def]
  conv => lhs; cbv
  try rfl
theorem node7000_eq : Flapjack.WordAlloc.removeDeadStructural input7000 value3504 value1 value2 = (output7000, value3504, value1) := by
  rw [input7000_def, output7000_def]
  try (conv => lhs; cbv)
  try rfl

def value3505 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15469 15461 (Flapjack.WordRegImm.reg 15465))))).val
theorem input7001_def : input7001 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15469 15461 (Flapjack.WordRegImm.reg 15465)))) := by
  unfold input7001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15469 15461 (Flapjack.WordRegImm.reg 15465))))).val
theorem output7001_def : output7001 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15469 15461 (Flapjack.WordRegImm.reg 15465)))) := by
  unfold output7001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7001_skip : Flapjack.WordAlloc.isSkip output7001 = false := by
  rw [output7001_def]
  conv => lhs; cbv
  try rfl
theorem node7001_eq : Flapjack.WordAlloc.removeDeadStructural input7001 value3504 value1 value2 = (output7001, value3505, value1) := by
  rw [input7001_def, output7001_def]
  try (conv => lhs; cbv)
  try rfl

def value3506 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15465 3632#64))).val
theorem input7002_def : input7002 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15465 3632#64)) := by
  unfold input7002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15465 3632#64))).val
theorem output7002_def : output7002 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15465 3632#64)) := by
  unfold output7002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7002_skip : Flapjack.WordAlloc.isSkip output7002 = false := by
  rw [output7002_def]
  conv => lhs; cbv
  try rfl
theorem node7002_eq : Flapjack.WordAlloc.removeDeadStructural input7002 value3505 value1 value2 = (output7002, value3506, value1) := by
  rw [input7002_def, output7002_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7002 input7001)).val
theorem input7003_def : input7003 = (.seq input7002 input7001) := by
  unfold input7003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7002 output7001)).val
theorem output7003_def : output7003 = (.seq output7002 output7001) := by
  unfold output7003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7003_skip : Flapjack.WordAlloc.isSkip output7003 = false := by
  rw [output7003_def]
  conv => lhs; cbv
  try rfl
theorem node7003_eq : Flapjack.WordAlloc.removeDeadStructural input7003 value3504 value1 value2 = (output7003, value3506, value1) := by
  rw [input7003_def, output7003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7001_eq]
  dsimp only
  rw [node7002_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3507 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15461 (Flapjack.WordLangAddr.addr 15457 18446744073709551104#64)))).val
theorem input7004_def : input7004 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15461 (Flapjack.WordLangAddr.addr 15457 18446744073709551104#64))) := by
  unfold input7004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15461 (Flapjack.WordLangAddr.addr 15457 18446744073709551104#64)))).val
theorem output7004_def : output7004 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15461 (Flapjack.WordLangAddr.addr 15457 18446744073709551104#64))) := by
  unfold output7004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7004_skip : Flapjack.WordAlloc.isSkip output7004 = false := by
  rw [output7004_def]
  conv => lhs; cbv
  try rfl
theorem node7004_eq : Flapjack.WordAlloc.removeDeadStructural input7004 value3506 value1 value2 = (output7004, value3507, value1) := by
  rw [input7004_def, output7004_def]
  try (conv => lhs; cbv)
  try rfl

def value3508 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15457 15453)).val
theorem input7005_def : input7005 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15457 15453) := by
  unfold input7005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15457 15453)).val
theorem output7005_def : output7005 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15457 15453) := by
  unfold output7005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7005_skip : Flapjack.WordAlloc.isSkip output7005 = false := by
  rw [output7005_def]
  conv => lhs; cbv
  try rfl
theorem node7005_eq : Flapjack.WordAlloc.removeDeadStructural input7005 value3507 value1 value2 = (output7005, value3508, value1) := by
  rw [input7005_def, output7005_def]
  try (conv => lhs; cbv)
  try rfl

def value3509 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15453 15449 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7006_def : input7006 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15453 15449 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15453 15449 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7006_def : output7006 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15453 15449 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7006_skip : Flapjack.WordAlloc.isSkip output7006 = false := by
  rw [output7006_def]
  conv => lhs; cbv
  try rfl
theorem node7006_eq : Flapjack.WordAlloc.removeDeadStructural input7006 value3508 value1 value2 = (output7006, value3509, value1) := by
  rw [input7006_def, output7006_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15449 Flapjack.WordStore.heapLength)).val
theorem input7007_def : input7007 = (Flapjack.WordLangProgHOL.get 15449 Flapjack.WordStore.heapLength) := by
  unfold input7007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15449 Flapjack.WordStore.heapLength)).val
theorem output7007_def : output7007 = (Flapjack.WordLangProgHOL.get 15449 Flapjack.WordStore.heapLength) := by
  unfold output7007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7007_skip : Flapjack.WordAlloc.isSkip output7007 = false := by
  rw [output7007_def]
  conv => lhs; cbv
  try rfl
theorem node7007_eq : Flapjack.WordAlloc.removeDeadStructural input7007 value3509 value1 value2 = (output7007, value5, value1) := by
  rw [input7007_def, output7007_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7007 input7006)).val
theorem input7008_def : input7008 = (.seq input7007 input7006) := by
  unfold input7008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7007 output7006)).val
theorem output7008_def : output7008 = (.seq output7007 output7006) := by
  unfold output7008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7008_skip : Flapjack.WordAlloc.isSkip output7008 = false := by
  rw [output7008_def]
  conv => lhs; cbv
  try rfl
theorem node7008_eq : Flapjack.WordAlloc.removeDeadStructural input7008 value3508 value1 value2 = (output7008, value5, value1) := by
  rw [input7008_def, output7008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7006_eq]
  dsimp only
  rw [node7007_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7008 input7005)).val
theorem input7009_def : input7009 = (.seq input7008 input7005) := by
  unfold input7009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7008 output7005)).val
theorem output7009_def : output7009 = (.seq output7008 output7005) := by
  unfold output7009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7009_skip : Flapjack.WordAlloc.isSkip output7009 = false := by
  rw [output7009_def]
  conv => lhs; cbv
  try rfl
theorem node7009_eq : Flapjack.WordAlloc.removeDeadStructural input7009 value3507 value1 value2 = (output7009, value5, value1) := by
  rw [input7009_def, output7009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7005_eq]
  dsimp only
  rw [node7008_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7009 input7004)).val
theorem input7010_def : input7010 = (.seq input7009 input7004) := by
  unfold input7010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7009 output7004)).val
theorem output7010_def : output7010 = (.seq output7009 output7004) := by
  unfold output7010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7010_skip : Flapjack.WordAlloc.isSkip output7010 = false := by
  rw [output7010_def]
  conv => lhs; cbv
  try rfl
theorem node7010_eq : Flapjack.WordAlloc.removeDeadStructural input7010 value3506 value1 value2 = (output7010, value5, value1) := by
  rw [input7010_def, output7010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7004_eq]
  dsimp only
  rw [node7009_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7010 input7003)).val
theorem input7011_def : input7011 = (.seq input7010 input7003) := by
  unfold input7011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7010 output7003)).val
theorem output7011_def : output7011 = (.seq output7010 output7003) := by
  unfold output7011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7011_skip : Flapjack.WordAlloc.isSkip output7011 = false := by
  rw [output7011_def]
  conv => lhs; cbv
  try rfl
theorem node7011_eq : Flapjack.WordAlloc.removeDeadStructural input7011 value3504 value1 value2 = (output7011, value5, value1) := by
  rw [input7011_def, output7011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7003_eq]
  dsimp only
  rw [node7010_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3510 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15441 (Flapjack.WordLangAddr.addr 15445 0#64)))).val
theorem input7012_def : input7012 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15441 (Flapjack.WordLangAddr.addr 15445 0#64))) := by
  unfold input7012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15441 (Flapjack.WordLangAddr.addr 15445 0#64)))).val
theorem output7012_def : output7012 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15441 (Flapjack.WordLangAddr.addr 15445 0#64))) := by
  unfold output7012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7012_skip : Flapjack.WordAlloc.isSkip output7012 = false := by
  rw [output7012_def]
  conv => lhs; cbv
  try rfl
theorem node7012_eq : Flapjack.WordAlloc.removeDeadStructural input7012 value5 value1 value2 = (output7012, value3510, value1) := by
  rw [input7012_def, output7012_def]
  try (conv => lhs; cbv)
  try rfl

def value3511 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15445, 15433)])).val
theorem input7013_def : input7013 = (Flapjack.WordLangProgHOL.move 0 [(15445, 15433)]) := by
  unfold input7013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15445, 15433)])).val
theorem output7013_def : output7013 = (Flapjack.WordLangProgHOL.move 0 [(15445, 15433)]) := by
  unfold output7013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7013_skip : Flapjack.WordAlloc.isSkip output7013 = false := by
  rw [output7013_def]
  conv => lhs; cbv
  try rfl
theorem node7013_eq : Flapjack.WordAlloc.removeDeadStructural input7013 value3510 value1 value2 = (output7013, value3511, value1) := by
  rw [input7013_def, output7013_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7013 input7012)).val
theorem input7014_def : input7014 = (.seq input7013 input7012) := by
  unfold input7014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7013 output7012)).val
theorem output7014_def : output7014 = (.seq output7013 output7012) := by
  unfold output7014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7014_skip : Flapjack.WordAlloc.isSkip output7014 = false := by
  rw [output7014_def]
  conv => lhs; cbv
  try rfl
theorem node7014_eq : Flapjack.WordAlloc.removeDeadStructural input7014 value5 value1 value2 = (output7014, value3511, value1) := by
  rw [input7014_def, output7014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7012_eq]
  dsimp only
  rw [node7013_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3512 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15441 799438051374502809#64))).val
theorem input7015_def : input7015 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15441 799438051374502809#64)) := by
  unfold input7015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15441 799438051374502809#64))).val
theorem output7015_def : output7015 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15441 799438051374502809#64)) := by
  unfold output7015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7015_skip : Flapjack.WordAlloc.isSkip output7015 = false := by
  rw [output7015_def]
  conv => lhs; cbv
  try rfl
theorem node7015_eq : Flapjack.WordAlloc.removeDeadStructural input7015 value3511 value1 value2 = (output7015, value3512, value1) := by
  rw [input7015_def, output7015_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15437 799438051374502809#64))).val
theorem input7016_def : input7016 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15437 799438051374502809#64)) := by
  unfold input7016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7016_def : output7016 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7016_skip : Flapjack.WordAlloc.isSkip output7016 = true := by
  rw [output7016_def]
  conv => lhs; cbv
  try rfl
theorem node7016_eq : Flapjack.WordAlloc.removeDeadStructural input7016 value3512 value1 value2 = (output7016, value3512, value1) := by
  rw [input7016_def, output7016_def]
  try (conv => lhs; cbv)
  try rfl

def value3513 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15433 15425 (Flapjack.WordRegImm.reg 15429))))).val
theorem input7017_def : input7017 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15433 15425 (Flapjack.WordRegImm.reg 15429)))) := by
  unfold input7017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15433 15425 (Flapjack.WordRegImm.reg 15429))))).val
theorem output7017_def : output7017 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15433 15425 (Flapjack.WordRegImm.reg 15429)))) := by
  unfold output7017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7017_skip : Flapjack.WordAlloc.isSkip output7017 = false := by
  rw [output7017_def]
  conv => lhs; cbv
  try rfl
theorem node7017_eq : Flapjack.WordAlloc.removeDeadStructural input7017 value3512 value1 value2 = (output7017, value3513, value1) := by
  rw [input7017_def, output7017_def]
  try (conv => lhs; cbv)
  try rfl

def value3514 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15429 3624#64))).val
theorem input7018_def : input7018 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15429 3624#64)) := by
  unfold input7018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15429 3624#64))).val
theorem output7018_def : output7018 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15429 3624#64)) := by
  unfold output7018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7018_skip : Flapjack.WordAlloc.isSkip output7018 = false := by
  rw [output7018_def]
  conv => lhs; cbv
  try rfl
theorem node7018_eq : Flapjack.WordAlloc.removeDeadStructural input7018 value3513 value1 value2 = (output7018, value3514, value1) := by
  rw [input7018_def, output7018_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7018 input7017)).val
theorem input7019_def : input7019 = (.seq input7018 input7017) := by
  unfold input7019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7018 output7017)).val
theorem output7019_def : output7019 = (.seq output7018 output7017) := by
  unfold output7019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7019_skip : Flapjack.WordAlloc.isSkip output7019 = false := by
  rw [output7019_def]
  conv => lhs; cbv
  try rfl
theorem node7019_eq : Flapjack.WordAlloc.removeDeadStructural input7019 value3512 value1 value2 = (output7019, value3514, value1) := by
  rw [input7019_def, output7019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7017_eq]
  dsimp only
  rw [node7018_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3515 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15425 (Flapjack.WordLangAddr.addr 15421 18446744073709551104#64)))).val
theorem input7020_def : input7020 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15425 (Flapjack.WordLangAddr.addr 15421 18446744073709551104#64))) := by
  unfold input7020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15425 (Flapjack.WordLangAddr.addr 15421 18446744073709551104#64)))).val
theorem output7020_def : output7020 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15425 (Flapjack.WordLangAddr.addr 15421 18446744073709551104#64))) := by
  unfold output7020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7020_skip : Flapjack.WordAlloc.isSkip output7020 = false := by
  rw [output7020_def]
  conv => lhs; cbv
  try rfl
theorem node7020_eq : Flapjack.WordAlloc.removeDeadStructural input7020 value3514 value1 value2 = (output7020, value3515, value1) := by
  rw [input7020_def, output7020_def]
  try (conv => lhs; cbv)
  try rfl

def value3516 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15421 15417)).val
theorem input7021_def : input7021 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15421 15417) := by
  unfold input7021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15421 15417)).val
theorem output7021_def : output7021 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15421 15417) := by
  unfold output7021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7021_skip : Flapjack.WordAlloc.isSkip output7021 = false := by
  rw [output7021_def]
  conv => lhs; cbv
  try rfl
theorem node7021_eq : Flapjack.WordAlloc.removeDeadStructural input7021 value3515 value1 value2 = (output7021, value3516, value1) := by
  rw [input7021_def, output7021_def]
  try (conv => lhs; cbv)
  try rfl

def value3517 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15417 15413 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7022_def : input7022 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15417 15413 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15417 15413 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7022_def : output7022 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15417 15413 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7022_skip : Flapjack.WordAlloc.isSkip output7022 = false := by
  rw [output7022_def]
  conv => lhs; cbv
  try rfl
theorem node7022_eq : Flapjack.WordAlloc.removeDeadStructural input7022 value3516 value1 value2 = (output7022, value3517, value1) := by
  rw [input7022_def, output7022_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15413 Flapjack.WordStore.heapLength)).val
theorem input7023_def : input7023 = (Flapjack.WordLangProgHOL.get 15413 Flapjack.WordStore.heapLength) := by
  unfold input7023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15413 Flapjack.WordStore.heapLength)).val
theorem output7023_def : output7023 = (Flapjack.WordLangProgHOL.get 15413 Flapjack.WordStore.heapLength) := by
  unfold output7023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7023_skip : Flapjack.WordAlloc.isSkip output7023 = false := by
  rw [output7023_def]
  conv => lhs; cbv
  try rfl
theorem node7023_eq : Flapjack.WordAlloc.removeDeadStructural input7023 value3517 value1 value2 = (output7023, value5, value1) := by
  rw [input7023_def, output7023_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7023 input7022)).val
theorem input7024_def : input7024 = (.seq input7023 input7022) := by
  unfold input7024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7023 output7022)).val
theorem output7024_def : output7024 = (.seq output7023 output7022) := by
  unfold output7024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7024_skip : Flapjack.WordAlloc.isSkip output7024 = false := by
  rw [output7024_def]
  conv => lhs; cbv
  try rfl
theorem node7024_eq : Flapjack.WordAlloc.removeDeadStructural input7024 value3516 value1 value2 = (output7024, value5, value1) := by
  rw [input7024_def, output7024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7022_eq]
  dsimp only
  rw [node7023_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7024 input7021)).val
theorem input7025_def : input7025 = (.seq input7024 input7021) := by
  unfold input7025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7024 output7021)).val
theorem output7025_def : output7025 = (.seq output7024 output7021) := by
  unfold output7025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7025_skip : Flapjack.WordAlloc.isSkip output7025 = false := by
  rw [output7025_def]
  conv => lhs; cbv
  try rfl
theorem node7025_eq : Flapjack.WordAlloc.removeDeadStructural input7025 value3515 value1 value2 = (output7025, value5, value1) := by
  rw [input7025_def, output7025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7021_eq]
  dsimp only
  rw [node7024_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7025 input7020)).val
theorem input7026_def : input7026 = (.seq input7025 input7020) := by
  unfold input7026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7025 output7020)).val
theorem output7026_def : output7026 = (.seq output7025 output7020) := by
  unfold output7026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7026_skip : Flapjack.WordAlloc.isSkip output7026 = false := by
  rw [output7026_def]
  conv => lhs; cbv
  try rfl
theorem node7026_eq : Flapjack.WordAlloc.removeDeadStructural input7026 value3514 value1 value2 = (output7026, value5, value1) := by
  rw [input7026_def, output7026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7020_eq]
  dsimp only
  rw [node7025_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7026 input7019)).val
theorem input7027_def : input7027 = (.seq input7026 input7019) := by
  unfold input7027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7026 output7019)).val
theorem output7027_def : output7027 = (.seq output7026 output7019) := by
  unfold output7027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7027_skip : Flapjack.WordAlloc.isSkip output7027 = false := by
  rw [output7027_def]
  conv => lhs; cbv
  try rfl
theorem node7027_eq : Flapjack.WordAlloc.removeDeadStructural input7027 value3512 value1 value2 = (output7027, value5, value1) := by
  rw [input7027_def, output7027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7019_eq]
  dsimp only
  rw [node7026_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3518 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15405 (Flapjack.WordLangAddr.addr 15409 0#64)))).val
theorem input7028_def : input7028 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15405 (Flapjack.WordLangAddr.addr 15409 0#64))) := by
  unfold input7028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15405 (Flapjack.WordLangAddr.addr 15409 0#64)))).val
theorem output7028_def : output7028 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15405 (Flapjack.WordLangAddr.addr 15409 0#64))) := by
  unfold output7028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7028_skip : Flapjack.WordAlloc.isSkip output7028 = false := by
  rw [output7028_def]
  conv => lhs; cbv
  try rfl
theorem node7028_eq : Flapjack.WordAlloc.removeDeadStructural input7028 value5 value1 value2 = (output7028, value3518, value1) := by
  rw [input7028_def, output7028_def]
  try (conv => lhs; cbv)
  try rfl

def value3519 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15409, 15397)])).val
theorem input7029_def : input7029 = (Flapjack.WordLangProgHOL.move 0 [(15409, 15397)]) := by
  unfold input7029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15409, 15397)])).val
theorem output7029_def : output7029 = (Flapjack.WordLangProgHOL.move 0 [(15409, 15397)]) := by
  unfold output7029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7029_skip : Flapjack.WordAlloc.isSkip output7029 = false := by
  rw [output7029_def]
  conv => lhs; cbv
  try rfl
theorem node7029_eq : Flapjack.WordAlloc.removeDeadStructural input7029 value3518 value1 value2 = (output7029, value3519, value1) := by
  rw [input7029_def, output7029_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7029 input7028)).val
theorem input7030_def : input7030 = (.seq input7029 input7028) := by
  unfold input7030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7029 output7028)).val
theorem output7030_def : output7030 = (.seq output7029 output7028) := by
  unfold output7030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7030_skip : Flapjack.WordAlloc.isSkip output7030 = false := by
  rw [output7030_def]
  conv => lhs; cbv
  try rfl
theorem node7030_eq : Flapjack.WordAlloc.removeDeadStructural input7030 value5 value1 value2 = (output7030, value3519, value1) := by
  rw [input7030_def, output7030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7028_eq]
  dsimp only
  rw [node7029_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3520 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15405 15083972834952036164#64))).val
theorem input7031_def : input7031 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15405 15083972834952036164#64)) := by
  unfold input7031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15405 15083972834952036164#64))).val
theorem output7031_def : output7031 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15405 15083972834952036164#64)) := by
  unfold output7031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7031_skip : Flapjack.WordAlloc.isSkip output7031 = false := by
  rw [output7031_def]
  conv => lhs; cbv
  try rfl
theorem node7031_eq : Flapjack.WordAlloc.removeDeadStructural input7031 value3519 value1 value2 = (output7031, value3520, value1) := by
  rw [input7031_def, output7031_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15401 15083972834952036164#64))).val
theorem input7032_def : input7032 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15401 15083972834952036164#64)) := by
  unfold input7032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7032_def : output7032 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7032_skip : Flapjack.WordAlloc.isSkip output7032 = true := by
  rw [output7032_def]
  conv => lhs; cbv
  try rfl
theorem node7032_eq : Flapjack.WordAlloc.removeDeadStructural input7032 value3520 value1 value2 = (output7032, value3520, value1) := by
  rw [input7032_def, output7032_def]
  try (conv => lhs; cbv)
  try rfl

def value3521 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15397 15389 (Flapjack.WordRegImm.reg 15393))))).val
theorem input7033_def : input7033 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15397 15389 (Flapjack.WordRegImm.reg 15393)))) := by
  unfold input7033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15397 15389 (Flapjack.WordRegImm.reg 15393))))).val
theorem output7033_def : output7033 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15397 15389 (Flapjack.WordRegImm.reg 15393)))) := by
  unfold output7033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7033_skip : Flapjack.WordAlloc.isSkip output7033 = false := by
  rw [output7033_def]
  conv => lhs; cbv
  try rfl
theorem node7033_eq : Flapjack.WordAlloc.removeDeadStructural input7033 value3520 value1 value2 = (output7033, value3521, value1) := by
  rw [input7033_def, output7033_def]
  try (conv => lhs; cbv)
  try rfl

def value3522 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15393 3616#64))).val
theorem input7034_def : input7034 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15393 3616#64)) := by
  unfold input7034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15393 3616#64))).val
theorem output7034_def : output7034 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15393 3616#64)) := by
  unfold output7034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7034_skip : Flapjack.WordAlloc.isSkip output7034 = false := by
  rw [output7034_def]
  conv => lhs; cbv
  try rfl
theorem node7034_eq : Flapjack.WordAlloc.removeDeadStructural input7034 value3521 value1 value2 = (output7034, value3522, value1) := by
  rw [input7034_def, output7034_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7034 input7033)).val
theorem input7035_def : input7035 = (.seq input7034 input7033) := by
  unfold input7035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7034 output7033)).val
theorem output7035_def : output7035 = (.seq output7034 output7033) := by
  unfold output7035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7035_skip : Flapjack.WordAlloc.isSkip output7035 = false := by
  rw [output7035_def]
  conv => lhs; cbv
  try rfl
theorem node7035_eq : Flapjack.WordAlloc.removeDeadStructural input7035 value3520 value1 value2 = (output7035, value3522, value1) := by
  rw [input7035_def, output7035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7033_eq]
  dsimp only
  rw [node7034_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3523 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15389 (Flapjack.WordLangAddr.addr 15385 18446744073709551104#64)))).val
theorem input7036_def : input7036 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15389 (Flapjack.WordLangAddr.addr 15385 18446744073709551104#64))) := by
  unfold input7036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15389 (Flapjack.WordLangAddr.addr 15385 18446744073709551104#64)))).val
theorem output7036_def : output7036 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15389 (Flapjack.WordLangAddr.addr 15385 18446744073709551104#64))) := by
  unfold output7036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7036_skip : Flapjack.WordAlloc.isSkip output7036 = false := by
  rw [output7036_def]
  conv => lhs; cbv
  try rfl
theorem node7036_eq : Flapjack.WordAlloc.removeDeadStructural input7036 value3522 value1 value2 = (output7036, value3523, value1) := by
  rw [input7036_def, output7036_def]
  try (conv => lhs; cbv)
  try rfl

def value3524 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15385 15381)).val
theorem input7037_def : input7037 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15385 15381) := by
  unfold input7037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15385 15381)).val
theorem output7037_def : output7037 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15385 15381) := by
  unfold output7037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7037_skip : Flapjack.WordAlloc.isSkip output7037 = false := by
  rw [output7037_def]
  conv => lhs; cbv
  try rfl
theorem node7037_eq : Flapjack.WordAlloc.removeDeadStructural input7037 value3523 value1 value2 = (output7037, value3524, value1) := by
  rw [input7037_def, output7037_def]
  try (conv => lhs; cbv)
  try rfl

def value3525 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15381 15377 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7038_def : input7038 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15381 15377 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15381 15377 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7038_def : output7038 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15381 15377 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7038_skip : Flapjack.WordAlloc.isSkip output7038 = false := by
  rw [output7038_def]
  conv => lhs; cbv
  try rfl
theorem node7038_eq : Flapjack.WordAlloc.removeDeadStructural input7038 value3524 value1 value2 = (output7038, value3525, value1) := by
  rw [input7038_def, output7038_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15377 Flapjack.WordStore.heapLength)).val
theorem input7039_def : input7039 = (Flapjack.WordLangProgHOL.get 15377 Flapjack.WordStore.heapLength) := by
  unfold input7039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15377 Flapjack.WordStore.heapLength)).val
theorem output7039_def : output7039 = (Flapjack.WordLangProgHOL.get 15377 Flapjack.WordStore.heapLength) := by
  unfold output7039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7039_skip : Flapjack.WordAlloc.isSkip output7039 = false := by
  rw [output7039_def]
  conv => lhs; cbv
  try rfl
theorem node7039_eq : Flapjack.WordAlloc.removeDeadStructural input7039 value3525 value1 value2 = (output7039, value5, value1) := by
  rw [input7039_def, output7039_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7039 input7038)).val
theorem input7040_def : input7040 = (.seq input7039 input7038) := by
  unfold input7040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7039 output7038)).val
theorem output7040_def : output7040 = (.seq output7039 output7038) := by
  unfold output7040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7040_skip : Flapjack.WordAlloc.isSkip output7040 = false := by
  rw [output7040_def]
  conv => lhs; cbv
  try rfl
theorem node7040_eq : Flapjack.WordAlloc.removeDeadStructural input7040 value3524 value1 value2 = (output7040, value5, value1) := by
  rw [input7040_def, output7040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7038_eq]
  dsimp only
  rw [node7039_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7040 input7037)).val
theorem input7041_def : input7041 = (.seq input7040 input7037) := by
  unfold input7041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7040 output7037)).val
theorem output7041_def : output7041 = (.seq output7040 output7037) := by
  unfold output7041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7041_skip : Flapjack.WordAlloc.isSkip output7041 = false := by
  rw [output7041_def]
  conv => lhs; cbv
  try rfl
theorem node7041_eq : Flapjack.WordAlloc.removeDeadStructural input7041 value3523 value1 value2 = (output7041, value5, value1) := by
  rw [input7041_def, output7041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7037_eq]
  dsimp only
  rw [node7040_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7041 input7036)).val
theorem input7042_def : input7042 = (.seq input7041 input7036) := by
  unfold input7042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7041 output7036)).val
theorem output7042_def : output7042 = (.seq output7041 output7036) := by
  unfold output7042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7042_skip : Flapjack.WordAlloc.isSkip output7042 = false := by
  rw [output7042_def]
  conv => lhs; cbv
  try rfl
theorem node7042_eq : Flapjack.WordAlloc.removeDeadStructural input7042 value3522 value1 value2 = (output7042, value5, value1) := by
  rw [input7042_def, output7042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7036_eq]
  dsimp only
  rw [node7041_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7042 input7035)).val
theorem input7043_def : input7043 = (.seq input7042 input7035) := by
  unfold input7043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7042 output7035)).val
theorem output7043_def : output7043 = (.seq output7042 output7035) := by
  unfold output7043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7043_skip : Flapjack.WordAlloc.isSkip output7043 = false := by
  rw [output7043_def]
  conv => lhs; cbv
  try rfl
theorem node7043_eq : Flapjack.WordAlloc.removeDeadStructural input7043 value3520 value1 value2 = (output7043, value5, value1) := by
  rw [input7043_def, output7043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7035_eq]
  dsimp only
  rw [node7042_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3526 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15369 (Flapjack.WordLangAddr.addr 15373 0#64)))).val
theorem input7044_def : input7044 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15369 (Flapjack.WordLangAddr.addr 15373 0#64))) := by
  unfold input7044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15369 (Flapjack.WordLangAddr.addr 15373 0#64)))).val
theorem output7044_def : output7044 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15369 (Flapjack.WordLangAddr.addr 15373 0#64))) := by
  unfold output7044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7044_skip : Flapjack.WordAlloc.isSkip output7044 = false := by
  rw [output7044_def]
  conv => lhs; cbv
  try rfl
theorem node7044_eq : Flapjack.WordAlloc.removeDeadStructural input7044 value5 value1 value2 = (output7044, value3526, value1) := by
  rw [input7044_def, output7044_def]
  try (conv => lhs; cbv)
  try rfl

def value3527 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15373, 15361)])).val
theorem input7045_def : input7045 = (Flapjack.WordLangProgHOL.move 0 [(15373, 15361)]) := by
  unfold input7045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15373, 15361)])).val
theorem output7045_def : output7045 = (Flapjack.WordLangProgHOL.move 0 [(15373, 15361)]) := by
  unfold output7045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7045_skip : Flapjack.WordAlloc.isSkip output7045 = false := by
  rw [output7045_def]
  conv => lhs; cbv
  try rfl
theorem node7045_eq : Flapjack.WordAlloc.removeDeadStructural input7045 value3526 value1 value2 = (output7045, value3527, value1) := by
  rw [input7045_def, output7045_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7045 input7044)).val
theorem input7046_def : input7046 = (.seq input7045 input7044) := by
  unfold input7046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7045 output7044)).val
theorem output7046_def : output7046 = (.seq output7045 output7044) := by
  unfold output7046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7046_skip : Flapjack.WordAlloc.isSkip output7046 = false := by
  rw [output7046_def]
  conv => lhs; cbv
  try rfl
theorem node7046_eq : Flapjack.WordAlloc.removeDeadStructural input7046 value5 value1 value2 = (output7046, value3527, value1) := by
  rw [input7046_def, output7046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7044_eq]
  dsimp only
  rw [node7045_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3528 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15369 8838227588559581326#64))).val
theorem input7047_def : input7047 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15369 8838227588559581326#64)) := by
  unfold input7047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15369 8838227588559581326#64))).val
theorem output7047_def : output7047 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15369 8838227588559581326#64)) := by
  unfold output7047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7047_skip : Flapjack.WordAlloc.isSkip output7047 = false := by
  rw [output7047_def]
  conv => lhs; cbv
  try rfl
theorem node7047_eq : Flapjack.WordAlloc.removeDeadStructural input7047 value3527 value1 value2 = (output7047, value3528, value1) := by
  rw [input7047_def, output7047_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15365 8838227588559581326#64))).val
theorem input7048_def : input7048 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15365 8838227588559581326#64)) := by
  unfold input7048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7048_def : output7048 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7048_skip : Flapjack.WordAlloc.isSkip output7048 = true := by
  rw [output7048_def]
  conv => lhs; cbv
  try rfl
theorem node7048_eq : Flapjack.WordAlloc.removeDeadStructural input7048 value3528 value1 value2 = (output7048, value3528, value1) := by
  rw [input7048_def, output7048_def]
  try (conv => lhs; cbv)
  try rfl

def value3529 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15361 15353 (Flapjack.WordRegImm.reg 15357))))).val
theorem input7049_def : input7049 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15361 15353 (Flapjack.WordRegImm.reg 15357)))) := by
  unfold input7049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15361 15353 (Flapjack.WordRegImm.reg 15357))))).val
theorem output7049_def : output7049 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15361 15353 (Flapjack.WordRegImm.reg 15357)))) := by
  unfold output7049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7049_skip : Flapjack.WordAlloc.isSkip output7049 = false := by
  rw [output7049_def]
  conv => lhs; cbv
  try rfl
theorem node7049_eq : Flapjack.WordAlloc.removeDeadStructural input7049 value3528 value1 value2 = (output7049, value3529, value1) := by
  rw [input7049_def, output7049_def]
  try (conv => lhs; cbv)
  try rfl

def value3530 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15357 3608#64))).val
theorem input7050_def : input7050 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15357 3608#64)) := by
  unfold input7050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15357 3608#64))).val
theorem output7050_def : output7050 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15357 3608#64)) := by
  unfold output7050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7050_skip : Flapjack.WordAlloc.isSkip output7050 = false := by
  rw [output7050_def]
  conv => lhs; cbv
  try rfl
theorem node7050_eq : Flapjack.WordAlloc.removeDeadStructural input7050 value3529 value1 value2 = (output7050, value3530, value1) := by
  rw [input7050_def, output7050_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7050 input7049)).val
theorem input7051_def : input7051 = (.seq input7050 input7049) := by
  unfold input7051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7050 output7049)).val
theorem output7051_def : output7051 = (.seq output7050 output7049) := by
  unfold output7051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7051_skip : Flapjack.WordAlloc.isSkip output7051 = false := by
  rw [output7051_def]
  conv => lhs; cbv
  try rfl
theorem node7051_eq : Flapjack.WordAlloc.removeDeadStructural input7051 value3528 value1 value2 = (output7051, value3530, value1) := by
  rw [input7051_def, output7051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7049_eq]
  dsimp only
  rw [node7050_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3531 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15353 (Flapjack.WordLangAddr.addr 15349 18446744073709551104#64)))).val
theorem input7052_def : input7052 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15353 (Flapjack.WordLangAddr.addr 15349 18446744073709551104#64))) := by
  unfold input7052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15353 (Flapjack.WordLangAddr.addr 15349 18446744073709551104#64)))).val
theorem output7052_def : output7052 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15353 (Flapjack.WordLangAddr.addr 15349 18446744073709551104#64))) := by
  unfold output7052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7052_skip : Flapjack.WordAlloc.isSkip output7052 = false := by
  rw [output7052_def]
  conv => lhs; cbv
  try rfl
theorem node7052_eq : Flapjack.WordAlloc.removeDeadStructural input7052 value3530 value1 value2 = (output7052, value3531, value1) := by
  rw [input7052_def, output7052_def]
  try (conv => lhs; cbv)
  try rfl

def value3532 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15349 15345)).val
theorem input7053_def : input7053 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15349 15345) := by
  unfold input7053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15349 15345)).val
theorem output7053_def : output7053 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15349 15345) := by
  unfold output7053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7053_skip : Flapjack.WordAlloc.isSkip output7053 = false := by
  rw [output7053_def]
  conv => lhs; cbv
  try rfl
theorem node7053_eq : Flapjack.WordAlloc.removeDeadStructural input7053 value3531 value1 value2 = (output7053, value3532, value1) := by
  rw [input7053_def, output7053_def]
  try (conv => lhs; cbv)
  try rfl

def value3533 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15345 15341 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7054_def : input7054 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15345 15341 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15345 15341 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7054_def : output7054 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15345 15341 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7054_skip : Flapjack.WordAlloc.isSkip output7054 = false := by
  rw [output7054_def]
  conv => lhs; cbv
  try rfl
theorem node7054_eq : Flapjack.WordAlloc.removeDeadStructural input7054 value3532 value1 value2 = (output7054, value3533, value1) := by
  rw [input7054_def, output7054_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15341 Flapjack.WordStore.heapLength)).val
theorem input7055_def : input7055 = (Flapjack.WordLangProgHOL.get 15341 Flapjack.WordStore.heapLength) := by
  unfold input7055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15341 Flapjack.WordStore.heapLength)).val
theorem output7055_def : output7055 = (Flapjack.WordLangProgHOL.get 15341 Flapjack.WordStore.heapLength) := by
  unfold output7055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7055_skip : Flapjack.WordAlloc.isSkip output7055 = false := by
  rw [output7055_def]
  conv => lhs; cbv
  try rfl
theorem node7055_eq : Flapjack.WordAlloc.removeDeadStructural input7055 value3533 value1 value2 = (output7055, value5, value1) := by
  rw [input7055_def, output7055_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7055 input7054)).val
theorem input7056_def : input7056 = (.seq input7055 input7054) := by
  unfold input7056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7055 output7054)).val
theorem output7056_def : output7056 = (.seq output7055 output7054) := by
  unfold output7056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7056_skip : Flapjack.WordAlloc.isSkip output7056 = false := by
  rw [output7056_def]
  conv => lhs; cbv
  try rfl
theorem node7056_eq : Flapjack.WordAlloc.removeDeadStructural input7056 value3532 value1 value2 = (output7056, value5, value1) := by
  rw [input7056_def, output7056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7054_eq]
  dsimp only
  rw [node7055_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7056 input7053)).val
theorem input7057_def : input7057 = (.seq input7056 input7053) := by
  unfold input7057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7056 output7053)).val
theorem output7057_def : output7057 = (.seq output7056 output7053) := by
  unfold output7057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7057_skip : Flapjack.WordAlloc.isSkip output7057 = false := by
  rw [output7057_def]
  conv => lhs; cbv
  try rfl
theorem node7057_eq : Flapjack.WordAlloc.removeDeadStructural input7057 value3531 value1 value2 = (output7057, value5, value1) := by
  rw [input7057_def, output7057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7053_eq]
  dsimp only
  rw [node7056_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7057 input7052)).val
theorem input7058_def : input7058 = (.seq input7057 input7052) := by
  unfold input7058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7057 output7052)).val
theorem output7058_def : output7058 = (.seq output7057 output7052) := by
  unfold output7058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7058_skip : Flapjack.WordAlloc.isSkip output7058 = false := by
  rw [output7058_def]
  conv => lhs; cbv
  try rfl
theorem node7058_eq : Flapjack.WordAlloc.removeDeadStructural input7058 value3530 value1 value2 = (output7058, value5, value1) := by
  rw [input7058_def, output7058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7052_eq]
  dsimp only
  rw [node7057_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7058 input7051)).val
theorem input7059_def : input7059 = (.seq input7058 input7051) := by
  unfold input7059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7058 output7051)).val
theorem output7059_def : output7059 = (.seq output7058 output7051) := by
  unfold output7059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7059_skip : Flapjack.WordAlloc.isSkip output7059 = false := by
  rw [output7059_def]
  conv => lhs; cbv
  try rfl
theorem node7059_eq : Flapjack.WordAlloc.removeDeadStructural input7059 value3528 value1 value2 = (output7059, value5, value1) := by
  rw [input7059_def, output7059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7051_eq]
  dsimp only
  rw [node7058_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3534 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15333 (Flapjack.WordLangAddr.addr 15337 0#64)))).val
theorem input7060_def : input7060 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15333 (Flapjack.WordLangAddr.addr 15337 0#64))) := by
  unfold input7060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15333 (Flapjack.WordLangAddr.addr 15337 0#64)))).val
theorem output7060_def : output7060 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15333 (Flapjack.WordLangAddr.addr 15337 0#64))) := by
  unfold output7060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7060_skip : Flapjack.WordAlloc.isSkip output7060 = false := by
  rw [output7060_def]
  conv => lhs; cbv
  try rfl
theorem node7060_eq : Flapjack.WordAlloc.removeDeadStructural input7060 value5 value1 value2 = (output7060, value3534, value1) := by
  rw [input7060_def, output7060_def]
  try (conv => lhs; cbv)
  try rfl

def value3535 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15337, 15325)])).val
theorem input7061_def : input7061 = (Flapjack.WordLangProgHOL.move 0 [(15337, 15325)]) := by
  unfold input7061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15337, 15325)])).val
theorem output7061_def : output7061 = (Flapjack.WordLangProgHOL.move 0 [(15337, 15325)]) := by
  unfold output7061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7061_skip : Flapjack.WordAlloc.isSkip output7061 = false := by
  rw [output7061_def]
  conv => lhs; cbv
  try rfl
theorem node7061_eq : Flapjack.WordAlloc.removeDeadStructural input7061 value3534 value1 value2 = (output7061, value3535, value1) := by
  rw [input7061_def, output7061_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7061 input7060)).val
theorem input7062_def : input7062 = (.seq input7061 input7060) := by
  unfold input7062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7061 output7060)).val
theorem output7062_def : output7062 = (.seq output7061 output7060) := by
  unfold output7062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7062_skip : Flapjack.WordAlloc.isSkip output7062 = false := by
  rw [output7062_def]
  conv => lhs; cbv
  try rfl
theorem node7062_eq : Flapjack.WordAlloc.removeDeadStructural input7062 value5 value1 value2 = (output7062, value3535, value1) := by
  rw [input7062_def, output7062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7060_eq]
  dsimp only
  rw [node7061_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3536 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15333 13846054168121598783#64))).val
theorem input7063_def : input7063 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15333 13846054168121598783#64)) := by
  unfold input7063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15333 13846054168121598783#64))).val
theorem output7063_def : output7063 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15333 13846054168121598783#64)) := by
  unfold output7063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7063_skip : Flapjack.WordAlloc.isSkip output7063 = false := by
  rw [output7063_def]
  conv => lhs; cbv
  try rfl
theorem node7063_eq : Flapjack.WordAlloc.removeDeadStructural input7063 value3535 value1 value2 = (output7063, value3536, value1) := by
  rw [input7063_def, output7063_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15329 13846054168121598783#64))).val
theorem input7064_def : input7064 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15329 13846054168121598783#64)) := by
  unfold input7064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7064_def : output7064 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7064_skip : Flapjack.WordAlloc.isSkip output7064 = true := by
  rw [output7064_def]
  conv => lhs; cbv
  try rfl
theorem node7064_eq : Flapjack.WordAlloc.removeDeadStructural input7064 value3536 value1 value2 = (output7064, value3536, value1) := by
  rw [input7064_def, output7064_def]
  try (conv => lhs; cbv)
  try rfl

def value3537 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15325 15317 (Flapjack.WordRegImm.reg 15321))))).val
theorem input7065_def : input7065 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15325 15317 (Flapjack.WordRegImm.reg 15321)))) := by
  unfold input7065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15325 15317 (Flapjack.WordRegImm.reg 15321))))).val
theorem output7065_def : output7065 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15325 15317 (Flapjack.WordRegImm.reg 15321)))) := by
  unfold output7065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7065_skip : Flapjack.WordAlloc.isSkip output7065 = false := by
  rw [output7065_def]
  conv => lhs; cbv
  try rfl
theorem node7065_eq : Flapjack.WordAlloc.removeDeadStructural input7065 value3536 value1 value2 = (output7065, value3537, value1) := by
  rw [input7065_def, output7065_def]
  try (conv => lhs; cbv)
  try rfl

def value3538 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15321 3600#64))).val
theorem input7066_def : input7066 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15321 3600#64)) := by
  unfold input7066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15321 3600#64))).val
theorem output7066_def : output7066 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15321 3600#64)) := by
  unfold output7066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7066_skip : Flapjack.WordAlloc.isSkip output7066 = false := by
  rw [output7066_def]
  conv => lhs; cbv
  try rfl
theorem node7066_eq : Flapjack.WordAlloc.removeDeadStructural input7066 value3537 value1 value2 = (output7066, value3538, value1) := by
  rw [input7066_def, output7066_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7066 input7065)).val
theorem input7067_def : input7067 = (.seq input7066 input7065) := by
  unfold input7067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7066 output7065)).val
theorem output7067_def : output7067 = (.seq output7066 output7065) := by
  unfold output7067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7067_skip : Flapjack.WordAlloc.isSkip output7067 = false := by
  rw [output7067_def]
  conv => lhs; cbv
  try rfl
theorem node7067_eq : Flapjack.WordAlloc.removeDeadStructural input7067 value3536 value1 value2 = (output7067, value3538, value1) := by
  rw [input7067_def, output7067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7065_eq]
  dsimp only
  rw [node7066_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3539 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15317 (Flapjack.WordLangAddr.addr 15313 18446744073709551104#64)))).val
theorem input7068_def : input7068 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15317 (Flapjack.WordLangAddr.addr 15313 18446744073709551104#64))) := by
  unfold input7068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15317 (Flapjack.WordLangAddr.addr 15313 18446744073709551104#64)))).val
theorem output7068_def : output7068 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15317 (Flapjack.WordLangAddr.addr 15313 18446744073709551104#64))) := by
  unfold output7068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7068_skip : Flapjack.WordAlloc.isSkip output7068 = false := by
  rw [output7068_def]
  conv => lhs; cbv
  try rfl
theorem node7068_eq : Flapjack.WordAlloc.removeDeadStructural input7068 value3538 value1 value2 = (output7068, value3539, value1) := by
  rw [input7068_def, output7068_def]
  try (conv => lhs; cbv)
  try rfl

def value3540 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15313 15309)).val
theorem input7069_def : input7069 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15313 15309) := by
  unfold input7069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15313 15309)).val
theorem output7069_def : output7069 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15313 15309) := by
  unfold output7069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7069_skip : Flapjack.WordAlloc.isSkip output7069 = false := by
  rw [output7069_def]
  conv => lhs; cbv
  try rfl
theorem node7069_eq : Flapjack.WordAlloc.removeDeadStructural input7069 value3539 value1 value2 = (output7069, value3540, value1) := by
  rw [input7069_def, output7069_def]
  try (conv => lhs; cbv)
  try rfl

def value3541 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15309 15305 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7070_def : input7070 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15309 15305 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15309 15305 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7070_def : output7070 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15309 15305 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7070_skip : Flapjack.WordAlloc.isSkip output7070 = false := by
  rw [output7070_def]
  conv => lhs; cbv
  try rfl
theorem node7070_eq : Flapjack.WordAlloc.removeDeadStructural input7070 value3540 value1 value2 = (output7070, value3541, value1) := by
  rw [input7070_def, output7070_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15305 Flapjack.WordStore.heapLength)).val
theorem input7071_def : input7071 = (Flapjack.WordLangProgHOL.get 15305 Flapjack.WordStore.heapLength) := by
  unfold input7071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15305 Flapjack.WordStore.heapLength)).val
theorem output7071_def : output7071 = (Flapjack.WordLangProgHOL.get 15305 Flapjack.WordStore.heapLength) := by
  unfold output7071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7071_skip : Flapjack.WordAlloc.isSkip output7071 = false := by
  rw [output7071_def]
  conv => lhs; cbv
  try rfl
theorem node7071_eq : Flapjack.WordAlloc.removeDeadStructural input7071 value3541 value1 value2 = (output7071, value5, value1) := by
  rw [input7071_def, output7071_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7071 input7070)).val
theorem input7072_def : input7072 = (.seq input7071 input7070) := by
  unfold input7072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7071 output7070)).val
theorem output7072_def : output7072 = (.seq output7071 output7070) := by
  unfold output7072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7072_skip : Flapjack.WordAlloc.isSkip output7072 = false := by
  rw [output7072_def]
  conv => lhs; cbv
  try rfl
theorem node7072_eq : Flapjack.WordAlloc.removeDeadStructural input7072 value3540 value1 value2 = (output7072, value5, value1) := by
  rw [input7072_def, output7072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7070_eq]
  dsimp only
  rw [node7071_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7072 input7069)).val
theorem input7073_def : input7073 = (.seq input7072 input7069) := by
  unfold input7073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7072 output7069)).val
theorem output7073_def : output7073 = (.seq output7072 output7069) := by
  unfold output7073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7073_skip : Flapjack.WordAlloc.isSkip output7073 = false := by
  rw [output7073_def]
  conv => lhs; cbv
  try rfl
theorem node7073_eq : Flapjack.WordAlloc.removeDeadStructural input7073 value3539 value1 value2 = (output7073, value5, value1) := by
  rw [input7073_def, output7073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7069_eq]
  dsimp only
  rw [node7072_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7073 input7068)).val
theorem input7074_def : input7074 = (.seq input7073 input7068) := by
  unfold input7074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7073 output7068)).val
theorem output7074_def : output7074 = (.seq output7073 output7068) := by
  unfold output7074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7074_skip : Flapjack.WordAlloc.isSkip output7074 = false := by
  rw [output7074_def]
  conv => lhs; cbv
  try rfl
theorem node7074_eq : Flapjack.WordAlloc.removeDeadStructural input7074 value3538 value1 value2 = (output7074, value5, value1) := by
  rw [input7074_def, output7074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7068_eq]
  dsimp only
  rw [node7073_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7074 input7067)).val
theorem input7075_def : input7075 = (.seq input7074 input7067) := by
  unfold input7075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7074 output7067)).val
theorem output7075_def : output7075 = (.seq output7074 output7067) := by
  unfold output7075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7075_skip : Flapjack.WordAlloc.isSkip output7075 = false := by
  rw [output7075_def]
  conv => lhs; cbv
  try rfl
theorem node7075_eq : Flapjack.WordAlloc.removeDeadStructural input7075 value3536 value1 value2 = (output7075, value5, value1) := by
  rw [input7075_def, output7075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7067_eq]
  dsimp only
  rw [node7074_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3542 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15297 (Flapjack.WordLangAddr.addr 15301 0#64)))).val
theorem input7076_def : input7076 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15297 (Flapjack.WordLangAddr.addr 15301 0#64))) := by
  unfold input7076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15297 (Flapjack.WordLangAddr.addr 15301 0#64)))).val
theorem output7076_def : output7076 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15297 (Flapjack.WordLangAddr.addr 15301 0#64))) := by
  unfold output7076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7076_skip : Flapjack.WordAlloc.isSkip output7076 = false := by
  rw [output7076_def]
  conv => lhs; cbv
  try rfl
theorem node7076_eq : Flapjack.WordAlloc.removeDeadStructural input7076 value5 value1 value2 = (output7076, value3542, value1) := by
  rw [input7076_def, output7076_def]
  try (conv => lhs; cbv)
  try rfl

def value3543 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15301, 15289)])).val
theorem input7077_def : input7077 = (Flapjack.WordLangProgHOL.move 0 [(15301, 15289)]) := by
  unfold input7077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15301, 15289)])).val
theorem output7077_def : output7077 = (Flapjack.WordLangProgHOL.move 0 [(15301, 15289)]) := by
  unfold output7077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7077_skip : Flapjack.WordAlloc.isSkip output7077 = false := by
  rw [output7077_def]
  conv => lhs; cbv
  try rfl
theorem node7077_eq : Flapjack.WordAlloc.removeDeadStructural input7077 value3542 value1 value2 = (output7077, value3543, value1) := by
  rw [input7077_def, output7077_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7077 input7076)).val
theorem input7078_def : input7078 = (.seq input7077 input7076) := by
  unfold input7078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7077 output7076)).val
theorem output7078_def : output7078 = (.seq output7077 output7076) := by
  unfold output7078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7078_skip : Flapjack.WordAlloc.isSkip output7078 = false := by
  rw [output7078_def]
  conv => lhs; cbv
  try rfl
theorem node7078_eq : Flapjack.WordAlloc.removeDeadStructural input7078 value5 value1 value2 = (output7078, value3543, value1) := by
  rw [input7078_def, output7078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7076_eq]
  dsimp only
  rw [node7077_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3544 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15297 488730451382505970#64))).val
theorem input7079_def : input7079 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15297 488730451382505970#64)) := by
  unfold input7079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15297 488730451382505970#64))).val
theorem output7079_def : output7079 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15297 488730451382505970#64)) := by
  unfold output7079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7079_skip : Flapjack.WordAlloc.isSkip output7079 = false := by
  rw [output7079_def]
  conv => lhs; cbv
  try rfl
theorem node7079_eq : Flapjack.WordAlloc.removeDeadStructural input7079 value3543 value1 value2 = (output7079, value3544, value1) := by
  rw [input7079_def, output7079_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15293 488730451382505970#64))).val
theorem input7080_def : input7080 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15293 488730451382505970#64)) := by
  unfold input7080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7080_def : output7080 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7080_skip : Flapjack.WordAlloc.isSkip output7080 = true := by
  rw [output7080_def]
  conv => lhs; cbv
  try rfl
theorem node7080_eq : Flapjack.WordAlloc.removeDeadStructural input7080 value3544 value1 value2 = (output7080, value3544, value1) := by
  rw [input7080_def, output7080_def]
  try (conv => lhs; cbv)
  try rfl

def value3545 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15289 15281 (Flapjack.WordRegImm.reg 15285))))).val
theorem input7081_def : input7081 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15289 15281 (Flapjack.WordRegImm.reg 15285)))) := by
  unfold input7081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15289 15281 (Flapjack.WordRegImm.reg 15285))))).val
theorem output7081_def : output7081 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15289 15281 (Flapjack.WordRegImm.reg 15285)))) := by
  unfold output7081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7081_skip : Flapjack.WordAlloc.isSkip output7081 = false := by
  rw [output7081_def]
  conv => lhs; cbv
  try rfl
theorem node7081_eq : Flapjack.WordAlloc.removeDeadStructural input7081 value3544 value1 value2 = (output7081, value3545, value1) := by
  rw [input7081_def, output7081_def]
  try (conv => lhs; cbv)
  try rfl

def value3546 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15285 3592#64))).val
theorem input7082_def : input7082 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15285 3592#64)) := by
  unfold input7082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15285 3592#64))).val
theorem output7082_def : output7082 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15285 3592#64)) := by
  unfold output7082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7082_skip : Flapjack.WordAlloc.isSkip output7082 = false := by
  rw [output7082_def]
  conv => lhs; cbv
  try rfl
theorem node7082_eq : Flapjack.WordAlloc.removeDeadStructural input7082 value3545 value1 value2 = (output7082, value3546, value1) := by
  rw [input7082_def, output7082_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7082 input7081)).val
theorem input7083_def : input7083 = (.seq input7082 input7081) := by
  unfold input7083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7082 output7081)).val
theorem output7083_def : output7083 = (.seq output7082 output7081) := by
  unfold output7083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7083_skip : Flapjack.WordAlloc.isSkip output7083 = false := by
  rw [output7083_def]
  conv => lhs; cbv
  try rfl
theorem node7083_eq : Flapjack.WordAlloc.removeDeadStructural input7083 value3544 value1 value2 = (output7083, value3546, value1) := by
  rw [input7083_def, output7083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7081_eq]
  dsimp only
  rw [node7082_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3547 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15281 (Flapjack.WordLangAddr.addr 15277 18446744073709551104#64)))).val
theorem input7084_def : input7084 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15281 (Flapjack.WordLangAddr.addr 15277 18446744073709551104#64))) := by
  unfold input7084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15281 (Flapjack.WordLangAddr.addr 15277 18446744073709551104#64)))).val
theorem output7084_def : output7084 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15281 (Flapjack.WordLangAddr.addr 15277 18446744073709551104#64))) := by
  unfold output7084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7084_skip : Flapjack.WordAlloc.isSkip output7084 = false := by
  rw [output7084_def]
  conv => lhs; cbv
  try rfl
theorem node7084_eq : Flapjack.WordAlloc.removeDeadStructural input7084 value3546 value1 value2 = (output7084, value3547, value1) := by
  rw [input7084_def, output7084_def]
  try (conv => lhs; cbv)
  try rfl

def value3548 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15277 15273)).val
theorem input7085_def : input7085 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15277 15273) := by
  unfold input7085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15277 15273)).val
theorem output7085_def : output7085 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15277 15273) := by
  unfold output7085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7085_skip : Flapjack.WordAlloc.isSkip output7085 = false := by
  rw [output7085_def]
  conv => lhs; cbv
  try rfl
theorem node7085_eq : Flapjack.WordAlloc.removeDeadStructural input7085 value3547 value1 value2 = (output7085, value3548, value1) := by
  rw [input7085_def, output7085_def]
  try (conv => lhs; cbv)
  try rfl

def value3549 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15273 15269 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7086_def : input7086 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15273 15269 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15273 15269 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7086_def : output7086 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15273 15269 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7086_skip : Flapjack.WordAlloc.isSkip output7086 = false := by
  rw [output7086_def]
  conv => lhs; cbv
  try rfl
theorem node7086_eq : Flapjack.WordAlloc.removeDeadStructural input7086 value3548 value1 value2 = (output7086, value3549, value1) := by
  rw [input7086_def, output7086_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15269 Flapjack.WordStore.heapLength)).val
theorem input7087_def : input7087 = (Flapjack.WordLangProgHOL.get 15269 Flapjack.WordStore.heapLength) := by
  unfold input7087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15269 Flapjack.WordStore.heapLength)).val
theorem output7087_def : output7087 = (Flapjack.WordLangProgHOL.get 15269 Flapjack.WordStore.heapLength) := by
  unfold output7087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7087_skip : Flapjack.WordAlloc.isSkip output7087 = false := by
  rw [output7087_def]
  conv => lhs; cbv
  try rfl
theorem node7087_eq : Flapjack.WordAlloc.removeDeadStructural input7087 value3549 value1 value2 = (output7087, value5, value1) := by
  rw [input7087_def, output7087_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7087 input7086)).val
theorem input7088_def : input7088 = (.seq input7087 input7086) := by
  unfold input7088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7087 output7086)).val
theorem output7088_def : output7088 = (.seq output7087 output7086) := by
  unfold output7088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7088_skip : Flapjack.WordAlloc.isSkip output7088 = false := by
  rw [output7088_def]
  conv => lhs; cbv
  try rfl
theorem node7088_eq : Flapjack.WordAlloc.removeDeadStructural input7088 value3548 value1 value2 = (output7088, value5, value1) := by
  rw [input7088_def, output7088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7086_eq]
  dsimp only
  rw [node7087_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7088 input7085)).val
theorem input7089_def : input7089 = (.seq input7088 input7085) := by
  unfold input7089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7088 output7085)).val
theorem output7089_def : output7089 = (.seq output7088 output7085) := by
  unfold output7089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7089_skip : Flapjack.WordAlloc.isSkip output7089 = false := by
  rw [output7089_def]
  conv => lhs; cbv
  try rfl
theorem node7089_eq : Flapjack.WordAlloc.removeDeadStructural input7089 value3547 value1 value2 = (output7089, value5, value1) := by
  rw [input7089_def, output7089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7085_eq]
  dsimp only
  rw [node7088_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7089 input7084)).val
theorem input7090_def : input7090 = (.seq input7089 input7084) := by
  unfold input7090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7089 output7084)).val
theorem output7090_def : output7090 = (.seq output7089 output7084) := by
  unfold output7090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7090_skip : Flapjack.WordAlloc.isSkip output7090 = false := by
  rw [output7090_def]
  conv => lhs; cbv
  try rfl
theorem node7090_eq : Flapjack.WordAlloc.removeDeadStructural input7090 value3546 value1 value2 = (output7090, value5, value1) := by
  rw [input7090_def, output7090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7084_eq]
  dsimp only
  rw [node7089_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7090 input7083)).val
theorem input7091_def : input7091 = (.seq input7090 input7083) := by
  unfold input7091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7090 output7083)).val
theorem output7091_def : output7091 = (.seq output7090 output7083) := by
  unfold output7091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7091_skip : Flapjack.WordAlloc.isSkip output7091 = false := by
  rw [output7091_def]
  conv => lhs; cbv
  try rfl
theorem node7091_eq : Flapjack.WordAlloc.removeDeadStructural input7091 value3544 value1 value2 = (output7091, value5, value1) := by
  rw [input7091_def, output7091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7083_eq]
  dsimp only
  rw [node7090_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3550 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15261 (Flapjack.WordLangAddr.addr 15265 0#64)))).val
theorem input7092_def : input7092 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15261 (Flapjack.WordLangAddr.addr 15265 0#64))) := by
  unfold input7092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15261 (Flapjack.WordLangAddr.addr 15265 0#64)))).val
theorem output7092_def : output7092 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15261 (Flapjack.WordLangAddr.addr 15265 0#64))) := by
  unfold output7092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7092_skip : Flapjack.WordAlloc.isSkip output7092 = false := by
  rw [output7092_def]
  conv => lhs; cbv
  try rfl
theorem node7092_eq : Flapjack.WordAlloc.removeDeadStructural input7092 value5 value1 value2 = (output7092, value3550, value1) := by
  rw [input7092_def, output7092_def]
  try (conv => lhs; cbv)
  try rfl

def value3551 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15265, 15253)])).val
theorem input7093_def : input7093 = (Flapjack.WordLangProgHOL.move 0 [(15265, 15253)]) := by
  unfold input7093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15265, 15253)])).val
theorem output7093_def : output7093 = (Flapjack.WordLangProgHOL.move 0 [(15265, 15253)]) := by
  unfold output7093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7093_skip : Flapjack.WordAlloc.isSkip output7093 = false := by
  rw [output7093_def]
  conv => lhs; cbv
  try rfl
theorem node7093_eq : Flapjack.WordAlloc.removeDeadStructural input7093 value3550 value1 value2 = (output7093, value3551, value1) := by
  rw [input7093_def, output7093_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7093 input7092)).val
theorem input7094_def : input7094 = (.seq input7093 input7092) := by
  unfold input7094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7093 output7092)).val
theorem output7094_def : output7094 = (.seq output7093 output7092) := by
  unfold output7094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7094_skip : Flapjack.WordAlloc.isSkip output7094 = false := by
  rw [output7094_def]
  conv => lhs; cbv
  try rfl
theorem node7094_eq : Flapjack.WordAlloc.removeDeadStructural input7094 value5 value1 value2 = (output7094, value3551, value1) := by
  rw [input7094_def, output7094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7092_eq]
  dsimp only
  rw [node7093_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3552 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15261 958146249756188408#64))).val
theorem input7095_def : input7095 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15261 958146249756188408#64)) := by
  unfold input7095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15261 958146249756188408#64))).val
theorem output7095_def : output7095 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15261 958146249756188408#64)) := by
  unfold output7095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7095_skip : Flapjack.WordAlloc.isSkip output7095 = false := by
  rw [output7095_def]
  conv => lhs; cbv
  try rfl
theorem node7095_eq : Flapjack.WordAlloc.removeDeadStructural input7095 value3551 value1 value2 = (output7095, value3552, value1) := by
  rw [input7095_def, output7095_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15257 958146249756188408#64))).val
theorem input7096_def : input7096 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15257 958146249756188408#64)) := by
  unfold input7096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7096_def : output7096 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7096_skip : Flapjack.WordAlloc.isSkip output7096 = true := by
  rw [output7096_def]
  conv => lhs; cbv
  try rfl
theorem node7096_eq : Flapjack.WordAlloc.removeDeadStructural input7096 value3552 value1 value2 = (output7096, value3552, value1) := by
  rw [input7096_def, output7096_def]
  try (conv => lhs; cbv)
  try rfl

def value3553 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15253 15245 (Flapjack.WordRegImm.reg 15249))))).val
theorem input7097_def : input7097 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15253 15245 (Flapjack.WordRegImm.reg 15249)))) := by
  unfold input7097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15253 15245 (Flapjack.WordRegImm.reg 15249))))).val
theorem output7097_def : output7097 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15253 15245 (Flapjack.WordRegImm.reg 15249)))) := by
  unfold output7097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7097_skip : Flapjack.WordAlloc.isSkip output7097 = false := by
  rw [output7097_def]
  conv => lhs; cbv
  try rfl
theorem node7097_eq : Flapjack.WordAlloc.removeDeadStructural input7097 value3552 value1 value2 = (output7097, value3553, value1) := by
  rw [input7097_def, output7097_def]
  try (conv => lhs; cbv)
  try rfl

def value3554 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15249 3584#64))).val
theorem input7098_def : input7098 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15249 3584#64)) := by
  unfold input7098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15249 3584#64))).val
theorem output7098_def : output7098 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15249 3584#64)) := by
  unfold output7098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7098_skip : Flapjack.WordAlloc.isSkip output7098 = false := by
  rw [output7098_def]
  conv => lhs; cbv
  try rfl
theorem node7098_eq : Flapjack.WordAlloc.removeDeadStructural input7098 value3553 value1 value2 = (output7098, value3554, value1) := by
  rw [input7098_def, output7098_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7098 input7097)).val
theorem input7099_def : input7099 = (.seq input7098 input7097) := by
  unfold input7099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7098 output7097)).val
theorem output7099_def : output7099 = (.seq output7098 output7097) := by
  unfold output7099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7099_skip : Flapjack.WordAlloc.isSkip output7099 = false := by
  rw [output7099_def]
  conv => lhs; cbv
  try rfl
theorem node7099_eq : Flapjack.WordAlloc.removeDeadStructural input7099 value3552 value1 value2 = (output7099, value3554, value1) := by
  rw [input7099_def, output7099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7097_eq]
  dsimp only
  rw [node7098_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3555 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15245 (Flapjack.WordLangAddr.addr 15241 18446744073709551104#64)))).val
theorem input7100_def : input7100 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15245 (Flapjack.WordLangAddr.addr 15241 18446744073709551104#64))) := by
  unfold input7100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15245 (Flapjack.WordLangAddr.addr 15241 18446744073709551104#64)))).val
theorem output7100_def : output7100 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15245 (Flapjack.WordLangAddr.addr 15241 18446744073709551104#64))) := by
  unfold output7100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7100_skip : Flapjack.WordAlloc.isSkip output7100 = false := by
  rw [output7100_def]
  conv => lhs; cbv
  try rfl
theorem node7100_eq : Flapjack.WordAlloc.removeDeadStructural input7100 value3554 value1 value2 = (output7100, value3555, value1) := by
  rw [input7100_def, output7100_def]
  try (conv => lhs; cbv)
  try rfl

def value3556 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15241 15237)).val
theorem input7101_def : input7101 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15241 15237) := by
  unfold input7101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15241 15237)).val
theorem output7101_def : output7101 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15241 15237) := by
  unfold output7101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7101_skip : Flapjack.WordAlloc.isSkip output7101 = false := by
  rw [output7101_def]
  conv => lhs; cbv
  try rfl
theorem node7101_eq : Flapjack.WordAlloc.removeDeadStructural input7101 value3555 value1 value2 = (output7101, value3556, value1) := by
  rw [input7101_def, output7101_def]
  try (conv => lhs; cbv)
  try rfl

def value3557 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15237 15233 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7102_def : input7102 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15237 15233 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15237 15233 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7102_def : output7102 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15237 15233 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7102_skip : Flapjack.WordAlloc.isSkip output7102 = false := by
  rw [output7102_def]
  conv => lhs; cbv
  try rfl
theorem node7102_eq : Flapjack.WordAlloc.removeDeadStructural input7102 value3556 value1 value2 = (output7102, value3557, value1) := by
  rw [input7102_def, output7102_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15233 Flapjack.WordStore.heapLength)).val
theorem input7103_def : input7103 = (Flapjack.WordLangProgHOL.get 15233 Flapjack.WordStore.heapLength) := by
  unfold input7103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15233 Flapjack.WordStore.heapLength)).val
theorem output7103_def : output7103 = (Flapjack.WordLangProgHOL.get 15233 Flapjack.WordStore.heapLength) := by
  unfold output7103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7103_skip : Flapjack.WordAlloc.isSkip output7103 = false := by
  rw [output7103_def]
  conv => lhs; cbv
  try rfl
theorem node7103_eq : Flapjack.WordAlloc.removeDeadStructural input7103 value3557 value1 value2 = (output7103, value5, value1) := by
  rw [input7103_def, output7103_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7103 input7102)).val
theorem input7104_def : input7104 = (.seq input7103 input7102) := by
  unfold input7104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7103 output7102)).val
theorem output7104_def : output7104 = (.seq output7103 output7102) := by
  unfold output7104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7104_skip : Flapjack.WordAlloc.isSkip output7104 = false := by
  rw [output7104_def]
  conv => lhs; cbv
  try rfl
theorem node7104_eq : Flapjack.WordAlloc.removeDeadStructural input7104 value3556 value1 value2 = (output7104, value5, value1) := by
  rw [input7104_def, output7104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7102_eq]
  dsimp only
  rw [node7103_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7104 input7101)).val
theorem input7105_def : input7105 = (.seq input7104 input7101) := by
  unfold input7105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7104 output7101)).val
theorem output7105_def : output7105 = (.seq output7104 output7101) := by
  unfold output7105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7105_skip : Flapjack.WordAlloc.isSkip output7105 = false := by
  rw [output7105_def]
  conv => lhs; cbv
  try rfl
theorem node7105_eq : Flapjack.WordAlloc.removeDeadStructural input7105 value3555 value1 value2 = (output7105, value5, value1) := by
  rw [input7105_def, output7105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7101_eq]
  dsimp only
  rw [node7104_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7105 input7100)).val
theorem input7106_def : input7106 = (.seq input7105 input7100) := by
  unfold input7106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7105 output7100)).val
theorem output7106_def : output7106 = (.seq output7105 output7100) := by
  unfold output7106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7106_skip : Flapjack.WordAlloc.isSkip output7106 = false := by
  rw [output7106_def]
  conv => lhs; cbv
  try rfl
theorem node7106_eq : Flapjack.WordAlloc.removeDeadStructural input7106 value3554 value1 value2 = (output7106, value5, value1) := by
  rw [input7106_def, output7106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7100_eq]
  dsimp only
  rw [node7105_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7106 input7099)).val
theorem input7107_def : input7107 = (.seq input7106 input7099) := by
  unfold input7107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7106 output7099)).val
theorem output7107_def : output7107 = (.seq output7106 output7099) := by
  unfold output7107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7107_skip : Flapjack.WordAlloc.isSkip output7107 = false := by
  rw [output7107_def]
  conv => lhs; cbv
  try rfl
theorem node7107_eq : Flapjack.WordAlloc.removeDeadStructural input7107 value3552 value1 value2 = (output7107, value5, value1) := by
  rw [input7107_def, output7107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7099_eq]
  dsimp only
  rw [node7106_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3558 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15225 (Flapjack.WordLangAddr.addr 15229 0#64)))).val
theorem input7108_def : input7108 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15225 (Flapjack.WordLangAddr.addr 15229 0#64))) := by
  unfold input7108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15225 (Flapjack.WordLangAddr.addr 15229 0#64)))).val
theorem output7108_def : output7108 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15225 (Flapjack.WordLangAddr.addr 15229 0#64))) := by
  unfold output7108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7108_skip : Flapjack.WordAlloc.isSkip output7108 = false := by
  rw [output7108_def]
  conv => lhs; cbv
  try rfl
theorem node7108_eq : Flapjack.WordAlloc.removeDeadStructural input7108 value5 value1 value2 = (output7108, value3558, value1) := by
  rw [input7108_def, output7108_def]
  try (conv => lhs; cbv)
  try rfl

def value3559 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15229, 15217)])).val
theorem input7109_def : input7109 = (Flapjack.WordLangProgHOL.move 0 [(15229, 15217)]) := by
  unfold input7109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15229, 15217)])).val
theorem output7109_def : output7109 = (Flapjack.WordLangProgHOL.move 0 [(15229, 15217)]) := by
  unfold output7109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7109_skip : Flapjack.WordAlloc.isSkip output7109 = false := by
  rw [output7109_def]
  conv => lhs; cbv
  try rfl
theorem node7109_eq : Flapjack.WordAlloc.removeDeadStructural input7109 value3558 value1 value2 = (output7109, value3559, value1) := by
  rw [input7109_def, output7109_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7109 input7108)).val
theorem input7110_def : input7110 = (.seq input7109 input7108) := by
  unfold input7110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7109 output7108)).val
theorem output7110_def : output7110 = (.seq output7109 output7108) := by
  unfold output7110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7110_skip : Flapjack.WordAlloc.isSkip output7110 = false := by
  rw [output7110_def]
  conv => lhs; cbv
  try rfl
theorem node7110_eq : Flapjack.WordAlloc.removeDeadStructural input7110 value5 value1 value2 = (output7110, value3559, value1) := by
  rw [input7110_def, output7110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7108_eq]
  dsimp only
  rw [node7109_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3560 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15225 1780164921828767454#64))).val
theorem input7111_def : input7111 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15225 1780164921828767454#64)) := by
  unfold input7111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15225 1780164921828767454#64))).val
theorem output7111_def : output7111 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15225 1780164921828767454#64)) := by
  unfold output7111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7111_skip : Flapjack.WordAlloc.isSkip output7111 = false := by
  rw [output7111_def]
  conv => lhs; cbv
  try rfl
theorem node7111_eq : Flapjack.WordAlloc.removeDeadStructural input7111 value3559 value1 value2 = (output7111, value3560, value1) := by
  rw [input7111_def, output7111_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15221 1780164921828767454#64))).val
theorem input7112_def : input7112 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15221 1780164921828767454#64)) := by
  unfold input7112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7112_def : output7112 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7112_skip : Flapjack.WordAlloc.isSkip output7112 = true := by
  rw [output7112_def]
  conv => lhs; cbv
  try rfl
theorem node7112_eq : Flapjack.WordAlloc.removeDeadStructural input7112 value3560 value1 value2 = (output7112, value3560, value1) := by
  rw [input7112_def, output7112_def]
  try (conv => lhs; cbv)
  try rfl

def value3561 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15217 15209 (Flapjack.WordRegImm.reg 15213))))).val
theorem input7113_def : input7113 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15217 15209 (Flapjack.WordRegImm.reg 15213)))) := by
  unfold input7113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15217 15209 (Flapjack.WordRegImm.reg 15213))))).val
theorem output7113_def : output7113 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15217 15209 (Flapjack.WordRegImm.reg 15213)))) := by
  unfold output7113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7113_skip : Flapjack.WordAlloc.isSkip output7113 = false := by
  rw [output7113_def]
  conv => lhs; cbv
  try rfl
theorem node7113_eq : Flapjack.WordAlloc.removeDeadStructural input7113 value3560 value1 value2 = (output7113, value3561, value1) := by
  rw [input7113_def, output7113_def]
  try (conv => lhs; cbv)
  try rfl

def value3562 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15213 3576#64))).val
theorem input7114_def : input7114 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15213 3576#64)) := by
  unfold input7114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15213 3576#64))).val
theorem output7114_def : output7114 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15213 3576#64)) := by
  unfold output7114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7114_skip : Flapjack.WordAlloc.isSkip output7114 = false := by
  rw [output7114_def]
  conv => lhs; cbv
  try rfl
theorem node7114_eq : Flapjack.WordAlloc.removeDeadStructural input7114 value3561 value1 value2 = (output7114, value3562, value1) := by
  rw [input7114_def, output7114_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7114 input7113)).val
theorem input7115_def : input7115 = (.seq input7114 input7113) := by
  unfold input7115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7114 output7113)).val
theorem output7115_def : output7115 = (.seq output7114 output7113) := by
  unfold output7115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7115_skip : Flapjack.WordAlloc.isSkip output7115 = false := by
  rw [output7115_def]
  conv => lhs; cbv
  try rfl
theorem node7115_eq : Flapjack.WordAlloc.removeDeadStructural input7115 value3560 value1 value2 = (output7115, value3562, value1) := by
  rw [input7115_def, output7115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7113_eq]
  dsimp only
  rw [node7114_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3563 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15209 (Flapjack.WordLangAddr.addr 15205 18446744073709551104#64)))).val
theorem input7116_def : input7116 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15209 (Flapjack.WordLangAddr.addr 15205 18446744073709551104#64))) := by
  unfold input7116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15209 (Flapjack.WordLangAddr.addr 15205 18446744073709551104#64)))).val
theorem output7116_def : output7116 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15209 (Flapjack.WordLangAddr.addr 15205 18446744073709551104#64))) := by
  unfold output7116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7116_skip : Flapjack.WordAlloc.isSkip output7116 = false := by
  rw [output7116_def]
  conv => lhs; cbv
  try rfl
theorem node7116_eq : Flapjack.WordAlloc.removeDeadStructural input7116 value3562 value1 value2 = (output7116, value3563, value1) := by
  rw [input7116_def, output7116_def]
  try (conv => lhs; cbv)
  try rfl

def value3564 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15205 15201)).val
theorem input7117_def : input7117 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15205 15201) := by
  unfold input7117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15205 15201)).val
theorem output7117_def : output7117 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15205 15201) := by
  unfold output7117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7117_skip : Flapjack.WordAlloc.isSkip output7117 = false := by
  rw [output7117_def]
  conv => lhs; cbv
  try rfl
theorem node7117_eq : Flapjack.WordAlloc.removeDeadStructural input7117 value3563 value1 value2 = (output7117, value3564, value1) := by
  rw [input7117_def, output7117_def]
  try (conv => lhs; cbv)
  try rfl

def value3565 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
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
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15201 15197 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7118_def : input7118 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15201 15197 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15201 15197 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7118_def : output7118 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15201 15197 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7118_skip : Flapjack.WordAlloc.isSkip output7118 = false := by
  rw [output7118_def]
  conv => lhs; cbv
  try rfl
theorem node7118_eq : Flapjack.WordAlloc.removeDeadStructural input7118 value3564 value1 value2 = (output7118, value3565, value1) := by
  rw [input7118_def, output7118_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15197 Flapjack.WordStore.heapLength)).val
theorem input7119_def : input7119 = (Flapjack.WordLangProgHOL.get 15197 Flapjack.WordStore.heapLength) := by
  unfold input7119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15197 Flapjack.WordStore.heapLength)).val
theorem output7119_def : output7119 = (Flapjack.WordLangProgHOL.get 15197 Flapjack.WordStore.heapLength) := by
  unfold output7119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7119_skip : Flapjack.WordAlloc.isSkip output7119 = false := by
  rw [output7119_def]
  conv => lhs; cbv
  try rfl
theorem node7119_eq : Flapjack.WordAlloc.removeDeadStructural input7119 value3565 value1 value2 = (output7119, value5, value1) := by
  rw [input7119_def, output7119_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7119 input7118)).val
theorem input7120_def : input7120 = (.seq input7119 input7118) := by
  unfold input7120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7119 output7118)).val
theorem output7120_def : output7120 = (.seq output7119 output7118) := by
  unfold output7120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7120_skip : Flapjack.WordAlloc.isSkip output7120 = false := by
  rw [output7120_def]
  conv => lhs; cbv
  try rfl
theorem node7120_eq : Flapjack.WordAlloc.removeDeadStructural input7120 value3564 value1 value2 = (output7120, value5, value1) := by
  rw [input7120_def, output7120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7118_eq]
  dsimp only
  rw [node7119_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7120 input7117)).val
theorem input7121_def : input7121 = (.seq input7120 input7117) := by
  unfold input7121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7120 output7117)).val
theorem output7121_def : output7121 = (.seq output7120 output7117) := by
  unfold output7121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7121_skip : Flapjack.WordAlloc.isSkip output7121 = false := by
  rw [output7121_def]
  conv => lhs; cbv
  try rfl
theorem node7121_eq : Flapjack.WordAlloc.removeDeadStructural input7121 value3563 value1 value2 = (output7121, value5, value1) := by
  rw [input7121_def, output7121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7117_eq]
  dsimp only
  rw [node7120_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7121 input7116)).val
theorem input7122_def : input7122 = (.seq input7121 input7116) := by
  unfold input7122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7121 output7116)).val
theorem output7122_def : output7122 = (.seq output7121 output7116) := by
  unfold output7122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7122_skip : Flapjack.WordAlloc.isSkip output7122 = false := by
  rw [output7122_def]
  conv => lhs; cbv
  try rfl
theorem node7122_eq : Flapjack.WordAlloc.removeDeadStructural input7122 value3562 value1 value2 = (output7122, value5, value1) := by
  rw [input7122_def, output7122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7116_eq]
  dsimp only
  rw [node7121_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7122 input7115)).val
theorem input7123_def : input7123 = (.seq input7122 input7115) := by
  unfold input7123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7122 output7115)).val
theorem output7123_def : output7123 = (.seq output7122 output7115) := by
  unfold output7123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7123_skip : Flapjack.WordAlloc.isSkip output7123 = false := by
  rw [output7123_def]
  conv => lhs; cbv
  try rfl
theorem node7123_eq : Flapjack.WordAlloc.removeDeadStructural input7123 value3560 value1 value2 = (output7123, value5, value1) := by
  rw [input7123_def, output7123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7115_eq]
  dsimp only
  rw [node7122_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3566 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15189 (Flapjack.WordLangAddr.addr 15193 0#64)))).val
theorem input7124_def : input7124 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15189 (Flapjack.WordLangAddr.addr 15193 0#64))) := by
  unfold input7124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15189 (Flapjack.WordLangAddr.addr 15193 0#64)))).val
theorem output7124_def : output7124 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15189 (Flapjack.WordLangAddr.addr 15193 0#64))) := by
  unfold output7124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7124_skip : Flapjack.WordAlloc.isSkip output7124 = false := by
  rw [output7124_def]
  conv => lhs; cbv
  try rfl
theorem node7124_eq : Flapjack.WordAlloc.removeDeadStructural input7124 value5 value1 value2 = (output7124, value3566, value1) := by
  rw [input7124_def, output7124_def]
  try (conv => lhs; cbv)
  try rfl

def value3567 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15193, 15181)])).val
theorem input7125_def : input7125 = (Flapjack.WordLangProgHOL.move 0 [(15193, 15181)]) := by
  unfold input7125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15193, 15181)])).val
theorem output7125_def : output7125 = (Flapjack.WordLangProgHOL.move 0 [(15193, 15181)]) := by
  unfold output7125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7125_skip : Flapjack.WordAlloc.isSkip output7125 = false := by
  rw [output7125_def]
  conv => lhs; cbv
  try rfl
theorem node7125_eq : Flapjack.WordAlloc.removeDeadStructural input7125 value3566 value1 value2 = (output7125, value3567, value1) := by
  rw [input7125_def, output7125_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7125 input7124)).val
theorem input7126_def : input7126 = (.seq input7125 input7124) := by
  unfold input7126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7125 output7124)).val
theorem output7126_def : output7126 = (.seq output7125 output7124) := by
  unfold output7126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7126_skip : Flapjack.WordAlloc.isSkip output7126 = false := by
  rw [output7126_def]
  conv => lhs; cbv
  try rfl
theorem node7126_eq : Flapjack.WordAlloc.removeDeadStructural input7126 value5 value1 value2 = (output7126, value3567, value1) := by
  rw [input7126_def, output7126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7124_eq]
  dsimp only
  rw [node7125_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3568 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15189 13337622794239929804#64))).val
theorem input7127_def : input7127 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15189 13337622794239929804#64)) := by
  unfold input7127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15189 13337622794239929804#64))).val
theorem output7127_def : output7127 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15189 13337622794239929804#64)) := by
  unfold output7127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7127_skip : Flapjack.WordAlloc.isSkip output7127 = false := by
  rw [output7127_def]
  conv => lhs; cbv
  try rfl
theorem node7127_eq : Flapjack.WordAlloc.removeDeadStructural input7127 value3567 value1 value2 = (output7127, value3568, value1) := by
  rw [input7127_def, output7127_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15185 13337622794239929804#64))).val
theorem input7128_def : input7128 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15185 13337622794239929804#64)) := by
  unfold input7128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7128_def : output7128 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7128_skip : Flapjack.WordAlloc.isSkip output7128 = true := by
  rw [output7128_def]
  conv => lhs; cbv
  try rfl
theorem node7128_eq : Flapjack.WordAlloc.removeDeadStructural input7128 value3568 value1 value2 = (output7128, value3568, value1) := by
  rw [input7128_def, output7128_def]
  try (conv => lhs; cbv)
  try rfl

def value3569 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15181 15173 (Flapjack.WordRegImm.reg 15177))))).val
theorem input7129_def : input7129 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15181 15173 (Flapjack.WordRegImm.reg 15177)))) := by
  unfold input7129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15181 15173 (Flapjack.WordRegImm.reg 15177))))).val
theorem output7129_def : output7129 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15181 15173 (Flapjack.WordRegImm.reg 15177)))) := by
  unfold output7129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7129_skip : Flapjack.WordAlloc.isSkip output7129 = false := by
  rw [output7129_def]
  conv => lhs; cbv
  try rfl
theorem node7129_eq : Flapjack.WordAlloc.removeDeadStructural input7129 value3568 value1 value2 = (output7129, value3569, value1) := by
  rw [input7129_def, output7129_def]
  try (conv => lhs; cbv)
  try rfl

def value3570 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15177 3568#64))).val
theorem input7130_def : input7130 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15177 3568#64)) := by
  unfold input7130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15177 3568#64))).val
theorem output7130_def : output7130 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15177 3568#64)) := by
  unfold output7130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7130_skip : Flapjack.WordAlloc.isSkip output7130 = false := by
  rw [output7130_def]
  conv => lhs; cbv
  try rfl
theorem node7130_eq : Flapjack.WordAlloc.removeDeadStructural input7130 value3569 value1 value2 = (output7130, value3570, value1) := by
  rw [input7130_def, output7130_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7130 input7129)).val
theorem input7131_def : input7131 = (.seq input7130 input7129) := by
  unfold input7131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7130 output7129)).val
theorem output7131_def : output7131 = (.seq output7130 output7129) := by
  unfold output7131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7131_skip : Flapjack.WordAlloc.isSkip output7131 = false := by
  rw [output7131_def]
  conv => lhs; cbv
  try rfl
theorem node7131_eq : Flapjack.WordAlloc.removeDeadStructural input7131 value3568 value1 value2 = (output7131, value3570, value1) := by
  rw [input7131_def, output7131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7129_eq]
  dsimp only
  rw [node7130_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3571 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15173 (Flapjack.WordLangAddr.addr 15169 18446744073709551104#64)))).val
theorem input7132_def : input7132 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15173 (Flapjack.WordLangAddr.addr 15169 18446744073709551104#64))) := by
  unfold input7132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15173 (Flapjack.WordLangAddr.addr 15169 18446744073709551104#64)))).val
theorem output7132_def : output7132 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15173 (Flapjack.WordLangAddr.addr 15169 18446744073709551104#64))) := by
  unfold output7132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7132_skip : Flapjack.WordAlloc.isSkip output7132 = false := by
  rw [output7132_def]
  conv => lhs; cbv
  try rfl
theorem node7132_eq : Flapjack.WordAlloc.removeDeadStructural input7132 value3570 value1 value2 = (output7132, value3571, value1) := by
  rw [input7132_def, output7132_def]
  try (conv => lhs; cbv)
  try rfl

def value3572 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15169 15165)).val
theorem input7133_def : input7133 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15169 15165) := by
  unfold input7133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15169 15165)).val
theorem output7133_def : output7133 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15169 15165) := by
  unfold output7133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7133_skip : Flapjack.WordAlloc.isSkip output7133 = false := by
  rw [output7133_def]
  conv => lhs; cbv
  try rfl
theorem node7133_eq : Flapjack.WordAlloc.removeDeadStructural input7133 value3571 value1 value2 = (output7133, value3572, value1) := by
  rw [input7133_def, output7133_def]
  try (conv => lhs; cbv)
  try rfl

def value3573 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15165 15161 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7134_def : input7134 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15165 15161 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15165 15161 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7134_def : output7134 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15165 15161 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7134_skip : Flapjack.WordAlloc.isSkip output7134 = false := by
  rw [output7134_def]
  conv => lhs; cbv
  try rfl
theorem node7134_eq : Flapjack.WordAlloc.removeDeadStructural input7134 value3572 value1 value2 = (output7134, value3573, value1) := by
  rw [input7134_def, output7134_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15161 Flapjack.WordStore.heapLength)).val
theorem input7135_def : input7135 = (Flapjack.WordLangProgHOL.get 15161 Flapjack.WordStore.heapLength) := by
  unfold input7135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15161 Flapjack.WordStore.heapLength)).val
theorem output7135_def : output7135 = (Flapjack.WordLangProgHOL.get 15161 Flapjack.WordStore.heapLength) := by
  unfold output7135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7135_skip : Flapjack.WordAlloc.isSkip output7135 = false := by
  rw [output7135_def]
  conv => lhs; cbv
  try rfl
theorem node7135_eq : Flapjack.WordAlloc.removeDeadStructural input7135 value3573 value1 value2 = (output7135, value5, value1) := by
  rw [input7135_def, output7135_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7135 input7134)).val
theorem input7136_def : input7136 = (.seq input7135 input7134) := by
  unfold input7136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7135 output7134)).val
theorem output7136_def : output7136 = (.seq output7135 output7134) := by
  unfold output7136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7136_skip : Flapjack.WordAlloc.isSkip output7136 = false := by
  rw [output7136_def]
  conv => lhs; cbv
  try rfl
theorem node7136_eq : Flapjack.WordAlloc.removeDeadStructural input7136 value3572 value1 value2 = (output7136, value5, value1) := by
  rw [input7136_def, output7136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7134_eq]
  dsimp only
  rw [node7135_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7136 input7133)).val
theorem input7137_def : input7137 = (.seq input7136 input7133) := by
  unfold input7137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7136 output7133)).val
theorem output7137_def : output7137 = (.seq output7136 output7133) := by
  unfold output7137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7137_skip : Flapjack.WordAlloc.isSkip output7137 = false := by
  rw [output7137_def]
  conv => lhs; cbv
  try rfl
theorem node7137_eq : Flapjack.WordAlloc.removeDeadStructural input7137 value3571 value1 value2 = (output7137, value5, value1) := by
  rw [input7137_def, output7137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7133_eq]
  dsimp only
  rw [node7136_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7137 input7132)).val
theorem input7138_def : input7138 = (.seq input7137 input7132) := by
  unfold input7138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7137 output7132)).val
theorem output7138_def : output7138 = (.seq output7137 output7132) := by
  unfold output7138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7138_skip : Flapjack.WordAlloc.isSkip output7138 = false := by
  rw [output7138_def]
  conv => lhs; cbv
  try rfl
theorem node7138_eq : Flapjack.WordAlloc.removeDeadStructural input7138 value3570 value1 value2 = (output7138, value5, value1) := by
  rw [input7138_def, output7138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7132_eq]
  dsimp only
  rw [node7137_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7138 input7131)).val
theorem input7139_def : input7139 = (.seq input7138 input7131) := by
  unfold input7139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7138 output7131)).val
theorem output7139_def : output7139 = (.seq output7138 output7131) := by
  unfold output7139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7139_skip : Flapjack.WordAlloc.isSkip output7139 = false := by
  rw [output7139_def]
  conv => lhs; cbv
  try rfl
theorem node7139_eq : Flapjack.WordAlloc.removeDeadStructural input7139 value3568 value1 value2 = (output7139, value5, value1) := by
  rw [input7139_def, output7139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7131_eq]
  dsimp only
  rw [node7138_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3574 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15153 (Flapjack.WordLangAddr.addr 15157 0#64)))).val
theorem input7140_def : input7140 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15153 (Flapjack.WordLangAddr.addr 15157 0#64))) := by
  unfold input7140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15153 (Flapjack.WordLangAddr.addr 15157 0#64)))).val
theorem output7140_def : output7140 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15153 (Flapjack.WordLangAddr.addr 15157 0#64))) := by
  unfold output7140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7140_skip : Flapjack.WordAlloc.isSkip output7140 = false := by
  rw [output7140_def]
  conv => lhs; cbv
  try rfl
theorem node7140_eq : Flapjack.WordAlloc.removeDeadStructural input7140 value5 value1 value2 = (output7140, value3574, value1) := by
  rw [input7140_def, output7140_def]
  try (conv => lhs; cbv)
  try rfl

def value3575 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15157, 15145)])).val
theorem input7141_def : input7141 = (Flapjack.WordLangProgHOL.move 0 [(15157, 15145)]) := by
  unfold input7141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15157, 15145)])).val
theorem output7141_def : output7141 = (Flapjack.WordLangProgHOL.move 0 [(15157, 15145)]) := by
  unfold output7141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7141_skip : Flapjack.WordAlloc.isSkip output7141 = false := by
  rw [output7141_def]
  conv => lhs; cbv
  try rfl
theorem node7141_eq : Flapjack.WordAlloc.removeDeadStructural input7141 value3574 value1 value2 = (output7141, value3575, value1) := by
  rw [input7141_def, output7141_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7141 input7140)).val
theorem input7142_def : input7142 = (.seq input7141 input7140) := by
  unfold input7142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7141 output7140)).val
theorem output7142_def : output7142 = (.seq output7141 output7140) := by
  unfold output7142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7142_skip : Flapjack.WordAlloc.isSkip output7142 = false := by
  rw [output7142_def]
  conv => lhs; cbv
  try rfl
theorem node7142_eq : Flapjack.WordAlloc.removeDeadStructural input7142 value5 value1 value2 = (output7142, value3575, value1) := by
  rw [input7142_def, output7142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7140_eq]
  dsimp only
  rw [node7141_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3576 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15153 5923739534552515142#64))).val
theorem input7143_def : input7143 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15153 5923739534552515142#64)) := by
  unfold input7143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15153 5923739534552515142#64))).val
theorem output7143_def : output7143 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15153 5923739534552515142#64)) := by
  unfold output7143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7143_skip : Flapjack.WordAlloc.isSkip output7143 = false := by
  rw [output7143_def]
  conv => lhs; cbv
  try rfl
theorem node7143_eq : Flapjack.WordAlloc.removeDeadStructural input7143 value3575 value1 value2 = (output7143, value3576, value1) := by
  rw [input7143_def, output7143_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15149 5923739534552515142#64))).val
theorem input7144_def : input7144 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15149 5923739534552515142#64)) := by
  unfold input7144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7144_def : output7144 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7144_skip : Flapjack.WordAlloc.isSkip output7144 = true := by
  rw [output7144_def]
  conv => lhs; cbv
  try rfl
theorem node7144_eq : Flapjack.WordAlloc.removeDeadStructural input7144 value3576 value1 value2 = (output7144, value3576, value1) := by
  rw [input7144_def, output7144_def]
  try (conv => lhs; cbv)
  try rfl

def value3577 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15145 15137 (Flapjack.WordRegImm.reg 15141))))).val
theorem input7145_def : input7145 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15145 15137 (Flapjack.WordRegImm.reg 15141)))) := by
  unfold input7145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15145 15137 (Flapjack.WordRegImm.reg 15141))))).val
theorem output7145_def : output7145 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15145 15137 (Flapjack.WordRegImm.reg 15141)))) := by
  unfold output7145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7145_skip : Flapjack.WordAlloc.isSkip output7145 = false := by
  rw [output7145_def]
  conv => lhs; cbv
  try rfl
theorem node7145_eq : Flapjack.WordAlloc.removeDeadStructural input7145 value3576 value1 value2 = (output7145, value3577, value1) := by
  rw [input7145_def, output7145_def]
  try (conv => lhs; cbv)
  try rfl

def value3578 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15141 3560#64))).val
theorem input7146_def : input7146 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15141 3560#64)) := by
  unfold input7146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15141 3560#64))).val
theorem output7146_def : output7146 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15141 3560#64)) := by
  unfold output7146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7146_skip : Flapjack.WordAlloc.isSkip output7146 = false := by
  rw [output7146_def]
  conv => lhs; cbv
  try rfl
theorem node7146_eq : Flapjack.WordAlloc.removeDeadStructural input7146 value3577 value1 value2 = (output7146, value3578, value1) := by
  rw [input7146_def, output7146_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7146 input7145)).val
theorem input7147_def : input7147 = (.seq input7146 input7145) := by
  unfold input7147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7146 output7145)).val
theorem output7147_def : output7147 = (.seq output7146 output7145) := by
  unfold output7147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7147_skip : Flapjack.WordAlloc.isSkip output7147 = false := by
  rw [output7147_def]
  conv => lhs; cbv
  try rfl
theorem node7147_eq : Flapjack.WordAlloc.removeDeadStructural input7147 value3576 value1 value2 = (output7147, value3578, value1) := by
  rw [input7147_def, output7147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7145_eq]
  dsimp only
  rw [node7146_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3579 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15137 (Flapjack.WordLangAddr.addr 15133 18446744073709551104#64)))).val
theorem input7148_def : input7148 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15137 (Flapjack.WordLangAddr.addr 15133 18446744073709551104#64))) := by
  unfold input7148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15137 (Flapjack.WordLangAddr.addr 15133 18446744073709551104#64)))).val
theorem output7148_def : output7148 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15137 (Flapjack.WordLangAddr.addr 15133 18446744073709551104#64))) := by
  unfold output7148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7148_skip : Flapjack.WordAlloc.isSkip output7148 = false := by
  rw [output7148_def]
  conv => lhs; cbv
  try rfl
theorem node7148_eq : Flapjack.WordAlloc.removeDeadStructural input7148 value3578 value1 value2 = (output7148, value3579, value1) := by
  rw [input7148_def, output7148_def]
  try (conv => lhs; cbv)
  try rfl

def value3580 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15133 15129)).val
theorem input7149_def : input7149 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15133 15129) := by
  unfold input7149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15133 15129)).val
theorem output7149_def : output7149 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15133 15129) := by
  unfold output7149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7149_skip : Flapjack.WordAlloc.isSkip output7149 = false := by
  rw [output7149_def]
  conv => lhs; cbv
  try rfl
theorem node7149_eq : Flapjack.WordAlloc.removeDeadStructural input7149 value3579 value1 value2 = (output7149, value3580, value1) := by
  rw [input7149_def, output7149_def]
  try (conv => lhs; cbv)
  try rfl

def value3581 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15129 15125 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7150_def : input7150 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15129 15125 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15129 15125 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7150_def : output7150 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15129 15125 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7150_skip : Flapjack.WordAlloc.isSkip output7150 = false := by
  rw [output7150_def]
  conv => lhs; cbv
  try rfl
theorem node7150_eq : Flapjack.WordAlloc.removeDeadStructural input7150 value3580 value1 value2 = (output7150, value3581, value1) := by
  rw [input7150_def, output7150_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15125 Flapjack.WordStore.heapLength)).val
theorem input7151_def : input7151 = (Flapjack.WordLangProgHOL.get 15125 Flapjack.WordStore.heapLength) := by
  unfold input7151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15125 Flapjack.WordStore.heapLength)).val
theorem output7151_def : output7151 = (Flapjack.WordLangProgHOL.get 15125 Flapjack.WordStore.heapLength) := by
  unfold output7151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7151_skip : Flapjack.WordAlloc.isSkip output7151 = false := by
  rw [output7151_def]
  conv => lhs; cbv
  try rfl
theorem node7151_eq : Flapjack.WordAlloc.removeDeadStructural input7151 value3581 value1 value2 = (output7151, value5, value1) := by
  rw [input7151_def, output7151_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7151 input7150)).val
theorem input7152_def : input7152 = (.seq input7151 input7150) := by
  unfold input7152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7151 output7150)).val
theorem output7152_def : output7152 = (.seq output7151 output7150) := by
  unfold output7152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7152_skip : Flapjack.WordAlloc.isSkip output7152 = false := by
  rw [output7152_def]
  conv => lhs; cbv
  try rfl
theorem node7152_eq : Flapjack.WordAlloc.removeDeadStructural input7152 value3580 value1 value2 = (output7152, value5, value1) := by
  rw [input7152_def, output7152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7150_eq]
  dsimp only
  rw [node7151_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7152 input7149)).val
theorem input7153_def : input7153 = (.seq input7152 input7149) := by
  unfold input7153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7152 output7149)).val
theorem output7153_def : output7153 = (.seq output7152 output7149) := by
  unfold output7153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7153_skip : Flapjack.WordAlloc.isSkip output7153 = false := by
  rw [output7153_def]
  conv => lhs; cbv
  try rfl
theorem node7153_eq : Flapjack.WordAlloc.removeDeadStructural input7153 value3579 value1 value2 = (output7153, value5, value1) := by
  rw [input7153_def, output7153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7149_eq]
  dsimp only
  rw [node7152_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7153 input7148)).val
theorem input7154_def : input7154 = (.seq input7153 input7148) := by
  unfold input7154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7153 output7148)).val
theorem output7154_def : output7154 = (.seq output7153 output7148) := by
  unfold output7154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7154_skip : Flapjack.WordAlloc.isSkip output7154 = false := by
  rw [output7154_def]
  conv => lhs; cbv
  try rfl
theorem node7154_eq : Flapjack.WordAlloc.removeDeadStructural input7154 value3578 value1 value2 = (output7154, value5, value1) := by
  rw [input7154_def, output7154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7148_eq]
  dsimp only
  rw [node7153_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7154 input7147)).val
theorem input7155_def : input7155 = (.seq input7154 input7147) := by
  unfold input7155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7154 output7147)).val
theorem output7155_def : output7155 = (.seq output7154 output7147) := by
  unfold output7155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7155_skip : Flapjack.WordAlloc.isSkip output7155 = false := by
  rw [output7155_def]
  conv => lhs; cbv
  try rfl
theorem node7155_eq : Flapjack.WordAlloc.removeDeadStructural input7155 value3576 value1 value2 = (output7155, value5, value1) := by
  rw [input7155_def, output7155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7147_eq]
  dsimp only
  rw [node7154_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3582 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15117 (Flapjack.WordLangAddr.addr 15121 0#64)))).val
theorem input7156_def : input7156 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15117 (Flapjack.WordLangAddr.addr 15121 0#64))) := by
  unfold input7156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15117 (Flapjack.WordLangAddr.addr 15121 0#64)))).val
theorem output7156_def : output7156 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15117 (Flapjack.WordLangAddr.addr 15121 0#64))) := by
  unfold output7156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7156_skip : Flapjack.WordAlloc.isSkip output7156 = false := by
  rw [output7156_def]
  conv => lhs; cbv
  try rfl
theorem node7156_eq : Flapjack.WordAlloc.removeDeadStructural input7156 value5 value1 value2 = (output7156, value3582, value1) := by
  rw [input7156_def, output7156_def]
  try (conv => lhs; cbv)
  try rfl

def value3583 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15121, 15109)])).val
theorem input7157_def : input7157 = (Flapjack.WordLangProgHOL.move 0 [(15121, 15109)]) := by
  unfold input7157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15121, 15109)])).val
theorem output7157_def : output7157 = (Flapjack.WordLangProgHOL.move 0 [(15121, 15109)]) := by
  unfold output7157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7157_skip : Flapjack.WordAlloc.isSkip output7157 = false := by
  rw [output7157_def]
  conv => lhs; cbv
  try rfl
theorem node7157_eq : Flapjack.WordAlloc.removeDeadStructural input7157 value3582 value1 value2 = (output7157, value3583, value1) := by
  rw [input7157_def, output7157_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7157 input7156)).val
theorem input7158_def : input7158 = (.seq input7157 input7156) := by
  unfold input7158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7157 output7156)).val
theorem output7158_def : output7158 = (.seq output7157 output7156) := by
  unfold output7158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7158_skip : Flapjack.WordAlloc.isSkip output7158 = false := by
  rw [output7158_def]
  conv => lhs; cbv
  try rfl
theorem node7158_eq : Flapjack.WordAlloc.removeDeadStructural input7158 value5 value1 value2 = (output7158, value3583, value1) := by
  rw [input7158_def, output7158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7156_eq]
  dsimp only
  rw [node7157_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3584 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15117 3345046972101780530#64))).val
theorem input7159_def : input7159 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15117 3345046972101780530#64)) := by
  unfold input7159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15117 3345046972101780530#64))).val
theorem output7159_def : output7159 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15117 3345046972101780530#64)) := by
  unfold output7159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7159_skip : Flapjack.WordAlloc.isSkip output7159 = false := by
  rw [output7159_def]
  conv => lhs; cbv
  try rfl
theorem node7159_eq : Flapjack.WordAlloc.removeDeadStructural input7159 value3583 value1 value2 = (output7159, value3584, value1) := by
  rw [input7159_def, output7159_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15113 3345046972101780530#64))).val
theorem input7160_def : input7160 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15113 3345046972101780530#64)) := by
  unfold input7160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7160_def : output7160 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7160_skip : Flapjack.WordAlloc.isSkip output7160 = true := by
  rw [output7160_def]
  conv => lhs; cbv
  try rfl
theorem node7160_eq : Flapjack.WordAlloc.removeDeadStructural input7160 value3584 value1 value2 = (output7160, value3584, value1) := by
  rw [input7160_def, output7160_def]
  try (conv => lhs; cbv)
  try rfl

def value3585 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15109 15101 (Flapjack.WordRegImm.reg 15105))))).val
theorem input7161_def : input7161 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15109 15101 (Flapjack.WordRegImm.reg 15105)))) := by
  unfold input7161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15109 15101 (Flapjack.WordRegImm.reg 15105))))).val
theorem output7161_def : output7161 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15109 15101 (Flapjack.WordRegImm.reg 15105)))) := by
  unfold output7161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7161_skip : Flapjack.WordAlloc.isSkip output7161 = false := by
  rw [output7161_def]
  conv => lhs; cbv
  try rfl
theorem node7161_eq : Flapjack.WordAlloc.removeDeadStructural input7161 value3584 value1 value2 = (output7161, value3585, value1) := by
  rw [input7161_def, output7161_def]
  try (conv => lhs; cbv)
  try rfl

def value3586 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15105 3552#64))).val
theorem input7162_def : input7162 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15105 3552#64)) := by
  unfold input7162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15105 3552#64))).val
theorem output7162_def : output7162 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15105 3552#64)) := by
  unfold output7162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7162_skip : Flapjack.WordAlloc.isSkip output7162 = false := by
  rw [output7162_def]
  conv => lhs; cbv
  try rfl
theorem node7162_eq : Flapjack.WordAlloc.removeDeadStructural input7162 value3585 value1 value2 = (output7162, value3586, value1) := by
  rw [input7162_def, output7162_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7162 input7161)).val
theorem input7163_def : input7163 = (.seq input7162 input7161) := by
  unfold input7163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7162 output7161)).val
theorem output7163_def : output7163 = (.seq output7162 output7161) := by
  unfold output7163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7163_skip : Flapjack.WordAlloc.isSkip output7163 = false := by
  rw [output7163_def]
  conv => lhs; cbv
  try rfl
theorem node7163_eq : Flapjack.WordAlloc.removeDeadStructural input7163 value3584 value1 value2 = (output7163, value3586, value1) := by
  rw [input7163_def, output7163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7161_eq]
  dsimp only
  rw [node7162_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3587 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15101 (Flapjack.WordLangAddr.addr 15097 18446744073709551104#64)))).val
theorem input7164_def : input7164 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15101 (Flapjack.WordLangAddr.addr 15097 18446744073709551104#64))) := by
  unfold input7164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15101 (Flapjack.WordLangAddr.addr 15097 18446744073709551104#64)))).val
theorem output7164_def : output7164 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15101 (Flapjack.WordLangAddr.addr 15097 18446744073709551104#64))) := by
  unfold output7164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7164_skip : Flapjack.WordAlloc.isSkip output7164 = false := by
  rw [output7164_def]
  conv => lhs; cbv
  try rfl
theorem node7164_eq : Flapjack.WordAlloc.removeDeadStructural input7164 value3586 value1 value2 = (output7164, value3587, value1) := by
  rw [input7164_def, output7164_def]
  try (conv => lhs; cbv)
  try rfl

def value3588 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15097 15093)).val
theorem input7165_def : input7165 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15097 15093) := by
  unfold input7165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15097 15093)).val
theorem output7165_def : output7165 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15097 15093) := by
  unfold output7165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7165_skip : Flapjack.WordAlloc.isSkip output7165 = false := by
  rw [output7165_def]
  conv => lhs; cbv
  try rfl
theorem node7165_eq : Flapjack.WordAlloc.removeDeadStructural input7165 value3587 value1 value2 = (output7165, value3588, value1) := by
  rw [input7165_def, output7165_def]
  try (conv => lhs; cbv)
  try rfl

def value3589 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15093 15089 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7166_def : input7166 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15093 15089 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15093 15089 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7166_def : output7166 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15093 15089 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7166_skip : Flapjack.WordAlloc.isSkip output7166 = false := by
  rw [output7166_def]
  conv => lhs; cbv
  try rfl
theorem node7166_eq : Flapjack.WordAlloc.removeDeadStructural input7166 value3588 value1 value2 = (output7166, value3589, value1) := by
  rw [input7166_def, output7166_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15089 Flapjack.WordStore.heapLength)).val
theorem input7167_def : input7167 = (Flapjack.WordLangProgHOL.get 15089 Flapjack.WordStore.heapLength) := by
  unfold input7167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15089 Flapjack.WordStore.heapLength)).val
theorem output7167_def : output7167 = (Flapjack.WordLangProgHOL.get 15089 Flapjack.WordStore.heapLength) := by
  unfold output7167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7167_skip : Flapjack.WordAlloc.isSkip output7167 = false := by
  rw [output7167_def]
  conv => lhs; cbv
  try rfl
theorem node7167_eq : Flapjack.WordAlloc.removeDeadStructural input7167 value3589 value1 value2 = (output7167, value5, value1) := by
  rw [input7167_def, output7167_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node7167_eq
end InitECandidate.Proofs.DeadStages713
