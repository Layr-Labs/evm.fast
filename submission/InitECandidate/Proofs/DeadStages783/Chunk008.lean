import InitECandidate.Proofs.DeadStages783.Chunk007
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages783
def value1083 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(897, 801)])).val
theorem input2048_def : input2048 = (Flapjack.WordLangProgHOL.move 2 [(897, 801)]) := by
  unfold input2048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(897, 801)])).val
theorem output2048_def : output2048 = (Flapjack.WordLangProgHOL.move 2 [(897, 801)]) := by
  unfold output2048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2048_skip : Flapjack.WordAlloc.isSkip output2048 = false := by
  rw [output2048_def]
  conv => lhs; cbv
  try rfl
theorem node2048_eq : Flapjack.WordAlloc.removeDeadStructural input2048 value1082 value1 value2 = (output2048, value1083, value1) := by
  rw [input2048_def, output2048_def]
  try (conv => lhs; cbv)
  try rfl

def value1084 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(893, 805)])).val
theorem input2049_def : input2049 = (Flapjack.WordLangProgHOL.move 2 [(893, 805)]) := by
  unfold input2049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(893, 805)])).val
theorem output2049_def : output2049 = (Flapjack.WordLangProgHOL.move 2 [(893, 805)]) := by
  unfold output2049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2049_skip : Flapjack.WordAlloc.isSkip output2049 = false := by
  rw [output2049_def]
  conv => lhs; cbv
  try rfl
theorem node2049_eq : Flapjack.WordAlloc.removeDeadStructural input2049 value1083 value1 value2 = (output2049, value1084, value1) := by
  rw [input2049_def, output2049_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input2050_def : input2050 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input2050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2050_def : output2050 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2050_skip : Flapjack.WordAlloc.isSkip output2050 = true := by
  rw [output2050_def]
  conv => lhs; cbv
  try rfl
theorem node2050_eq : Flapjack.WordAlloc.removeDeadStructural input2050 value1084 value1 value2 = (output2050, value1084, value1) := by
  rw [input2050_def, output2050_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2050 input2049)).val
theorem input2051_def : input2051 = (.seq input2050 input2049) := by
  unfold input2051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2049)).val
theorem output2051_def : output2051 = (output2049) := by
  unfold output2051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2051_skip : Flapjack.WordAlloc.isSkip output2051 = false := by
  rw [output2051_def]
  conv => lhs; cbv
  try rfl
theorem node2051_eq : Flapjack.WordAlloc.removeDeadStructural input2051 value1083 value1 value2 = (output2051, value1084, value1) := by
  rw [input2051_def, output2051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2049_eq]
  try dsimp only
  rw [node2050_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2051 input2048)).val
theorem input2052_def : input2052 = (.seq input2051 input2048) := by
  unfold input2052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2051 output2048)).val
theorem output2052_def : output2052 = (.seq output2051 output2048) := by
  unfold output2052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2052_skip : Flapjack.WordAlloc.isSkip output2052 = false := by
  rw [output2052_def]
  conv => lhs; cbv
  try rfl
theorem node2052_eq : Flapjack.WordAlloc.removeDeadStructural input2052 value1082 value1 value2 = (output2052, value1084, value1) := by
  rw [input2052_def, output2052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2048_eq]
  try dsimp only
  rw [node2051_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2052 input2047)).val
theorem input2053_def : input2053 = (.seq input2052 input2047) := by
  unfold input2053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2052)).val
theorem output2053_def : output2053 = (output2052) := by
  unfold output2053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2053_skip : Flapjack.WordAlloc.isSkip output2053 = false := by
  rw [output2053_def]
  conv => lhs; cbv
  try rfl
theorem node2053_eq : Flapjack.WordAlloc.removeDeadStructural input2053 value1082 value1 value2 = (output2053, value1084, value1) := by
  rw [input2053_def, output2053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2047_eq]
  try dsimp only
  rw [node2052_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2053 input2046)).val
theorem input2054_def : input2054 = (.seq input2053 input2046) := by
  unfold input2054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2053 output2046)).val
theorem output2054_def : output2054 = (.seq output2053 output2046) := by
  unfold output2054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2054_skip : Flapjack.WordAlloc.isSkip output2054 = false := by
  rw [output2054_def]
  conv => lhs; cbv
  try rfl
theorem node2054_eq : Flapjack.WordAlloc.removeDeadStructural input2054 value1081 value1 value2 = (output2054, value1084, value1) := by
  rw [input2054_def, output2054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2046_eq]
  try dsimp only
  rw [node2053_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2054 input2045)).val
theorem input2055_def : input2055 = (.seq input2054 input2045) := by
  unfold input2055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2054 output2045)).val
theorem output2055_def : output2055 = (.seq output2054 output2045) := by
  unfold output2055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2055_skip : Flapjack.WordAlloc.isSkip output2055 = false := by
  rw [output2055_def]
  conv => lhs; cbv
  try rfl
theorem node2055_eq : Flapjack.WordAlloc.removeDeadStructural input2055 value1080 value1 value2 = (output2055, value1084, value1) := by
  rw [input2055_def, output2055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2045_eq]
  try dsimp only
  rw [node2054_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2055 input2044)).val
theorem input2056_def : input2056 = (.seq input2055 input2044) := by
  unfold input2056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2055 output2044)).val
theorem output2056_def : output2056 = (.seq output2055 output2044) := by
  unfold output2056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2056_skip : Flapjack.WordAlloc.isSkip output2056 = false := by
  rw [output2056_def]
  conv => lhs; cbv
  try rfl
theorem node2056_eq : Flapjack.WordAlloc.removeDeadStructural input2056 value1079 value1 value2 = (output2056, value1084, value1) := by
  rw [input2056_def, output2056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2044_eq]
  try dsimp only
  rw [node2055_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2056 input2043)).val
theorem input2057_def : input2057 = (.seq input2056 input2043) := by
  unfold input2057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2056 output2043)).val
theorem output2057_def : output2057 = (.seq output2056 output2043) := by
  unfold output2057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2057_skip : Flapjack.WordAlloc.isSkip output2057 = false := by
  rw [output2057_def]
  conv => lhs; cbv
  try rfl
theorem node2057_eq : Flapjack.WordAlloc.removeDeadStructural input2057 value1078 value1 value2 = (output2057, value1084, value1) := by
  rw [input2057_def, output2057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2043_eq]
  try dsimp only
  rw [node2056_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2057 input2042)).val
theorem input2058_def : input2058 = (.seq input2057 input2042) := by
  unfold input2058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2057 output2042)).val
theorem output2058_def : output2058 = (.seq output2057 output2042) := by
  unfold output2058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2058_skip : Flapjack.WordAlloc.isSkip output2058 = false := by
  rw [output2058_def]
  conv => lhs; cbv
  try rfl
theorem node2058_eq : Flapjack.WordAlloc.removeDeadStructural input2058 value1077 value1 value2 = (output2058, value1084, value1) := by
  rw [input2058_def, output2058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2042_eq]
  try dsimp only
  rw [node2057_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2058 input2041)).val
theorem input2059_def : input2059 = (.seq input2058 input2041) := by
  unfold input2059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2058 output2041)).val
theorem output2059_def : output2059 = (.seq output2058 output2041) := by
  unfold output2059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2059_skip : Flapjack.WordAlloc.isSkip output2059 = false := by
  rw [output2059_def]
  conv => lhs; cbv
  try rfl
theorem node2059_eq : Flapjack.WordAlloc.removeDeadStructural input2059 value1076 value1 value2 = (output2059, value1084, value1) := by
  rw [input2059_def, output2059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2041_eq]
  try dsimp only
  rw [node2058_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2059 input2040)).val
theorem input2060_def : input2060 = (.seq input2059 input2040) := by
  unfold input2060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2059 output2040)).val
theorem output2060_def : output2060 = (.seq output2059 output2040) := by
  unfold output2060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2060_skip : Flapjack.WordAlloc.isSkip output2060 = false := by
  rw [output2060_def]
  conv => lhs; cbv
  try rfl
theorem node2060_eq : Flapjack.WordAlloc.removeDeadStructural input2060 value1075 value1 value2 = (output2060, value1084, value1) := by
  rw [input2060_def, output2060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2040_eq]
  try dsimp only
  rw [node2059_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2060 input2039)).val
theorem input2061_def : input2061 = (.seq input2060 input2039) := by
  unfold input2061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2060 output2039)).val
theorem output2061_def : output2061 = (.seq output2060 output2039) := by
  unfold output2061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2061_skip : Flapjack.WordAlloc.isSkip output2061 = false := by
  rw [output2061_def]
  conv => lhs; cbv
  try rfl
theorem node2061_eq : Flapjack.WordAlloc.removeDeadStructural input2061 value1074 value1 value2 = (output2061, value1084, value1) := by
  rw [input2061_def, output2061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2039_eq]
  try dsimp only
  rw [node2060_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2061 input2038)).val
theorem input2062_def : input2062 = (.seq input2061 input2038) := by
  unfold input2062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2061 output2038)).val
theorem output2062_def : output2062 = (.seq output2061 output2038) := by
  unfold output2062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2062_skip : Flapjack.WordAlloc.isSkip output2062 = false := by
  rw [output2062_def]
  conv => lhs; cbv
  try rfl
theorem node2062_eq : Flapjack.WordAlloc.removeDeadStructural input2062 value1073 value1 value2 = (output2062, value1084, value1) := by
  rw [input2062_def, output2062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2038_eq]
  try dsimp only
  rw [node2061_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2062 input2037)).val
theorem input2063_def : input2063 = (.seq input2062 input2037) := by
  unfold input2063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2062 output2037)).val
theorem output2063_def : output2063 = (.seq output2062 output2037) := by
  unfold output2063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2063_skip : Flapjack.WordAlloc.isSkip output2063 = false := by
  rw [output2063_def]
  conv => lhs; cbv
  try rfl
theorem node2063_eq : Flapjack.WordAlloc.removeDeadStructural input2063 value1072 value1 value2 = (output2063, value1084, value1) := by
  rw [input2063_def, output2063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2037_eq]
  try dsimp only
  rw [node2062_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2063 input2036)).val
theorem input2064_def : input2064 = (.seq input2063 input2036) := by
  unfold input2064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2063 output2036)).val
theorem output2064_def : output2064 = (.seq output2063 output2036) := by
  unfold output2064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2064_skip : Flapjack.WordAlloc.isSkip output2064 = false := by
  rw [output2064_def]
  conv => lhs; cbv
  try rfl
theorem node2064_eq : Flapjack.WordAlloc.removeDeadStructural input2064 value1071 value1 value2 = (output2064, value1084, value1) := by
  rw [input2064_def, output2064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2036_eq]
  try dsimp only
  rw [node2063_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2064 input2035)).val
theorem input2065_def : input2065 = (.seq input2064 input2035) := by
  unfold input2065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2064 output2035)).val
theorem output2065_def : output2065 = (.seq output2064 output2035) := by
  unfold output2065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2065_skip : Flapjack.WordAlloc.isSkip output2065 = false := by
  rw [output2065_def]
  conv => lhs; cbv
  try rfl
theorem node2065_eq : Flapjack.WordAlloc.removeDeadStructural input2065 value1070 value1 value2 = (output2065, value1084, value1) := by
  rw [input2065_def, output2065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2035_eq]
  try dsimp only
  rw [node2064_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2065 input2034)).val
theorem input2066_def : input2066 = (.seq input2065 input2034) := by
  unfold input2066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2065 output2034)).val
theorem output2066_def : output2066 = (.seq output2065 output2034) := by
  unfold output2066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2066_skip : Flapjack.WordAlloc.isSkip output2066 = false := by
  rw [output2066_def]
  conv => lhs; cbv
  try rfl
theorem node2066_eq : Flapjack.WordAlloc.removeDeadStructural input2066 value1046 value1 value2 = (output2066, value1084, value1) := by
  rw [input2066_def, output2066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2034_eq]
  try dsimp only
  rw [node2065_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2066 input2033)).val
theorem input2067_def : input2067 = (.seq input2066 input2033) := by
  unfold input2067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2066)).val
theorem output2067_def : output2067 = (output2066) := by
  unfold output2067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2067_skip : Flapjack.WordAlloc.isSkip output2067 = false := by
  rw [output2067_def]
  conv => lhs; cbv
  try rfl
theorem node2067_eq : Flapjack.WordAlloc.removeDeadStructural input2067 value1046 value1 value2 = (output2067, value1084, value1) := by
  rw [input2067_def, output2067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2033_eq]
  try dsimp only
  rw [node2066_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1085 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(889, 745), (885, 825), (881, 817)])).val
theorem input2068_def : input2068 = (Flapjack.WordLangProgHOL.move 2 [(889, 745), (885, 825), (881, 817)]) := by
  unfold input2068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(889, 745)])).val
theorem output2068_def : output2068 = (Flapjack.WordLangProgHOL.move 2 [(889, 745)]) := by
  unfold output2068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2068_skip : Flapjack.WordAlloc.isSkip output2068 = false := by
  rw [output2068_def]
  conv => lhs; cbv
  try rfl
theorem node2068_eq : Flapjack.WordAlloc.removeDeadStructural input2068 value1084 value1 value2 = (output2068, value1085, value1) := by
  rw [input2068_def, output2068_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2068 input2067)).val
theorem input2069_def : input2069 = (.seq input2068 input2067) := by
  unfold input2069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2068 output2067)).val
theorem output2069_def : output2069 = (.seq output2068 output2067) := by
  unfold output2069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2069_skip : Flapjack.WordAlloc.isSkip output2069 = false := by
  rw [output2069_def]
  conv => lhs; cbv
  try rfl
theorem node2069_eq : Flapjack.WordAlloc.removeDeadStructural input2069 value1046 value1 value2 = (output2069, value1085, value1) := by
  rw [input2069_def, output2069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2067_eq]
  try dsimp only
  rw [node2068_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input2070_def : input2070 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input2070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2070_def : output2070 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2070_skip : Flapjack.WordAlloc.isSkip output2070 = true := by
  rw [output2070_def]
  conv => lhs; cbv
  try rfl
theorem node2070_eq : Flapjack.WordAlloc.removeDeadStructural input2070 value1085 value1 value2 = (output2070, value1085, value1) := by
  rw [input2070_def, output2070_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2070 input2069)).val
theorem input2071_def : input2071 = (.seq input2070 input2069) := by
  unfold input2071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2069)).val
theorem output2071_def : output2071 = (output2069) := by
  unfold output2071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2071_skip : Flapjack.WordAlloc.isSkip output2071 = false := by
  rw [output2071_def]
  conv => lhs; cbv
  try rfl
theorem node2071_eq : Flapjack.WordAlloc.removeDeadStructural input2071 value1046 value1 value2 = (output2071, value1085, value1) := by
  rw [input2071_def, output2071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2069_eq]
  try dsimp only
  rw [node2070_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1086 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 829

def value1087 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value381 825 value1086 input2032 input2071)).val
theorem input2072_def : input2072 = (.ite value381 825 value1086 input2032 input2071) := by
  unfold input2072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value381 825 value1086 output2032 output2071)).val
theorem output2072_def : output2072 = (.ite value381 825 value1086 output2032 output2071) := by
  unfold output2072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2072_skip : Flapjack.WordAlloc.isSkip output2072 = false := by
  rw [output2072_def]
  conv => lhs; cbv
  try rfl
theorem node2072_eq : Flapjack.WordAlloc.removeDeadStructural input2072 value1046 value1 value2 = (output2072, value1087, value1) := by
  rw [input2072_def, output2072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node2032_eq]
  try dsimp only
  rw [node2071_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2072 input1971)).val
theorem input2073_def : input2073 = (.seq input2072 input1971) := by
  unfold input2073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2072 output1971)).val
theorem output2073_def : output2073 = (.seq output2072 output1971) := by
  unfold output2073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2073_skip : Flapjack.WordAlloc.isSkip output2073 = false := by
  rw [output2073_def]
  conv => lhs; cbv
  try rfl
theorem node2073_eq : Flapjack.WordAlloc.removeDeadStructural input2073 value1046 value1 value2 = (output2073, value1087, value1) := by
  rw [input2073_def, output2073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1971_eq]
  try dsimp only
  rw [node2072_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1088 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 829 1#64))).val
theorem input2074_def : input2074 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 829 1#64)) := by
  unfold input2074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 829 1#64))).val
theorem output2074_def : output2074 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 829 1#64)) := by
  unfold output2074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2074_skip : Flapjack.WordAlloc.isSkip output2074 = false := by
  rw [output2074_def]
  conv => lhs; cbv
  try rfl
theorem node2074_eq : Flapjack.WordAlloc.removeDeadStructural input2074 value1087 value1 value2 = (output2074, value1088, value1) := by
  rw [input2074_def, output2074_def]
  try (conv => lhs; cbv)
  try rfl

def value1089 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(825, 821)])).val
theorem input2075_def : input2075 = (Flapjack.WordLangProgHOL.move 0 [(825, 821)]) := by
  unfold input2075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(825, 821)])).val
theorem output2075_def : output2075 = (Flapjack.WordLangProgHOL.move 0 [(825, 821)]) := by
  unfold output2075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2075_skip : Flapjack.WordAlloc.isSkip output2075 = false := by
  rw [output2075_def]
  conv => lhs; cbv
  try rfl
theorem node2075_eq : Flapjack.WordAlloc.removeDeadStructural input2075 value1088 value1 value2 = (output2075, value1089, value1) := by
  rw [input2075_def, output2075_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input2076_def : input2076 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input2076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output2076_def : output2076 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output2076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2076_skip : Flapjack.WordAlloc.isSkip output2076 = false := by
  rw [output2076_def]
  conv => lhs; cbv
  try rfl
theorem node2076_eq : Flapjack.WordAlloc.removeDeadStructural input2076 value1089 value1 value2 = (output2076, value1089, value1) := by
  rw [input2076_def, output2076_def]
  try (conv => lhs; cbv)
  try rfl

def value1090 : Flapjack.NumSet :=
Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))))

@[irreducible, cbv_opaque] def input2077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(745, 679), (749, 683), (753, 687), (757, 691), (761, 695), (765, 699), (769, 703), (773, 707), (777, 711),
              (781, 715), (785, 719), (789, 723), (793, 727), (797, 731), (801, 735), (805, 739)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(809, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 817 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(821, 809)]))),
      783, 6))
  (some 714) [2, 4, 6, 8, 10, 12]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(745, 679), (749, 683), (753, 687), (757, 691), (761, 695), (765, 699), (769, 703), (773, 707), (777, 711),
              (781, 715), (785, 719), (789, 723), (793, 727), (797, 731), (801, 735), (805, 739)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(813, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 813)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(817, 813)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 821 0#64)))),
      783, 7)))).val
theorem input2077_def : input2077 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(745, 679), (749, 683), (753, 687), (757, 691), (761, 695), (765, 699), (769, 703), (773, 707), (777, 711),
              (781, 715), (785, 719), (789, 723), (793, 727), (797, 731), (801, 735), (805, 739)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(809, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 817 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(821, 809)]))),
      783, 6))
  (some 714) [2, 4, 6, 8, 10, 12]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(745, 679), (749, 683), (753, 687), (757, 691), (761, 695), (765, 699), (769, 703), (773, 707), (777, 711),
              (781, 715), (785, 719), (789, 723), (793, 727), (797, 731), (801, 735), (805, 739)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(813, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 813)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(817, 813)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 821 0#64)))),
      783, 7))) := by
  unfold input2077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(745, 679), (749, 683), (753, 687), (757, 691), (761, 695), (765, 699), (769, 703), (773, 707), (777, 711),
              (781, 715), (785, 719), (789, 723), (793, 727), (797, 731), (801, 735), (805, 739)])
          (Flapjack.WordLangProgHOL.move 1 [(809, 2)]))
        (Flapjack.WordLangProgHOL.move 1 [(821, 809)]),
      783, 6))
  (some 714) [2, 4, 6, 8, 10, 12]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(745, 679), (749, 683), (753, 687), (757, 691), (761, 695), (765, 699), (769, 703), (773, 707), (777, 711),
              (781, 715), (785, 719), (789, 723), (793, 727), (797, 731), (801, 735), (805, 739)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(813, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 813)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 821 0#64)),
      783, 7)))).val
theorem output2077_def : output2077 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(745, 679), (749, 683), (753, 687), (757, 691), (761, 695), (765, 699), (769, 703), (773, 707), (777, 711),
              (781, 715), (785, 719), (789, 723), (793, 727), (797, 731), (801, 735), (805, 739)])
          (Flapjack.WordLangProgHOL.move 1 [(809, 2)]))
        (Flapjack.WordLangProgHOL.move 1 [(821, 809)]),
      783, 6))
  (some 714) [2, 4, 6, 8, 10, 12]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(745, 679), (749, 683), (753, 687), (757, 691), (761, 695), (765, 699), (769, 703), (773, 707), (777, 711),
              (781, 715), (785, 719), (789, 723), (793, 727), (797, 731), (801, 735), (805, 739)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(813, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 813)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 821 0#64)),
      783, 7))) := by
  unfold output2077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2077_skip : Flapjack.WordAlloc.isSkip output2077 = false := by
  rw [output2077_def]
  conv => lhs; cbv
  try rfl
theorem node2077_eq : Flapjack.WordAlloc.removeDeadStructural input2077 value1089 value1 value2 = (output2077, value1090, value1) := by
  rw [input2077_def, output2077_def]
  try (conv => lhs; cbv)
  try rfl

def value1091 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))))

@[irreducible, cbv_opaque] def input2078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 653), (4, 657), (6, 661), (8, 665), (10, 669), (12, 673)])).val
theorem input2078_def : input2078 = (Flapjack.WordLangProgHOL.move 1 [(2, 653), (4, 657), (6, 661), (8, 665), (10, 669), (12, 673)]) := by
  unfold input2078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 653), (4, 657), (6, 661), (8, 665), (10, 669), (12, 673)])).val
theorem output2078_def : output2078 = (Flapjack.WordLangProgHOL.move 1 [(2, 653), (4, 657), (6, 661), (8, 665), (10, 669), (12, 673)]) := by
  unfold output2078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2078_skip : Flapjack.WordAlloc.isSkip output2078 = false := by
  rw [output2078_def]
  conv => lhs; cbv
  try rfl
theorem node2078_eq : Flapjack.WordAlloc.removeDeadStructural input2078 value1090 value1 value2 = (output2078, value1091, value1) := by
  rw [input2078_def, output2078_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2078 input2077)).val
theorem input2079_def : input2079 = (.seq input2078 input2077) := by
  unfold input2079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2078 output2077)).val
theorem output2079_def : output2079 = (.seq output2078 output2077) := by
  unfold output2079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2079_skip : Flapjack.WordAlloc.isSkip output2079 = false := by
  rw [output2079_def]
  conv => lhs; cbv
  try rfl
theorem node2079_eq : Flapjack.WordAlloc.removeDeadStructural input2079 value1089 value1 value2 = (output2079, value1091, value1) := by
  rw [input2079_def, output2079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2077_eq]
  try dsimp only
  rw [node2078_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1092 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0
  [(679, 549), (683, 673), (687, 653), (691, 593), (695, 669), (699, 589), (703, 585), (707, 581), (711, 577),
    (715, 573), (719, 565), (723, 561), (727, 645), (731, 665), (735, 661), (739, 657)])).val
theorem input2080_def : input2080 = (Flapjack.WordLangProgHOL.move 0
  [(679, 549), (683, 673), (687, 653), (691, 593), (695, 669), (699, 589), (703, 585), (707, 581), (711, 577),
    (715, 573), (719, 565), (723, 561), (727, 645), (731, 665), (735, 661), (739, 657)]) := by
  unfold input2080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0
  [(679, 549), (683, 673), (687, 653), (691, 593), (695, 669), (699, 589), (703, 585), (707, 581), (711, 577),
    (715, 573), (719, 565), (723, 561), (727, 645), (731, 665), (735, 661), (739, 657)])).val
theorem output2080_def : output2080 = (Flapjack.WordLangProgHOL.move 0
  [(679, 549), (683, 673), (687, 653), (691, 593), (695, 669), (699, 589), (703, 585), (707, 581), (711, 577),
    (715, 573), (719, 565), (723, 561), (727, 645), (731, 665), (735, 661), (739, 657)]) := by
  unfold output2080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2080_skip : Flapjack.WordAlloc.isSkip output2080 = false := by
  rw [output2080_def]
  conv => lhs; cbv
  try rfl
theorem node2080_eq : Flapjack.WordAlloc.removeDeadStructural input2080 value1091 value1 value2 = (output2080, value1092, value1) := by
  rw [input2080_def, output2080_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2080 input2079)).val
theorem input2081_def : input2081 = (.seq input2080 input2079) := by
  unfold input2081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2080 output2079)).val
theorem output2081_def : output2081 = (.seq output2080 output2079) := by
  unfold output2081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2081_skip : Flapjack.WordAlloc.isSkip output2081 = false := by
  rw [output2081_def]
  conv => lhs; cbv
  try rfl
theorem node2081_eq : Flapjack.WordAlloc.removeDeadStructural input2081 value1089 value1 value2 = (output2081, value1092, value1) := by
  rw [input2081_def, output2081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2079_eq]
  try dsimp only
  rw [node2080_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1093 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(673, 649)])).val
theorem input2082_def : input2082 = (Flapjack.WordLangProgHOL.move 0 [(673, 649)]) := by
  unfold input2082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(673, 649)])).val
theorem output2082_def : output2082 = (Flapjack.WordLangProgHOL.move 0 [(673, 649)]) := by
  unfold output2082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2082_skip : Flapjack.WordAlloc.isSkip output2082 = false := by
  rw [output2082_def]
  conv => lhs; cbv
  try rfl
theorem node2082_eq : Flapjack.WordAlloc.removeDeadStructural input2082 value1092 value1 value2 = (output2082, value1093, value1) := by
  rw [input2082_def, output2082_def]
  try (conv => lhs; cbv)
  try rfl

def value1094 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(669, 641)])).val
theorem input2083_def : input2083 = (Flapjack.WordLangProgHOL.move 0 [(669, 641)]) := by
  unfold input2083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(669, 641)])).val
theorem output2083_def : output2083 = (Flapjack.WordLangProgHOL.move 0 [(669, 641)]) := by
  unfold output2083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2083_skip : Flapjack.WordAlloc.isSkip output2083 = false := by
  rw [output2083_def]
  conv => lhs; cbv
  try rfl
theorem node2083_eq : Flapjack.WordAlloc.removeDeadStructural input2083 value1093 value1 value2 = (output2083, value1094, value1) := by
  rw [input2083_def, output2083_def]
  try (conv => lhs; cbv)
  try rfl

def value1095 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(665, 633)])).val
theorem input2084_def : input2084 = (Flapjack.WordLangProgHOL.move 0 [(665, 633)]) := by
  unfold input2084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(665, 633)])).val
theorem output2084_def : output2084 = (Flapjack.WordLangProgHOL.move 0 [(665, 633)]) := by
  unfold output2084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2084_skip : Flapjack.WordAlloc.isSkip output2084 = false := by
  rw [output2084_def]
  conv => lhs; cbv
  try rfl
theorem node2084_eq : Flapjack.WordAlloc.removeDeadStructural input2084 value1094 value1 value2 = (output2084, value1095, value1) := by
  rw [input2084_def, output2084_def]
  try (conv => lhs; cbv)
  try rfl

def value1096 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(661, 625)])).val
theorem input2085_def : input2085 = (Flapjack.WordLangProgHOL.move 0 [(661, 625)]) := by
  unfold input2085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(661, 625)])).val
theorem output2085_def : output2085 = (Flapjack.WordLangProgHOL.move 0 [(661, 625)]) := by
  unfold output2085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2085_skip : Flapjack.WordAlloc.isSkip output2085 = false := by
  rw [output2085_def]
  conv => lhs; cbv
  try rfl
theorem node2085_eq : Flapjack.WordAlloc.removeDeadStructural input2085 value1095 value1 value2 = (output2085, value1096, value1) := by
  rw [input2085_def, output2085_def]
  try (conv => lhs; cbv)
  try rfl

def value1097 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(657, 617)])).val
theorem input2086_def : input2086 = (Flapjack.WordLangProgHOL.move 0 [(657, 617)]) := by
  unfold input2086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(657, 617)])).val
theorem output2086_def : output2086 = (Flapjack.WordLangProgHOL.move 0 [(657, 617)]) := by
  unfold output2086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2086_skip : Flapjack.WordAlloc.isSkip output2086 = false := by
  rw [output2086_def]
  conv => lhs; cbv
  try rfl
theorem node2086_eq : Flapjack.WordAlloc.removeDeadStructural input2086 value1096 value1 value2 = (output2086, value1097, value1) := by
  rw [input2086_def, output2086_def]
  try (conv => lhs; cbv)
  try rfl

def value1098 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(653, 609)])).val
theorem input2087_def : input2087 = (Flapjack.WordLangProgHOL.move 0 [(653, 609)]) := by
  unfold input2087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(653, 609)])).val
theorem output2087_def : output2087 = (Flapjack.WordLangProgHOL.move 0 [(653, 609)]) := by
  unfold output2087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2087_skip : Flapjack.WordAlloc.isSkip output2087 = false := by
  rw [output2087_def]
  conv => lhs; cbv
  try rfl
theorem node2087_eq : Flapjack.WordAlloc.removeDeadStructural input2087 value1097 value1 value2 = (output2087, value1098, value1) := by
  rw [input2087_def, output2087_def]
  try (conv => lhs; cbv)
  try rfl

def value1099 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 649 (Flapjack.WordLangAddr.addr 645 136#64)))).val
theorem input2088_def : input2088 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 649 (Flapjack.WordLangAddr.addr 645 136#64))) := by
  unfold input2088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 649 (Flapjack.WordLangAddr.addr 645 136#64)))).val
theorem output2088_def : output2088 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 649 (Flapjack.WordLangAddr.addr 645 136#64))) := by
  unfold output2088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2088_skip : Flapjack.WordAlloc.isSkip output2088 = false := by
  rw [output2088_def]
  conv => lhs; cbv
  try rfl
theorem node2088_eq : Flapjack.WordAlloc.removeDeadStructural input2088 value1098 value1 value2 = (output2088, value1099, value1) := by
  rw [input2088_def, output2088_def]
  try (conv => lhs; cbv)
  try rfl

def value1100 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(645, 637)])).val
theorem input2089_def : input2089 = (Flapjack.WordLangProgHOL.move 0 [(645, 637)]) := by
  unfold input2089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(645, 637)])).val
theorem output2089_def : output2089 = (Flapjack.WordLangProgHOL.move 0 [(645, 637)]) := by
  unfold output2089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2089_skip : Flapjack.WordAlloc.isSkip output2089 = false := by
  rw [output2089_def]
  conv => lhs; cbv
  try rfl
theorem node2089_eq : Flapjack.WordAlloc.removeDeadStructural input2089 value1099 value1 value2 = (output2089, value1100, value1) := by
  rw [input2089_def, output2089_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2089 input2088)).val
theorem input2090_def : input2090 = (.seq input2089 input2088) := by
  unfold input2090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2089 output2088)).val
theorem output2090_def : output2090 = (.seq output2089 output2088) := by
  unfold output2090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2090_skip : Flapjack.WordAlloc.isSkip output2090 = false := by
  rw [output2090_def]
  conv => lhs; cbv
  try rfl
theorem node2090_eq : Flapjack.WordAlloc.removeDeadStructural input2090 value1098 value1 value2 = (output2090, value1100, value1) := by
  rw [input2090_def, output2090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2088_eq]
  try dsimp only
  rw [node2089_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1101 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 641 (Flapjack.WordLangAddr.addr 637 128#64)))).val
theorem input2091_def : input2091 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 641 (Flapjack.WordLangAddr.addr 637 128#64))) := by
  unfold input2091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 641 (Flapjack.WordLangAddr.addr 637 128#64)))).val
theorem output2091_def : output2091 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 641 (Flapjack.WordLangAddr.addr 637 128#64))) := by
  unfold output2091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2091_skip : Flapjack.WordAlloc.isSkip output2091 = false := by
  rw [output2091_def]
  conv => lhs; cbv
  try rfl
theorem node2091_eq : Flapjack.WordAlloc.removeDeadStructural input2091 value1100 value1 value2 = (output2091, value1101, value1) := by
  rw [input2091_def, output2091_def]
  try (conv => lhs; cbv)
  try rfl

def value1102 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(637, 629)])).val
theorem input2092_def : input2092 = (Flapjack.WordLangProgHOL.move 0 [(637, 629)]) := by
  unfold input2092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(637, 629)])).val
theorem output2092_def : output2092 = (Flapjack.WordLangProgHOL.move 0 [(637, 629)]) := by
  unfold output2092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2092_skip : Flapjack.WordAlloc.isSkip output2092 = false := by
  rw [output2092_def]
  conv => lhs; cbv
  try rfl
theorem node2092_eq : Flapjack.WordAlloc.removeDeadStructural input2092 value1101 value1 value2 = (output2092, value1102, value1) := by
  rw [input2092_def, output2092_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2092 input2091)).val
theorem input2093_def : input2093 = (.seq input2092 input2091) := by
  unfold input2093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2092 output2091)).val
theorem output2093_def : output2093 = (.seq output2092 output2091) := by
  unfold output2093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2093_skip : Flapjack.WordAlloc.isSkip output2093 = false := by
  rw [output2093_def]
  conv => lhs; cbv
  try rfl
theorem node2093_eq : Flapjack.WordAlloc.removeDeadStructural input2093 value1100 value1 value2 = (output2093, value1102, value1) := by
  rw [input2093_def, output2093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2091_eq]
  try dsimp only
  rw [node2092_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1103 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 633 (Flapjack.WordLangAddr.addr 629 120#64)))).val
theorem input2094_def : input2094 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 633 (Flapjack.WordLangAddr.addr 629 120#64))) := by
  unfold input2094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 633 (Flapjack.WordLangAddr.addr 629 120#64)))).val
theorem output2094_def : output2094 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 633 (Flapjack.WordLangAddr.addr 629 120#64))) := by
  unfold output2094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2094_skip : Flapjack.WordAlloc.isSkip output2094 = false := by
  rw [output2094_def]
  conv => lhs; cbv
  try rfl
theorem node2094_eq : Flapjack.WordAlloc.removeDeadStructural input2094 value1102 value1 value2 = (output2094, value1103, value1) := by
  rw [input2094_def, output2094_def]
  try (conv => lhs; cbv)
  try rfl

def value1104 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(629, 621)])).val
theorem input2095_def : input2095 = (Flapjack.WordLangProgHOL.move 0 [(629, 621)]) := by
  unfold input2095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(629, 621)])).val
theorem output2095_def : output2095 = (Flapjack.WordLangProgHOL.move 0 [(629, 621)]) := by
  unfold output2095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2095_skip : Flapjack.WordAlloc.isSkip output2095 = false := by
  rw [output2095_def]
  conv => lhs; cbv
  try rfl
theorem node2095_eq : Flapjack.WordAlloc.removeDeadStructural input2095 value1103 value1 value2 = (output2095, value1104, value1) := by
  rw [input2095_def, output2095_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2095 input2094)).val
theorem input2096_def : input2096 = (.seq input2095 input2094) := by
  unfold input2096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2095 output2094)).val
theorem output2096_def : output2096 = (.seq output2095 output2094) := by
  unfold output2096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2096_skip : Flapjack.WordAlloc.isSkip output2096 = false := by
  rw [output2096_def]
  conv => lhs; cbv
  try rfl
theorem node2096_eq : Flapjack.WordAlloc.removeDeadStructural input2096 value1102 value1 value2 = (output2096, value1104, value1) := by
  rw [input2096_def, output2096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2094_eq]
  try dsimp only
  rw [node2095_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1105 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 625 (Flapjack.WordLangAddr.addr 621 112#64)))).val
theorem input2097_def : input2097 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 625 (Flapjack.WordLangAddr.addr 621 112#64))) := by
  unfold input2097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 625 (Flapjack.WordLangAddr.addr 621 112#64)))).val
theorem output2097_def : output2097 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 625 (Flapjack.WordLangAddr.addr 621 112#64))) := by
  unfold output2097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2097_skip : Flapjack.WordAlloc.isSkip output2097 = false := by
  rw [output2097_def]
  conv => lhs; cbv
  try rfl
theorem node2097_eq : Flapjack.WordAlloc.removeDeadStructural input2097 value1104 value1 value2 = (output2097, value1105, value1) := by
  rw [input2097_def, output2097_def]
  try (conv => lhs; cbv)
  try rfl

def value1106 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(621, 613)])).val
theorem input2098_def : input2098 = (Flapjack.WordLangProgHOL.move 0 [(621, 613)]) := by
  unfold input2098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(621, 613)])).val
theorem output2098_def : output2098 = (Flapjack.WordLangProgHOL.move 0 [(621, 613)]) := by
  unfold output2098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2098_skip : Flapjack.WordAlloc.isSkip output2098 = false := by
  rw [output2098_def]
  conv => lhs; cbv
  try rfl
theorem node2098_eq : Flapjack.WordAlloc.removeDeadStructural input2098 value1105 value1 value2 = (output2098, value1106, value1) := by
  rw [input2098_def, output2098_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2098 input2097)).val
theorem input2099_def : input2099 = (.seq input2098 input2097) := by
  unfold input2099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2098 output2097)).val
theorem output2099_def : output2099 = (.seq output2098 output2097) := by
  unfold output2099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2099_skip : Flapjack.WordAlloc.isSkip output2099 = false := by
  rw [output2099_def]
  conv => lhs; cbv
  try rfl
theorem node2099_eq : Flapjack.WordAlloc.removeDeadStructural input2099 value1104 value1 value2 = (output2099, value1106, value1) := by
  rw [input2099_def, output2099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2097_eq]
  try dsimp only
  rw [node2098_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1107 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 617 (Flapjack.WordLangAddr.addr 613 104#64)))).val
theorem input2100_def : input2100 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 617 (Flapjack.WordLangAddr.addr 613 104#64))) := by
  unfold input2100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 617 (Flapjack.WordLangAddr.addr 613 104#64)))).val
theorem output2100_def : output2100 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 617 (Flapjack.WordLangAddr.addr 613 104#64))) := by
  unfold output2100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2100_skip : Flapjack.WordAlloc.isSkip output2100 = false := by
  rw [output2100_def]
  conv => lhs; cbv
  try rfl
theorem node2100_eq : Flapjack.WordAlloc.removeDeadStructural input2100 value1106 value1 value2 = (output2100, value1107, value1) := by
  rw [input2100_def, output2100_def]
  try (conv => lhs; cbv)
  try rfl

def value1108 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(613, 605)])).val
theorem input2101_def : input2101 = (Flapjack.WordLangProgHOL.move 0 [(613, 605)]) := by
  unfold input2101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(613, 605)])).val
theorem output2101_def : output2101 = (Flapjack.WordLangProgHOL.move 0 [(613, 605)]) := by
  unfold output2101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2101_skip : Flapjack.WordAlloc.isSkip output2101 = false := by
  rw [output2101_def]
  conv => lhs; cbv
  try rfl
theorem node2101_eq : Flapjack.WordAlloc.removeDeadStructural input2101 value1107 value1 value2 = (output2101, value1108, value1) := by
  rw [input2101_def, output2101_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2101 input2100)).val
theorem input2102_def : input2102 = (.seq input2101 input2100) := by
  unfold input2102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2101 output2100)).val
theorem output2102_def : output2102 = (.seq output2101 output2100) := by
  unfold output2102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2102_skip : Flapjack.WordAlloc.isSkip output2102 = false := by
  rw [output2102_def]
  conv => lhs; cbv
  try rfl
theorem node2102_eq : Flapjack.WordAlloc.removeDeadStructural input2102 value1106 value1 value2 = (output2102, value1108, value1) := by
  rw [input2102_def, output2102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2100_eq]
  try dsimp only
  rw [node2101_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1109 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 609 (Flapjack.WordLangAddr.addr 605 96#64)))).val
theorem input2103_def : input2103 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 609 (Flapjack.WordLangAddr.addr 605 96#64))) := by
  unfold input2103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 609 (Flapjack.WordLangAddr.addr 605 96#64)))).val
theorem output2103_def : output2103 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 609 (Flapjack.WordLangAddr.addr 605 96#64))) := by
  unfold output2103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2103_skip : Flapjack.WordAlloc.isSkip output2103 = false := by
  rw [output2103_def]
  conv => lhs; cbv
  try rfl
theorem node2103_eq : Flapjack.WordAlloc.removeDeadStructural input2103 value1108 value1 value2 = (output2103, value1109, value1) := by
  rw [input2103_def, output2103_def]
  try (conv => lhs; cbv)
  try rfl

def value1110 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(605, 557)])).val
theorem input2104_def : input2104 = (Flapjack.WordLangProgHOL.move 0 [(605, 557)]) := by
  unfold input2104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(605, 557)])).val
theorem output2104_def : output2104 = (Flapjack.WordLangProgHOL.move 0 [(605, 557)]) := by
  unfold output2104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2104_skip : Flapjack.WordAlloc.isSkip output2104 = false := by
  rw [output2104_def]
  conv => lhs; cbv
  try rfl
theorem node2104_eq : Flapjack.WordAlloc.removeDeadStructural input2104 value1109 value1 value2 = (output2104, value1110, value1) := by
  rw [input2104_def, output2104_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2104 input2103)).val
theorem input2105_def : input2105 = (.seq input2104 input2103) := by
  unfold input2105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2104 output2103)).val
theorem output2105_def : output2105 = (.seq output2104 output2103) := by
  unfold output2105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2105_skip : Flapjack.WordAlloc.isSkip output2105 = false := by
  rw [output2105_def]
  conv => lhs; cbv
  try rfl
theorem node2105_eq : Flapjack.WordAlloc.removeDeadStructural input2105 value1108 value1 value2 = (output2105, value1110, value1) := by
  rw [input2105_def, output2105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2103_eq]
  try dsimp only
  rw [node2104_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input2106_def : input2106 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input2106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output2106_def : output2106 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output2106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2106_skip : Flapjack.WordAlloc.isSkip output2106 = false := by
  rw [output2106_def]
  conv => lhs; cbv
  try rfl
theorem node2106_eq : Flapjack.WordAlloc.removeDeadStructural input2106 value1110 value1 value2 = (output2106, value1110, value1) := by
  rw [input2106_def, output2106_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 0#64))).val
theorem input2107_def : input2107 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 0#64)) := by
  unfold input2107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2107_def : output2107 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2107_skip : Flapjack.WordAlloc.isSkip output2107 = true := by
  rw [output2107_def]
  conv => lhs; cbv
  try rfl
theorem node2107_eq : Flapjack.WordAlloc.removeDeadStructural input2107 value1110 value1 value2 = (output2107, value1110, value1) := by
  rw [input2107_def, output2107_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input2108_def : input2108 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input2108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output2108_def : output2108 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output2108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2108_skip : Flapjack.WordAlloc.isSkip output2108 = false := by
  rw [output2108_def]
  conv => lhs; cbv
  try rfl
theorem node2108_eq : Flapjack.WordAlloc.removeDeadStructural input2108 value1110 value1 value2 = (output2108, value1110, value1) := by
  rw [input2108_def, output2108_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64))).val
theorem input2109_def : input2109 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64)) := by
  unfold input2109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2109_def : output2109 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2109_skip : Flapjack.WordAlloc.isSkip output2109 = true := by
  rw [output2109_def]
  conv => lhs; cbv
  try rfl
theorem node2109_eq : Flapjack.WordAlloc.removeDeadStructural input2109 value1110 value1 value2 = (output2109, value1110, value1) := by
  rw [input2109_def, output2109_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2109 input2108)).val
theorem input2110_def : input2110 = (.seq input2109 input2108) := by
  unfold input2110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2108)).val
theorem output2110_def : output2110 = (output2108) := by
  unfold output2110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2110_skip : Flapjack.WordAlloc.isSkip output2110 = false := by
  rw [output2110_def]
  conv => lhs; cbv
  try rfl
theorem node2110_eq : Flapjack.WordAlloc.removeDeadStructural input2110 value1110 value1 value2 = (output2110, value1110, value1) := by
  rw [input2110_def, output2110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2108_eq]
  try dsimp only
  rw [node2109_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2110 input2107)).val
theorem input2111_def : input2111 = (.seq input2110 input2107) := by
  unfold input2111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2110)).val
theorem output2111_def : output2111 = (output2110) := by
  unfold output2111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2111_skip : Flapjack.WordAlloc.isSkip output2111 = false := by
  rw [output2111_def]
  conv => lhs; cbv
  try rfl
theorem node2111_eq : Flapjack.WordAlloc.removeDeadStructural input2111 value1110 value1 value2 = (output2111, value1110, value1) := by
  rw [input2111_def, output2111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2107_eq]
  try dsimp only
  rw [node2110_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1111 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64))).val
theorem input2112_def : input2112 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64)) := by
  unfold input2112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64))).val
theorem output2112_def : output2112 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64)) := by
  unfold output2112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2112_skip : Flapjack.WordAlloc.isSkip output2112 = false := by
  rw [output2112_def]
  conv => lhs; cbv
  try rfl
theorem node2112_eq : Flapjack.WordAlloc.removeDeadStructural input2112 value1110 value1 value2 = (output2112, value1111, value1) := by
  rw [input2112_def, output2112_def]
  try (conv => lhs; cbv)
  try rfl

def value1112 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 589 0#64))).val
theorem input2113_def : input2113 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 589 0#64)) := by
  unfold input2113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 589 0#64))).val
theorem output2113_def : output2113 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 589 0#64)) := by
  unfold output2113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2113_skip : Flapjack.WordAlloc.isSkip output2113 = false := by
  rw [output2113_def]
  conv => lhs; cbv
  try rfl
theorem node2113_eq : Flapjack.WordAlloc.removeDeadStructural input2113 value1111 value1 value2 = (output2113, value1112, value1) := by
  rw [input2113_def, output2113_def]
  try (conv => lhs; cbv)
  try rfl

def value1113 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 585 0#64))).val
theorem input2114_def : input2114 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 585 0#64)) := by
  unfold input2114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 585 0#64))).val
theorem output2114_def : output2114 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 585 0#64)) := by
  unfold output2114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2114_skip : Flapjack.WordAlloc.isSkip output2114 = false := by
  rw [output2114_def]
  conv => lhs; cbv
  try rfl
theorem node2114_eq : Flapjack.WordAlloc.removeDeadStructural input2114 value1112 value1 value2 = (output2114, value1113, value1) := by
  rw [input2114_def, output2114_def]
  try (conv => lhs; cbv)
  try rfl

def value1114 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 581 0#64))).val
theorem input2115_def : input2115 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 581 0#64)) := by
  unfold input2115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 581 0#64))).val
theorem output2115_def : output2115 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 581 0#64)) := by
  unfold output2115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2115_skip : Flapjack.WordAlloc.isSkip output2115 = false := by
  rw [output2115_def]
  conv => lhs; cbv
  try rfl
theorem node2115_eq : Flapjack.WordAlloc.removeDeadStructural input2115 value1113 value1 value2 = (output2115, value1114, value1) := by
  rw [input2115_def, output2115_def]
  try (conv => lhs; cbv)
  try rfl

def value1115 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 0#64))).val
theorem input2116_def : input2116 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 0#64)) := by
  unfold input2116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 0#64))).val
theorem output2116_def : output2116 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 0#64)) := by
  unfold output2116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2116_skip : Flapjack.WordAlloc.isSkip output2116 = false := by
  rw [output2116_def]
  conv => lhs; cbv
  try rfl
theorem node2116_eq : Flapjack.WordAlloc.removeDeadStructural input2116 value1114 value1 value2 = (output2116, value1115, value1) := by
  rw [input2116_def, output2116_def]
  try (conv => lhs; cbv)
  try rfl

def value1116 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 573 0#64))).val
theorem input2117_def : input2117 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 573 0#64)) := by
  unfold input2117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 573 0#64))).val
theorem output2117_def : output2117 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 573 0#64)) := by
  unfold output2117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2117_skip : Flapjack.WordAlloc.isSkip output2117 = false := by
  rw [output2117_def]
  conv => lhs; cbv
  try rfl
theorem node2117_eq : Flapjack.WordAlloc.removeDeadStructural input2117 value1115 value1 value2 = (output2117, value1116, value1) := by
  rw [input2117_def, output2117_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 569 0#64))).val
theorem input2118_def : input2118 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 569 0#64)) := by
  unfold input2118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2118_def : output2118 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2118_skip : Flapjack.WordAlloc.isSkip output2118 = true := by
  rw [output2118_def]
  conv => lhs; cbv
  try rfl
theorem node2118_eq : Flapjack.WordAlloc.removeDeadStructural input2118 value1116 value1 value2 = (output2118, value1116, value1) := by
  rw [input2118_def, output2118_def]
  try (conv => lhs; cbv)
  try rfl

def value1117 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 565 0#64))).val
theorem input2119_def : input2119 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 565 0#64)) := by
  unfold input2119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 565 0#64))).val
theorem output2119_def : output2119 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 565 0#64)) := by
  unfold output2119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2119_skip : Flapjack.WordAlloc.isSkip output2119 = false := by
  rw [output2119_def]
  conv => lhs; cbv
  try rfl
theorem node2119_eq : Flapjack.WordAlloc.removeDeadStructural input2119 value1116 value1 value2 = (output2119, value1117, value1) := by
  rw [input2119_def, output2119_def]
  try (conv => lhs; cbv)
  try rfl

def value1118 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 561 0#64))).val
theorem input2120_def : input2120 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 561 0#64)) := by
  unfold input2120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 561 0#64))).val
theorem output2120_def : output2120 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 561 0#64)) := by
  unfold output2120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2120_skip : Flapjack.WordAlloc.isSkip output2120 = false := by
  rw [output2120_def]
  conv => lhs; cbv
  try rfl
theorem node2120_eq : Flapjack.WordAlloc.removeDeadStructural input2120 value1117 value1 value2 = (output2120, value1118, value1) := by
  rw [input2120_def, output2120_def]
  try (conv => lhs; cbv)
  try rfl

def value1119 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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

@[irreducible, cbv_opaque] def input2121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 0#64))).val
theorem input2121_def : input2121 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 0#64)) := by
  unfold input2121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 0#64))).val
theorem output2121_def : output2121 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 0#64)) := by
  unfold output2121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2121_skip : Flapjack.WordAlloc.isSkip output2121 = false := by
  rw [output2121_def]
  conv => lhs; cbv
  try rfl
theorem node2121_eq : Flapjack.WordAlloc.removeDeadStructural input2121 value1118 value1 value2 = (output2121, value1119, value1) := by
  rw [input2121_def, output2121_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 553 0#64))).val
theorem input2122_def : input2122 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 553 0#64)) := by
  unfold input2122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2122_def : output2122 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2122_skip : Flapjack.WordAlloc.isSkip output2122 = true := by
  rw [output2122_def]
  conv => lhs; cbv
  try rfl
theorem node2122_eq : Flapjack.WordAlloc.removeDeadStructural input2122 value1119 value1 value2 = (output2122, value1119, value1) := by
  rw [input2122_def, output2122_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input2123_def : input2123 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input2123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2123_def : output2123 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2123_skip : Flapjack.WordAlloc.isSkip output2123 = true := by
  rw [output2123_def]
  conv => lhs; cbv
  try rfl
theorem node2123_eq : Flapjack.WordAlloc.removeDeadStructural input2123 value1119 value1 value2 = (output2123, value1119, value1) := by
  rw [input2123_def, output2123_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2123 input2122)).val
theorem input2124_def : input2124 = (.seq input2123 input2122) := by
  unfold input2124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2122)).val
theorem output2124_def : output2124 = (output2122) := by
  unfold output2124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2124_skip : Flapjack.WordAlloc.isSkip output2124 = true := by
  rw [output2124_def]
  conv => lhs; cbv
  try rfl
theorem node2124_eq : Flapjack.WordAlloc.removeDeadStructural input2124 value1119 value1 value2 = (output2124, value1119, value1) := by
  rw [input2124_def, output2124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2122_eq]
  try dsimp only
  rw [node2123_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2124 input2121)).val
theorem input2125_def : input2125 = (.seq input2124 input2121) := by
  unfold input2125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2121)).val
theorem output2125_def : output2125 = (output2121) := by
  unfold output2125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2125_skip : Flapjack.WordAlloc.isSkip output2125 = false := by
  rw [output2125_def]
  conv => lhs; cbv
  try rfl
theorem node2125_eq : Flapjack.WordAlloc.removeDeadStructural input2125 value1118 value1 value2 = (output2125, value1119, value1) := by
  rw [input2125_def, output2125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2121_eq]
  try dsimp only
  rw [node2124_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2125 input2120)).val
theorem input2126_def : input2126 = (.seq input2125 input2120) := by
  unfold input2126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2125 output2120)).val
theorem output2126_def : output2126 = (.seq output2125 output2120) := by
  unfold output2126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2126_skip : Flapjack.WordAlloc.isSkip output2126 = false := by
  rw [output2126_def]
  conv => lhs; cbv
  try rfl
theorem node2126_eq : Flapjack.WordAlloc.removeDeadStructural input2126 value1117 value1 value2 = (output2126, value1119, value1) := by
  rw [input2126_def, output2126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2120_eq]
  try dsimp only
  rw [node2125_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2126 input2119)).val
theorem input2127_def : input2127 = (.seq input2126 input2119) := by
  unfold input2127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2126 output2119)).val
theorem output2127_def : output2127 = (.seq output2126 output2119) := by
  unfold output2127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2127_skip : Flapjack.WordAlloc.isSkip output2127 = false := by
  rw [output2127_def]
  conv => lhs; cbv
  try rfl
theorem node2127_eq : Flapjack.WordAlloc.removeDeadStructural input2127 value1116 value1 value2 = (output2127, value1119, value1) := by
  rw [input2127_def, output2127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2119_eq]
  try dsimp only
  rw [node2126_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2127 input2118)).val
theorem input2128_def : input2128 = (.seq input2127 input2118) := by
  unfold input2128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2127)).val
theorem output2128_def : output2128 = (output2127) := by
  unfold output2128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2128_skip : Flapjack.WordAlloc.isSkip output2128 = false := by
  rw [output2128_def]
  conv => lhs; cbv
  try rfl
theorem node2128_eq : Flapjack.WordAlloc.removeDeadStructural input2128 value1116 value1 value2 = (output2128, value1119, value1) := by
  rw [input2128_def, output2128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2118_eq]
  try dsimp only
  rw [node2127_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2128 input2117)).val
theorem input2129_def : input2129 = (.seq input2128 input2117) := by
  unfold input2129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2128 output2117)).val
theorem output2129_def : output2129 = (.seq output2128 output2117) := by
  unfold output2129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2129_skip : Flapjack.WordAlloc.isSkip output2129 = false := by
  rw [output2129_def]
  conv => lhs; cbv
  try rfl
theorem node2129_eq : Flapjack.WordAlloc.removeDeadStructural input2129 value1115 value1 value2 = (output2129, value1119, value1) := by
  rw [input2129_def, output2129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2117_eq]
  try dsimp only
  rw [node2128_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2129 input2116)).val
theorem input2130_def : input2130 = (.seq input2129 input2116) := by
  unfold input2130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2129 output2116)).val
theorem output2130_def : output2130 = (.seq output2129 output2116) := by
  unfold output2130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2130_skip : Flapjack.WordAlloc.isSkip output2130 = false := by
  rw [output2130_def]
  conv => lhs; cbv
  try rfl
theorem node2130_eq : Flapjack.WordAlloc.removeDeadStructural input2130 value1114 value1 value2 = (output2130, value1119, value1) := by
  rw [input2130_def, output2130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2116_eq]
  try dsimp only
  rw [node2129_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2130 input2115)).val
theorem input2131_def : input2131 = (.seq input2130 input2115) := by
  unfold input2131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2130 output2115)).val
theorem output2131_def : output2131 = (.seq output2130 output2115) := by
  unfold output2131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2131_skip : Flapjack.WordAlloc.isSkip output2131 = false := by
  rw [output2131_def]
  conv => lhs; cbv
  try rfl
theorem node2131_eq : Flapjack.WordAlloc.removeDeadStructural input2131 value1113 value1 value2 = (output2131, value1119, value1) := by
  rw [input2131_def, output2131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2115_eq]
  try dsimp only
  rw [node2130_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2131 input2114)).val
theorem input2132_def : input2132 = (.seq input2131 input2114) := by
  unfold input2132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2131 output2114)).val
theorem output2132_def : output2132 = (.seq output2131 output2114) := by
  unfold output2132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2132_skip : Flapjack.WordAlloc.isSkip output2132 = false := by
  rw [output2132_def]
  conv => lhs; cbv
  try rfl
theorem node2132_eq : Flapjack.WordAlloc.removeDeadStructural input2132 value1112 value1 value2 = (output2132, value1119, value1) := by
  rw [input2132_def, output2132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2114_eq]
  try dsimp only
  rw [node2131_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2132 input2113)).val
theorem input2133_def : input2133 = (.seq input2132 input2113) := by
  unfold input2133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2132 output2113)).val
theorem output2133_def : output2133 = (.seq output2132 output2113) := by
  unfold output2133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2133_skip : Flapjack.WordAlloc.isSkip output2133 = false := by
  rw [output2133_def]
  conv => lhs; cbv
  try rfl
theorem node2133_eq : Flapjack.WordAlloc.removeDeadStructural input2133 value1111 value1 value2 = (output2133, value1119, value1) := by
  rw [input2133_def, output2133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2113_eq]
  try dsimp only
  rw [node2132_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2133 input2112)).val
theorem input2134_def : input2134 = (.seq input2133 input2112) := by
  unfold input2134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2133 output2112)).val
theorem output2134_def : output2134 = (.seq output2133 output2112) := by
  unfold output2134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2134_skip : Flapjack.WordAlloc.isSkip output2134 = false := by
  rw [output2134_def]
  conv => lhs; cbv
  try rfl
theorem node2134_eq : Flapjack.WordAlloc.removeDeadStructural input2134 value1110 value1 value2 = (output2134, value1119, value1) := by
  rw [input2134_def, output2134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2112_eq]
  try dsimp only
  rw [node2133_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1120 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(549, 517), (545, 537), (541, 529)])).val
theorem input2135_def : input2135 = (Flapjack.WordLangProgHOL.move 1 [(549, 517), (545, 537), (541, 529)]) := by
  unfold input2135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(549, 517)])).val
theorem output2135_def : output2135 = (Flapjack.WordLangProgHOL.move 1 [(549, 517)]) := by
  unfold output2135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2135_skip : Flapjack.WordAlloc.isSkip output2135 = false := by
  rw [output2135_def]
  conv => lhs; cbv
  try rfl
theorem node2135_eq : Flapjack.WordAlloc.removeDeadStructural input2135 value1119 value1 value2 = (output2135, value1120, value1) := by
  rw [input2135_def, output2135_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2135 input2134)).val
theorem input2136_def : input2136 = (.seq input2135 input2134) := by
  unfold input2136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2135 output2134)).val
theorem output2136_def : output2136 = (.seq output2135 output2134) := by
  unfold output2136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2136_skip : Flapjack.WordAlloc.isSkip output2136 = false := by
  rw [output2136_def]
  conv => lhs; cbv
  try rfl
theorem node2136_eq : Flapjack.WordAlloc.removeDeadStructural input2136 value1110 value1 value2 = (output2136, value1120, value1) := by
  rw [input2136_def, output2136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2134_eq]
  try dsimp only
  rw [node2135_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1121 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 517 [2])).val
theorem input2137_def : input2137 = (Flapjack.WordLangProgHOL.return 517 [2]) := by
  unfold input2137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 517 [2])).val
theorem output2137_def : output2137 = (Flapjack.WordLangProgHOL.return 517 [2]) := by
  unfold output2137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2137_skip : Flapjack.WordAlloc.isSkip output2137 = false := by
  rw [output2137_def]
  conv => lhs; cbv
  try rfl
theorem node2137_eq : Flapjack.WordAlloc.removeDeadStructural input2137 value1120 value1 value2 = (output2137, value1121, value1) := by
  rw [input2137_def, output2137_def]
  try (conv => lhs; cbv)
  try rfl

def value1122 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 537)])).val
theorem input2138_def : input2138 = (Flapjack.WordLangProgHOL.move 0 [(2, 537)]) := by
  unfold input2138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 537)])).val
theorem output2138_def : output2138 = (Flapjack.WordLangProgHOL.move 0 [(2, 537)]) := by
  unfold output2138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2138_skip : Flapjack.WordAlloc.isSkip output2138 = false := by
  rw [output2138_def]
  conv => lhs; cbv
  try rfl
theorem node2138_eq : Flapjack.WordAlloc.removeDeadStructural input2138 value1121 value1 value2 = (output2138, value1122, value1) := by
  rw [input2138_def, output2138_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2138 input2137)).val
theorem input2139_def : input2139 = (.seq input2138 input2137) := by
  unfold input2139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2138 output2137)).val
theorem output2139_def : output2139 = (.seq output2138 output2137) := by
  unfold output2139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2139_skip : Flapjack.WordAlloc.isSkip output2139 = false := by
  rw [output2139_def]
  conv => lhs; cbv
  try rfl
theorem node2139_eq : Flapjack.WordAlloc.removeDeadStructural input2139 value1120 value1 value2 = (output2139, value1122, value1) := by
  rw [input2139_def, output2139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2137_eq]
  try dsimp only
  rw [node2138_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 0#64))).val
theorem input2140_def : input2140 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 0#64)) := by
  unfold input2140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 0#64))).val
theorem output2140_def : output2140 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 0#64)) := by
  unfold output2140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2140_skip : Flapjack.WordAlloc.isSkip output2140 = false := by
  rw [output2140_def]
  conv => lhs; cbv
  try rfl
theorem node2140_eq : Flapjack.WordAlloc.removeDeadStructural input2140 value1122 value1 value2 = (output2140, value1120, value1) := by
  rw [input2140_def, output2140_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input2141_def : input2141 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input2141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output2141_def : output2141 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output2141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2141_skip : Flapjack.WordAlloc.isSkip output2141 = false := by
  rw [output2141_def]
  conv => lhs; cbv
  try rfl
theorem node2141_eq : Flapjack.WordAlloc.removeDeadStructural input2141 value1120 value1 value2 = (output2141, value1120, value1) := by
  rw [input2141_def, output2141_def]
  try (conv => lhs; cbv)
  try rfl

def value1123 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))

@[irreducible, cbv_opaque] def input2142 : Flapjack.WordLangProgHOL (BitVec 64) :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(517, 511)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(521, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 529 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(533, 521)]))),
      783, 4))
  (some 780) [2, 4]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(517, 511)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(525, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 525)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(529, 525)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 533 0#64)))),
      783, 5)))).val
theorem input2142_def : input2142 = (Flapjack.WordLangProgHOL.call
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(517, 511)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(521, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 529 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(533, 521)]))),
      783, 4))
  (some 780) [2, 4]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(517, 511)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(525, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 525)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(529, 525)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 533 0#64)))),
      783, 5))) := by
  unfold input2142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2142 : Flapjack.WordLangProgHOL (BitVec 64) :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(517, 511)], 783, 4))
  (some 780) [2, 4]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(517, 511)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(525, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 525)])
            (Flapjack.WordLangProgHOL.raise 2))),
      783, 5)))).val
theorem output2142_def : output2142 = (Flapjack.WordLangProgHOL.call
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(517, 511)], 783, 4))
  (some 780) [2, 4]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(517, 511)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(525, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 525)])
            (Flapjack.WordLangProgHOL.raise 2))),
      783, 5))) := by
  unfold output2142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2142_skip : Flapjack.WordAlloc.isSkip output2142 = false := by
  rw [output2142_def]
  conv => lhs; cbv
  try rfl
theorem node2142_eq : Flapjack.WordAlloc.removeDeadStructural input2142 value1120 value1 value2 = (output2142, value1123, value1) := by
  rw [input2142_def, output2142_def]
  try (conv => lhs; cbv)
  try rfl

def value1124 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))

@[irreducible, cbv_opaque] def input2143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 501), (4, 505)])).val
theorem input2143_def : input2143 = (Flapjack.WordLangProgHOL.move 1 [(2, 501), (4, 505)]) := by
  unfold input2143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 501), (4, 505)])).val
theorem output2143_def : output2143 = (Flapjack.WordLangProgHOL.move 1 [(2, 501), (4, 505)]) := by
  unfold output2143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2143_skip : Flapjack.WordAlloc.isSkip output2143 = false := by
  rw [output2143_def]
  conv => lhs; cbv
  try rfl
theorem node2143_eq : Flapjack.WordAlloc.removeDeadStructural input2143 value1123 value1 value2 = (output2143, value1124, value1) := by
  rw [input2143_def, output2143_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2143 input2142)).val
theorem input2144_def : input2144 = (.seq input2143 input2142) := by
  unfold input2144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2143 output2142)).val
theorem output2144_def : output2144 = (.seq output2143 output2142) := by
  unfold output2144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2144_skip : Flapjack.WordAlloc.isSkip output2144 = false := by
  rw [output2144_def]
  conv => lhs; cbv
  try rfl
theorem node2144_eq : Flapjack.WordAlloc.removeDeadStructural input2144 value1120 value1 value2 = (output2144, value1124, value1) := by
  rw [input2144_def, output2144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2142_eq]
  try dsimp only
  rw [node2143_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1125 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(511, 429)])).val
theorem input2145_def : input2145 = (Flapjack.WordLangProgHOL.move 0 [(511, 429)]) := by
  unfold input2145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(511, 429)])).val
theorem output2145_def : output2145 = (Flapjack.WordLangProgHOL.move 0 [(511, 429)]) := by
  unfold output2145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2145_skip : Flapjack.WordAlloc.isSkip output2145 = false := by
  rw [output2145_def]
  conv => lhs; cbv
  try rfl
theorem node2145_eq : Flapjack.WordAlloc.removeDeadStructural input2145 value1124 value1 value2 = (output2145, value1125, value1) := by
  rw [input2145_def, output2145_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2145 input2144)).val
theorem input2146_def : input2146 = (.seq input2145 input2144) := by
  unfold input2146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2145 output2144)).val
theorem output2146_def : output2146 = (.seq output2145 output2144) := by
  unfold output2146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2146_skip : Flapjack.WordAlloc.isSkip output2146 = false := by
  rw [output2146_def]
  conv => lhs; cbv
  try rfl
theorem node2146_eq : Flapjack.WordAlloc.removeDeadStructural input2146 value1120 value1 value2 = (output2146, value1125, value1) := by
  rw [input2146_def, output2146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2144_eq]
  try dsimp only
  rw [node2145_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1126 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(505, 465)])).val
theorem input2147_def : input2147 = (Flapjack.WordLangProgHOL.move 0 [(505, 465)]) := by
  unfold input2147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(505, 465)])).val
theorem output2147_def : output2147 = (Flapjack.WordLangProgHOL.move 0 [(505, 465)]) := by
  unfold output2147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2147_skip : Flapjack.WordAlloc.isSkip output2147 = false := by
  rw [output2147_def]
  conv => lhs; cbv
  try rfl
theorem node2147_eq : Flapjack.WordAlloc.removeDeadStructural input2147 value1125 value1 value2 = (output2147, value1126, value1) := by
  rw [input2147_def, output2147_def]
  try (conv => lhs; cbv)
  try rfl

def value1127 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(501, 449)])).val
theorem input2148_def : input2148 = (Flapjack.WordLangProgHOL.move 0 [(501, 449)]) := by
  unfold input2148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(501, 449)])).val
theorem output2148_def : output2148 = (Flapjack.WordLangProgHOL.move 0 [(501, 449)]) := by
  unfold output2148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2148_skip : Flapjack.WordAlloc.isSkip output2148 = false := by
  rw [output2148_def]
  conv => lhs; cbv
  try rfl
theorem node2148_eq : Flapjack.WordAlloc.removeDeadStructural input2148 value1126 value1 value2 = (output2148, value1127, value1) := by
  rw [input2148_def, output2148_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 1#64))).val
theorem input2149_def : input2149 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 1#64)) := by
  unfold input2149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2149_def : output2149 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2149_skip : Flapjack.WordAlloc.isSkip output2149 = true := by
  rw [output2149_def]
  conv => lhs; cbv
  try rfl
theorem node2149_eq : Flapjack.WordAlloc.removeDeadStructural input2149 value1127 value1 value2 = (output2149, value1127, value1) := by
  rw [input2149_def, output2149_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input2150_def : input2150 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input2150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output2150_def : output2150 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output2150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2150_skip : Flapjack.WordAlloc.isSkip output2150 = false := by
  rw [output2150_def]
  conv => lhs; cbv
  try rfl
theorem node2150_eq : Flapjack.WordAlloc.removeDeadStructural input2150 value1127 value1 value2 = (output2150, value1127, value1) := by
  rw [input2150_def, output2150_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 493 1#64))).val
theorem input2151_def : input2151 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 493 1#64)) := by
  unfold input2151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2151_def : output2151 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2151_skip : Flapjack.WordAlloc.isSkip output2151 = true := by
  rw [output2151_def]
  conv => lhs; cbv
  try rfl
theorem node2151_eq : Flapjack.WordAlloc.removeDeadStructural input2151 value1127 value1 value2 = (output2151, value1127, value1) := by
  rw [input2151_def, output2151_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2151 input2150)).val
theorem input2152_def : input2152 = (.seq input2151 input2150) := by
  unfold input2152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2150)).val
theorem output2152_def : output2152 = (output2150) := by
  unfold output2152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2152_skip : Flapjack.WordAlloc.isSkip output2152 = false := by
  rw [output2152_def]
  conv => lhs; cbv
  try rfl
theorem node2152_eq : Flapjack.WordAlloc.removeDeadStructural input2152 value1127 value1 value2 = (output2152, value1127, value1) := by
  rw [input2152_def, output2152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2150_eq]
  try dsimp only
  rw [node2151_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2152 input2149)).val
theorem input2153_def : input2153 = (.seq input2152 input2149) := by
  unfold input2153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2152)).val
theorem output2153_def : output2153 = (output2152) := by
  unfold output2153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2153_skip : Flapjack.WordAlloc.isSkip output2153 = false := by
  rw [output2153_def]
  conv => lhs; cbv
  try rfl
theorem node2153_eq : Flapjack.WordAlloc.removeDeadStructural input2153 value1127 value1 value2 = (output2153, value1127, value1) := by
  rw [input2153_def, output2153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2149_eq]
  try dsimp only
  rw [node2152_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2153 input2148)).val
theorem input2154_def : input2154 = (.seq input2153 input2148) := by
  unfold input2154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2153 output2148)).val
theorem output2154_def : output2154 = (.seq output2153 output2148) := by
  unfold output2154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2154_skip : Flapjack.WordAlloc.isSkip output2154 = false := by
  rw [output2154_def]
  conv => lhs; cbv
  try rfl
theorem node2154_eq : Flapjack.WordAlloc.removeDeadStructural input2154 value1126 value1 value2 = (output2154, value1127, value1) := by
  rw [input2154_def, output2154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2148_eq]
  try dsimp only
  rw [node2153_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2154 input2147)).val
theorem input2155_def : input2155 = (.seq input2154 input2147) := by
  unfold input2155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2154 output2147)).val
theorem output2155_def : output2155 = (.seq output2154 output2147) := by
  unfold output2155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2155_skip : Flapjack.WordAlloc.isSkip output2155 = false := by
  rw [output2155_def]
  conv => lhs; cbv
  try rfl
theorem node2155_eq : Flapjack.WordAlloc.removeDeadStructural input2155 value1125 value1 value2 = (output2155, value1127, value1) := by
  rw [input2155_def, output2155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2147_eq]
  try dsimp only
  rw [node2154_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2155 input2146)).val
theorem input2156_def : input2156 = (.seq input2155 input2146) := by
  unfold input2156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2155 output2146)).val
theorem output2156_def : output2156 = (.seq output2155 output2146) := by
  unfold output2156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2156_skip : Flapjack.WordAlloc.isSkip output2156 = false := by
  rw [output2156_def]
  conv => lhs; cbv
  try rfl
theorem node2156_eq : Flapjack.WordAlloc.removeDeadStructural input2156 value1120 value1 value2 = (output2156, value1127, value1) := by
  rw [input2156_def, output2156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2146_eq]
  try dsimp only
  rw [node2155_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2156 input2141)).val
theorem input2157_def : input2157 = (.seq input2156 input2141) := by
  unfold input2157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2156 output2141)).val
theorem output2157_def : output2157 = (.seq output2156 output2141) := by
  unfold output2157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2157_skip : Flapjack.WordAlloc.isSkip output2157 = false := by
  rw [output2157_def]
  conv => lhs; cbv
  try rfl
theorem node2157_eq : Flapjack.WordAlloc.removeDeadStructural input2157 value1120 value1 value2 = (output2157, value1127, value1) := by
  rw [input2157_def, output2157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2141_eq]
  try dsimp only
  rw [node2156_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2157 input2140)).val
theorem input2158_def : input2158 = (.seq input2157 input2140) := by
  unfold input2158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2157 output2140)).val
theorem output2158_def : output2158 = (.seq output2157 output2140) := by
  unfold output2158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2158_skip : Flapjack.WordAlloc.isSkip output2158 = false := by
  rw [output2158_def]
  conv => lhs; cbv
  try rfl
theorem node2158_eq : Flapjack.WordAlloc.removeDeadStructural input2158 value1122 value1 value2 = (output2158, value1127, value1) := by
  rw [input2158_def, output2158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2140_eq]
  try dsimp only
  rw [node2157_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2158 input2139)).val
theorem input2159_def : input2159 = (.seq input2158 input2139) := by
  unfold input2159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2158 output2139)).val
theorem output2159_def : output2159 = (.seq output2158 output2139) := by
  unfold output2159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2159_skip : Flapjack.WordAlloc.isSkip output2159 = false := by
  rw [output2159_def]
  conv => lhs; cbv
  try rfl
theorem node2159_eq : Flapjack.WordAlloc.removeDeadStructural input2159 value1120 value1 value2 = (output2159, value1127, value1) := by
  rw [input2159_def, output2159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2139_eq]
  try dsimp only
  rw [node2158_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2159 input2136)).val
theorem input2160_def : input2160 = (.seq input2159 input2136) := by
  unfold input2160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2159 output2136)).val
theorem output2160_def : output2160 = (.seq output2159 output2136) := by
  unfold output2160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2160_skip : Flapjack.WordAlloc.isSkip output2160 = false := by
  rw [output2160_def]
  conv => lhs; cbv
  try rfl
theorem node2160_eq : Flapjack.WordAlloc.removeDeadStructural input2160 value1110 value1 value2 = (output2160, value1127, value1) := by
  rw [input2160_def, output2160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2136_eq]
  try dsimp only
  rw [node2159_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1128 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(593, 433)])).val
theorem input2161_def : input2161 = (Flapjack.WordLangProgHOL.move 2 [(593, 433)]) := by
  unfold input2161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(593, 433)])).val
theorem output2161_def : output2161 = (Flapjack.WordLangProgHOL.move 2 [(593, 433)]) := by
  unfold output2161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2161_skip : Flapjack.WordAlloc.isSkip output2161 = false := by
  rw [output2161_def]
  conv => lhs; cbv
  try rfl
theorem node2161_eq : Flapjack.WordAlloc.removeDeadStructural input2161 value1110 value1 value2 = (output2161, value1128, value1) := by
  rw [input2161_def, output2161_def]
  try (conv => lhs; cbv)
  try rfl

def value1129 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(589, 437)])).val
theorem input2162_def : input2162 = (Flapjack.WordLangProgHOL.move 2 [(589, 437)]) := by
  unfold input2162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(589, 437)])).val
theorem output2162_def : output2162 = (Flapjack.WordLangProgHOL.move 2 [(589, 437)]) := by
  unfold output2162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2162_skip : Flapjack.WordAlloc.isSkip output2162 = false := by
  rw [output2162_def]
  conv => lhs; cbv
  try rfl
theorem node2162_eq : Flapjack.WordAlloc.removeDeadStructural input2162 value1128 value1 value2 = (output2162, value1129, value1) := by
  rw [input2162_def, output2162_def]
  try (conv => lhs; cbv)
  try rfl

def value1130 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(585, 441)])).val
theorem input2163_def : input2163 = (Flapjack.WordLangProgHOL.move 2 [(585, 441)]) := by
  unfold input2163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(585, 441)])).val
theorem output2163_def : output2163 = (Flapjack.WordLangProgHOL.move 2 [(585, 441)]) := by
  unfold output2163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2163_skip : Flapjack.WordAlloc.isSkip output2163 = false := by
  rw [output2163_def]
  conv => lhs; cbv
  try rfl
theorem node2163_eq : Flapjack.WordAlloc.removeDeadStructural input2163 value1129 value1 value2 = (output2163, value1130, value1) := by
  rw [input2163_def, output2163_def]
  try (conv => lhs; cbv)
  try rfl

def value1131 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(581, 445)])).val
theorem input2164_def : input2164 = (Flapjack.WordLangProgHOL.move 2 [(581, 445)]) := by
  unfold input2164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(581, 445)])).val
theorem output2164_def : output2164 = (Flapjack.WordLangProgHOL.move 2 [(581, 445)]) := by
  unfold output2164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2164_skip : Flapjack.WordAlloc.isSkip output2164 = false := by
  rw [output2164_def]
  conv => lhs; cbv
  try rfl
theorem node2164_eq : Flapjack.WordAlloc.removeDeadStructural input2164 value1130 value1 value2 = (output2164, value1131, value1) := by
  rw [input2164_def, output2164_def]
  try (conv => lhs; cbv)
  try rfl

def value1132 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(577, 449)])).val
theorem input2165_def : input2165 = (Flapjack.WordLangProgHOL.move 2 [(577, 449)]) := by
  unfold input2165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(577, 449)])).val
theorem output2165_def : output2165 = (Flapjack.WordLangProgHOL.move 2 [(577, 449)]) := by
  unfold output2165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2165_skip : Flapjack.WordAlloc.isSkip output2165 = false := by
  rw [output2165_def]
  conv => lhs; cbv
  try rfl
theorem node2165_eq : Flapjack.WordAlloc.removeDeadStructural input2165 value1131 value1 value2 = (output2165, value1132, value1) := by
  rw [input2165_def, output2165_def]
  try (conv => lhs; cbv)
  try rfl

def value1133 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(573, 453)])).val
theorem input2166_def : input2166 = (Flapjack.WordLangProgHOL.move 2 [(573, 453)]) := by
  unfold input2166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(573, 453)])).val
theorem output2166_def : output2166 = (Flapjack.WordLangProgHOL.move 2 [(573, 453)]) := by
  unfold output2166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2166_skip : Flapjack.WordAlloc.isSkip output2166 = false := by
  rw [output2166_def]
  conv => lhs; cbv
  try rfl
theorem node2166_eq : Flapjack.WordAlloc.removeDeadStructural input2166 value1132 value1 value2 = (output2166, value1133, value1) := by
  rw [input2166_def, output2166_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(569, 485)])).val
theorem input2167_def : input2167 = (Flapjack.WordLangProgHOL.move 2 [(569, 485)]) := by
  unfold input2167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2167_def : output2167 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2167_skip : Flapjack.WordAlloc.isSkip output2167 = true := by
  rw [output2167_def]
  conv => lhs; cbv
  try rfl
theorem node2167_eq : Flapjack.WordAlloc.removeDeadStructural input2167 value1133 value1 value2 = (output2167, value1133, value1) := by
  rw [input2167_def, output2167_def]
  try (conv => lhs; cbv)
  try rfl

def value1134 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(565, 457)])).val
theorem input2168_def : input2168 = (Flapjack.WordLangProgHOL.move 2 [(565, 457)]) := by
  unfold input2168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(565, 457)])).val
theorem output2168_def : output2168 = (Flapjack.WordLangProgHOL.move 2 [(565, 457)]) := by
  unfold output2168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2168_skip : Flapjack.WordAlloc.isSkip output2168 = false := by
  rw [output2168_def]
  conv => lhs; cbv
  try rfl
theorem node2168_eq : Flapjack.WordAlloc.removeDeadStructural input2168 value1133 value1 value2 = (output2168, value1134, value1) := by
  rw [input2168_def, output2168_def]
  try (conv => lhs; cbv)
  try rfl

def value1135 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(561, 461)])).val
theorem input2169_def : input2169 = (Flapjack.WordLangProgHOL.move 2 [(561, 461)]) := by
  unfold input2169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(561, 461)])).val
theorem output2169_def : output2169 = (Flapjack.WordLangProgHOL.move 2 [(561, 461)]) := by
  unfold output2169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2169_skip : Flapjack.WordAlloc.isSkip output2169 = false := by
  rw [output2169_def]
  conv => lhs; cbv
  try rfl
theorem node2169_eq : Flapjack.WordAlloc.removeDeadStructural input2169 value1134 value1 value2 = (output2169, value1135, value1) := by
  rw [input2169_def, output2169_def]
  try (conv => lhs; cbv)
  try rfl

def value1136 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(557, 465)])).val
theorem input2170_def : input2170 = (Flapjack.WordLangProgHOL.move 2 [(557, 465)]) := by
  unfold input2170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(557, 465)])).val
theorem output2170_def : output2170 = (Flapjack.WordLangProgHOL.move 2 [(557, 465)]) := by
  unfold output2170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2170_skip : Flapjack.WordAlloc.isSkip output2170 = false := by
  rw [output2170_def]
  conv => lhs; cbv
  try rfl
theorem node2170_eq : Flapjack.WordAlloc.removeDeadStructural input2170 value1135 value1 value2 = (output2170, value1136, value1) := by
  rw [input2170_def, output2170_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(553, 489)])).val
theorem input2171_def : input2171 = (Flapjack.WordLangProgHOL.move 2 [(553, 489)]) := by
  unfold input2171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2171_def : output2171 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2171_skip : Flapjack.WordAlloc.isSkip output2171 = true := by
  rw [output2171_def]
  conv => lhs; cbv
  try rfl
theorem node2171_eq : Flapjack.WordAlloc.removeDeadStructural input2171 value1136 value1 value2 = (output2171, value1136, value1) := by
  rw [input2171_def, output2171_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input2172_def : input2172 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input2172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2172_def : output2172 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2172_skip : Flapjack.WordAlloc.isSkip output2172 = true := by
  rw [output2172_def]
  conv => lhs; cbv
  try rfl
theorem node2172_eq : Flapjack.WordAlloc.removeDeadStructural input2172 value1136 value1 value2 = (output2172, value1136, value1) := by
  rw [input2172_def, output2172_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2172 input2171)).val
theorem input2173_def : input2173 = (.seq input2172 input2171) := by
  unfold input2173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2171)).val
theorem output2173_def : output2173 = (output2171) := by
  unfold output2173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2173_skip : Flapjack.WordAlloc.isSkip output2173 = true := by
  rw [output2173_def]
  conv => lhs; cbv
  try rfl
theorem node2173_eq : Flapjack.WordAlloc.removeDeadStructural input2173 value1136 value1 value2 = (output2173, value1136, value1) := by
  rw [input2173_def, output2173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2171_eq]
  try dsimp only
  rw [node2172_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2173 input2170)).val
theorem input2174_def : input2174 = (.seq input2173 input2170) := by
  unfold input2174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2170)).val
theorem output2174_def : output2174 = (output2170) := by
  unfold output2174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2174_skip : Flapjack.WordAlloc.isSkip output2174 = false := by
  rw [output2174_def]
  conv => lhs; cbv
  try rfl
theorem node2174_eq : Flapjack.WordAlloc.removeDeadStructural input2174 value1135 value1 value2 = (output2174, value1136, value1) := by
  rw [input2174_def, output2174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2170_eq]
  try dsimp only
  rw [node2173_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2174 input2169)).val
theorem input2175_def : input2175 = (.seq input2174 input2169) := by
  unfold input2175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2174 output2169)).val
theorem output2175_def : output2175 = (.seq output2174 output2169) := by
  unfold output2175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2175_skip : Flapjack.WordAlloc.isSkip output2175 = false := by
  rw [output2175_def]
  conv => lhs; cbv
  try rfl
theorem node2175_eq : Flapjack.WordAlloc.removeDeadStructural input2175 value1134 value1 value2 = (output2175, value1136, value1) := by
  rw [input2175_def, output2175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2169_eq]
  try dsimp only
  rw [node2174_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2175 input2168)).val
theorem input2176_def : input2176 = (.seq input2175 input2168) := by
  unfold input2176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2175 output2168)).val
theorem output2176_def : output2176 = (.seq output2175 output2168) := by
  unfold output2176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2176_skip : Flapjack.WordAlloc.isSkip output2176 = false := by
  rw [output2176_def]
  conv => lhs; cbv
  try rfl
theorem node2176_eq : Flapjack.WordAlloc.removeDeadStructural input2176 value1133 value1 value2 = (output2176, value1136, value1) := by
  rw [input2176_def, output2176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2168_eq]
  try dsimp only
  rw [node2175_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2176 input2167)).val
theorem input2177_def : input2177 = (.seq input2176 input2167) := by
  unfold input2177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2176)).val
theorem output2177_def : output2177 = (output2176) := by
  unfold output2177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2177_skip : Flapjack.WordAlloc.isSkip output2177 = false := by
  rw [output2177_def]
  conv => lhs; cbv
  try rfl
theorem node2177_eq : Flapjack.WordAlloc.removeDeadStructural input2177 value1133 value1 value2 = (output2177, value1136, value1) := by
  rw [input2177_def, output2177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2167_eq]
  try dsimp only
  rw [node2176_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2177 input2166)).val
theorem input2178_def : input2178 = (.seq input2177 input2166) := by
  unfold input2178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2177 output2166)).val
theorem output2178_def : output2178 = (.seq output2177 output2166) := by
  unfold output2178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2178_skip : Flapjack.WordAlloc.isSkip output2178 = false := by
  rw [output2178_def]
  conv => lhs; cbv
  try rfl
theorem node2178_eq : Flapjack.WordAlloc.removeDeadStructural input2178 value1132 value1 value2 = (output2178, value1136, value1) := by
  rw [input2178_def, output2178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2166_eq]
  try dsimp only
  rw [node2177_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2178 input2165)).val
theorem input2179_def : input2179 = (.seq input2178 input2165) := by
  unfold input2179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2178 output2165)).val
theorem output2179_def : output2179 = (.seq output2178 output2165) := by
  unfold output2179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2179_skip : Flapjack.WordAlloc.isSkip output2179 = false := by
  rw [output2179_def]
  conv => lhs; cbv
  try rfl
theorem node2179_eq : Flapjack.WordAlloc.removeDeadStructural input2179 value1131 value1 value2 = (output2179, value1136, value1) := by
  rw [input2179_def, output2179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2165_eq]
  try dsimp only
  rw [node2178_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2179 input2164)).val
theorem input2180_def : input2180 = (.seq input2179 input2164) := by
  unfold input2180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2179 output2164)).val
theorem output2180_def : output2180 = (.seq output2179 output2164) := by
  unfold output2180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2180_skip : Flapjack.WordAlloc.isSkip output2180 = false := by
  rw [output2180_def]
  conv => lhs; cbv
  try rfl
theorem node2180_eq : Flapjack.WordAlloc.removeDeadStructural input2180 value1130 value1 value2 = (output2180, value1136, value1) := by
  rw [input2180_def, output2180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2164_eq]
  try dsimp only
  rw [node2179_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2180 input2163)).val
theorem input2181_def : input2181 = (.seq input2180 input2163) := by
  unfold input2181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2180 output2163)).val
theorem output2181_def : output2181 = (.seq output2180 output2163) := by
  unfold output2181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2181_skip : Flapjack.WordAlloc.isSkip output2181 = false := by
  rw [output2181_def]
  conv => lhs; cbv
  try rfl
theorem node2181_eq : Flapjack.WordAlloc.removeDeadStructural input2181 value1129 value1 value2 = (output2181, value1136, value1) := by
  rw [input2181_def, output2181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2163_eq]
  try dsimp only
  rw [node2180_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2181 input2162)).val
theorem input2182_def : input2182 = (.seq input2181 input2162) := by
  unfold input2182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2181 output2162)).val
theorem output2182_def : output2182 = (.seq output2181 output2162) := by
  unfold output2182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2182_skip : Flapjack.WordAlloc.isSkip output2182 = false := by
  rw [output2182_def]
  conv => lhs; cbv
  try rfl
theorem node2182_eq : Flapjack.WordAlloc.removeDeadStructural input2182 value1128 value1 value2 = (output2182, value1136, value1) := by
  rw [input2182_def, output2182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2162_eq]
  try dsimp only
  rw [node2181_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2182 input2161)).val
theorem input2183_def : input2183 = (.seq input2182 input2161) := by
  unfold input2183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2182 output2161)).val
theorem output2183_def : output2183 = (.seq output2182 output2161) := by
  unfold output2183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2183_skip : Flapjack.WordAlloc.isSkip output2183 = false := by
  rw [output2183_def]
  conv => lhs; cbv
  try rfl
theorem node2183_eq : Flapjack.WordAlloc.removeDeadStructural input2183 value1110 value1 value2 = (output2183, value1136, value1) := by
  rw [input2183_def, output2183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2161_eq]
  try dsimp only
  rw [node2182_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1137 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(549, 429), (545, 481), (541, 485)])).val
theorem input2184_def : input2184 = (Flapjack.WordLangProgHOL.move 2 [(549, 429), (545, 481), (541, 485)]) := by
  unfold input2184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(549, 429)])).val
theorem output2184_def : output2184 = (Flapjack.WordLangProgHOL.move 2 [(549, 429)]) := by
  unfold output2184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2184_skip : Flapjack.WordAlloc.isSkip output2184 = false := by
  rw [output2184_def]
  conv => lhs; cbv
  try rfl
theorem node2184_eq : Flapjack.WordAlloc.removeDeadStructural input2184 value1136 value1 value2 = (output2184, value1137, value1) := by
  rw [input2184_def, output2184_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2184 input2183)).val
theorem input2185_def : input2185 = (.seq input2184 input2183) := by
  unfold input2185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2184 output2183)).val
theorem output2185_def : output2185 = (.seq output2184 output2183) := by
  unfold output2185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2185_skip : Flapjack.WordAlloc.isSkip output2185 = false := by
  rw [output2185_def]
  conv => lhs; cbv
  try rfl
theorem node2185_eq : Flapjack.WordAlloc.removeDeadStructural input2185 value1110 value1 value2 = (output2185, value1137, value1) := by
  rw [input2185_def, output2185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2183_eq]
  try dsimp only
  rw [node2184_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input2186_def : input2186 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input2186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2186_def : output2186 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2186_skip : Flapjack.WordAlloc.isSkip output2186 = true := by
  rw [output2186_def]
  conv => lhs; cbv
  try rfl
theorem node2186_eq : Flapjack.WordAlloc.removeDeadStructural input2186 value1137 value1 value2 = (output2186, value1137, value1) := by
  rw [input2186_def, output2186_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2186 input2185)).val
theorem input2187_def : input2187 = (.seq input2186 input2185) := by
  unfold input2187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2185)).val
theorem output2187_def : output2187 = (output2185) := by
  unfold output2187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2187_skip : Flapjack.WordAlloc.isSkip output2187 = false := by
  rw [output2187_def]
  conv => lhs; cbv
  try rfl
theorem node2187_eq : Flapjack.WordAlloc.removeDeadStructural input2187 value1110 value1 value2 = (output2187, value1137, value1) := by
  rw [input2187_def, output2187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2185_eq]
  try dsimp only
  rw [node2186_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1138 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 489

def value1139 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value381 485 value1138 input2160 input2187)).val
theorem input2188_def : input2188 = (.ite value381 485 value1138 input2160 input2187) := by
  unfold input2188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value381 485 value1138 output2160 output2187)).val
theorem output2188_def : output2188 = (.ite value381 485 value1138 output2160 output2187) := by
  unfold output2188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2188_skip : Flapjack.WordAlloc.isSkip output2188 = false := by
  rw [output2188_def]
  conv => lhs; cbv
  try rfl
theorem node2188_eq : Flapjack.WordAlloc.removeDeadStructural input2188 value1110 value1 value2 = (output2188, value1139, value1) := by
  rw [input2188_def, output2188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node2160_eq]
  try dsimp only
  rw [node2187_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2188 input2111)).val
theorem input2189_def : input2189 = (.seq input2188 input2111) := by
  unfold input2189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2188 output2111)).val
theorem output2189_def : output2189 = (.seq output2188 output2111) := by
  unfold output2189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2189_skip : Flapjack.WordAlloc.isSkip output2189 = false := by
  rw [output2189_def]
  conv => lhs; cbv
  try rfl
theorem node2189_eq : Flapjack.WordAlloc.removeDeadStructural input2189 value1110 value1 value2 = (output2189, value1139, value1) := by
  rw [input2189_def, output2189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2111_eq]
  try dsimp only
  rw [node2188_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1140 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 489 1#64))).val
theorem input2190_def : input2190 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 489 1#64)) := by
  unfold input2190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 489 1#64))).val
theorem output2190_def : output2190 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 489 1#64)) := by
  unfold output2190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2190_skip : Flapjack.WordAlloc.isSkip output2190 = false := by
  rw [output2190_def]
  conv => lhs; cbv
  try rfl
theorem node2190_eq : Flapjack.WordAlloc.removeDeadStructural input2190 value1139 value1 value2 = (output2190, value1140, value1) := by
  rw [input2190_def, output2190_def]
  try (conv => lhs; cbv)
  try rfl

def value1141 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(485, 477)])).val
theorem input2191_def : input2191 = (Flapjack.WordLangProgHOL.move 0 [(485, 477)]) := by
  unfold input2191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(485, 477)])).val
theorem output2191_def : output2191 = (Flapjack.WordLangProgHOL.move 0 [(485, 477)]) := by
  unfold output2191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2191_skip : Flapjack.WordAlloc.isSkip output2191 = false := by
  rw [output2191_def]
  conv => lhs; cbv
  try rfl
theorem node2191_eq : Flapjack.WordAlloc.removeDeadStructural input2191 value1140 value1 value2 = (output2191, value1141, value1) := by
  rw [input2191_def, output2191_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input2192_def : input2192 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input2192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output2192_def : output2192 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output2192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2192_skip : Flapjack.WordAlloc.isSkip output2192 = false := by
  rw [output2192_def]
  conv => lhs; cbv
  try rfl
theorem node2192_eq : Flapjack.WordAlloc.removeDeadStructural input2192 value1141 value1 value2 = (output2192, value1141, value1) := by
  rw [input2192_def, output2192_def]
  try (conv => lhs; cbv)
  try rfl

def value1142 : Flapjack.NumSet :=
Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))))

@[irreducible, cbv_opaque] def input2193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(429, 387), (433, 391), (437, 395), (441, 399), (445, 403), (449, 407), (453, 411), (457, 415), (461, 419),
              (465, 423)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(469, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(477, 469)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 481 0#64)))),
      783, 2))
  (some 714) [2, 4, 6, 8, 10, 12]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(429, 387), (433, 391), (437, 395), (441, 399), (445, 403), (449, 407), (453, 411), (457, 415), (461, 419),
              (465, 423)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(473, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 473)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 477 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(481, 473)]))),
      783, 3)))).val
theorem input2193_def : input2193 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(429, 387), (433, 391), (437, 395), (441, 399), (445, 403), (449, 407), (453, 411), (457, 415), (461, 419),
              (465, 423)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(469, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(477, 469)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 481 0#64)))),
      783, 2))
  (some 714) [2, 4, 6, 8, 10, 12]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(429, 387), (433, 391), (437, 395), (441, 399), (445, 403), (449, 407), (453, 411), (457, 415), (461, 419),
              (465, 423)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(473, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 473)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 477 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(481, 473)]))),
      783, 3))) := by
  unfold input2193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(429, 387), (433, 391), (437, 395), (441, 399), (445, 403), (449, 407), (453, 411), (457, 415), (461, 419),
              (465, 423)])
          (Flapjack.WordLangProgHOL.move 1 [(469, 2)]))
        (Flapjack.WordLangProgHOL.move 1 [(477, 469)]),
      783, 2))
  (some 714) [2, 4, 6, 8, 10, 12]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(429, 387), (433, 391), (437, 395), (441, 399), (445, 403), (449, 407), (453, 411), (457, 415), (461, 419),
              (465, 423)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(473, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 473)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 477 0#64)),
      783, 3)))).val
theorem output2193_def : output2193 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(429, 387), (433, 391), (437, 395), (441, 399), (445, 403), (449, 407), (453, 411), (457, 415), (461, 419),
              (465, 423)])
          (Flapjack.WordLangProgHOL.move 1 [(469, 2)]))
        (Flapjack.WordLangProgHOL.move 1 [(477, 469)]),
      783, 2))
  (some 714) [2, 4, 6, 8, 10, 12]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(429, 387), (433, 391), (437, 395), (441, 399), (445, 403), (449, 407), (453, 411), (457, 415), (461, 419),
              (465, 423)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(473, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 473)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 477 0#64)),
      783, 3))) := by
  unfold output2193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2193_skip : Flapjack.WordAlloc.isSkip output2193 = false := by
  rw [output2193_def]
  conv => lhs; cbv
  try rfl
theorem node2193_eq : Flapjack.WordAlloc.removeDeadStructural input2193 value1141 value1 value2 = (output2193, value1142, value1) := by
  rw [input2193_def, output2193_def]
  try (conv => lhs; cbv)
  try rfl

def value1143 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))))

@[irreducible, cbv_opaque] def input2194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 361), (4, 365), (6, 369), (8, 373), (10, 377), (12, 381)])).val
theorem input2194_def : input2194 = (Flapjack.WordLangProgHOL.move 1 [(2, 361), (4, 365), (6, 369), (8, 373), (10, 377), (12, 381)]) := by
  unfold input2194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 361), (4, 365), (6, 369), (8, 373), (10, 377), (12, 381)])).val
theorem output2194_def : output2194 = (Flapjack.WordLangProgHOL.move 1 [(2, 361), (4, 365), (6, 369), (8, 373), (10, 377), (12, 381)]) := by
  unfold output2194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2194_skip : Flapjack.WordAlloc.isSkip output2194 = false := by
  rw [output2194_def]
  conv => lhs; cbv
  try rfl
theorem node2194_eq : Flapjack.WordAlloc.removeDeadStructural input2194 value1142 value1 value2 = (output2194, value1143, value1) := by
  rw [input2194_def, output2194_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2194 input2193)).val
theorem input2195_def : input2195 = (.seq input2194 input2193) := by
  unfold input2195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2194 output2193)).val
theorem output2195_def : output2195 = (.seq output2194 output2193) := by
  unfold output2195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2195_skip : Flapjack.WordAlloc.isSkip output2195 = false := by
  rw [output2195_def]
  conv => lhs; cbv
  try rfl
theorem node2195_eq : Flapjack.WordAlloc.removeDeadStructural input2195 value1141 value1 value2 = (output2195, value1143, value1) := by
  rw [input2195_def, output2195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2193_eq]
  try dsimp only
  rw [node2194_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1144 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0
  [(387, 297), (391, 353), (395, 369), (399, 361), (403, 365), (407, 301), (411, 373), (415, 381), (419, 377),
    (423, 309)])).val
theorem input2196_def : input2196 = (Flapjack.WordLangProgHOL.move 0
  [(387, 297), (391, 353), (395, 369), (399, 361), (403, 365), (407, 301), (411, 373), (415, 381), (419, 377),
    (423, 309)]) := by
  unfold input2196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0
  [(387, 297), (391, 353), (395, 369), (399, 361), (403, 365), (407, 301), (411, 373), (415, 381), (419, 377),
    (423, 309)])).val
theorem output2196_def : output2196 = (Flapjack.WordLangProgHOL.move 0
  [(387, 297), (391, 353), (395, 369), (399, 361), (403, 365), (407, 301), (411, 373), (415, 381), (419, 377),
    (423, 309)]) := by
  unfold output2196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2196_skip : Flapjack.WordAlloc.isSkip output2196 = false := by
  rw [output2196_def]
  conv => lhs; cbv
  try rfl
theorem node2196_eq : Flapjack.WordAlloc.removeDeadStructural input2196 value1143 value1 value2 = (output2196, value1144, value1) := by
  rw [input2196_def, output2196_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2196 input2195)).val
theorem input2197_def : input2197 = (.seq input2196 input2195) := by
  unfold input2197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2196 output2195)).val
theorem output2197_def : output2197 = (.seq output2196 output2195) := by
  unfold output2197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2197_skip : Flapjack.WordAlloc.isSkip output2197 = false := by
  rw [output2197_def]
  conv => lhs; cbv
  try rfl
theorem node2197_eq : Flapjack.WordAlloc.removeDeadStructural input2197 value1141 value1 value2 = (output2197, value1144, value1) := by
  rw [input2197_def, output2197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2195_eq]
  try dsimp only
  rw [node2196_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1145 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(381, 357)])).val
theorem input2198_def : input2198 = (Flapjack.WordLangProgHOL.move 0 [(381, 357)]) := by
  unfold input2198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(381, 357)])).val
theorem output2198_def : output2198 = (Flapjack.WordLangProgHOL.move 0 [(381, 357)]) := by
  unfold output2198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2198_skip : Flapjack.WordAlloc.isSkip output2198 = false := by
  rw [output2198_def]
  conv => lhs; cbv
  try rfl
theorem node2198_eq : Flapjack.WordAlloc.removeDeadStructural input2198 value1144 value1 value2 = (output2198, value1145, value1) := by
  rw [input2198_def, output2198_def]
  try (conv => lhs; cbv)
  try rfl

def value1146 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
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
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(377, 349)])).val
theorem input2199_def : input2199 = (Flapjack.WordLangProgHOL.move 0 [(377, 349)]) := by
  unfold input2199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(377, 349)])).val
theorem output2199_def : output2199 = (Flapjack.WordLangProgHOL.move 0 [(377, 349)]) := by
  unfold output2199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2199_skip : Flapjack.WordAlloc.isSkip output2199 = false := by
  rw [output2199_def]
  conv => lhs; cbv
  try rfl
theorem node2199_eq : Flapjack.WordAlloc.removeDeadStructural input2199 value1145 value1 value2 = (output2199, value1146, value1) := by
  rw [input2199_def, output2199_def]
  try (conv => lhs; cbv)
  try rfl

def value1147 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
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
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(373, 341)])).val
theorem input2200_def : input2200 = (Flapjack.WordLangProgHOL.move 0 [(373, 341)]) := by
  unfold input2200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(373, 341)])).val
theorem output2200_def : output2200 = (Flapjack.WordLangProgHOL.move 0 [(373, 341)]) := by
  unfold output2200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2200_skip : Flapjack.WordAlloc.isSkip output2200 = false := by
  rw [output2200_def]
  conv => lhs; cbv
  try rfl
theorem node2200_eq : Flapjack.WordAlloc.removeDeadStructural input2200 value1146 value1 value2 = (output2200, value1147, value1) := by
  rw [input2200_def, output2200_def]
  try (conv => lhs; cbv)
  try rfl

def value1148 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(369, 333)])).val
theorem input2201_def : input2201 = (Flapjack.WordLangProgHOL.move 0 [(369, 333)]) := by
  unfold input2201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(369, 333)])).val
theorem output2201_def : output2201 = (Flapjack.WordLangProgHOL.move 0 [(369, 333)]) := by
  unfold output2201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2201_skip : Flapjack.WordAlloc.isSkip output2201 = false := by
  rw [output2201_def]
  conv => lhs; cbv
  try rfl
theorem node2201_eq : Flapjack.WordAlloc.removeDeadStructural input2201 value1147 value1 value2 = (output2201, value1148, value1) := by
  rw [input2201_def, output2201_def]
  try (conv => lhs; cbv)
  try rfl

def value1149 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(365, 325)])).val
theorem input2202_def : input2202 = (Flapjack.WordLangProgHOL.move 0 [(365, 325)]) := by
  unfold input2202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(365, 325)])).val
theorem output2202_def : output2202 = (Flapjack.WordLangProgHOL.move 0 [(365, 325)]) := by
  unfold output2202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2202_skip : Flapjack.WordAlloc.isSkip output2202 = false := by
  rw [output2202_def]
  conv => lhs; cbv
  try rfl
theorem node2202_eq : Flapjack.WordAlloc.removeDeadStructural input2202 value1148 value1 value2 = (output2202, value1149, value1) := by
  rw [input2202_def, output2202_def]
  try (conv => lhs; cbv)
  try rfl

def value1150 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(361, 317)])).val
theorem input2203_def : input2203 = (Flapjack.WordLangProgHOL.move 0 [(361, 317)]) := by
  unfold input2203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(361, 317)])).val
theorem output2203_def : output2203 = (Flapjack.WordLangProgHOL.move 0 [(361, 317)]) := by
  unfold output2203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2203_skip : Flapjack.WordAlloc.isSkip output2203 = false := by
  rw [output2203_def]
  conv => lhs; cbv
  try rfl
theorem node2203_eq : Flapjack.WordAlloc.removeDeadStructural input2203 value1149 value1 value2 = (output2203, value1150, value1) := by
  rw [input2203_def, output2203_def]
  try (conv => lhs; cbv)
  try rfl

def value1151 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 357 (Flapjack.WordLangAddr.addr 353 136#64)))).val
theorem input2204_def : input2204 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 357 (Flapjack.WordLangAddr.addr 353 136#64))) := by
  unfold input2204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 357 (Flapjack.WordLangAddr.addr 353 136#64)))).val
theorem output2204_def : output2204 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 357 (Flapjack.WordLangAddr.addr 353 136#64))) := by
  unfold output2204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2204_skip : Flapjack.WordAlloc.isSkip output2204 = false := by
  rw [output2204_def]
  conv => lhs; cbv
  try rfl
theorem node2204_eq : Flapjack.WordAlloc.removeDeadStructural input2204 value1150 value1 value2 = (output2204, value1151, value1) := by
  rw [input2204_def, output2204_def]
  try (conv => lhs; cbv)
  try rfl

def value1152 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(353, 345)])).val
theorem input2205_def : input2205 = (Flapjack.WordLangProgHOL.move 0 [(353, 345)]) := by
  unfold input2205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(353, 345)])).val
theorem output2205_def : output2205 = (Flapjack.WordLangProgHOL.move 0 [(353, 345)]) := by
  unfold output2205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2205_skip : Flapjack.WordAlloc.isSkip output2205 = false := by
  rw [output2205_def]
  conv => lhs; cbv
  try rfl
theorem node2205_eq : Flapjack.WordAlloc.removeDeadStructural input2205 value1151 value1 value2 = (output2205, value1152, value1) := by
  rw [input2205_def, output2205_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2205 input2204)).val
theorem input2206_def : input2206 = (.seq input2205 input2204) := by
  unfold input2206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2205 output2204)).val
theorem output2206_def : output2206 = (.seq output2205 output2204) := by
  unfold output2206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2206_skip : Flapjack.WordAlloc.isSkip output2206 = false := by
  rw [output2206_def]
  conv => lhs; cbv
  try rfl
theorem node2206_eq : Flapjack.WordAlloc.removeDeadStructural input2206 value1150 value1 value2 = (output2206, value1152, value1) := by
  rw [input2206_def, output2206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2204_eq]
  try dsimp only
  rw [node2205_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1153 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 349 (Flapjack.WordLangAddr.addr 345 128#64)))).val
theorem input2207_def : input2207 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 349 (Flapjack.WordLangAddr.addr 345 128#64))) := by
  unfold input2207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 349 (Flapjack.WordLangAddr.addr 345 128#64)))).val
theorem output2207_def : output2207 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 349 (Flapjack.WordLangAddr.addr 345 128#64))) := by
  unfold output2207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2207_skip : Flapjack.WordAlloc.isSkip output2207 = false := by
  rw [output2207_def]
  conv => lhs; cbv
  try rfl
theorem node2207_eq : Flapjack.WordAlloc.removeDeadStructural input2207 value1152 value1 value2 = (output2207, value1153, value1) := by
  rw [input2207_def, output2207_def]
  try (conv => lhs; cbv)
  try rfl

def value1154 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(345, 337)])).val
theorem input2208_def : input2208 = (Flapjack.WordLangProgHOL.move 0 [(345, 337)]) := by
  unfold input2208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(345, 337)])).val
theorem output2208_def : output2208 = (Flapjack.WordLangProgHOL.move 0 [(345, 337)]) := by
  unfold output2208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2208_skip : Flapjack.WordAlloc.isSkip output2208 = false := by
  rw [output2208_def]
  conv => lhs; cbv
  try rfl
theorem node2208_eq : Flapjack.WordAlloc.removeDeadStructural input2208 value1153 value1 value2 = (output2208, value1154, value1) := by
  rw [input2208_def, output2208_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2208 input2207)).val
theorem input2209_def : input2209 = (.seq input2208 input2207) := by
  unfold input2209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2208 output2207)).val
theorem output2209_def : output2209 = (.seq output2208 output2207) := by
  unfold output2209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2209_skip : Flapjack.WordAlloc.isSkip output2209 = false := by
  rw [output2209_def]
  conv => lhs; cbv
  try rfl
theorem node2209_eq : Flapjack.WordAlloc.removeDeadStructural input2209 value1152 value1 value2 = (output2209, value1154, value1) := by
  rw [input2209_def, output2209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2207_eq]
  try dsimp only
  rw [node2208_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1155 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 341 (Flapjack.WordLangAddr.addr 337 120#64)))).val
theorem input2210_def : input2210 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 341 (Flapjack.WordLangAddr.addr 337 120#64))) := by
  unfold input2210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 341 (Flapjack.WordLangAddr.addr 337 120#64)))).val
theorem output2210_def : output2210 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 341 (Flapjack.WordLangAddr.addr 337 120#64))) := by
  unfold output2210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2210_skip : Flapjack.WordAlloc.isSkip output2210 = false := by
  rw [output2210_def]
  conv => lhs; cbv
  try rfl
theorem node2210_eq : Flapjack.WordAlloc.removeDeadStructural input2210 value1154 value1 value2 = (output2210, value1155, value1) := by
  rw [input2210_def, output2210_def]
  try (conv => lhs; cbv)
  try rfl

def value1156 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(337, 329)])).val
theorem input2211_def : input2211 = (Flapjack.WordLangProgHOL.move 0 [(337, 329)]) := by
  unfold input2211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(337, 329)])).val
theorem output2211_def : output2211 = (Flapjack.WordLangProgHOL.move 0 [(337, 329)]) := by
  unfold output2211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2211_skip : Flapjack.WordAlloc.isSkip output2211 = false := by
  rw [output2211_def]
  conv => lhs; cbv
  try rfl
theorem node2211_eq : Flapjack.WordAlloc.removeDeadStructural input2211 value1155 value1 value2 = (output2211, value1156, value1) := by
  rw [input2211_def, output2211_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2211 input2210)).val
theorem input2212_def : input2212 = (.seq input2211 input2210) := by
  unfold input2212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2211 output2210)).val
theorem output2212_def : output2212 = (.seq output2211 output2210) := by
  unfold output2212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2212_skip : Flapjack.WordAlloc.isSkip output2212 = false := by
  rw [output2212_def]
  conv => lhs; cbv
  try rfl
theorem node2212_eq : Flapjack.WordAlloc.removeDeadStructural input2212 value1154 value1 value2 = (output2212, value1156, value1) := by
  rw [input2212_def, output2212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2210_eq]
  try dsimp only
  rw [node2211_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1157 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 333 (Flapjack.WordLangAddr.addr 329 112#64)))).val
theorem input2213_def : input2213 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 333 (Flapjack.WordLangAddr.addr 329 112#64))) := by
  unfold input2213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 333 (Flapjack.WordLangAddr.addr 329 112#64)))).val
theorem output2213_def : output2213 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 333 (Flapjack.WordLangAddr.addr 329 112#64))) := by
  unfold output2213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2213_skip : Flapjack.WordAlloc.isSkip output2213 = false := by
  rw [output2213_def]
  conv => lhs; cbv
  try rfl
theorem node2213_eq : Flapjack.WordAlloc.removeDeadStructural input2213 value1156 value1 value2 = (output2213, value1157, value1) := by
  rw [input2213_def, output2213_def]
  try (conv => lhs; cbv)
  try rfl

def value1158 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(329, 321)])).val
theorem input2214_def : input2214 = (Flapjack.WordLangProgHOL.move 0 [(329, 321)]) := by
  unfold input2214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(329, 321)])).val
theorem output2214_def : output2214 = (Flapjack.WordLangProgHOL.move 0 [(329, 321)]) := by
  unfold output2214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2214_skip : Flapjack.WordAlloc.isSkip output2214 = false := by
  rw [output2214_def]
  conv => lhs; cbv
  try rfl
theorem node2214_eq : Flapjack.WordAlloc.removeDeadStructural input2214 value1157 value1 value2 = (output2214, value1158, value1) := by
  rw [input2214_def, output2214_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2214 input2213)).val
theorem input2215_def : input2215 = (.seq input2214 input2213) := by
  unfold input2215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2214 output2213)).val
theorem output2215_def : output2215 = (.seq output2214 output2213) := by
  unfold output2215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2215_skip : Flapjack.WordAlloc.isSkip output2215 = false := by
  rw [output2215_def]
  conv => lhs; cbv
  try rfl
theorem node2215_eq : Flapjack.WordAlloc.removeDeadStructural input2215 value1156 value1 value2 = (output2215, value1158, value1) := by
  rw [input2215_def, output2215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2213_eq]
  try dsimp only
  rw [node2214_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1159 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 325 (Flapjack.WordLangAddr.addr 321 104#64)))).val
theorem input2216_def : input2216 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 325 (Flapjack.WordLangAddr.addr 321 104#64))) := by
  unfold input2216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 325 (Flapjack.WordLangAddr.addr 321 104#64)))).val
theorem output2216_def : output2216 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 325 (Flapjack.WordLangAddr.addr 321 104#64))) := by
  unfold output2216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2216_skip : Flapjack.WordAlloc.isSkip output2216 = false := by
  rw [output2216_def]
  conv => lhs; cbv
  try rfl
theorem node2216_eq : Flapjack.WordAlloc.removeDeadStructural input2216 value1158 value1 value2 = (output2216, value1159, value1) := by
  rw [input2216_def, output2216_def]
  try (conv => lhs; cbv)
  try rfl

def value1160 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(321, 313)])).val
theorem input2217_def : input2217 = (Flapjack.WordLangProgHOL.move 0 [(321, 313)]) := by
  unfold input2217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(321, 313)])).val
theorem output2217_def : output2217 = (Flapjack.WordLangProgHOL.move 0 [(321, 313)]) := by
  unfold output2217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2217_skip : Flapjack.WordAlloc.isSkip output2217 = false := by
  rw [output2217_def]
  conv => lhs; cbv
  try rfl
theorem node2217_eq : Flapjack.WordAlloc.removeDeadStructural input2217 value1159 value1 value2 = (output2217, value1160, value1) := by
  rw [input2217_def, output2217_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2217 input2216)).val
theorem input2218_def : input2218 = (.seq input2217 input2216) := by
  unfold input2218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2217 output2216)).val
theorem output2218_def : output2218 = (.seq output2217 output2216) := by
  unfold output2218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2218_skip : Flapjack.WordAlloc.isSkip output2218 = false := by
  rw [output2218_def]
  conv => lhs; cbv
  try rfl
theorem node2218_eq : Flapjack.WordAlloc.removeDeadStructural input2218 value1158 value1 value2 = (output2218, value1160, value1) := by
  rw [input2218_def, output2218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2216_eq]
  try dsimp only
  rw [node2217_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1161 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 317 (Flapjack.WordLangAddr.addr 313 96#64)))).val
theorem input2219_def : input2219 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 317 (Flapjack.WordLangAddr.addr 313 96#64))) := by
  unfold input2219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 317 (Flapjack.WordLangAddr.addr 313 96#64)))).val
theorem output2219_def : output2219 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 317 (Flapjack.WordLangAddr.addr 313 96#64))) := by
  unfold output2219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2219_skip : Flapjack.WordAlloc.isSkip output2219 = false := by
  rw [output2219_def]
  conv => lhs; cbv
  try rfl
theorem node2219_eq : Flapjack.WordAlloc.removeDeadStructural input2219 value1160 value1 value2 = (output2219, value1161, value1) := by
  rw [input2219_def, output2219_def]
  try (conv => lhs; cbv)
  try rfl

def value1162 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(313, 305)])).val
theorem input2220_def : input2220 = (Flapjack.WordLangProgHOL.move 0 [(313, 305)]) := by
  unfold input2220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(313, 305)])).val
theorem output2220_def : output2220 = (Flapjack.WordLangProgHOL.move 0 [(313, 305)]) := by
  unfold output2220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2220_skip : Flapjack.WordAlloc.isSkip output2220 = false := by
  rw [output2220_def]
  conv => lhs; cbv
  try rfl
theorem node2220_eq : Flapjack.WordAlloc.removeDeadStructural input2220 value1161 value1 value2 = (output2220, value1162, value1) := by
  rw [input2220_def, output2220_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2220 input2219)).val
theorem input2221_def : input2221 = (.seq input2220 input2219) := by
  unfold input2221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2220 output2219)).val
theorem output2221_def : output2221 = (.seq output2220 output2219) := by
  unfold output2221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2221_skip : Flapjack.WordAlloc.isSkip output2221 = false := by
  rw [output2221_def]
  conv => lhs; cbv
  try rfl
theorem node2221_eq : Flapjack.WordAlloc.removeDeadStructural input2221 value1160 value1 value2 = (output2221, value1162, value1) := by
  rw [input2221_def, output2221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2219_eq]
  try dsimp only
  rw [node2220_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2221 input2218)).val
theorem input2222_def : input2222 = (.seq input2221 input2218) := by
  unfold input2222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2221 output2218)).val
theorem output2222_def : output2222 = (.seq output2221 output2218) := by
  unfold output2222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2222_skip : Flapjack.WordAlloc.isSkip output2222 = false := by
  rw [output2222_def]
  conv => lhs; cbv
  try rfl
theorem node2222_eq : Flapjack.WordAlloc.removeDeadStructural input2222 value1158 value1 value2 = (output2222, value1162, value1) := by
  rw [input2222_def, output2222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2218_eq]
  try dsimp only
  rw [node2221_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2222 input2215)).val
theorem input2223_def : input2223 = (.seq input2222 input2215) := by
  unfold input2223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2222 output2215)).val
theorem output2223_def : output2223 = (.seq output2222 output2215) := by
  unfold output2223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2223_skip : Flapjack.WordAlloc.isSkip output2223 = false := by
  rw [output2223_def]
  conv => lhs; cbv
  try rfl
theorem node2223_eq : Flapjack.WordAlloc.removeDeadStructural input2223 value1156 value1 value2 = (output2223, value1162, value1) := by
  rw [input2223_def, output2223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2215_eq]
  try dsimp only
  rw [node2222_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2223 input2212)).val
theorem input2224_def : input2224 = (.seq input2223 input2212) := by
  unfold input2224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2223 output2212)).val
theorem output2224_def : output2224 = (.seq output2223 output2212) := by
  unfold output2224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2224_skip : Flapjack.WordAlloc.isSkip output2224 = false := by
  rw [output2224_def]
  conv => lhs; cbv
  try rfl
theorem node2224_eq : Flapjack.WordAlloc.removeDeadStructural input2224 value1154 value1 value2 = (output2224, value1162, value1) := by
  rw [input2224_def, output2224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2212_eq]
  try dsimp only
  rw [node2223_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2224 input2209)).val
theorem input2225_def : input2225 = (.seq input2224 input2209) := by
  unfold input2225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2224 output2209)).val
theorem output2225_def : output2225 = (.seq output2224 output2209) := by
  unfold output2225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2225_skip : Flapjack.WordAlloc.isSkip output2225 = false := by
  rw [output2225_def]
  conv => lhs; cbv
  try rfl
theorem node2225_eq : Flapjack.WordAlloc.removeDeadStructural input2225 value1152 value1 value2 = (output2225, value1162, value1) := by
  rw [input2225_def, output2225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2209_eq]
  try dsimp only
  rw [node2224_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2225 input2206)).val
theorem input2226_def : input2226 = (.seq input2225 input2206) := by
  unfold input2226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2225 output2206)).val
theorem output2226_def : output2226 = (.seq output2225 output2206) := by
  unfold output2226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2226_skip : Flapjack.WordAlloc.isSkip output2226 = false := by
  rw [output2226_def]
  conv => lhs; cbv
  try rfl
theorem node2226_eq : Flapjack.WordAlloc.removeDeadStructural input2226 value1150 value1 value2 = (output2226, value1162, value1) := by
  rw [input2226_def, output2226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2206_eq]
  try dsimp only
  rw [node2225_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2226 input2203)).val
theorem input2227_def : input2227 = (.seq input2226 input2203) := by
  unfold input2227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2226 output2203)).val
theorem output2227_def : output2227 = (.seq output2226 output2203) := by
  unfold output2227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2227_skip : Flapjack.WordAlloc.isSkip output2227 = false := by
  rw [output2227_def]
  conv => lhs; cbv
  try rfl
theorem node2227_eq : Flapjack.WordAlloc.removeDeadStructural input2227 value1149 value1 value2 = (output2227, value1162, value1) := by
  rw [input2227_def, output2227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2203_eq]
  try dsimp only
  rw [node2226_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2227 input2202)).val
theorem input2228_def : input2228 = (.seq input2227 input2202) := by
  unfold input2228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2227 output2202)).val
theorem output2228_def : output2228 = (.seq output2227 output2202) := by
  unfold output2228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2228_skip : Flapjack.WordAlloc.isSkip output2228 = false := by
  rw [output2228_def]
  conv => lhs; cbv
  try rfl
theorem node2228_eq : Flapjack.WordAlloc.removeDeadStructural input2228 value1148 value1 value2 = (output2228, value1162, value1) := by
  rw [input2228_def, output2228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2202_eq]
  try dsimp only
  rw [node2227_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2228 input2201)).val
theorem input2229_def : input2229 = (.seq input2228 input2201) := by
  unfold input2229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2228 output2201)).val
theorem output2229_def : output2229 = (.seq output2228 output2201) := by
  unfold output2229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2229_skip : Flapjack.WordAlloc.isSkip output2229 = false := by
  rw [output2229_def]
  conv => lhs; cbv
  try rfl
theorem node2229_eq : Flapjack.WordAlloc.removeDeadStructural input2229 value1147 value1 value2 = (output2229, value1162, value1) := by
  rw [input2229_def, output2229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2201_eq]
  try dsimp only
  rw [node2228_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2229 input2200)).val
theorem input2230_def : input2230 = (.seq input2229 input2200) := by
  unfold input2230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2229 output2200)).val
theorem output2230_def : output2230 = (.seq output2229 output2200) := by
  unfold output2230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2230_skip : Flapjack.WordAlloc.isSkip output2230 = false := by
  rw [output2230_def]
  conv => lhs; cbv
  try rfl
theorem node2230_eq : Flapjack.WordAlloc.removeDeadStructural input2230 value1146 value1 value2 = (output2230, value1162, value1) := by
  rw [input2230_def, output2230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2200_eq]
  try dsimp only
  rw [node2229_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2230 input2199)).val
theorem input2231_def : input2231 = (.seq input2230 input2199) := by
  unfold input2231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2230 output2199)).val
theorem output2231_def : output2231 = (.seq output2230 output2199) := by
  unfold output2231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2231_skip : Flapjack.WordAlloc.isSkip output2231 = false := by
  rw [output2231_def]
  conv => lhs; cbv
  try rfl
theorem node2231_eq : Flapjack.WordAlloc.removeDeadStructural input2231 value1145 value1 value2 = (output2231, value1162, value1) := by
  rw [input2231_def, output2231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2199_eq]
  try dsimp only
  rw [node2230_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2231 input2198)).val
theorem input2232_def : input2232 = (.seq input2231 input2198) := by
  unfold input2232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2231 output2198)).val
theorem output2232_def : output2232 = (.seq output2231 output2198) := by
  unfold output2232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2232_skip : Flapjack.WordAlloc.isSkip output2232 = false := by
  rw [output2232_def]
  conv => lhs; cbv
  try rfl
theorem node2232_eq : Flapjack.WordAlloc.removeDeadStructural input2232 value1144 value1 value2 = (output2232, value1162, value1) := by
  rw [input2232_def, output2232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2198_eq]
  try dsimp only
  rw [node2231_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2232 input2197)).val
theorem input2233_def : input2233 = (.seq input2232 input2197) := by
  unfold input2233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2232 output2197)).val
theorem output2233_def : output2233 = (.seq output2232 output2197) := by
  unfold output2233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2233_skip : Flapjack.WordAlloc.isSkip output2233 = false := by
  rw [output2233_def]
  conv => lhs; cbv
  try rfl
theorem node2233_eq : Flapjack.WordAlloc.removeDeadStructural input2233 value1141 value1 value2 = (output2233, value1162, value1) := by
  rw [input2233_def, output2233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2197_eq]
  try dsimp only
  rw [node2232_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2233 input2192)).val
theorem input2234_def : input2234 = (.seq input2233 input2192) := by
  unfold input2234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2233 output2192)).val
theorem output2234_def : output2234 = (.seq output2233 output2192) := by
  unfold output2234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2234_skip : Flapjack.WordAlloc.isSkip output2234 = false := by
  rw [output2234_def]
  conv => lhs; cbv
  try rfl
theorem node2234_eq : Flapjack.WordAlloc.removeDeadStructural input2234 value1141 value1 value2 = (output2234, value1162, value1) := by
  rw [input2234_def, output2234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2192_eq]
  try dsimp only
  rw [node2233_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2234 input2191)).val
theorem input2235_def : input2235 = (.seq input2234 input2191) := by
  unfold input2235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2234 output2191)).val
theorem output2235_def : output2235 = (.seq output2234 output2191) := by
  unfold output2235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2235_skip : Flapjack.WordAlloc.isSkip output2235 = false := by
  rw [output2235_def]
  conv => lhs; cbv
  try rfl
theorem node2235_eq : Flapjack.WordAlloc.removeDeadStructural input2235 value1140 value1 value2 = (output2235, value1162, value1) := by
  rw [input2235_def, output2235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2191_eq]
  try dsimp only
  rw [node2234_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2235 input2190)).val
theorem input2236_def : input2236 = (.seq input2235 input2190) := by
  unfold input2236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2235 output2190)).val
theorem output2236_def : output2236 = (.seq output2235 output2190) := by
  unfold output2236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2236_skip : Flapjack.WordAlloc.isSkip output2236 = false := by
  rw [output2236_def]
  conv => lhs; cbv
  try rfl
theorem node2236_eq : Flapjack.WordAlloc.removeDeadStructural input2236 value1139 value1 value2 = (output2236, value1162, value1) := by
  rw [input2236_def, output2236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2190_eq]
  try dsimp only
  rw [node2235_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2236 input2189)).val
theorem input2237_def : input2237 = (.seq input2236 input2189) := by
  unfold input2237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2236 output2189)).val
theorem output2237_def : output2237 = (.seq output2236 output2189) := by
  unfold output2237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2237_skip : Flapjack.WordAlloc.isSkip output2237 = false := by
  rw [output2237_def]
  conv => lhs; cbv
  try rfl
theorem node2237_eq : Flapjack.WordAlloc.removeDeadStructural input2237 value1110 value1 value2 = (output2237, value1162, value1) := by
  rw [input2237_def, output2237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2189_eq]
  try dsimp only
  rw [node2236_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2237 input2106)).val
theorem input2238_def : input2238 = (.seq input2237 input2106) := by
  unfold input2238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2237 output2106)).val
theorem output2238_def : output2238 = (.seq output2237 output2106) := by
  unfold output2238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2238_skip : Flapjack.WordAlloc.isSkip output2238 = false := by
  rw [output2238_def]
  conv => lhs; cbv
  try rfl
theorem node2238_eq : Flapjack.WordAlloc.removeDeadStructural input2238 value1110 value1 value2 = (output2238, value1162, value1) := by
  rw [input2238_def, output2238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2106_eq]
  try dsimp only
  rw [node2237_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2238 input2105)).val
theorem input2239_def : input2239 = (.seq input2238 input2105) := by
  unfold input2239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2238 output2105)).val
theorem output2239_def : output2239 = (.seq output2238 output2105) := by
  unfold output2239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2239_skip : Flapjack.WordAlloc.isSkip output2239 = false := by
  rw [output2239_def]
  conv => lhs; cbv
  try rfl
theorem node2239_eq : Flapjack.WordAlloc.removeDeadStructural input2239 value1108 value1 value2 = (output2239, value1162, value1) := by
  rw [input2239_def, output2239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2105_eq]
  try dsimp only
  rw [node2238_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2239 input2102)).val
theorem input2240_def : input2240 = (.seq input2239 input2102) := by
  unfold input2240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2239 output2102)).val
theorem output2240_def : output2240 = (.seq output2239 output2102) := by
  unfold output2240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2240_skip : Flapjack.WordAlloc.isSkip output2240 = false := by
  rw [output2240_def]
  conv => lhs; cbv
  try rfl
theorem node2240_eq : Flapjack.WordAlloc.removeDeadStructural input2240 value1106 value1 value2 = (output2240, value1162, value1) := by
  rw [input2240_def, output2240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2102_eq]
  try dsimp only
  rw [node2239_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2240 input2099)).val
theorem input2241_def : input2241 = (.seq input2240 input2099) := by
  unfold input2241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2240 output2099)).val
theorem output2241_def : output2241 = (.seq output2240 output2099) := by
  unfold output2241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2241_skip : Flapjack.WordAlloc.isSkip output2241 = false := by
  rw [output2241_def]
  conv => lhs; cbv
  try rfl
theorem node2241_eq : Flapjack.WordAlloc.removeDeadStructural input2241 value1104 value1 value2 = (output2241, value1162, value1) := by
  rw [input2241_def, output2241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2099_eq]
  try dsimp only
  rw [node2240_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2241 input2096)).val
theorem input2242_def : input2242 = (.seq input2241 input2096) := by
  unfold input2242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2241 output2096)).val
theorem output2242_def : output2242 = (.seq output2241 output2096) := by
  unfold output2242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2242_skip : Flapjack.WordAlloc.isSkip output2242 = false := by
  rw [output2242_def]
  conv => lhs; cbv
  try rfl
theorem node2242_eq : Flapjack.WordAlloc.removeDeadStructural input2242 value1102 value1 value2 = (output2242, value1162, value1) := by
  rw [input2242_def, output2242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2096_eq]
  try dsimp only
  rw [node2241_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2242 input2093)).val
theorem input2243_def : input2243 = (.seq input2242 input2093) := by
  unfold input2243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2242 output2093)).val
theorem output2243_def : output2243 = (.seq output2242 output2093) := by
  unfold output2243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2243_skip : Flapjack.WordAlloc.isSkip output2243 = false := by
  rw [output2243_def]
  conv => lhs; cbv
  try rfl
theorem node2243_eq : Flapjack.WordAlloc.removeDeadStructural input2243 value1100 value1 value2 = (output2243, value1162, value1) := by
  rw [input2243_def, output2243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2093_eq]
  try dsimp only
  rw [node2242_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2243 input2090)).val
theorem input2244_def : input2244 = (.seq input2243 input2090) := by
  unfold input2244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2243 output2090)).val
theorem output2244_def : output2244 = (.seq output2243 output2090) := by
  unfold output2244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2244_skip : Flapjack.WordAlloc.isSkip output2244 = false := by
  rw [output2244_def]
  conv => lhs; cbv
  try rfl
theorem node2244_eq : Flapjack.WordAlloc.removeDeadStructural input2244 value1098 value1 value2 = (output2244, value1162, value1) := by
  rw [input2244_def, output2244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2090_eq]
  try dsimp only
  rw [node2243_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2244 input2087)).val
theorem input2245_def : input2245 = (.seq input2244 input2087) := by
  unfold input2245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2244 output2087)).val
theorem output2245_def : output2245 = (.seq output2244 output2087) := by
  unfold output2245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2245_skip : Flapjack.WordAlloc.isSkip output2245 = false := by
  rw [output2245_def]
  conv => lhs; cbv
  try rfl
theorem node2245_eq : Flapjack.WordAlloc.removeDeadStructural input2245 value1097 value1 value2 = (output2245, value1162, value1) := by
  rw [input2245_def, output2245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2087_eq]
  try dsimp only
  rw [node2244_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2245 input2086)).val
theorem input2246_def : input2246 = (.seq input2245 input2086) := by
  unfold input2246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2245 output2086)).val
theorem output2246_def : output2246 = (.seq output2245 output2086) := by
  unfold output2246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2246_skip : Flapjack.WordAlloc.isSkip output2246 = false := by
  rw [output2246_def]
  conv => lhs; cbv
  try rfl
theorem node2246_eq : Flapjack.WordAlloc.removeDeadStructural input2246 value1096 value1 value2 = (output2246, value1162, value1) := by
  rw [input2246_def, output2246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2086_eq]
  try dsimp only
  rw [node2245_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2246 input2085)).val
theorem input2247_def : input2247 = (.seq input2246 input2085) := by
  unfold input2247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2246 output2085)).val
theorem output2247_def : output2247 = (.seq output2246 output2085) := by
  unfold output2247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2247_skip : Flapjack.WordAlloc.isSkip output2247 = false := by
  rw [output2247_def]
  conv => lhs; cbv
  try rfl
theorem node2247_eq : Flapjack.WordAlloc.removeDeadStructural input2247 value1095 value1 value2 = (output2247, value1162, value1) := by
  rw [input2247_def, output2247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2085_eq]
  try dsimp only
  rw [node2246_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2247 input2084)).val
theorem input2248_def : input2248 = (.seq input2247 input2084) := by
  unfold input2248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2247 output2084)).val
theorem output2248_def : output2248 = (.seq output2247 output2084) := by
  unfold output2248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2248_skip : Flapjack.WordAlloc.isSkip output2248 = false := by
  rw [output2248_def]
  conv => lhs; cbv
  try rfl
theorem node2248_eq : Flapjack.WordAlloc.removeDeadStructural input2248 value1094 value1 value2 = (output2248, value1162, value1) := by
  rw [input2248_def, output2248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2084_eq]
  try dsimp only
  rw [node2247_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2248 input2083)).val
theorem input2249_def : input2249 = (.seq input2248 input2083) := by
  unfold input2249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2248 output2083)).val
theorem output2249_def : output2249 = (.seq output2248 output2083) := by
  unfold output2249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2249_skip : Flapjack.WordAlloc.isSkip output2249 = false := by
  rw [output2249_def]
  conv => lhs; cbv
  try rfl
theorem node2249_eq : Flapjack.WordAlloc.removeDeadStructural input2249 value1093 value1 value2 = (output2249, value1162, value1) := by
  rw [input2249_def, output2249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2083_eq]
  try dsimp only
  rw [node2248_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2249 input2082)).val
theorem input2250_def : input2250 = (.seq input2249 input2082) := by
  unfold input2250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2249 output2082)).val
theorem output2250_def : output2250 = (.seq output2249 output2082) := by
  unfold output2250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2250_skip : Flapjack.WordAlloc.isSkip output2250 = false := by
  rw [output2250_def]
  conv => lhs; cbv
  try rfl
theorem node2250_eq : Flapjack.WordAlloc.removeDeadStructural input2250 value1092 value1 value2 = (output2250, value1162, value1) := by
  rw [input2250_def, output2250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2082_eq]
  try dsimp only
  rw [node2249_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2250 input2081)).val
theorem input2251_def : input2251 = (.seq input2250 input2081) := by
  unfold input2251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2250 output2081)).val
theorem output2251_def : output2251 = (.seq output2250 output2081) := by
  unfold output2251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2251_skip : Flapjack.WordAlloc.isSkip output2251 = false := by
  rw [output2251_def]
  conv => lhs; cbv
  try rfl
theorem node2251_eq : Flapjack.WordAlloc.removeDeadStructural input2251 value1089 value1 value2 = (output2251, value1162, value1) := by
  rw [input2251_def, output2251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2081_eq]
  try dsimp only
  rw [node2250_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2251 input2076)).val
theorem input2252_def : input2252 = (.seq input2251 input2076) := by
  unfold input2252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2251 output2076)).val
theorem output2252_def : output2252 = (.seq output2251 output2076) := by
  unfold output2252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2252_skip : Flapjack.WordAlloc.isSkip output2252 = false := by
  rw [output2252_def]
  conv => lhs; cbv
  try rfl
theorem node2252_eq : Flapjack.WordAlloc.removeDeadStructural input2252 value1089 value1 value2 = (output2252, value1162, value1) := by
  rw [input2252_def, output2252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2076_eq]
  try dsimp only
  rw [node2251_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2252 input2075)).val
theorem input2253_def : input2253 = (.seq input2252 input2075) := by
  unfold input2253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2252 output2075)).val
theorem output2253_def : output2253 = (.seq output2252 output2075) := by
  unfold output2253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2253_skip : Flapjack.WordAlloc.isSkip output2253 = false := by
  rw [output2253_def]
  conv => lhs; cbv
  try rfl
theorem node2253_eq : Flapjack.WordAlloc.removeDeadStructural input2253 value1088 value1 value2 = (output2253, value1162, value1) := by
  rw [input2253_def, output2253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2075_eq]
  try dsimp only
  rw [node2252_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2253 input2074)).val
theorem input2254_def : input2254 = (.seq input2253 input2074) := by
  unfold input2254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2253 output2074)).val
theorem output2254_def : output2254 = (.seq output2253 output2074) := by
  unfold output2254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2254_skip : Flapjack.WordAlloc.isSkip output2254 = false := by
  rw [output2254_def]
  conv => lhs; cbv
  try rfl
theorem node2254_eq : Flapjack.WordAlloc.removeDeadStructural input2254 value1087 value1 value2 = (output2254, value1162, value1) := by
  rw [input2254_def, output2254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2074_eq]
  try dsimp only
  rw [node2253_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2254 input2073)).val
theorem input2255_def : input2255 = (.seq input2254 input2073) := by
  unfold input2255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2254 output2073)).val
theorem output2255_def : output2255 = (.seq output2254 output2073) := by
  unfold output2255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2255_skip : Flapjack.WordAlloc.isSkip output2255 = false := by
  rw [output2255_def]
  conv => lhs; cbv
  try rfl
theorem node2255_eq : Flapjack.WordAlloc.removeDeadStructural input2255 value1046 value1 value2 = (output2255, value1162, value1) := by
  rw [input2255_def, output2255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2073_eq]
  try dsimp only
  rw [node2254_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2255 input1966)).val
theorem input2256_def : input2256 = (.seq input2255 input1966) := by
  unfold input2256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2255 output1966)).val
theorem output2256_def : output2256 = (.seq output2255 output1966) := by
  unfold output2256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2256_skip : Flapjack.WordAlloc.isSkip output2256 = false := by
  rw [output2256_def]
  conv => lhs; cbv
  try rfl
theorem node2256_eq : Flapjack.WordAlloc.removeDeadStructural input2256 value1046 value1 value2 = (output2256, value1162, value1) := by
  rw [input2256_def, output2256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1966_eq]
  try dsimp only
  rw [node2255_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2256 input1965)).val
theorem input2257_def : input2257 = (.seq input2256 input1965) := by
  unfold input2257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2256 output1965)).val
theorem output2257_def : output2257 = (.seq output2256 output1965) := by
  unfold output2257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2257_skip : Flapjack.WordAlloc.isSkip output2257 = false := by
  rw [output2257_def]
  conv => lhs; cbv
  try rfl
theorem node2257_eq : Flapjack.WordAlloc.removeDeadStructural input2257 value1044 value1 value2 = (output2257, value1162, value1) := by
  rw [input2257_def, output2257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1965_eq]
  try dsimp only
  rw [node2256_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2257 input1962)).val
theorem input2258_def : input2258 = (.seq input2257 input1962) := by
  unfold input2258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2257 output1962)).val
theorem output2258_def : output2258 = (.seq output2257 output1962) := by
  unfold output2258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2258_skip : Flapjack.WordAlloc.isSkip output2258 = false := by
  rw [output2258_def]
  conv => lhs; cbv
  try rfl
theorem node2258_eq : Flapjack.WordAlloc.removeDeadStructural input2258 value1042 value1 value2 = (output2258, value1162, value1) := by
  rw [input2258_def, output2258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1962_eq]
  try dsimp only
  rw [node2257_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2258 input1959)).val
theorem input2259_def : input2259 = (.seq input2258 input1959) := by
  unfold input2259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2258 output1959)).val
theorem output2259_def : output2259 = (.seq output2258 output1959) := by
  unfold output2259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2259_skip : Flapjack.WordAlloc.isSkip output2259 = false := by
  rw [output2259_def]
  conv => lhs; cbv
  try rfl
theorem node2259_eq : Flapjack.WordAlloc.removeDeadStructural input2259 value1040 value1 value2 = (output2259, value1162, value1) := by
  rw [input2259_def, output2259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1959_eq]
  try dsimp only
  rw [node2258_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2259 input1956)).val
theorem input2260_def : input2260 = (.seq input2259 input1956) := by
  unfold input2260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2259 output1956)).val
theorem output2260_def : output2260 = (.seq output2259 output1956) := by
  unfold output2260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2260_skip : Flapjack.WordAlloc.isSkip output2260 = false := by
  rw [output2260_def]
  conv => lhs; cbv
  try rfl
theorem node2260_eq : Flapjack.WordAlloc.removeDeadStructural input2260 value1038 value1 value2 = (output2260, value1162, value1) := by
  rw [input2260_def, output2260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1956_eq]
  try dsimp only
  rw [node2259_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2260 input1953)).val
theorem input2261_def : input2261 = (.seq input2260 input1953) := by
  unfold input2261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2260 output1953)).val
theorem output2261_def : output2261 = (.seq output2260 output1953) := by
  unfold output2261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2261_skip : Flapjack.WordAlloc.isSkip output2261 = false := by
  rw [output2261_def]
  conv => lhs; cbv
  try rfl
theorem node2261_eq : Flapjack.WordAlloc.removeDeadStructural input2261 value1036 value1 value2 = (output2261, value1162, value1) := by
  rw [input2261_def, output2261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1953_eq]
  try dsimp only
  rw [node2260_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2261 input1950)).val
theorem input2262_def : input2262 = (.seq input2261 input1950) := by
  unfold input2262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2261 output1950)).val
theorem output2262_def : output2262 = (.seq output2261 output1950) := by
  unfold output2262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2262_skip : Flapjack.WordAlloc.isSkip output2262 = false := by
  rw [output2262_def]
  conv => lhs; cbv
  try rfl
theorem node2262_eq : Flapjack.WordAlloc.removeDeadStructural input2262 value1034 value1 value2 = (output2262, value1162, value1) := by
  rw [input2262_def, output2262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1950_eq]
  try dsimp only
  rw [node2261_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2262 input1947)).val
theorem input2263_def : input2263 = (.seq input2262 input1947) := by
  unfold input2263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2262 output1947)).val
theorem output2263_def : output2263 = (.seq output2262 output1947) := by
  unfold output2263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2263_skip : Flapjack.WordAlloc.isSkip output2263 = false := by
  rw [output2263_def]
  conv => lhs; cbv
  try rfl
theorem node2263_eq : Flapjack.WordAlloc.removeDeadStructural input2263 value1032 value1 value2 = (output2263, value1162, value1) := by
  rw [input2263_def, output2263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1947_eq]
  try dsimp only
  rw [node2262_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2263 input1944)).val
theorem input2264_def : input2264 = (.seq input2263 input1944) := by
  unfold input2264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2263 output1944)).val
theorem output2264_def : output2264 = (.seq output2263 output1944) := by
  unfold output2264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2264_skip : Flapjack.WordAlloc.isSkip output2264 = false := by
  rw [output2264_def]
  conv => lhs; cbv
  try rfl
theorem node2264_eq : Flapjack.WordAlloc.removeDeadStructural input2264 value1030 value1 value2 = (output2264, value1162, value1) := by
  rw [input2264_def, output2264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1944_eq]
  try dsimp only
  rw [node2263_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2264 input1941)).val
theorem input2265_def : input2265 = (.seq input2264 input1941) := by
  unfold input2265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2264 output1941)).val
theorem output2265_def : output2265 = (.seq output2264 output1941) := by
  unfold output2265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2265_skip : Flapjack.WordAlloc.isSkip output2265 = false := by
  rw [output2265_def]
  conv => lhs; cbv
  try rfl
theorem node2265_eq : Flapjack.WordAlloc.removeDeadStructural input2265 value1028 value1 value2 = (output2265, value1162, value1) := by
  rw [input2265_def, output2265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1941_eq]
  try dsimp only
  rw [node2264_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2265 input1938)).val
theorem input2266_def : input2266 = (.seq input2265 input1938) := by
  unfold input2266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2265 output1938)).val
theorem output2266_def : output2266 = (.seq output2265 output1938) := by
  unfold output2266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2266_skip : Flapjack.WordAlloc.isSkip output2266 = false := by
  rw [output2266_def]
  conv => lhs; cbv
  try rfl
theorem node2266_eq : Flapjack.WordAlloc.removeDeadStructural input2266 value1026 value1 value2 = (output2266, value1162, value1) := by
  rw [input2266_def, output2266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1938_eq]
  try dsimp only
  rw [node2265_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2266 input1935)).val
theorem input2267_def : input2267 = (.seq input2266 input1935) := by
  unfold input2267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2266 output1935)).val
theorem output2267_def : output2267 = (.seq output2266 output1935) := by
  unfold output2267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2267_skip : Flapjack.WordAlloc.isSkip output2267 = false := by
  rw [output2267_def]
  conv => lhs; cbv
  try rfl
theorem node2267_eq : Flapjack.WordAlloc.removeDeadStructural input2267 value1024 value1 value2 = (output2267, value1162, value1) := by
  rw [input2267_def, output2267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1935_eq]
  try dsimp only
  rw [node2266_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2267 input1932)).val
theorem input2268_def : input2268 = (.seq input2267 input1932) := by
  unfold input2268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2267 output1932)).val
theorem output2268_def : output2268 = (.seq output2267 output1932) := by
  unfold output2268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2268_skip : Flapjack.WordAlloc.isSkip output2268 = false := by
  rw [output2268_def]
  conv => lhs; cbv
  try rfl
theorem node2268_eq : Flapjack.WordAlloc.removeDeadStructural input2268 value1022 value1 value2 = (output2268, value1162, value1) := by
  rw [input2268_def, output2268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1932_eq]
  try dsimp only
  rw [node2267_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2268 input1929)).val
theorem input2269_def : input2269 = (.seq input2268 input1929) := by
  unfold input2269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2268 output1929)).val
theorem output2269_def : output2269 = (.seq output2268 output1929) := by
  unfold output2269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2269_skip : Flapjack.WordAlloc.isSkip output2269 = false := by
  rw [output2269_def]
  conv => lhs; cbv
  try rfl
theorem node2269_eq : Flapjack.WordAlloc.removeDeadStructural input2269 value1020 value1 value2 = (output2269, value1162, value1) := by
  rw [input2269_def, output2269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1929_eq]
  try dsimp only
  rw [node2268_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2269 input1926)).val
theorem input2270_def : input2270 = (.seq input2269 input1926) := by
  unfold input2270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2269 output1926)).val
theorem output2270_def : output2270 = (.seq output2269 output1926) := by
  unfold output2270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2270_skip : Flapjack.WordAlloc.isSkip output2270 = false := by
  rw [output2270_def]
  conv => lhs; cbv
  try rfl
theorem node2270_eq : Flapjack.WordAlloc.removeDeadStructural input2270 value1018 value1 value2 = (output2270, value1162, value1) := by
  rw [input2270_def, output2270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1926_eq]
  try dsimp only
  rw [node2269_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2270 input1923)).val
theorem input2271_def : input2271 = (.seq input2270 input1923) := by
  unfold input2271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2270 output1923)).val
theorem output2271_def : output2271 = (.seq output2270 output1923) := by
  unfold output2271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2271_skip : Flapjack.WordAlloc.isSkip output2271 = false := by
  rw [output2271_def]
  conv => lhs; cbv
  try rfl
theorem node2271_eq : Flapjack.WordAlloc.removeDeadStructural input2271 value1016 value1 value2 = (output2271, value1162, value1) := by
  rw [input2271_def, output2271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1923_eq]
  try dsimp only
  rw [node2270_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2271 input1920)).val
theorem input2272_def : input2272 = (.seq input2271 input1920) := by
  unfold input2272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2271 output1920)).val
theorem output2272_def : output2272 = (.seq output2271 output1920) := by
  unfold output2272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2272_skip : Flapjack.WordAlloc.isSkip output2272 = false := by
  rw [output2272_def]
  conv => lhs; cbv
  try rfl
theorem node2272_eq : Flapjack.WordAlloc.removeDeadStructural input2272 value1014 value1 value2 = (output2272, value1162, value1) := by
  rw [input2272_def, output2272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1920_eq]
  try dsimp only
  rw [node2271_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2272 input1917)).val
theorem input2273_def : input2273 = (.seq input2272 input1917) := by
  unfold input2273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2272 output1917)).val
theorem output2273_def : output2273 = (.seq output2272 output1917) := by
  unfold output2273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2273_skip : Flapjack.WordAlloc.isSkip output2273 = false := by
  rw [output2273_def]
  conv => lhs; cbv
  try rfl
theorem node2273_eq : Flapjack.WordAlloc.removeDeadStructural input2273 value1012 value1 value2 = (output2273, value1162, value1) := by
  rw [input2273_def, output2273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1917_eq]
  try dsimp only
  rw [node2272_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2273 input1914)).val
theorem input2274_def : input2274 = (.seq input2273 input1914) := by
  unfold input2274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2273 output1914)).val
theorem output2274_def : output2274 = (.seq output2273 output1914) := by
  unfold output2274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2274_skip : Flapjack.WordAlloc.isSkip output2274 = false := by
  rw [output2274_def]
  conv => lhs; cbv
  try rfl
theorem node2274_eq : Flapjack.WordAlloc.removeDeadStructural input2274 value1010 value1 value2 = (output2274, value1162, value1) := by
  rw [input2274_def, output2274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1914_eq]
  try dsimp only
  rw [node2273_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2274 input1911)).val
theorem input2275_def : input2275 = (.seq input2274 input1911) := by
  unfold input2275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2274 output1911)).val
theorem output2275_def : output2275 = (.seq output2274 output1911) := by
  unfold output2275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2275_skip : Flapjack.WordAlloc.isSkip output2275 = false := by
  rw [output2275_def]
  conv => lhs; cbv
  try rfl
theorem node2275_eq : Flapjack.WordAlloc.removeDeadStructural input2275 value1008 value1 value2 = (output2275, value1162, value1) := by
  rw [input2275_def, output2275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1911_eq]
  try dsimp only
  rw [node2274_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2275 input1908)).val
theorem input2276_def : input2276 = (.seq input2275 input1908) := by
  unfold input2276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2275 output1908)).val
theorem output2276_def : output2276 = (.seq output2275 output1908) := by
  unfold output2276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2276_skip : Flapjack.WordAlloc.isSkip output2276 = false := by
  rw [output2276_def]
  conv => lhs; cbv
  try rfl
theorem node2276_eq : Flapjack.WordAlloc.removeDeadStructural input2276 value1006 value1 value2 = (output2276, value1162, value1) := by
  rw [input2276_def, output2276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1908_eq]
  try dsimp only
  rw [node2275_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2276 input1905)).val
theorem input2277_def : input2277 = (.seq input2276 input1905) := by
  unfold input2277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2276 output1905)).val
theorem output2277_def : output2277 = (.seq output2276 output1905) := by
  unfold output2277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2277_skip : Flapjack.WordAlloc.isSkip output2277 = false := by
  rw [output2277_def]
  conv => lhs; cbv
  try rfl
theorem node2277_eq : Flapjack.WordAlloc.removeDeadStructural input2277 value1004 value1 value2 = (output2277, value1162, value1) := by
  rw [input2277_def, output2277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1905_eq]
  try dsimp only
  rw [node2276_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2277 input1902)).val
theorem input2278_def : input2278 = (.seq input2277 input1902) := by
  unfold input2278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2277 output1902)).val
theorem output2278_def : output2278 = (.seq output2277 output1902) := by
  unfold output2278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2278_skip : Flapjack.WordAlloc.isSkip output2278 = false := by
  rw [output2278_def]
  conv => lhs; cbv
  try rfl
theorem node2278_eq : Flapjack.WordAlloc.removeDeadStructural input2278 value1002 value1 value2 = (output2278, value1162, value1) := by
  rw [input2278_def, output2278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1902_eq]
  try dsimp only
  rw [node2277_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2278 input1899)).val
theorem input2279_def : input2279 = (.seq input2278 input1899) := by
  unfold input2279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2278 output1899)).val
theorem output2279_def : output2279 = (.seq output2278 output1899) := by
  unfold output2279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2279_skip : Flapjack.WordAlloc.isSkip output2279 = false := by
  rw [output2279_def]
  conv => lhs; cbv
  try rfl
theorem node2279_eq : Flapjack.WordAlloc.removeDeadStructural input2279 value1000 value1 value2 = (output2279, value1162, value1) := by
  rw [input2279_def, output2279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1899_eq]
  try dsimp only
  rw [node2278_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2279 input1896)).val
theorem input2280_def : input2280 = (.seq input2279 input1896) := by
  unfold input2280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2279 output1896)).val
theorem output2280_def : output2280 = (.seq output2279 output1896) := by
  unfold output2280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2280_skip : Flapjack.WordAlloc.isSkip output2280 = false := by
  rw [output2280_def]
  conv => lhs; cbv
  try rfl
theorem node2280_eq : Flapjack.WordAlloc.removeDeadStructural input2280 value998 value1 value2 = (output2280, value1162, value1) := by
  rw [input2280_def, output2280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1896_eq]
  try dsimp only
  rw [node2279_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2280 input1893)).val
theorem input2281_def : input2281 = (.seq input2280 input1893) := by
  unfold input2281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2280 output1893)).val
theorem output2281_def : output2281 = (.seq output2280 output1893) := by
  unfold output2281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2281_skip : Flapjack.WordAlloc.isSkip output2281 = false := by
  rw [output2281_def]
  conv => lhs; cbv
  try rfl
theorem node2281_eq : Flapjack.WordAlloc.removeDeadStructural input2281 value997 value1 value2 = (output2281, value1162, value1) := by
  rw [input2281_def, output2281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1893_eq]
  try dsimp only
  rw [node2280_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2281 input1892)).val
theorem input2282_def : input2282 = (.seq input2281 input1892) := by
  unfold input2282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2281 output1892)).val
theorem output2282_def : output2282 = (.seq output2281 output1892) := by
  unfold output2282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2282_skip : Flapjack.WordAlloc.isSkip output2282 = false := by
  rw [output2282_def]
  conv => lhs; cbv
  try rfl
theorem node2282_eq : Flapjack.WordAlloc.removeDeadStructural input2282 value996 value1 value2 = (output2282, value1162, value1) := by
  rw [input2282_def, output2282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1892_eq]
  try dsimp only
  rw [node2281_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2282 input1891)).val
theorem input2283_def : input2283 = (.seq input2282 input1891) := by
  unfold input2283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2282 output1891)).val
theorem output2283_def : output2283 = (.seq output2282 output1891) := by
  unfold output2283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2283_skip : Flapjack.WordAlloc.isSkip output2283 = false := by
  rw [output2283_def]
  conv => lhs; cbv
  try rfl
theorem node2283_eq : Flapjack.WordAlloc.removeDeadStructural input2283 value995 value1 value2 = (output2283, value1162, value1) := by
  rw [input2283_def, output2283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1891_eq]
  try dsimp only
  rw [node2282_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2283 input1890)).val
theorem input2284_def : input2284 = (.seq input2283 input1890) := by
  unfold input2284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2283 output1890)).val
theorem output2284_def : output2284 = (.seq output2283 output1890) := by
  unfold output2284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2284_skip : Flapjack.WordAlloc.isSkip output2284 = false := by
  rw [output2284_def]
  conv => lhs; cbv
  try rfl
theorem node2284_eq : Flapjack.WordAlloc.removeDeadStructural input2284 value994 value1 value2 = (output2284, value1162, value1) := by
  rw [input2284_def, output2284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1890_eq]
  try dsimp only
  rw [node2283_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2284 input1889)).val
theorem input2285_def : input2285 = (.seq input2284 input1889) := by
  unfold input2285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2284 output1889)).val
theorem output2285_def : output2285 = (.seq output2284 output1889) := by
  unfold output2285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2285_skip : Flapjack.WordAlloc.isSkip output2285 = false := by
  rw [output2285_def]
  conv => lhs; cbv
  try rfl
theorem node2285_eq : Flapjack.WordAlloc.removeDeadStructural input2285 value993 value1 value2 = (output2285, value1162, value1) := by
  rw [input2285_def, output2285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1889_eq]
  try dsimp only
  rw [node2284_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2285 input1888)).val
theorem input2286_def : input2286 = (.seq input2285 input1888) := by
  unfold input2286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2285 output1888)).val
theorem output2286_def : output2286 = (.seq output2285 output1888) := by
  unfold output2286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2286_skip : Flapjack.WordAlloc.isSkip output2286 = false := by
  rw [output2286_def]
  conv => lhs; cbv
  try rfl
theorem node2286_eq : Flapjack.WordAlloc.removeDeadStructural input2286 value992 value1 value2 = (output2286, value1162, value1) := by
  rw [input2286_def, output2286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1888_eq]
  try dsimp only
  rw [node2285_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2286 input1887)).val
theorem input2287_def : input2287 = (.seq input2286 input1887) := by
  unfold input2287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2286)).val
theorem output2287_def : output2287 = (output2286) := by
  unfold output2287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2287_skip : Flapjack.WordAlloc.isSkip output2287 = false := by
  rw [output2287_def]
  conv => lhs; cbv
  try rfl
theorem node2287_eq : Flapjack.WordAlloc.removeDeadStructural input2287 value992 value1 value2 = (output2287, value1162, value1) := by
  rw [input2287_def, output2287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1887_eq]
  try dsimp only
  rw [node2286_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2287 input1886)).val
theorem input2288_def : input2288 = (.seq input2287 input1886) := by
  unfold input2288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2287)).val
theorem output2288_def : output2288 = (output2287) := by
  unfold output2288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2288_skip : Flapjack.WordAlloc.isSkip output2288 = false := by
  rw [output2288_def]
  conv => lhs; cbv
  try rfl
theorem node2288_eq : Flapjack.WordAlloc.removeDeadStructural input2288 value992 value1 value2 = (output2288, value1162, value1) := by
  rw [input2288_def, output2288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1886_eq]
  try dsimp only
  rw [node2287_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2288 input1885)).val
theorem input2289_def : input2289 = (.seq input2288 input1885) := by
  unfold input2289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2288)).val
theorem output2289_def : output2289 = (output2288) := by
  unfold output2289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2289_skip : Flapjack.WordAlloc.isSkip output2289 = false := by
  rw [output2289_def]
  conv => lhs; cbv
  try rfl
theorem node2289_eq : Flapjack.WordAlloc.removeDeadStructural input2289 value992 value1 value2 = (output2289, value1162, value1) := by
  rw [input2289_def, output2289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1885_eq]
  try dsimp only
  rw [node2288_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2289 input1884)).val
theorem input2290_def : input2290 = (.seq input2289 input1884) := by
  unfold input2290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2289)).val
theorem output2290_def : output2290 = (output2289) := by
  unfold output2290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2290_skip : Flapjack.WordAlloc.isSkip output2290 = false := by
  rw [output2290_def]
  conv => lhs; cbv
  try rfl
theorem node2290_eq : Flapjack.WordAlloc.removeDeadStructural input2290 value992 value1 value2 = (output2290, value1162, value1) := by
  rw [input2290_def, output2290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1884_eq]
  try dsimp only
  rw [node2289_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2290 input1883)).val
theorem input2291_def : input2291 = (.seq input2290 input1883) := by
  unfold input2291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2290)).val
theorem output2291_def : output2291 = (output2290) := by
  unfold output2291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2291_skip : Flapjack.WordAlloc.isSkip output2291 = false := by
  rw [output2291_def]
  conv => lhs; cbv
  try rfl
theorem node2291_eq : Flapjack.WordAlloc.removeDeadStructural input2291 value992 value1 value2 = (output2291, value1162, value1) := by
  rw [input2291_def, output2291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1883_eq]
  try dsimp only
  rw [node2290_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2291 input1882)).val
theorem input2292_def : input2292 = (.seq input2291 input1882) := by
  unfold input2292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2291)).val
theorem output2292_def : output2292 = (output2291) := by
  unfold output2292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2292_skip : Flapjack.WordAlloc.isSkip output2292 = false := by
  rw [output2292_def]
  conv => lhs; cbv
  try rfl
theorem node2292_eq : Flapjack.WordAlloc.removeDeadStructural input2292 value992 value1 value2 = (output2292, value1162, value1) := by
  rw [input2292_def, output2292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1882_eq]
  try dsimp only
  rw [node2291_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2292 input1881)).val
theorem input2293_def : input2293 = (.seq input2292 input1881) := by
  unfold input2293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2292 output1881)).val
theorem output2293_def : output2293 = (.seq output2292 output1881) := by
  unfold output2293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2293_skip : Flapjack.WordAlloc.isSkip output2293 = false := by
  rw [output2293_def]
  conv => lhs; cbv
  try rfl
theorem node2293_eq : Flapjack.WordAlloc.removeDeadStructural input2293 value991 value1 value2 = (output2293, value1162, value1) := by
  rw [input2293_def, output2293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1881_eq]
  try dsimp only
  rw [node2292_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2293 input1880)).val
theorem input2294_def : input2294 = (.seq input2293 input1880) := by
  unfold input2294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2293 output1880)).val
theorem output2294_def : output2294 = (.seq output2293 output1880) := by
  unfold output2294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2294_skip : Flapjack.WordAlloc.isSkip output2294 = false := by
  rw [output2294_def]
  conv => lhs; cbv
  try rfl
theorem node2294_eq : Flapjack.WordAlloc.removeDeadStructural input2294 value990 value1 value2 = (output2294, value1162, value1) := by
  rw [input2294_def, output2294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1880_eq]
  try dsimp only
  rw [node2293_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2294 input1879)).val
theorem input2295_def : input2295 = (.seq input2294 input1879) := by
  unfold input2295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2294 output1879)).val
theorem output2295_def : output2295 = (.seq output2294 output1879) := by
  unfold output2295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2295_skip : Flapjack.WordAlloc.isSkip output2295 = false := by
  rw [output2295_def]
  conv => lhs; cbv
  try rfl
theorem node2295_eq : Flapjack.WordAlloc.removeDeadStructural input2295 value989 value1 value2 = (output2295, value1162, value1) := by
  rw [input2295_def, output2295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1879_eq]
  try dsimp only
  rw [node2294_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2295 input1878)).val
theorem input2296_def : input2296 = (.seq input2295 input1878) := by
  unfold input2296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2295 output1878)).val
theorem output2296_def : output2296 = (.seq output2295 output1878) := by
  unfold output2296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2296_skip : Flapjack.WordAlloc.isSkip output2296 = false := by
  rw [output2296_def]
  conv => lhs; cbv
  try rfl
theorem node2296_eq : Flapjack.WordAlloc.removeDeadStructural input2296 value988 value1 value2 = (output2296, value1162, value1) := by
  rw [input2296_def, output2296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1878_eq]
  try dsimp only
  rw [node2295_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2296 input1877)).val
theorem input2297_def : input2297 = (.seq input2296 input1877) := by
  unfold input2297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2296 output1877)).val
theorem output2297_def : output2297 = (.seq output2296 output1877) := by
  unfold output2297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2297_skip : Flapjack.WordAlloc.isSkip output2297 = false := by
  rw [output2297_def]
  conv => lhs; cbv
  try rfl
theorem node2297_eq : Flapjack.WordAlloc.removeDeadStructural input2297 value987 value1 value2 = (output2297, value1162, value1) := by
  rw [input2297_def, output2297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1877_eq]
  try dsimp only
  rw [node2296_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2297 input1876)).val
theorem input2298_def : input2298 = (.seq input2297 input1876) := by
  unfold input2298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2297 output1876)).val
theorem output2298_def : output2298 = (.seq output2297 output1876) := by
  unfold output2298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2298_skip : Flapjack.WordAlloc.isSkip output2298 = false := by
  rw [output2298_def]
  conv => lhs; cbv
  try rfl
theorem node2298_eq : Flapjack.WordAlloc.removeDeadStructural input2298 value986 value1 value2 = (output2298, value1162, value1) := by
  rw [input2298_def, output2298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1876_eq]
  try dsimp only
  rw [node2297_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2298 input1875)).val
theorem input2299_def : input2299 = (.seq input2298 input1875) := by
  unfold input2299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2298 output1875)).val
theorem output2299_def : output2299 = (.seq output2298 output1875) := by
  unfold output2299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2299_skip : Flapjack.WordAlloc.isSkip output2299 = false := by
  rw [output2299_def]
  conv => lhs; cbv
  try rfl
theorem node2299_eq : Flapjack.WordAlloc.removeDeadStructural input2299 value983 value1 value2 = (output2299, value1162, value1) := by
  rw [input2299_def, output2299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1875_eq]
  try dsimp only
  rw [node2298_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2299 input1870)).val
theorem input2300_def : input2300 = (.seq input2299 input1870) := by
  unfold input2300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2299 output1870)).val
theorem output2300_def : output2300 = (.seq output2299 output1870) := by
  unfold output2300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2300_skip : Flapjack.WordAlloc.isSkip output2300 = false := by
  rw [output2300_def]
  conv => lhs; cbv
  try rfl
theorem node2300_eq : Flapjack.WordAlloc.removeDeadStructural input2300 value983 value1 value2 = (output2300, value1162, value1) := by
  rw [input2300_def, output2300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1870_eq]
  try dsimp only
  rw [node2299_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2300 input1869)).val
theorem input2301_def : input2301 = (.seq input2300 input1869) := by
  unfold input2301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2300 output1869)).val
theorem output2301_def : output2301 = (.seq output2300 output1869) := by
  unfold output2301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2301_skip : Flapjack.WordAlloc.isSkip output2301 = false := by
  rw [output2301_def]
  conv => lhs; cbv
  try rfl
theorem node2301_eq : Flapjack.WordAlloc.removeDeadStructural input2301 value982 value1 value2 = (output2301, value1162, value1) := by
  rw [input2301_def, output2301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1869_eq]
  try dsimp only
  rw [node2300_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2301 input1868)).val
theorem input2302_def : input2302 = (.seq input2301 input1868) := by
  unfold input2302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2301 output1868)).val
theorem output2302_def : output2302 = (.seq output2301 output1868) := by
  unfold output2302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2302_skip : Flapjack.WordAlloc.isSkip output2302 = false := by
  rw [output2302_def]
  conv => lhs; cbv
  try rfl
theorem node2302_eq : Flapjack.WordAlloc.removeDeadStructural input2302 value981 value1 value2 = (output2302, value1162, value1) := by
  rw [input2302_def, output2302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1868_eq]
  try dsimp only
  rw [node2301_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2302 input1867)).val
theorem input2303_def : input2303 = (.seq input2302 input1867) := by
  unfold input2303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2302 output1867)).val
theorem output2303_def : output2303 = (.seq output2302 output1867) := by
  unfold output2303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2303_skip : Flapjack.WordAlloc.isSkip output2303 = false := by
  rw [output2303_def]
  conv => lhs; cbv
  try rfl
theorem node2303_eq : Flapjack.WordAlloc.removeDeadStructural input2303 value980 value1 value2 = (output2303, value1162, value1) := by
  rw [input2303_def, output2303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1867_eq]
  try dsimp only
  rw [node2302_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node2303_eq
end InitECandidate.Proofs.DeadStages783
