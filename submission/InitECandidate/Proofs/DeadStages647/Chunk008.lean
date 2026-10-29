import InitECandidate.Proofs.DeadStages647.Chunk007
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages647
@[irreducible, cbv_opaque] def input2048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2047 input1716)).val
theorem input2048_def : input2048 = (.seq input2047 input1716) := by
  unfold input2048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2047 output1716)).val
theorem output2048_def : output2048 = (.seq output2047 output1716) := by
  unfold output2048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2048_skip : Flapjack.WordAlloc.isSkip output2048 = false := by
  rw [output2048_def]
  conv => lhs; cbv
  try rfl
theorem node2048_eq : Flapjack.WordAlloc.removeDeadStructural input2048 value947 value1 value2 = (output2048, value1100, value1) := by
  rw [input2048_def, output2048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1716_eq]
  try dsimp only
  rw [node2047_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2048 input1709)).val
theorem input2049_def : input2049 = (.seq input2048 input1709) := by
  unfold input2049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2048 output1709)).val
theorem output2049_def : output2049 = (.seq output2048 output1709) := by
  unfold output2049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2049_skip : Flapjack.WordAlloc.isSkip output2049 = false := by
  rw [output2049_def]
  conv => lhs; cbv
  try rfl
theorem node2049_eq : Flapjack.WordAlloc.removeDeadStructural input2049 value946 value1 value2 = (output2049, value1100, value1) := by
  rw [input2049_def, output2049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1709_eq]
  try dsimp only
  rw [node2048_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2049 input1708)).val
theorem input2050_def : input2050 = (.seq input2049 input1708) := by
  unfold input2050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2049 output1708)).val
theorem output2050_def : output2050 = (.seq output2049 output1708) := by
  unfold output2050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2050_skip : Flapjack.WordAlloc.isSkip output2050 = false := by
  rw [output2050_def]
  conv => lhs; cbv
  try rfl
theorem node2050_eq : Flapjack.WordAlloc.removeDeadStructural input2050 value943 value1 value2 = (output2050, value1100, value1) := by
  rw [input2050_def, output2050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1708_eq]
  try dsimp only
  rw [node2049_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2050 input1703)).val
theorem input2051_def : input2051 = (.seq input2050 input1703) := by
  unfold input2051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2050 output1703)).val
theorem output2051_def : output2051 = (.seq output2050 output1703) := by
  unfold output2051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2051_skip : Flapjack.WordAlloc.isSkip output2051 = false := by
  rw [output2051_def]
  conv => lhs; cbv
  try rfl
theorem node2051_eq : Flapjack.WordAlloc.removeDeadStructural input2051 value942 value1 value2 = (output2051, value1100, value1) := by
  rw [input2051_def, output2051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1703_eq]
  try dsimp only
  rw [node2050_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2051 input1702)).val
theorem input2052_def : input2052 = (.seq input2051 input1702) := by
  unfold input2052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2051 output1702)).val
theorem output2052_def : output2052 = (.seq output2051 output1702) := by
  unfold output2052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2052_skip : Flapjack.WordAlloc.isSkip output2052 = false := by
  rw [output2052_def]
  conv => lhs; cbv
  try rfl
theorem node2052_eq : Flapjack.WordAlloc.removeDeadStructural input2052 value939 value1 value2 = (output2052, value1100, value1) := by
  rw [input2052_def, output2052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1702_eq]
  try dsimp only
  rw [node2051_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2052 input1697)).val
theorem input2053_def : input2053 = (.seq input2052 input1697) := by
  unfold input2053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2052 output1697)).val
theorem output2053_def : output2053 = (.seq output2052 output1697) := by
  unfold output2053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2053_skip : Flapjack.WordAlloc.isSkip output2053 = false := by
  rw [output2053_def]
  conv => lhs; cbv
  try rfl
theorem node2053_eq : Flapjack.WordAlloc.removeDeadStructural input2053 value938 value1 value2 = (output2053, value1100, value1) := by
  rw [input2053_def, output2053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1697_eq]
  try dsimp only
  rw [node2052_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2053 input1696)).val
theorem input2054_def : input2054 = (.seq input2053 input1696) := by
  unfold input2054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2053)).val
theorem output2054_def : output2054 = (output2053) := by
  unfold output2054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2054_skip : Flapjack.WordAlloc.isSkip output2054 = false := by
  rw [output2054_def]
  conv => lhs; cbv
  try rfl
theorem node2054_eq : Flapjack.WordAlloc.removeDeadStructural input2054 value938 value1 value2 = (output2054, value1100, value1) := by
  rw [input2054_def, output2054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1696_eq]
  try dsimp only
  rw [node2053_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2054 input1695)).val
theorem input2055_def : input2055 = (.seq input2054 input1695) := by
  unfold input2055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2054)).val
theorem output2055_def : output2055 = (output2054) := by
  unfold output2055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2055_skip : Flapjack.WordAlloc.isSkip output2055 = false := by
  rw [output2055_def]
  conv => lhs; cbv
  try rfl
theorem node2055_eq : Flapjack.WordAlloc.removeDeadStructural input2055 value938 value1 value2 = (output2055, value1100, value1) := by
  rw [input2055_def, output2055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1695_eq]
  try dsimp only
  rw [node2054_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2055 input1694)).val
theorem input2056_def : input2056 = (.seq input2055 input1694) := by
  unfold input2056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2055 output1694)).val
theorem output2056_def : output2056 = (.seq output2055 output1694) := by
  unfold output2056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2056_skip : Flapjack.WordAlloc.isSkip output2056 = false := by
  rw [output2056_def]
  conv => lhs; cbv
  try rfl
theorem node2056_eq : Flapjack.WordAlloc.removeDeadStructural input2056 value935 value1 value2 = (output2056, value1100, value1) := by
  rw [input2056_def, output2056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1694_eq]
  try dsimp only
  rw [node2055_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2056 input1689)).val
theorem input2057_def : input2057 = (.seq input2056 input1689) := by
  unfold input2057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2056 output1689)).val
theorem output2057_def : output2057 = (.seq output2056 output1689) := by
  unfold output2057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2057_skip : Flapjack.WordAlloc.isSkip output2057 = false := by
  rw [output2057_def]
  conv => lhs; cbv
  try rfl
theorem node2057_eq : Flapjack.WordAlloc.removeDeadStructural input2057 value932 value1 value2 = (output2057, value1100, value1) := by
  rw [input2057_def, output2057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1689_eq]
  try dsimp only
  rw [node2056_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2057 input1684)).val
theorem input2058_def : input2058 = (.seq input2057 input1684) := by
  unfold input2058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2057 output1684)).val
theorem output2058_def : output2058 = (.seq output2057 output1684) := by
  unfold output2058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2058_skip : Flapjack.WordAlloc.isSkip output2058 = false := by
  rw [output2058_def]
  conv => lhs; cbv
  try rfl
theorem node2058_eq : Flapjack.WordAlloc.removeDeadStructural input2058 value928 value1 value2 = (output2058, value1100, value1) := by
  rw [input2058_def, output2058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1684_eq]
  try dsimp only
  rw [node2057_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2058 input1677)).val
theorem input2059_def : input2059 = (.seq input2058 input1677) := by
  unfold input2059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2058)).val
theorem output2059_def : output2059 = (output2058) := by
  unfold output2059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2059_skip : Flapjack.WordAlloc.isSkip output2059 = false := by
  rw [output2059_def]
  conv => lhs; cbv
  try rfl
theorem node2059_eq : Flapjack.WordAlloc.removeDeadStructural input2059 value928 value1 value2 = (output2059, value1100, value1) := by
  rw [input2059_def, output2059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1677_eq]
  try dsimp only
  rw [node2058_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2059 input1676)).val
theorem input2060_def : input2060 = (.seq input2059 input1676) := by
  unfold input2060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2059)).val
theorem output2060_def : output2060 = (output2059) := by
  unfold output2060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2060_skip : Flapjack.WordAlloc.isSkip output2060 = false := by
  rw [output2060_def]
  conv => lhs; cbv
  try rfl
theorem node2060_eq : Flapjack.WordAlloc.removeDeadStructural input2060 value928 value1 value2 = (output2060, value1100, value1) := by
  rw [input2060_def, output2060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1676_eq]
  try dsimp only
  rw [node2059_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2060 input1675)).val
theorem input2061_def : input2061 = (.seq input2060 input1675) := by
  unfold input2061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2060 output1675)).val
theorem output2061_def : output2061 = (.seq output2060 output1675) := by
  unfold output2061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2061_skip : Flapjack.WordAlloc.isSkip output2061 = false := by
  rw [output2061_def]
  conv => lhs; cbv
  try rfl
theorem node2061_eq : Flapjack.WordAlloc.removeDeadStructural input2061 value927 value1 value2 = (output2061, value1100, value1) := by
  rw [input2061_def, output2061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1675_eq]
  try dsimp only
  rw [node2060_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2061 input1674)).val
theorem input2062_def : input2062 = (.seq input2061 input1674) := by
  unfold input2062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2061 output1674)).val
theorem output2062_def : output2062 = (.seq output2061 output1674) := by
  unfold output2062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2062_skip : Flapjack.WordAlloc.isSkip output2062 = false := by
  rw [output2062_def]
  conv => lhs; cbv
  try rfl
theorem node2062_eq : Flapjack.WordAlloc.removeDeadStructural input2062 value926 value1 value2 = (output2062, value1100, value1) := by
  rw [input2062_def, output2062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1674_eq]
  try dsimp only
  rw [node2061_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2062 input1673)).val
theorem input2063_def : input2063 = (.seq input2062 input1673) := by
  unfold input2063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2062 output1673)).val
theorem output2063_def : output2063 = (.seq output2062 output1673) := by
  unfold output2063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2063_skip : Flapjack.WordAlloc.isSkip output2063 = false := by
  rw [output2063_def]
  conv => lhs; cbv
  try rfl
theorem node2063_eq : Flapjack.WordAlloc.removeDeadStructural input2063 value923 value1 value2 = (output2063, value1100, value1) := by
  rw [input2063_def, output2063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1673_eq]
  try dsimp only
  rw [node2062_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2063 input1668)).val
theorem input2064_def : input2064 = (.seq input2063 input1668) := by
  unfold input2064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2063 output1668)).val
theorem output2064_def : output2064 = (.seq output2063 output1668) := by
  unfold output2064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2064_skip : Flapjack.WordAlloc.isSkip output2064 = false := by
  rw [output2064_def]
  conv => lhs; cbv
  try rfl
theorem node2064_eq : Flapjack.WordAlloc.removeDeadStructural input2064 value922 value1 value2 = (output2064, value1100, value1) := by
  rw [input2064_def, output2064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1668_eq]
  try dsimp only
  rw [node2063_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2064 input1667)).val
theorem input2065_def : input2065 = (.seq input2064 input1667) := by
  unfold input2065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2064 output1667)).val
theorem output2065_def : output2065 = (.seq output2064 output1667) := by
  unfold output2065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2065_skip : Flapjack.WordAlloc.isSkip output2065 = false := by
  rw [output2065_def]
  conv => lhs; cbv
  try rfl
theorem node2065_eq : Flapjack.WordAlloc.removeDeadStructural input2065 value919 value1 value2 = (output2065, value1100, value1) := by
  rw [input2065_def, output2065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1667_eq]
  try dsimp only
  rw [node2064_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2065 input1662)).val
theorem input2066_def : input2066 = (.seq input2065 input1662) := by
  unfold input2066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2065 output1662)).val
theorem output2066_def : output2066 = (.seq output2065 output1662) := by
  unfold output2066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2066_skip : Flapjack.WordAlloc.isSkip output2066 = false := by
  rw [output2066_def]
  conv => lhs; cbv
  try rfl
theorem node2066_eq : Flapjack.WordAlloc.removeDeadStructural input2066 value918 value1 value2 = (output2066, value1100, value1) := by
  rw [input2066_def, output2066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1662_eq]
  try dsimp only
  rw [node2065_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2066 input1661)).val
theorem input2067_def : input2067 = (.seq input2066 input1661) := by
  unfold input2067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2066 output1661)).val
theorem output2067_def : output2067 = (.seq output2066 output1661) := by
  unfold output2067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2067_skip : Flapjack.WordAlloc.isSkip output2067 = false := by
  rw [output2067_def]
  conv => lhs; cbv
  try rfl
theorem node2067_eq : Flapjack.WordAlloc.removeDeadStructural input2067 value916 value1 value2 = (output2067, value1100, value1) := by
  rw [input2067_def, output2067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1661_eq]
  try dsimp only
  rw [node2066_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2067 input1658)).val
theorem input2068_def : input2068 = (.seq input2067 input1658) := by
  unfold input2068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2067 output1658)).val
theorem output2068_def : output2068 = (.seq output2067 output1658) := by
  unfold output2068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2068_skip : Flapjack.WordAlloc.isSkip output2068 = false := by
  rw [output2068_def]
  conv => lhs; cbv
  try rfl
theorem node2068_eq : Flapjack.WordAlloc.removeDeadStructural input2068 value915 value1 value2 = (output2068, value1100, value1) := by
  rw [input2068_def, output2068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1658_eq]
  try dsimp only
  rw [node2067_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2068 input1657)).val
theorem input2069_def : input2069 = (.seq input2068 input1657) := by
  unfold input2069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2068 output1657)).val
theorem output2069_def : output2069 = (.seq output2068 output1657) := by
  unfold output2069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2069_skip : Flapjack.WordAlloc.isSkip output2069 = false := by
  rw [output2069_def]
  conv => lhs; cbv
  try rfl
theorem node2069_eq : Flapjack.WordAlloc.removeDeadStructural input2069 value914 value1 value2 = (output2069, value1100, value1) := by
  rw [input2069_def, output2069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1657_eq]
  try dsimp only
  rw [node2068_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2069 input1656)).val
theorem input2070_def : input2070 = (.seq input2069 input1656) := by
  unfold input2070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2069 output1656)).val
theorem output2070_def : output2070 = (.seq output2069 output1656) := by
  unfold output2070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2070_skip : Flapjack.WordAlloc.isSkip output2070 = false := by
  rw [output2070_def]
  conv => lhs; cbv
  try rfl
theorem node2070_eq : Flapjack.WordAlloc.removeDeadStructural input2070 value913 value1 value2 = (output2070, value1100, value1) := by
  rw [input2070_def, output2070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1656_eq]
  try dsimp only
  rw [node2069_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2070 input1655)).val
theorem input2071_def : input2071 = (.seq input2070 input1655) := by
  unfold input2071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2070 output1655)).val
theorem output2071_def : output2071 = (.seq output2070 output1655) := by
  unfold output2071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2071_skip : Flapjack.WordAlloc.isSkip output2071 = false := by
  rw [output2071_def]
  conv => lhs; cbv
  try rfl
theorem node2071_eq : Flapjack.WordAlloc.removeDeadStructural input2071 value910 value1 value2 = (output2071, value1100, value1) := by
  rw [input2071_def, output2071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1655_eq]
  try dsimp only
  rw [node2070_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2071 input1650)).val
theorem input2072_def : input2072 = (.seq input2071 input1650) := by
  unfold input2072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2071 output1650)).val
theorem output2072_def : output2072 = (.seq output2071 output1650) := by
  unfold output2072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2072_skip : Flapjack.WordAlloc.isSkip output2072 = false := by
  rw [output2072_def]
  conv => lhs; cbv
  try rfl
theorem node2072_eq : Flapjack.WordAlloc.removeDeadStructural input2072 value909 value1 value2 = (output2072, value1100, value1) := by
  rw [input2072_def, output2072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1650_eq]
  try dsimp only
  rw [node2071_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2072 input1649)).val
theorem input2073_def : input2073 = (.seq input2072 input1649) := by
  unfold input2073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2072 output1649)).val
theorem output2073_def : output2073 = (.seq output2072 output1649) := by
  unfold output2073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2073_skip : Flapjack.WordAlloc.isSkip output2073 = false := by
  rw [output2073_def]
  conv => lhs; cbv
  try rfl
theorem node2073_eq : Flapjack.WordAlloc.removeDeadStructural input2073 value904 value1 value2 = (output2073, value1100, value1) := by
  rw [input2073_def, output2073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1649_eq]
  try dsimp only
  rw [node2072_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2073 input1640)).val
theorem input2074_def : input2074 = (.seq input2073 input1640) := by
  unfold input2074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2073 output1640)).val
theorem output2074_def : output2074 = (.seq output2073 output1640) := by
  unfold output2074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2074_skip : Flapjack.WordAlloc.isSkip output2074 = false := by
  rw [output2074_def]
  conv => lhs; cbv
  try rfl
theorem node2074_eq : Flapjack.WordAlloc.removeDeadStructural input2074 value903 value1 value2 = (output2074, value1100, value1) := by
  rw [input2074_def, output2074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1640_eq]
  try dsimp only
  rw [node2073_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2074 input1639)).val
theorem input2075_def : input2075 = (.seq input2074 input1639) := by
  unfold input2075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2074 output1639)).val
theorem output2075_def : output2075 = (.seq output2074 output1639) := by
  unfold output2075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2075_skip : Flapjack.WordAlloc.isSkip output2075 = false := by
  rw [output2075_def]
  conv => lhs; cbv
  try rfl
theorem node2075_eq : Flapjack.WordAlloc.removeDeadStructural input2075 value899 value1 value2 = (output2075, value1100, value1) := by
  rw [input2075_def, output2075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1639_eq]
  try dsimp only
  rw [node2074_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2075 input1632)).val
theorem input2076_def : input2076 = (.seq input2075 input1632) := by
  unfold input2076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2075 output1632)).val
theorem output2076_def : output2076 = (.seq output2075 output1632) := by
  unfold output2076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2076_skip : Flapjack.WordAlloc.isSkip output2076 = false := by
  rw [output2076_def]
  conv => lhs; cbv
  try rfl
theorem node2076_eq : Flapjack.WordAlloc.removeDeadStructural input2076 value898 value1 value2 = (output2076, value1100, value1) := by
  rw [input2076_def, output2076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1632_eq]
  try dsimp only
  rw [node2075_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2076 input1631)).val
theorem input2077_def : input2077 = (.seq input2076 input1631) := by
  unfold input2077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2076 output1631)).val
theorem output2077_def : output2077 = (.seq output2076 output1631) := by
  unfold output2077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2077_skip : Flapjack.WordAlloc.isSkip output2077 = false := by
  rw [output2077_def]
  conv => lhs; cbv
  try rfl
theorem node2077_eq : Flapjack.WordAlloc.removeDeadStructural input2077 value897 value1 value2 = (output2077, value1100, value1) := by
  rw [input2077_def, output2077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1631_eq]
  try dsimp only
  rw [node2076_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2077 input1630)).val
theorem input2078_def : input2078 = (.seq input2077 input1630) := by
  unfold input2078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2077 output1630)).val
theorem output2078_def : output2078 = (.seq output2077 output1630) := by
  unfold output2078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2078_skip : Flapjack.WordAlloc.isSkip output2078 = false := by
  rw [output2078_def]
  conv => lhs; cbv
  try rfl
theorem node2078_eq : Flapjack.WordAlloc.removeDeadStructural input2078 value896 value1 value2 = (output2078, value1100, value1) := by
  rw [input2078_def, output2078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1630_eq]
  try dsimp only
  rw [node2077_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2078 input1629)).val
theorem input2079_def : input2079 = (.seq input2078 input1629) := by
  unfold input2079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2078 output1629)).val
theorem output2079_def : output2079 = (.seq output2078 output1629) := by
  unfold output2079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2079_skip : Flapjack.WordAlloc.isSkip output2079 = false := by
  rw [output2079_def]
  conv => lhs; cbv
  try rfl
theorem node2079_eq : Flapjack.WordAlloc.removeDeadStructural input2079 value893 value1 value2 = (output2079, value1100, value1) := by
  rw [input2079_def, output2079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1629_eq]
  try dsimp only
  rw [node2078_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2079 input1624)).val
theorem input2080_def : input2080 = (.seq input2079 input1624) := by
  unfold input2080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2079 output1624)).val
theorem output2080_def : output2080 = (.seq output2079 output1624) := by
  unfold output2080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2080_skip : Flapjack.WordAlloc.isSkip output2080 = false := by
  rw [output2080_def]
  conv => lhs; cbv
  try rfl
theorem node2080_eq : Flapjack.WordAlloc.removeDeadStructural input2080 value892 value1 value2 = (output2080, value1100, value1) := by
  rw [input2080_def, output2080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1624_eq]
  try dsimp only
  rw [node2079_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2080 input1623)).val
theorem input2081_def : input2081 = (.seq input2080 input1623) := by
  unfold input2081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2080 output1623)).val
theorem output2081_def : output2081 = (.seq output2080 output1623) := by
  unfold output2081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2081_skip : Flapjack.WordAlloc.isSkip output2081 = false := by
  rw [output2081_def]
  conv => lhs; cbv
  try rfl
theorem node2081_eq : Flapjack.WordAlloc.removeDeadStructural input2081 value889 value1 value2 = (output2081, value1100, value1) := by
  rw [input2081_def, output2081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1623_eq]
  try dsimp only
  rw [node2080_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2081 input1618)).val
theorem input2082_def : input2082 = (.seq input2081 input1618) := by
  unfold input2082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2081 output1618)).val
theorem output2082_def : output2082 = (.seq output2081 output1618) := by
  unfold output2082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2082_skip : Flapjack.WordAlloc.isSkip output2082 = false := by
  rw [output2082_def]
  conv => lhs; cbv
  try rfl
theorem node2082_eq : Flapjack.WordAlloc.removeDeadStructural input2082 value888 value1 value2 = (output2082, value1100, value1) := by
  rw [input2082_def, output2082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1618_eq]
  try dsimp only
  rw [node2081_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2082 input1617)).val
theorem input2083_def : input2083 = (.seq input2082 input1617) := by
  unfold input2083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2082 output1617)).val
theorem output2083_def : output2083 = (.seq output2082 output1617) := by
  unfold output2083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2083_skip : Flapjack.WordAlloc.isSkip output2083 = false := by
  rw [output2083_def]
  conv => lhs; cbv
  try rfl
theorem node2083_eq : Flapjack.WordAlloc.removeDeadStructural input2083 value886 value1 value2 = (output2083, value1100, value1) := by
  rw [input2083_def, output2083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1617_eq]
  try dsimp only
  rw [node2082_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2083 input1614)).val
theorem input2084_def : input2084 = (.seq input2083 input1614) := by
  unfold input2084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2083 output1614)).val
theorem output2084_def : output2084 = (.seq output2083 output1614) := by
  unfold output2084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2084_skip : Flapjack.WordAlloc.isSkip output2084 = false := by
  rw [output2084_def]
  conv => lhs; cbv
  try rfl
theorem node2084_eq : Flapjack.WordAlloc.removeDeadStructural input2084 value885 value1 value2 = (output2084, value1100, value1) := by
  rw [input2084_def, output2084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1614_eq]
  try dsimp only
  rw [node2083_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2084 input1613)).val
theorem input2085_def : input2085 = (.seq input2084 input1613) := by
  unfold input2085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2084 output1613)).val
theorem output2085_def : output2085 = (.seq output2084 output1613) := by
  unfold output2085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2085_skip : Flapjack.WordAlloc.isSkip output2085 = false := by
  rw [output2085_def]
  conv => lhs; cbv
  try rfl
theorem node2085_eq : Flapjack.WordAlloc.removeDeadStructural input2085 value880 value1 value2 = (output2085, value1100, value1) := by
  rw [input2085_def, output2085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1613_eq]
  try dsimp only
  rw [node2084_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2085 input1604)).val
theorem input2086_def : input2086 = (.seq input2085 input1604) := by
  unfold input2086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2085 output1604)).val
theorem output2086_def : output2086 = (.seq output2085 output1604) := by
  unfold output2086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2086_skip : Flapjack.WordAlloc.isSkip output2086 = false := by
  rw [output2086_def]
  conv => lhs; cbv
  try rfl
theorem node2086_eq : Flapjack.WordAlloc.removeDeadStructural input2086 value879 value1 value2 = (output2086, value1100, value1) := by
  rw [input2086_def, output2086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1604_eq]
  try dsimp only
  rw [node2085_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2086 input1603)).val
theorem input2087_def : input2087 = (.seq input2086 input1603) := by
  unfold input2087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2086 output1603)).val
theorem output2087_def : output2087 = (.seq output2086 output1603) := by
  unfold output2087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2087_skip : Flapjack.WordAlloc.isSkip output2087 = false := by
  rw [output2087_def]
  conv => lhs; cbv
  try rfl
theorem node2087_eq : Flapjack.WordAlloc.removeDeadStructural input2087 value874 value1 value2 = (output2087, value1100, value1) := by
  rw [input2087_def, output2087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1603_eq]
  try dsimp only
  rw [node2086_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2087 input1594)).val
theorem input2088_def : input2088 = (.seq input2087 input1594) := by
  unfold input2088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2087 output1594)).val
theorem output2088_def : output2088 = (.seq output2087 output1594) := by
  unfold output2088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2088_skip : Flapjack.WordAlloc.isSkip output2088 = false := by
  rw [output2088_def]
  conv => lhs; cbv
  try rfl
theorem node2088_eq : Flapjack.WordAlloc.removeDeadStructural input2088 value873 value1 value2 = (output2088, value1100, value1) := by
  rw [input2088_def, output2088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1594_eq]
  try dsimp only
  rw [node2087_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2088 input1593)).val
theorem input2089_def : input2089 = (.seq input2088 input1593) := by
  unfold input2089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2088)).val
theorem output2089_def : output2089 = (output2088) := by
  unfold output2089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2089_skip : Flapjack.WordAlloc.isSkip output2089 = false := by
  rw [output2089_def]
  conv => lhs; cbv
  try rfl
theorem node2089_eq : Flapjack.WordAlloc.removeDeadStructural input2089 value873 value1 value2 = (output2089, value1100, value1) := by
  rw [input2089_def, output2089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1593_eq]
  try dsimp only
  rw [node2088_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2089 input1592)).val
theorem input2090_def : input2090 = (.seq input2089 input1592) := by
  unfold input2090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2089)).val
theorem output2090_def : output2090 = (output2089) := by
  unfold output2090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2090_skip : Flapjack.WordAlloc.isSkip output2090 = false := by
  rw [output2090_def]
  conv => lhs; cbv
  try rfl
theorem node2090_eq : Flapjack.WordAlloc.removeDeadStructural input2090 value873 value1 value2 = (output2090, value1100, value1) := by
  rw [input2090_def, output2090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1592_eq]
  try dsimp only
  rw [node2089_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2090 input1591)).val
theorem input2091_def : input2091 = (.seq input2090 input1591) := by
  unfold input2091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2090 output1591)).val
theorem output2091_def : output2091 = (.seq output2090 output1591) := by
  unfold output2091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2091_skip : Flapjack.WordAlloc.isSkip output2091 = false := by
  rw [output2091_def]
  conv => lhs; cbv
  try rfl
theorem node2091_eq : Flapjack.WordAlloc.removeDeadStructural input2091 value870 value1 value2 = (output2091, value1100, value1) := by
  rw [input2091_def, output2091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1591_eq]
  try dsimp only
  rw [node2090_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2091 input1586)).val
theorem input2092_def : input2092 = (.seq input2091 input1586) := by
  unfold input2092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2091 output1586)).val
theorem output2092_def : output2092 = (.seq output2091 output1586) := by
  unfold output2092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2092_skip : Flapjack.WordAlloc.isSkip output2092 = false := by
  rw [output2092_def]
  conv => lhs; cbv
  try rfl
theorem node2092_eq : Flapjack.WordAlloc.removeDeadStructural input2092 value867 value1 value2 = (output2092, value1100, value1) := by
  rw [input2092_def, output2092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1586_eq]
  try dsimp only
  rw [node2091_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2092 input1581)).val
theorem input2093_def : input2093 = (.seq input2092 input1581) := by
  unfold input2093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2092 output1581)).val
theorem output2093_def : output2093 = (.seq output2092 output1581) := by
  unfold output2093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2093_skip : Flapjack.WordAlloc.isSkip output2093 = false := by
  rw [output2093_def]
  conv => lhs; cbv
  try rfl
theorem node2093_eq : Flapjack.WordAlloc.removeDeadStructural input2093 value863 value1 value2 = (output2093, value1100, value1) := by
  rw [input2093_def, output2093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1581_eq]
  try dsimp only
  rw [node2092_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2093 input1574)).val
theorem input2094_def : input2094 = (.seq input2093 input1574) := by
  unfold input2094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2093)).val
theorem output2094_def : output2094 = (output2093) := by
  unfold output2094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2094_skip : Flapjack.WordAlloc.isSkip output2094 = false := by
  rw [output2094_def]
  conv => lhs; cbv
  try rfl
theorem node2094_eq : Flapjack.WordAlloc.removeDeadStructural input2094 value863 value1 value2 = (output2094, value1100, value1) := by
  rw [input2094_def, output2094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1574_eq]
  try dsimp only
  rw [node2093_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2094 input1573)).val
theorem input2095_def : input2095 = (.seq input2094 input1573) := by
  unfold input2095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2094)).val
theorem output2095_def : output2095 = (output2094) := by
  unfold output2095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2095_skip : Flapjack.WordAlloc.isSkip output2095 = false := by
  rw [output2095_def]
  conv => lhs; cbv
  try rfl
theorem node2095_eq : Flapjack.WordAlloc.removeDeadStructural input2095 value863 value1 value2 = (output2095, value1100, value1) := by
  rw [input2095_def, output2095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1573_eq]
  try dsimp only
  rw [node2094_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2095 input1572)).val
theorem input2096_def : input2096 = (.seq input2095 input1572) := by
  unfold input2096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2095 output1572)).val
theorem output2096_def : output2096 = (.seq output2095 output1572) := by
  unfold output2096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2096_skip : Flapjack.WordAlloc.isSkip output2096 = false := by
  rw [output2096_def]
  conv => lhs; cbv
  try rfl
theorem node2096_eq : Flapjack.WordAlloc.removeDeadStructural input2096 value862 value1 value2 = (output2096, value1100, value1) := by
  rw [input2096_def, output2096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1572_eq]
  try dsimp only
  rw [node2095_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2096 input1571)).val
theorem input2097_def : input2097 = (.seq input2096 input1571) := by
  unfold input2097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2096 output1571)).val
theorem output2097_def : output2097 = (.seq output2096 output1571) := by
  unfold output2097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2097_skip : Flapjack.WordAlloc.isSkip output2097 = false := by
  rw [output2097_def]
  conv => lhs; cbv
  try rfl
theorem node2097_eq : Flapjack.WordAlloc.removeDeadStructural input2097 value861 value1 value2 = (output2097, value1100, value1) := by
  rw [input2097_def, output2097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1571_eq]
  try dsimp only
  rw [node2096_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2097 input1570)).val
theorem input2098_def : input2098 = (.seq input2097 input1570) := by
  unfold input2098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2097 output1570)).val
theorem output2098_def : output2098 = (.seq output2097 output1570) := by
  unfold output2098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2098_skip : Flapjack.WordAlloc.isSkip output2098 = false := by
  rw [output2098_def]
  conv => lhs; cbv
  try rfl
theorem node2098_eq : Flapjack.WordAlloc.removeDeadStructural input2098 value858 value1 value2 = (output2098, value1100, value1) := by
  rw [input2098_def, output2098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1570_eq]
  try dsimp only
  rw [node2097_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2098 input1565)).val
theorem input2099_def : input2099 = (.seq input2098 input1565) := by
  unfold input2099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2098 output1565)).val
theorem output2099_def : output2099 = (.seq output2098 output1565) := by
  unfold output2099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2099_skip : Flapjack.WordAlloc.isSkip output2099 = false := by
  rw [output2099_def]
  conv => lhs; cbv
  try rfl
theorem node2099_eq : Flapjack.WordAlloc.removeDeadStructural input2099 value857 value1 value2 = (output2099, value1100, value1) := by
  rw [input2099_def, output2099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1565_eq]
  try dsimp only
  rw [node2098_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2099 input1564)).val
theorem input2100_def : input2100 = (.seq input2099 input1564) := by
  unfold input2100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2099 output1564)).val
theorem output2100_def : output2100 = (.seq output2099 output1564) := by
  unfold output2100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2100_skip : Flapjack.WordAlloc.isSkip output2100 = false := by
  rw [output2100_def]
  conv => lhs; cbv
  try rfl
theorem node2100_eq : Flapjack.WordAlloc.removeDeadStructural input2100 value854 value1 value2 = (output2100, value1100, value1) := by
  rw [input2100_def, output2100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1564_eq]
  try dsimp only
  rw [node2099_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2100 input1559)).val
theorem input2101_def : input2101 = (.seq input2100 input1559) := by
  unfold input2101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2100 output1559)).val
theorem output2101_def : output2101 = (.seq output2100 output1559) := by
  unfold output2101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2101_skip : Flapjack.WordAlloc.isSkip output2101 = false := by
  rw [output2101_def]
  conv => lhs; cbv
  try rfl
theorem node2101_eq : Flapjack.WordAlloc.removeDeadStructural input2101 value853 value1 value2 = (output2101, value1100, value1) := by
  rw [input2101_def, output2101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1559_eq]
  try dsimp only
  rw [node2100_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2101 input1558)).val
theorem input2102_def : input2102 = (.seq input2101 input1558) := by
  unfold input2102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2101 output1558)).val
theorem output2102_def : output2102 = (.seq output2101 output1558) := by
  unfold output2102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2102_skip : Flapjack.WordAlloc.isSkip output2102 = false := by
  rw [output2102_def]
  conv => lhs; cbv
  try rfl
theorem node2102_eq : Flapjack.WordAlloc.removeDeadStructural input2102 value851 value1 value2 = (output2102, value1100, value1) := by
  rw [input2102_def, output2102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1558_eq]
  try dsimp only
  rw [node2101_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2102 input1555)).val
theorem input2103_def : input2103 = (.seq input2102 input1555) := by
  unfold input2103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2102 output1555)).val
theorem output2103_def : output2103 = (.seq output2102 output1555) := by
  unfold output2103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2103_skip : Flapjack.WordAlloc.isSkip output2103 = false := by
  rw [output2103_def]
  conv => lhs; cbv
  try rfl
theorem node2103_eq : Flapjack.WordAlloc.removeDeadStructural input2103 value850 value1 value2 = (output2103, value1100, value1) := by
  rw [input2103_def, output2103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1555_eq]
  try dsimp only
  rw [node2102_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2103 input1554)).val
theorem input2104_def : input2104 = (.seq input2103 input1554) := by
  unfold input2104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2103 output1554)).val
theorem output2104_def : output2104 = (.seq output2103 output1554) := by
  unfold output2104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2104_skip : Flapjack.WordAlloc.isSkip output2104 = false := by
  rw [output2104_def]
  conv => lhs; cbv
  try rfl
theorem node2104_eq : Flapjack.WordAlloc.removeDeadStructural input2104 value849 value1 value2 = (output2104, value1100, value1) := by
  rw [input2104_def, output2104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1554_eq]
  try dsimp only
  rw [node2103_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2104 input1553)).val
theorem input2105_def : input2105 = (.seq input2104 input1553) := by
  unfold input2105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2104 output1553)).val
theorem output2105_def : output2105 = (.seq output2104 output1553) := by
  unfold output2105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2105_skip : Flapjack.WordAlloc.isSkip output2105 = false := by
  rw [output2105_def]
  conv => lhs; cbv
  try rfl
theorem node2105_eq : Flapjack.WordAlloc.removeDeadStructural input2105 value848 value1 value2 = (output2105, value1100, value1) := by
  rw [input2105_def, output2105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1553_eq]
  try dsimp only
  rw [node2104_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2105 input1552)).val
theorem input2106_def : input2106 = (.seq input2105 input1552) := by
  unfold input2106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2105 output1552)).val
theorem output2106_def : output2106 = (.seq output2105 output1552) := by
  unfold output2106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2106_skip : Flapjack.WordAlloc.isSkip output2106 = false := by
  rw [output2106_def]
  conv => lhs; cbv
  try rfl
theorem node2106_eq : Flapjack.WordAlloc.removeDeadStructural input2106 value845 value1 value2 = (output2106, value1100, value1) := by
  rw [input2106_def, output2106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1552_eq]
  try dsimp only
  rw [node2105_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2106 input1547)).val
theorem input2107_def : input2107 = (.seq input2106 input1547) := by
  unfold input2107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2106 output1547)).val
theorem output2107_def : output2107 = (.seq output2106 output1547) := by
  unfold output2107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2107_skip : Flapjack.WordAlloc.isSkip output2107 = false := by
  rw [output2107_def]
  conv => lhs; cbv
  try rfl
theorem node2107_eq : Flapjack.WordAlloc.removeDeadStructural input2107 value844 value1 value2 = (output2107, value1100, value1) := by
  rw [input2107_def, output2107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1547_eq]
  try dsimp only
  rw [node2106_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2107 input1546)).val
theorem input2108_def : input2108 = (.seq input2107 input1546) := by
  unfold input2108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2107 output1546)).val
theorem output2108_def : output2108 = (.seq output2107 output1546) := by
  unfold output2108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2108_skip : Flapjack.WordAlloc.isSkip output2108 = false := by
  rw [output2108_def]
  conv => lhs; cbv
  try rfl
theorem node2108_eq : Flapjack.WordAlloc.removeDeadStructural input2108 value839 value1 value2 = (output2108, value1100, value1) := by
  rw [input2108_def, output2108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1546_eq]
  try dsimp only
  rw [node2107_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2108 input1537)).val
theorem input2109_def : input2109 = (.seq input2108 input1537) := by
  unfold input2109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2108 output1537)).val
theorem output2109_def : output2109 = (.seq output2108 output1537) := by
  unfold output2109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2109_skip : Flapjack.WordAlloc.isSkip output2109 = false := by
  rw [output2109_def]
  conv => lhs; cbv
  try rfl
theorem node2109_eq : Flapjack.WordAlloc.removeDeadStructural input2109 value838 value1 value2 = (output2109, value1100, value1) := by
  rw [input2109_def, output2109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1537_eq]
  try dsimp only
  rw [node2108_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2109 input1536)).val
theorem input2110_def : input2110 = (.seq input2109 input1536) := by
  unfold input2110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2109 output1536)).val
theorem output2110_def : output2110 = (.seq output2109 output1536) := by
  unfold output2110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2110_skip : Flapjack.WordAlloc.isSkip output2110 = false := by
  rw [output2110_def]
  conv => lhs; cbv
  try rfl
theorem node2110_eq : Flapjack.WordAlloc.removeDeadStructural input2110 value834 value1 value2 = (output2110, value1100, value1) := by
  rw [input2110_def, output2110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1536_eq]
  try dsimp only
  rw [node2109_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2110 input1529)).val
theorem input2111_def : input2111 = (.seq input2110 input1529) := by
  unfold input2111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2110 output1529)).val
theorem output2111_def : output2111 = (.seq output2110 output1529) := by
  unfold output2111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2111_skip : Flapjack.WordAlloc.isSkip output2111 = false := by
  rw [output2111_def]
  conv => lhs; cbv
  try rfl
theorem node2111_eq : Flapjack.WordAlloc.removeDeadStructural input2111 value833 value1 value2 = (output2111, value1100, value1) := by
  rw [input2111_def, output2111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1529_eq]
  try dsimp only
  rw [node2110_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2111 input1528)).val
theorem input2112_def : input2112 = (.seq input2111 input1528) := by
  unfold input2112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2111 output1528)).val
theorem output2112_def : output2112 = (.seq output2111 output1528) := by
  unfold output2112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2112_skip : Flapjack.WordAlloc.isSkip output2112 = false := by
  rw [output2112_def]
  conv => lhs; cbv
  try rfl
theorem node2112_eq : Flapjack.WordAlloc.removeDeadStructural input2112 value832 value1 value2 = (output2112, value1100, value1) := by
  rw [input2112_def, output2112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1528_eq]
  try dsimp only
  rw [node2111_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2112 input1527)).val
theorem input2113_def : input2113 = (.seq input2112 input1527) := by
  unfold input2113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2112 output1527)).val
theorem output2113_def : output2113 = (.seq output2112 output1527) := by
  unfold output2113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2113_skip : Flapjack.WordAlloc.isSkip output2113 = false := by
  rw [output2113_def]
  conv => lhs; cbv
  try rfl
theorem node2113_eq : Flapjack.WordAlloc.removeDeadStructural input2113 value831 value1 value2 = (output2113, value1100, value1) := by
  rw [input2113_def, output2113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1527_eq]
  try dsimp only
  rw [node2112_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2113 input1526)).val
theorem input2114_def : input2114 = (.seq input2113 input1526) := by
  unfold input2114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2113 output1526)).val
theorem output2114_def : output2114 = (.seq output2113 output1526) := by
  unfold output2114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2114_skip : Flapjack.WordAlloc.isSkip output2114 = false := by
  rw [output2114_def]
  conv => lhs; cbv
  try rfl
theorem node2114_eq : Flapjack.WordAlloc.removeDeadStructural input2114 value828 value1 value2 = (output2114, value1100, value1) := by
  rw [input2114_def, output2114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1526_eq]
  try dsimp only
  rw [node2113_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2114 input1521)).val
theorem input2115_def : input2115 = (.seq input2114 input1521) := by
  unfold input2115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2114 output1521)).val
theorem output2115_def : output2115 = (.seq output2114 output1521) := by
  unfold output2115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2115_skip : Flapjack.WordAlloc.isSkip output2115 = false := by
  rw [output2115_def]
  conv => lhs; cbv
  try rfl
theorem node2115_eq : Flapjack.WordAlloc.removeDeadStructural input2115 value827 value1 value2 = (output2115, value1100, value1) := by
  rw [input2115_def, output2115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1521_eq]
  try dsimp only
  rw [node2114_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2115 input1520)).val
theorem input2116_def : input2116 = (.seq input2115 input1520) := by
  unfold input2116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2115 output1520)).val
theorem output2116_def : output2116 = (.seq output2115 output1520) := by
  unfold output2116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2116_skip : Flapjack.WordAlloc.isSkip output2116 = false := by
  rw [output2116_def]
  conv => lhs; cbv
  try rfl
theorem node2116_eq : Flapjack.WordAlloc.removeDeadStructural input2116 value822 value1 value2 = (output2116, value1100, value1) := by
  rw [input2116_def, output2116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1520_eq]
  try dsimp only
  rw [node2115_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2116 input1511)).val
theorem input2117_def : input2117 = (.seq input2116 input1511) := by
  unfold input2117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2116 output1511)).val
theorem output2117_def : output2117 = (.seq output2116 output1511) := by
  unfold output2117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2117_skip : Flapjack.WordAlloc.isSkip output2117 = false := by
  rw [output2117_def]
  conv => lhs; cbv
  try rfl
theorem node2117_eq : Flapjack.WordAlloc.removeDeadStructural input2117 value821 value1 value2 = (output2117, value1100, value1) := by
  rw [input2117_def, output2117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1511_eq]
  try dsimp only
  rw [node2116_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2117 input1510)).val
theorem input2118_def : input2118 = (.seq input2117 input1510) := by
  unfold input2118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2117 output1510)).val
theorem output2118_def : output2118 = (.seq output2117 output1510) := by
  unfold output2118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2118_skip : Flapjack.WordAlloc.isSkip output2118 = false := by
  rw [output2118_def]
  conv => lhs; cbv
  try rfl
theorem node2118_eq : Flapjack.WordAlloc.removeDeadStructural input2118 value817 value1 value2 = (output2118, value1100, value1) := by
  rw [input2118_def, output2118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1510_eq]
  try dsimp only
  rw [node2117_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2118 input1503)).val
theorem input2119_def : input2119 = (.seq input2118 input1503) := by
  unfold input2119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2118 output1503)).val
theorem output2119_def : output2119 = (.seq output2118 output1503) := by
  unfold output2119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2119_skip : Flapjack.WordAlloc.isSkip output2119 = false := by
  rw [output2119_def]
  conv => lhs; cbv
  try rfl
theorem node2119_eq : Flapjack.WordAlloc.removeDeadStructural input2119 value816 value1 value2 = (output2119, value1100, value1) := by
  rw [input2119_def, output2119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1503_eq]
  try dsimp only
  rw [node2118_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2119 input1502)).val
theorem input2120_def : input2120 = (.seq input2119 input1502) := by
  unfold input2120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2119 output1502)).val
theorem output2120_def : output2120 = (.seq output2119 output1502) := by
  unfold output2120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2120_skip : Flapjack.WordAlloc.isSkip output2120 = false := by
  rw [output2120_def]
  conv => lhs; cbv
  try rfl
theorem node2120_eq : Flapjack.WordAlloc.removeDeadStructural input2120 value813 value1 value2 = (output2120, value1100, value1) := by
  rw [input2120_def, output2120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1502_eq]
  try dsimp only
  rw [node2119_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2120 input1497)).val
theorem input2121_def : input2121 = (.seq input2120 input1497) := by
  unfold input2121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2120 output1497)).val
theorem output2121_def : output2121 = (.seq output2120 output1497) := by
  unfold output2121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2121_skip : Flapjack.WordAlloc.isSkip output2121 = false := by
  rw [output2121_def]
  conv => lhs; cbv
  try rfl
theorem node2121_eq : Flapjack.WordAlloc.removeDeadStructural input2121 value812 value1 value2 = (output2121, value1100, value1) := by
  rw [input2121_def, output2121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1497_eq]
  try dsimp only
  rw [node2120_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2121 input1496)).val
theorem input2122_def : input2122 = (.seq input2121 input1496) := by
  unfold input2122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2121 output1496)).val
theorem output2122_def : output2122 = (.seq output2121 output1496) := by
  unfold output2122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2122_skip : Flapjack.WordAlloc.isSkip output2122 = false := by
  rw [output2122_def]
  conv => lhs; cbv
  try rfl
theorem node2122_eq : Flapjack.WordAlloc.removeDeadStructural input2122 value809 value1 value2 = (output2122, value1100, value1) := by
  rw [input2122_def, output2122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1496_eq]
  try dsimp only
  rw [node2121_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2122 input1491)).val
theorem input2123_def : input2123 = (.seq input2122 input1491) := by
  unfold input2123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2122 output1491)).val
theorem output2123_def : output2123 = (.seq output2122 output1491) := by
  unfold output2123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2123_skip : Flapjack.WordAlloc.isSkip output2123 = false := by
  rw [output2123_def]
  conv => lhs; cbv
  try rfl
theorem node2123_eq : Flapjack.WordAlloc.removeDeadStructural input2123 value808 value1 value2 = (output2123, value1100, value1) := by
  rw [input2123_def, output2123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1491_eq]
  try dsimp only
  rw [node2122_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2123 input1490)).val
theorem input2124_def : input2124 = (.seq input2123 input1490) := by
  unfold input2124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2123)).val
theorem output2124_def : output2124 = (output2123) := by
  unfold output2124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2124_skip : Flapjack.WordAlloc.isSkip output2124 = false := by
  rw [output2124_def]
  conv => lhs; cbv
  try rfl
theorem node2124_eq : Flapjack.WordAlloc.removeDeadStructural input2124 value808 value1 value2 = (output2124, value1100, value1) := by
  rw [input2124_def, output2124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1490_eq]
  try dsimp only
  rw [node2123_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2124 input1489)).val
theorem input2125_def : input2125 = (.seq input2124 input1489) := by
  unfold input2125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2124)).val
theorem output2125_def : output2125 = (output2124) := by
  unfold output2125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2125_skip : Flapjack.WordAlloc.isSkip output2125 = false := by
  rw [output2125_def]
  conv => lhs; cbv
  try rfl
theorem node2125_eq : Flapjack.WordAlloc.removeDeadStructural input2125 value808 value1 value2 = (output2125, value1100, value1) := by
  rw [input2125_def, output2125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1489_eq]
  try dsimp only
  rw [node2124_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2125 input1488)).val
theorem input2126_def : input2126 = (.seq input2125 input1488) := by
  unfold input2126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2125 output1488)).val
theorem output2126_def : output2126 = (.seq output2125 output1488) := by
  unfold output2126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2126_skip : Flapjack.WordAlloc.isSkip output2126 = false := by
  rw [output2126_def]
  conv => lhs; cbv
  try rfl
theorem node2126_eq : Flapjack.WordAlloc.removeDeadStructural input2126 value805 value1 value2 = (output2126, value1100, value1) := by
  rw [input2126_def, output2126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1488_eq]
  try dsimp only
  rw [node2125_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2126 input1483)).val
theorem input2127_def : input2127 = (.seq input2126 input1483) := by
  unfold input2127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2126 output1483)).val
theorem output2127_def : output2127 = (.seq output2126 output1483) := by
  unfold output2127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2127_skip : Flapjack.WordAlloc.isSkip output2127 = false := by
  rw [output2127_def]
  conv => lhs; cbv
  try rfl
theorem node2127_eq : Flapjack.WordAlloc.removeDeadStructural input2127 value802 value1 value2 = (output2127, value1100, value1) := by
  rw [input2127_def, output2127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1483_eq]
  try dsimp only
  rw [node2126_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2127 input1478)).val
theorem input2128_def : input2128 = (.seq input2127 input1478) := by
  unfold input2128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2127 output1478)).val
theorem output2128_def : output2128 = (.seq output2127 output1478) := by
  unfold output2128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2128_skip : Flapjack.WordAlloc.isSkip output2128 = false := by
  rw [output2128_def]
  conv => lhs; cbv
  try rfl
theorem node2128_eq : Flapjack.WordAlloc.removeDeadStructural input2128 value798 value1 value2 = (output2128, value1100, value1) := by
  rw [input2128_def, output2128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1478_eq]
  try dsimp only
  rw [node2127_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2128 input1471)).val
theorem input2129_def : input2129 = (.seq input2128 input1471) := by
  unfold input2129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2128)).val
theorem output2129_def : output2129 = (output2128) := by
  unfold output2129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2129_skip : Flapjack.WordAlloc.isSkip output2129 = false := by
  rw [output2129_def]
  conv => lhs; cbv
  try rfl
theorem node2129_eq : Flapjack.WordAlloc.removeDeadStructural input2129 value798 value1 value2 = (output2129, value1100, value1) := by
  rw [input2129_def, output2129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1471_eq]
  try dsimp only
  rw [node2128_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2129 input1470)).val
theorem input2130_def : input2130 = (.seq input2129 input1470) := by
  unfold input2130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2129)).val
theorem output2130_def : output2130 = (output2129) := by
  unfold output2130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2130_skip : Flapjack.WordAlloc.isSkip output2130 = false := by
  rw [output2130_def]
  conv => lhs; cbv
  try rfl
theorem node2130_eq : Flapjack.WordAlloc.removeDeadStructural input2130 value798 value1 value2 = (output2130, value1100, value1) := by
  rw [input2130_def, output2130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1470_eq]
  try dsimp only
  rw [node2129_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2130 input1469)).val
theorem input2131_def : input2131 = (.seq input2130 input1469) := by
  unfold input2131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2130 output1469)).val
theorem output2131_def : output2131 = (.seq output2130 output1469) := by
  unfold output2131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2131_skip : Flapjack.WordAlloc.isSkip output2131 = false := by
  rw [output2131_def]
  conv => lhs; cbv
  try rfl
theorem node2131_eq : Flapjack.WordAlloc.removeDeadStructural input2131 value797 value1 value2 = (output2131, value1100, value1) := by
  rw [input2131_def, output2131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1469_eq]
  try dsimp only
  rw [node2130_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2131 input1468)).val
theorem input2132_def : input2132 = (.seq input2131 input1468) := by
  unfold input2132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2131 output1468)).val
theorem output2132_def : output2132 = (.seq output2131 output1468) := by
  unfold output2132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2132_skip : Flapjack.WordAlloc.isSkip output2132 = false := by
  rw [output2132_def]
  conv => lhs; cbv
  try rfl
theorem node2132_eq : Flapjack.WordAlloc.removeDeadStructural input2132 value796 value1 value2 = (output2132, value1100, value1) := by
  rw [input2132_def, output2132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1468_eq]
  try dsimp only
  rw [node2131_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2132 input1467)).val
theorem input2133_def : input2133 = (.seq input2132 input1467) := by
  unfold input2133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2132 output1467)).val
theorem output2133_def : output2133 = (.seq output2132 output1467) := by
  unfold output2133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2133_skip : Flapjack.WordAlloc.isSkip output2133 = false := by
  rw [output2133_def]
  conv => lhs; cbv
  try rfl
theorem node2133_eq : Flapjack.WordAlloc.removeDeadStructural input2133 value793 value1 value2 = (output2133, value1100, value1) := by
  rw [input2133_def, output2133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1467_eq]
  try dsimp only
  rw [node2132_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2133 input1462)).val
theorem input2134_def : input2134 = (.seq input2133 input1462) := by
  unfold input2134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2133 output1462)).val
theorem output2134_def : output2134 = (.seq output2133 output1462) := by
  unfold output2134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2134_skip : Flapjack.WordAlloc.isSkip output2134 = false := by
  rw [output2134_def]
  conv => lhs; cbv
  try rfl
theorem node2134_eq : Flapjack.WordAlloc.removeDeadStructural input2134 value792 value1 value2 = (output2134, value1100, value1) := by
  rw [input2134_def, output2134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1462_eq]
  try dsimp only
  rw [node2133_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2134 input1461)).val
theorem input2135_def : input2135 = (.seq input2134 input1461) := by
  unfold input2135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2134 output1461)).val
theorem output2135_def : output2135 = (.seq output2134 output1461) := by
  unfold output2135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2135_skip : Flapjack.WordAlloc.isSkip output2135 = false := by
  rw [output2135_def]
  conv => lhs; cbv
  try rfl
theorem node2135_eq : Flapjack.WordAlloc.removeDeadStructural input2135 value789 value1 value2 = (output2135, value1100, value1) := by
  rw [input2135_def, output2135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1461_eq]
  try dsimp only
  rw [node2134_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2135 input1456)).val
theorem input2136_def : input2136 = (.seq input2135 input1456) := by
  unfold input2136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2135 output1456)).val
theorem output2136_def : output2136 = (.seq output2135 output1456) := by
  unfold output2136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2136_skip : Flapjack.WordAlloc.isSkip output2136 = false := by
  rw [output2136_def]
  conv => lhs; cbv
  try rfl
theorem node2136_eq : Flapjack.WordAlloc.removeDeadStructural input2136 value788 value1 value2 = (output2136, value1100, value1) := by
  rw [input2136_def, output2136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1456_eq]
  try dsimp only
  rw [node2135_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2136 input1455)).val
theorem input2137_def : input2137 = (.seq input2136 input1455) := by
  unfold input2137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2136 output1455)).val
theorem output2137_def : output2137 = (.seq output2136 output1455) := by
  unfold output2137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2137_skip : Flapjack.WordAlloc.isSkip output2137 = false := by
  rw [output2137_def]
  conv => lhs; cbv
  try rfl
theorem node2137_eq : Flapjack.WordAlloc.removeDeadStructural input2137 value786 value1 value2 = (output2137, value1100, value1) := by
  rw [input2137_def, output2137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1455_eq]
  try dsimp only
  rw [node2136_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2137 input1452)).val
theorem input2138_def : input2138 = (.seq input2137 input1452) := by
  unfold input2138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2137 output1452)).val
theorem output2138_def : output2138 = (.seq output2137 output1452) := by
  unfold output2138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2138_skip : Flapjack.WordAlloc.isSkip output2138 = false := by
  rw [output2138_def]
  conv => lhs; cbv
  try rfl
theorem node2138_eq : Flapjack.WordAlloc.removeDeadStructural input2138 value785 value1 value2 = (output2138, value1100, value1) := by
  rw [input2138_def, output2138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1452_eq]
  try dsimp only
  rw [node2137_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2138 input1451)).val
theorem input2139_def : input2139 = (.seq input2138 input1451) := by
  unfold input2139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2138 output1451)).val
theorem output2139_def : output2139 = (.seq output2138 output1451) := by
  unfold output2139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2139_skip : Flapjack.WordAlloc.isSkip output2139 = false := by
  rw [output2139_def]
  conv => lhs; cbv
  try rfl
theorem node2139_eq : Flapjack.WordAlloc.removeDeadStructural input2139 value784 value1 value2 = (output2139, value1100, value1) := by
  rw [input2139_def, output2139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1451_eq]
  try dsimp only
  rw [node2138_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2139 input1450)).val
theorem input2140_def : input2140 = (.seq input2139 input1450) := by
  unfold input2140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2139 output1450)).val
theorem output2140_def : output2140 = (.seq output2139 output1450) := by
  unfold output2140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2140_skip : Flapjack.WordAlloc.isSkip output2140 = false := by
  rw [output2140_def]
  conv => lhs; cbv
  try rfl
theorem node2140_eq : Flapjack.WordAlloc.removeDeadStructural input2140 value783 value1 value2 = (output2140, value1100, value1) := by
  rw [input2140_def, output2140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1450_eq]
  try dsimp only
  rw [node2139_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2140 input1449)).val
theorem input2141_def : input2141 = (.seq input2140 input1449) := by
  unfold input2141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2140 output1449)).val
theorem output2141_def : output2141 = (.seq output2140 output1449) := by
  unfold output2141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2141_skip : Flapjack.WordAlloc.isSkip output2141 = false := by
  rw [output2141_def]
  conv => lhs; cbv
  try rfl
theorem node2141_eq : Flapjack.WordAlloc.removeDeadStructural input2141 value780 value1 value2 = (output2141, value1100, value1) := by
  rw [input2141_def, output2141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1449_eq]
  try dsimp only
  rw [node2140_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2141 input1444)).val
theorem input2142_def : input2142 = (.seq input2141 input1444) := by
  unfold input2142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2141 output1444)).val
theorem output2142_def : output2142 = (.seq output2141 output1444) := by
  unfold output2142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2142_skip : Flapjack.WordAlloc.isSkip output2142 = false := by
  rw [output2142_def]
  conv => lhs; cbv
  try rfl
theorem node2142_eq : Flapjack.WordAlloc.removeDeadStructural input2142 value779 value1 value2 = (output2142, value1100, value1) := by
  rw [input2142_def, output2142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1444_eq]
  try dsimp only
  rw [node2141_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2142 input1443)).val
theorem input2143_def : input2143 = (.seq input2142 input1443) := by
  unfold input2143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2142 output1443)).val
theorem output2143_def : output2143 = (.seq output2142 output1443) := by
  unfold output2143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2143_skip : Flapjack.WordAlloc.isSkip output2143 = false := by
  rw [output2143_def]
  conv => lhs; cbv
  try rfl
theorem node2143_eq : Flapjack.WordAlloc.removeDeadStructural input2143 value774 value1 value2 = (output2143, value1100, value1) := by
  rw [input2143_def, output2143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1443_eq]
  try dsimp only
  rw [node2142_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2143 input1434)).val
theorem input2144_def : input2144 = (.seq input2143 input1434) := by
  unfold input2144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2143 output1434)).val
theorem output2144_def : output2144 = (.seq output2143 output1434) := by
  unfold output2144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2144_skip : Flapjack.WordAlloc.isSkip output2144 = false := by
  rw [output2144_def]
  conv => lhs; cbv
  try rfl
theorem node2144_eq : Flapjack.WordAlloc.removeDeadStructural input2144 value773 value1 value2 = (output2144, value1100, value1) := by
  rw [input2144_def, output2144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1434_eq]
  try dsimp only
  rw [node2143_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2144 input1433)).val
theorem input2145_def : input2145 = (.seq input2144 input1433) := by
  unfold input2145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2144 output1433)).val
theorem output2145_def : output2145 = (.seq output2144 output1433) := by
  unfold output2145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2145_skip : Flapjack.WordAlloc.isSkip output2145 = false := by
  rw [output2145_def]
  conv => lhs; cbv
  try rfl
theorem node2145_eq : Flapjack.WordAlloc.removeDeadStructural input2145 value769 value1 value2 = (output2145, value1100, value1) := by
  rw [input2145_def, output2145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1433_eq]
  try dsimp only
  rw [node2144_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2145 input1426)).val
theorem input2146_def : input2146 = (.seq input2145 input1426) := by
  unfold input2146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2145 output1426)).val
theorem output2146_def : output2146 = (.seq output2145 output1426) := by
  unfold output2146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2146_skip : Flapjack.WordAlloc.isSkip output2146 = false := by
  rw [output2146_def]
  conv => lhs; cbv
  try rfl
theorem node2146_eq : Flapjack.WordAlloc.removeDeadStructural input2146 value768 value1 value2 = (output2146, value1100, value1) := by
  rw [input2146_def, output2146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1426_eq]
  try dsimp only
  rw [node2145_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2146 input1425)).val
theorem input2147_def : input2147 = (.seq input2146 input1425) := by
  unfold input2147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2146 output1425)).val
theorem output2147_def : output2147 = (.seq output2146 output1425) := by
  unfold output2147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2147_skip : Flapjack.WordAlloc.isSkip output2147 = false := by
  rw [output2147_def]
  conv => lhs; cbv
  try rfl
theorem node2147_eq : Flapjack.WordAlloc.removeDeadStructural input2147 value767 value1 value2 = (output2147, value1100, value1) := by
  rw [input2147_def, output2147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1425_eq]
  try dsimp only
  rw [node2146_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2147 input1424)).val
theorem input2148_def : input2148 = (.seq input2147 input1424) := by
  unfold input2148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2147 output1424)).val
theorem output2148_def : output2148 = (.seq output2147 output1424) := by
  unfold output2148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2148_skip : Flapjack.WordAlloc.isSkip output2148 = false := by
  rw [output2148_def]
  conv => lhs; cbv
  try rfl
theorem node2148_eq : Flapjack.WordAlloc.removeDeadStructural input2148 value766 value1 value2 = (output2148, value1100, value1) := by
  rw [input2148_def, output2148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1424_eq]
  try dsimp only
  rw [node2147_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2148 input1423)).val
theorem input2149_def : input2149 = (.seq input2148 input1423) := by
  unfold input2149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2148 output1423)).val
theorem output2149_def : output2149 = (.seq output2148 output1423) := by
  unfold output2149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2149_skip : Flapjack.WordAlloc.isSkip output2149 = false := by
  rw [output2149_def]
  conv => lhs; cbv
  try rfl
theorem node2149_eq : Flapjack.WordAlloc.removeDeadStructural input2149 value763 value1 value2 = (output2149, value1100, value1) := by
  rw [input2149_def, output2149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1423_eq]
  try dsimp only
  rw [node2148_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2149 input1418)).val
theorem input2150_def : input2150 = (.seq input2149 input1418) := by
  unfold input2150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2149 output1418)).val
theorem output2150_def : output2150 = (.seq output2149 output1418) := by
  unfold output2150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2150_skip : Flapjack.WordAlloc.isSkip output2150 = false := by
  rw [output2150_def]
  conv => lhs; cbv
  try rfl
theorem node2150_eq : Flapjack.WordAlloc.removeDeadStructural input2150 value762 value1 value2 = (output2150, value1100, value1) := by
  rw [input2150_def, output2150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1418_eq]
  try dsimp only
  rw [node2149_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2150 input1417)).val
theorem input2151_def : input2151 = (.seq input2150 input1417) := by
  unfold input2151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2150 output1417)).val
theorem output2151_def : output2151 = (.seq output2150 output1417) := by
  unfold output2151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2151_skip : Flapjack.WordAlloc.isSkip output2151 = false := by
  rw [output2151_def]
  conv => lhs; cbv
  try rfl
theorem node2151_eq : Flapjack.WordAlloc.removeDeadStructural input2151 value757 value1 value2 = (output2151, value1100, value1) := by
  rw [input2151_def, output2151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1417_eq]
  try dsimp only
  rw [node2150_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2151 input1408)).val
theorem input2152_def : input2152 = (.seq input2151 input1408) := by
  unfold input2152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2151 output1408)).val
theorem output2152_def : output2152 = (.seq output2151 output1408) := by
  unfold output2152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2152_skip : Flapjack.WordAlloc.isSkip output2152 = false := by
  rw [output2152_def]
  conv => lhs; cbv
  try rfl
theorem node2152_eq : Flapjack.WordAlloc.removeDeadStructural input2152 value756 value1 value2 = (output2152, value1100, value1) := by
  rw [input2152_def, output2152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1408_eq]
  try dsimp only
  rw [node2151_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2152 input1407)).val
theorem input2153_def : input2153 = (.seq input2152 input1407) := by
  unfold input2153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2152 output1407)).val
theorem output2153_def : output2153 = (.seq output2152 output1407) := by
  unfold output2153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2153_skip : Flapjack.WordAlloc.isSkip output2153 = false := by
  rw [output2153_def]
  conv => lhs; cbv
  try rfl
theorem node2153_eq : Flapjack.WordAlloc.removeDeadStructural input2153 value752 value1 value2 = (output2153, value1100, value1) := by
  rw [input2153_def, output2153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1407_eq]
  try dsimp only
  rw [node2152_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2153 input1400)).val
theorem input2154_def : input2154 = (.seq input2153 input1400) := by
  unfold input2154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2153 output1400)).val
theorem output2154_def : output2154 = (.seq output2153 output1400) := by
  unfold output2154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2154_skip : Flapjack.WordAlloc.isSkip output2154 = false := by
  rw [output2154_def]
  conv => lhs; cbv
  try rfl
theorem node2154_eq : Flapjack.WordAlloc.removeDeadStructural input2154 value751 value1 value2 = (output2154, value1100, value1) := by
  rw [input2154_def, output2154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1400_eq]
  try dsimp only
  rw [node2153_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2154 input1399)).val
theorem input2155_def : input2155 = (.seq input2154 input1399) := by
  unfold input2155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2154 output1399)).val
theorem output2155_def : output2155 = (.seq output2154 output1399) := by
  unfold output2155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2155_skip : Flapjack.WordAlloc.isSkip output2155 = false := by
  rw [output2155_def]
  conv => lhs; cbv
  try rfl
theorem node2155_eq : Flapjack.WordAlloc.removeDeadStructural input2155 value750 value1 value2 = (output2155, value1100, value1) := by
  rw [input2155_def, output2155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1399_eq]
  try dsimp only
  rw [node2154_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2155 input1398)).val
theorem input2156_def : input2156 = (.seq input2155 input1398) := by
  unfold input2156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2155 output1398)).val
theorem output2156_def : output2156 = (.seq output2155 output1398) := by
  unfold output2156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2156_skip : Flapjack.WordAlloc.isSkip output2156 = false := by
  rw [output2156_def]
  conv => lhs; cbv
  try rfl
theorem node2156_eq : Flapjack.WordAlloc.removeDeadStructural input2156 value749 value1 value2 = (output2156, value1100, value1) := by
  rw [input2156_def, output2156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1398_eq]
  try dsimp only
  rw [node2155_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2156 input1397)).val
theorem input2157_def : input2157 = (.seq input2156 input1397) := by
  unfold input2157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2156 output1397)).val
theorem output2157_def : output2157 = (.seq output2156 output1397) := by
  unfold output2157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2157_skip : Flapjack.WordAlloc.isSkip output2157 = false := by
  rw [output2157_def]
  conv => lhs; cbv
  try rfl
theorem node2157_eq : Flapjack.WordAlloc.removeDeadStructural input2157 value746 value1 value2 = (output2157, value1100, value1) := by
  rw [input2157_def, output2157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1397_eq]
  try dsimp only
  rw [node2156_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2157 input1392)).val
theorem input2158_def : input2158 = (.seq input2157 input1392) := by
  unfold input2158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2157 output1392)).val
theorem output2158_def : output2158 = (.seq output2157 output1392) := by
  unfold output2158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2158_skip : Flapjack.WordAlloc.isSkip output2158 = false := by
  rw [output2158_def]
  conv => lhs; cbv
  try rfl
theorem node2158_eq : Flapjack.WordAlloc.removeDeadStructural input2158 value745 value1 value2 = (output2158, value1100, value1) := by
  rw [input2158_def, output2158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1392_eq]
  try dsimp only
  rw [node2157_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2158 input1391)).val
theorem input2159_def : input2159 = (.seq input2158 input1391) := by
  unfold input2159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2158 output1391)).val
theorem output2159_def : output2159 = (.seq output2158 output1391) := by
  unfold output2159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2159_skip : Flapjack.WordAlloc.isSkip output2159 = false := by
  rw [output2159_def]
  conv => lhs; cbv
  try rfl
theorem node2159_eq : Flapjack.WordAlloc.removeDeadStructural input2159 value742 value1 value2 = (output2159, value1100, value1) := by
  rw [input2159_def, output2159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1391_eq]
  try dsimp only
  rw [node2158_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2159 input1386)).val
theorem input2160_def : input2160 = (.seq input2159 input1386) := by
  unfold input2160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2159 output1386)).val
theorem output2160_def : output2160 = (.seq output2159 output1386) := by
  unfold output2160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2160_skip : Flapjack.WordAlloc.isSkip output2160 = false := by
  rw [output2160_def]
  conv => lhs; cbv
  try rfl
theorem node2160_eq : Flapjack.WordAlloc.removeDeadStructural input2160 value741 value1 value2 = (output2160, value1100, value1) := by
  rw [input2160_def, output2160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1386_eq]
  try dsimp only
  rw [node2159_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2160 input1385)).val
theorem input2161_def : input2161 = (.seq input2160 input1385) := by
  unfold input2161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2160 output1385)).val
theorem output2161_def : output2161 = (.seq output2160 output1385) := by
  unfold output2161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2161_skip : Flapjack.WordAlloc.isSkip output2161 = false := by
  rw [output2161_def]
  conv => lhs; cbv
  try rfl
theorem node2161_eq : Flapjack.WordAlloc.removeDeadStructural input2161 value739 value1 value2 = (output2161, value1100, value1) := by
  rw [input2161_def, output2161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1385_eq]
  try dsimp only
  rw [node2160_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2161 input1382)).val
theorem input2162_def : input2162 = (.seq input2161 input1382) := by
  unfold input2162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2161 output1382)).val
theorem output2162_def : output2162 = (.seq output2161 output1382) := by
  unfold output2162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2162_skip : Flapjack.WordAlloc.isSkip output2162 = false := by
  rw [output2162_def]
  conv => lhs; cbv
  try rfl
theorem node2162_eq : Flapjack.WordAlloc.removeDeadStructural input2162 value738 value1 value2 = (output2162, value1100, value1) := by
  rw [input2162_def, output2162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1382_eq]
  try dsimp only
  rw [node2161_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2162 input1381)).val
theorem input2163_def : input2163 = (.seq input2162 input1381) := by
  unfold input2163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2162 output1381)).val
theorem output2163_def : output2163 = (.seq output2162 output1381) := by
  unfold output2163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2163_skip : Flapjack.WordAlloc.isSkip output2163 = false := by
  rw [output2163_def]
  conv => lhs; cbv
  try rfl
theorem node2163_eq : Flapjack.WordAlloc.removeDeadStructural input2163 value733 value1 value2 = (output2163, value1100, value1) := by
  rw [input2163_def, output2163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1381_eq]
  try dsimp only
  rw [node2162_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2163 input1372)).val
theorem input2164_def : input2164 = (.seq input2163 input1372) := by
  unfold input2164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2163 output1372)).val
theorem output2164_def : output2164 = (.seq output2163 output1372) := by
  unfold output2164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2164_skip : Flapjack.WordAlloc.isSkip output2164 = false := by
  rw [output2164_def]
  conv => lhs; cbv
  try rfl
theorem node2164_eq : Flapjack.WordAlloc.removeDeadStructural input2164 value732 value1 value2 = (output2164, value1100, value1) := by
  rw [input2164_def, output2164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1372_eq]
  try dsimp only
  rw [node2163_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2164 input1371)).val
theorem input2165_def : input2165 = (.seq input2164 input1371) := by
  unfold input2165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2164 output1371)).val
theorem output2165_def : output2165 = (.seq output2164 output1371) := by
  unfold output2165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2165_skip : Flapjack.WordAlloc.isSkip output2165 = false := by
  rw [output2165_def]
  conv => lhs; cbv
  try rfl
theorem node2165_eq : Flapjack.WordAlloc.removeDeadStructural input2165 value727 value1 value2 = (output2165, value1100, value1) := by
  rw [input2165_def, output2165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1371_eq]
  try dsimp only
  rw [node2164_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2165 input1362)).val
theorem input2166_def : input2166 = (.seq input2165 input1362) := by
  unfold input2166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2165 output1362)).val
theorem output2166_def : output2166 = (.seq output2165 output1362) := by
  unfold output2166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2166_skip : Flapjack.WordAlloc.isSkip output2166 = false := by
  rw [output2166_def]
  conv => lhs; cbv
  try rfl
theorem node2166_eq : Flapjack.WordAlloc.removeDeadStructural input2166 value726 value1 value2 = (output2166, value1100, value1) := by
  rw [input2166_def, output2166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1362_eq]
  try dsimp only
  rw [node2165_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2166 input1361)).val
theorem input2167_def : input2167 = (.seq input2166 input1361) := by
  unfold input2167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2166)).val
theorem output2167_def : output2167 = (output2166) := by
  unfold output2167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2167_skip : Flapjack.WordAlloc.isSkip output2167 = false := by
  rw [output2167_def]
  conv => lhs; cbv
  try rfl
theorem node2167_eq : Flapjack.WordAlloc.removeDeadStructural input2167 value726 value1 value2 = (output2167, value1100, value1) := by
  rw [input2167_def, output2167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1361_eq]
  try dsimp only
  rw [node2166_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2167 input1360)).val
theorem input2168_def : input2168 = (.seq input2167 input1360) := by
  unfold input2168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2167)).val
theorem output2168_def : output2168 = (output2167) := by
  unfold output2168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2168_skip : Flapjack.WordAlloc.isSkip output2168 = false := by
  rw [output2168_def]
  conv => lhs; cbv
  try rfl
theorem node2168_eq : Flapjack.WordAlloc.removeDeadStructural input2168 value726 value1 value2 = (output2168, value1100, value1) := by
  rw [input2168_def, output2168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1360_eq]
  try dsimp only
  rw [node2167_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2168 input1359)).val
theorem input2169_def : input2169 = (.seq input2168 input1359) := by
  unfold input2169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2168 output1359)).val
theorem output2169_def : output2169 = (.seq output2168 output1359) := by
  unfold output2169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2169_skip : Flapjack.WordAlloc.isSkip output2169 = false := by
  rw [output2169_def]
  conv => lhs; cbv
  try rfl
theorem node2169_eq : Flapjack.WordAlloc.removeDeadStructural input2169 value723 value1 value2 = (output2169, value1100, value1) := by
  rw [input2169_def, output2169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1359_eq]
  try dsimp only
  rw [node2168_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2169 input1354)).val
theorem input2170_def : input2170 = (.seq input2169 input1354) := by
  unfold input2170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2169 output1354)).val
theorem output2170_def : output2170 = (.seq output2169 output1354) := by
  unfold output2170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2170_skip : Flapjack.WordAlloc.isSkip output2170 = false := by
  rw [output2170_def]
  conv => lhs; cbv
  try rfl
theorem node2170_eq : Flapjack.WordAlloc.removeDeadStructural input2170 value720 value1 value2 = (output2170, value1100, value1) := by
  rw [input2170_def, output2170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1354_eq]
  try dsimp only
  rw [node2169_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2170 input1349)).val
theorem input2171_def : input2171 = (.seq input2170 input1349) := by
  unfold input2171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2170 output1349)).val
theorem output2171_def : output2171 = (.seq output2170 output1349) := by
  unfold output2171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2171_skip : Flapjack.WordAlloc.isSkip output2171 = false := by
  rw [output2171_def]
  conv => lhs; cbv
  try rfl
theorem node2171_eq : Flapjack.WordAlloc.removeDeadStructural input2171 value716 value1 value2 = (output2171, value1100, value1) := by
  rw [input2171_def, output2171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1349_eq]
  try dsimp only
  rw [node2170_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2171 input1342)).val
theorem input2172_def : input2172 = (.seq input2171 input1342) := by
  unfold input2172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2171)).val
theorem output2172_def : output2172 = (output2171) := by
  unfold output2172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2172_skip : Flapjack.WordAlloc.isSkip output2172 = false := by
  rw [output2172_def]
  conv => lhs; cbv
  try rfl
theorem node2172_eq : Flapjack.WordAlloc.removeDeadStructural input2172 value716 value1 value2 = (output2172, value1100, value1) := by
  rw [input2172_def, output2172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1342_eq]
  try dsimp only
  rw [node2171_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2172 input1341)).val
theorem input2173_def : input2173 = (.seq input2172 input1341) := by
  unfold input2173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2172)).val
theorem output2173_def : output2173 = (output2172) := by
  unfold output2173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2173_skip : Flapjack.WordAlloc.isSkip output2173 = false := by
  rw [output2173_def]
  conv => lhs; cbv
  try rfl
theorem node2173_eq : Flapjack.WordAlloc.removeDeadStructural input2173 value716 value1 value2 = (output2173, value1100, value1) := by
  rw [input2173_def, output2173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1341_eq]
  try dsimp only
  rw [node2172_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2173 input1340)).val
theorem input2174_def : input2174 = (.seq input2173 input1340) := by
  unfold input2174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2173 output1340)).val
theorem output2174_def : output2174 = (.seq output2173 output1340) := by
  unfold output2174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2174_skip : Flapjack.WordAlloc.isSkip output2174 = false := by
  rw [output2174_def]
  conv => lhs; cbv
  try rfl
theorem node2174_eq : Flapjack.WordAlloc.removeDeadStructural input2174 value715 value1 value2 = (output2174, value1100, value1) := by
  rw [input2174_def, output2174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1340_eq]
  try dsimp only
  rw [node2173_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2174 input1339)).val
theorem input2175_def : input2175 = (.seq input2174 input1339) := by
  unfold input2175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2174 output1339)).val
theorem output2175_def : output2175 = (.seq output2174 output1339) := by
  unfold output2175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2175_skip : Flapjack.WordAlloc.isSkip output2175 = false := by
  rw [output2175_def]
  conv => lhs; cbv
  try rfl
theorem node2175_eq : Flapjack.WordAlloc.removeDeadStructural input2175 value714 value1 value2 = (output2175, value1100, value1) := by
  rw [input2175_def, output2175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1339_eq]
  try dsimp only
  rw [node2174_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2175 input1338)).val
theorem input2176_def : input2176 = (.seq input2175 input1338) := by
  unfold input2176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2175 output1338)).val
theorem output2176_def : output2176 = (.seq output2175 output1338) := by
  unfold output2176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2176_skip : Flapjack.WordAlloc.isSkip output2176 = false := by
  rw [output2176_def]
  conv => lhs; cbv
  try rfl
theorem node2176_eq : Flapjack.WordAlloc.removeDeadStructural input2176 value711 value1 value2 = (output2176, value1100, value1) := by
  rw [input2176_def, output2176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1338_eq]
  try dsimp only
  rw [node2175_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2176 input1333)).val
theorem input2177_def : input2177 = (.seq input2176 input1333) := by
  unfold input2177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2176 output1333)).val
theorem output2177_def : output2177 = (.seq output2176 output1333) := by
  unfold output2177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2177_skip : Flapjack.WordAlloc.isSkip output2177 = false := by
  rw [output2177_def]
  conv => lhs; cbv
  try rfl
theorem node2177_eq : Flapjack.WordAlloc.removeDeadStructural input2177 value710 value1 value2 = (output2177, value1100, value1) := by
  rw [input2177_def, output2177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1333_eq]
  try dsimp only
  rw [node2176_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2177 input1332)).val
theorem input2178_def : input2178 = (.seq input2177 input1332) := by
  unfold input2178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2177 output1332)).val
theorem output2178_def : output2178 = (.seq output2177 output1332) := by
  unfold output2178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2178_skip : Flapjack.WordAlloc.isSkip output2178 = false := by
  rw [output2178_def]
  conv => lhs; cbv
  try rfl
theorem node2178_eq : Flapjack.WordAlloc.removeDeadStructural input2178 value707 value1 value2 = (output2178, value1100, value1) := by
  rw [input2178_def, output2178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1332_eq]
  try dsimp only
  rw [node2177_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2178 input1327)).val
theorem input2179_def : input2179 = (.seq input2178 input1327) := by
  unfold input2179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2178 output1327)).val
theorem output2179_def : output2179 = (.seq output2178 output1327) := by
  unfold output2179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2179_skip : Flapjack.WordAlloc.isSkip output2179 = false := by
  rw [output2179_def]
  conv => lhs; cbv
  try rfl
theorem node2179_eq : Flapjack.WordAlloc.removeDeadStructural input2179 value706 value1 value2 = (output2179, value1100, value1) := by
  rw [input2179_def, output2179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1327_eq]
  try dsimp only
  rw [node2178_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2179 input1326)).val
theorem input2180_def : input2180 = (.seq input2179 input1326) := by
  unfold input2180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2179 output1326)).val
theorem output2180_def : output2180 = (.seq output2179 output1326) := by
  unfold output2180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2180_skip : Flapjack.WordAlloc.isSkip output2180 = false := by
  rw [output2180_def]
  conv => lhs; cbv
  try rfl
theorem node2180_eq : Flapjack.WordAlloc.removeDeadStructural input2180 value704 value1 value2 = (output2180, value1100, value1) := by
  rw [input2180_def, output2180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1326_eq]
  try dsimp only
  rw [node2179_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2180 input1323)).val
theorem input2181_def : input2181 = (.seq input2180 input1323) := by
  unfold input2181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2180 output1323)).val
theorem output2181_def : output2181 = (.seq output2180 output1323) := by
  unfold output2181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2181_skip : Flapjack.WordAlloc.isSkip output2181 = false := by
  rw [output2181_def]
  conv => lhs; cbv
  try rfl
theorem node2181_eq : Flapjack.WordAlloc.removeDeadStructural input2181 value703 value1 value2 = (output2181, value1100, value1) := by
  rw [input2181_def, output2181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1323_eq]
  try dsimp only
  rw [node2180_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2181 input1322)).val
theorem input2182_def : input2182 = (.seq input2181 input1322) := by
  unfold input2182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2181 output1322)).val
theorem output2182_def : output2182 = (.seq output2181 output1322) := by
  unfold output2182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2182_skip : Flapjack.WordAlloc.isSkip output2182 = false := by
  rw [output2182_def]
  conv => lhs; cbv
  try rfl
theorem node2182_eq : Flapjack.WordAlloc.removeDeadStructural input2182 value702 value1 value2 = (output2182, value1100, value1) := by
  rw [input2182_def, output2182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1322_eq]
  try dsimp only
  rw [node2181_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2182 input1321)).val
theorem input2183_def : input2183 = (.seq input2182 input1321) := by
  unfold input2183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2182 output1321)).val
theorem output2183_def : output2183 = (.seq output2182 output1321) := by
  unfold output2183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2183_skip : Flapjack.WordAlloc.isSkip output2183 = false := by
  rw [output2183_def]
  conv => lhs; cbv
  try rfl
theorem node2183_eq : Flapjack.WordAlloc.removeDeadStructural input2183 value701 value1 value2 = (output2183, value1100, value1) := by
  rw [input2183_def, output2183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1321_eq]
  try dsimp only
  rw [node2182_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2183 input1320)).val
theorem input2184_def : input2184 = (.seq input2183 input1320) := by
  unfold input2184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2183 output1320)).val
theorem output2184_def : output2184 = (.seq output2183 output1320) := by
  unfold output2184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2184_skip : Flapjack.WordAlloc.isSkip output2184 = false := by
  rw [output2184_def]
  conv => lhs; cbv
  try rfl
theorem node2184_eq : Flapjack.WordAlloc.removeDeadStructural input2184 value698 value1 value2 = (output2184, value1100, value1) := by
  rw [input2184_def, output2184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1320_eq]
  try dsimp only
  rw [node2183_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2184 input1315)).val
theorem input2185_def : input2185 = (.seq input2184 input1315) := by
  unfold input2185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2184 output1315)).val
theorem output2185_def : output2185 = (.seq output2184 output1315) := by
  unfold output2185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2185_skip : Flapjack.WordAlloc.isSkip output2185 = false := by
  rw [output2185_def]
  conv => lhs; cbv
  try rfl
theorem node2185_eq : Flapjack.WordAlloc.removeDeadStructural input2185 value697 value1 value2 = (output2185, value1100, value1) := by
  rw [input2185_def, output2185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1315_eq]
  try dsimp only
  rw [node2184_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2185 input1314)).val
theorem input2186_def : input2186 = (.seq input2185 input1314) := by
  unfold input2186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2185 output1314)).val
theorem output2186_def : output2186 = (.seq output2185 output1314) := by
  unfold output2186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2186_skip : Flapjack.WordAlloc.isSkip output2186 = false := by
  rw [output2186_def]
  conv => lhs; cbv
  try rfl
theorem node2186_eq : Flapjack.WordAlloc.removeDeadStructural input2186 value692 value1 value2 = (output2186, value1100, value1) := by
  rw [input2186_def, output2186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1314_eq]
  try dsimp only
  rw [node2185_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2186 input1305)).val
theorem input2187_def : input2187 = (.seq input2186 input1305) := by
  unfold input2187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2186 output1305)).val
theorem output2187_def : output2187 = (.seq output2186 output1305) := by
  unfold output2187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2187_skip : Flapjack.WordAlloc.isSkip output2187 = false := by
  rw [output2187_def]
  conv => lhs; cbv
  try rfl
theorem node2187_eq : Flapjack.WordAlloc.removeDeadStructural input2187 value691 value1 value2 = (output2187, value1100, value1) := by
  rw [input2187_def, output2187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1305_eq]
  try dsimp only
  rw [node2186_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2187 input1304)).val
theorem input2188_def : input2188 = (.seq input2187 input1304) := by
  unfold input2188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2187 output1304)).val
theorem output2188_def : output2188 = (.seq output2187 output1304) := by
  unfold output2188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2188_skip : Flapjack.WordAlloc.isSkip output2188 = false := by
  rw [output2188_def]
  conv => lhs; cbv
  try rfl
theorem node2188_eq : Flapjack.WordAlloc.removeDeadStructural input2188 value687 value1 value2 = (output2188, value1100, value1) := by
  rw [input2188_def, output2188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1304_eq]
  try dsimp only
  rw [node2187_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2188 input1297)).val
theorem input2189_def : input2189 = (.seq input2188 input1297) := by
  unfold input2189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2188 output1297)).val
theorem output2189_def : output2189 = (.seq output2188 output1297) := by
  unfold output2189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2189_skip : Flapjack.WordAlloc.isSkip output2189 = false := by
  rw [output2189_def]
  conv => lhs; cbv
  try rfl
theorem node2189_eq : Flapjack.WordAlloc.removeDeadStructural input2189 value686 value1 value2 = (output2189, value1100, value1) := by
  rw [input2189_def, output2189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1297_eq]
  try dsimp only
  rw [node2188_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2189 input1296)).val
theorem input2190_def : input2190 = (.seq input2189 input1296) := by
  unfold input2190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2189 output1296)).val
theorem output2190_def : output2190 = (.seq output2189 output1296) := by
  unfold output2190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2190_skip : Flapjack.WordAlloc.isSkip output2190 = false := by
  rw [output2190_def]
  conv => lhs; cbv
  try rfl
theorem node2190_eq : Flapjack.WordAlloc.removeDeadStructural input2190 value685 value1 value2 = (output2190, value1100, value1) := by
  rw [input2190_def, output2190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1296_eq]
  try dsimp only
  rw [node2189_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2190 input1295)).val
theorem input2191_def : input2191 = (.seq input2190 input1295) := by
  unfold input2191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2190 output1295)).val
theorem output2191_def : output2191 = (.seq output2190 output1295) := by
  unfold output2191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2191_skip : Flapjack.WordAlloc.isSkip output2191 = false := by
  rw [output2191_def]
  conv => lhs; cbv
  try rfl
theorem node2191_eq : Flapjack.WordAlloc.removeDeadStructural input2191 value684 value1 value2 = (output2191, value1100, value1) := by
  rw [input2191_def, output2191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1295_eq]
  try dsimp only
  rw [node2190_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2191 input1294)).val
theorem input2192_def : input2192 = (.seq input2191 input1294) := by
  unfold input2192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2191 output1294)).val
theorem output2192_def : output2192 = (.seq output2191 output1294) := by
  unfold output2192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2192_skip : Flapjack.WordAlloc.isSkip output2192 = false := by
  rw [output2192_def]
  conv => lhs; cbv
  try rfl
theorem node2192_eq : Flapjack.WordAlloc.removeDeadStructural input2192 value681 value1 value2 = (output2192, value1100, value1) := by
  rw [input2192_def, output2192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1294_eq]
  try dsimp only
  rw [node2191_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2192 input1289)).val
theorem input2193_def : input2193 = (.seq input2192 input1289) := by
  unfold input2193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2192 output1289)).val
theorem output2193_def : output2193 = (.seq output2192 output1289) := by
  unfold output2193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2193_skip : Flapjack.WordAlloc.isSkip output2193 = false := by
  rw [output2193_def]
  conv => lhs; cbv
  try rfl
theorem node2193_eq : Flapjack.WordAlloc.removeDeadStructural input2193 value680 value1 value2 = (output2193, value1100, value1) := by
  rw [input2193_def, output2193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1289_eq]
  try dsimp only
  rw [node2192_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2193 input1288)).val
theorem input2194_def : input2194 = (.seq input2193 input1288) := by
  unfold input2194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2193 output1288)).val
theorem output2194_def : output2194 = (.seq output2193 output1288) := by
  unfold output2194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2194_skip : Flapjack.WordAlloc.isSkip output2194 = false := by
  rw [output2194_def]
  conv => lhs; cbv
  try rfl
theorem node2194_eq : Flapjack.WordAlloc.removeDeadStructural input2194 value675 value1 value2 = (output2194, value1100, value1) := by
  rw [input2194_def, output2194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1288_eq]
  try dsimp only
  rw [node2193_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2194 input1279)).val
theorem input2195_def : input2195 = (.seq input2194 input1279) := by
  unfold input2195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2194 output1279)).val
theorem output2195_def : output2195 = (.seq output2194 output1279) := by
  unfold output2195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2195_skip : Flapjack.WordAlloc.isSkip output2195 = false := by
  rw [output2195_def]
  conv => lhs; cbv
  try rfl
theorem node2195_eq : Flapjack.WordAlloc.removeDeadStructural input2195 value674 value1 value2 = (output2195, value1100, value1) := by
  rw [input2195_def, output2195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1279_eq]
  try dsimp only
  rw [node2194_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2195 input1278)).val
theorem input2196_def : input2196 = (.seq input2195 input1278) := by
  unfold input2196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2195 output1278)).val
theorem output2196_def : output2196 = (.seq output2195 output1278) := by
  unfold output2196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2196_skip : Flapjack.WordAlloc.isSkip output2196 = false := by
  rw [output2196_def]
  conv => lhs; cbv
  try rfl
theorem node2196_eq : Flapjack.WordAlloc.removeDeadStructural input2196 value670 value1 value2 = (output2196, value1100, value1) := by
  rw [input2196_def, output2196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1278_eq]
  try dsimp only
  rw [node2195_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2196 input1271)).val
theorem input2197_def : input2197 = (.seq input2196 input1271) := by
  unfold input2197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2196 output1271)).val
theorem output2197_def : output2197 = (.seq output2196 output1271) := by
  unfold output2197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2197_skip : Flapjack.WordAlloc.isSkip output2197 = false := by
  rw [output2197_def]
  conv => lhs; cbv
  try rfl
theorem node2197_eq : Flapjack.WordAlloc.removeDeadStructural input2197 value669 value1 value2 = (output2197, value1100, value1) := by
  rw [input2197_def, output2197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1271_eq]
  try dsimp only
  rw [node2196_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2197 input1270)).val
theorem input2198_def : input2198 = (.seq input2197 input1270) := by
  unfold input2198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2197 output1270)).val
theorem output2198_def : output2198 = (.seq output2197 output1270) := by
  unfold output2198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2198_skip : Flapjack.WordAlloc.isSkip output2198 = false := by
  rw [output2198_def]
  conv => lhs; cbv
  try rfl
theorem node2198_eq : Flapjack.WordAlloc.removeDeadStructural input2198 value668 value1 value2 = (output2198, value1100, value1) := by
  rw [input2198_def, output2198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1270_eq]
  try dsimp only
  rw [node2197_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2198 input1269)).val
theorem input2199_def : input2199 = (.seq input2198 input1269) := by
  unfold input2199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2198 output1269)).val
theorem output2199_def : output2199 = (.seq output2198 output1269) := by
  unfold output2199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2199_skip : Flapjack.WordAlloc.isSkip output2199 = false := by
  rw [output2199_def]
  conv => lhs; cbv
  try rfl
theorem node2199_eq : Flapjack.WordAlloc.removeDeadStructural input2199 value667 value1 value2 = (output2199, value1100, value1) := by
  rw [input2199_def, output2199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1269_eq]
  try dsimp only
  rw [node2198_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2199 input1268)).val
theorem input2200_def : input2200 = (.seq input2199 input1268) := by
  unfold input2200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2199 output1268)).val
theorem output2200_def : output2200 = (.seq output2199 output1268) := by
  unfold output2200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2200_skip : Flapjack.WordAlloc.isSkip output2200 = false := by
  rw [output2200_def]
  conv => lhs; cbv
  try rfl
theorem node2200_eq : Flapjack.WordAlloc.removeDeadStructural input2200 value664 value1 value2 = (output2200, value1100, value1) := by
  rw [input2200_def, output2200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1268_eq]
  try dsimp only
  rw [node2199_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2200 input1263)).val
theorem input2201_def : input2201 = (.seq input2200 input1263) := by
  unfold input2201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2200 output1263)).val
theorem output2201_def : output2201 = (.seq output2200 output1263) := by
  unfold output2201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2201_skip : Flapjack.WordAlloc.isSkip output2201 = false := by
  rw [output2201_def]
  conv => lhs; cbv
  try rfl
theorem node2201_eq : Flapjack.WordAlloc.removeDeadStructural input2201 value663 value1 value2 = (output2201, value1100, value1) := by
  rw [input2201_def, output2201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1263_eq]
  try dsimp only
  rw [node2200_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2201 input1262)).val
theorem input2202_def : input2202 = (.seq input2201 input1262) := by
  unfold input2202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2201 output1262)).val
theorem output2202_def : output2202 = (.seq output2201 output1262) := by
  unfold output2202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2202_skip : Flapjack.WordAlloc.isSkip output2202 = false := by
  rw [output2202_def]
  conv => lhs; cbv
  try rfl
theorem node2202_eq : Flapjack.WordAlloc.removeDeadStructural input2202 value658 value1 value2 = (output2202, value1100, value1) := by
  rw [input2202_def, output2202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1262_eq]
  try dsimp only
  rw [node2201_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2202 input1253)).val
theorem input2203_def : input2203 = (.seq input2202 input1253) := by
  unfold input2203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2202 output1253)).val
theorem output2203_def : output2203 = (.seq output2202 output1253) := by
  unfold output2203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2203_skip : Flapjack.WordAlloc.isSkip output2203 = false := by
  rw [output2203_def]
  conv => lhs; cbv
  try rfl
theorem node2203_eq : Flapjack.WordAlloc.removeDeadStructural input2203 value657 value1 value2 = (output2203, value1100, value1) := by
  rw [input2203_def, output2203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1253_eq]
  try dsimp only
  rw [node2202_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2203 input1252)).val
theorem input2204_def : input2204 = (.seq input2203 input1252) := by
  unfold input2204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2203 output1252)).val
theorem output2204_def : output2204 = (.seq output2203 output1252) := by
  unfold output2204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2204_skip : Flapjack.WordAlloc.isSkip output2204 = false := by
  rw [output2204_def]
  conv => lhs; cbv
  try rfl
theorem node2204_eq : Flapjack.WordAlloc.removeDeadStructural input2204 value653 value1 value2 = (output2204, value1100, value1) := by
  rw [input2204_def, output2204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1252_eq]
  try dsimp only
  rw [node2203_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2204 input1245)).val
theorem input2205_def : input2205 = (.seq input2204 input1245) := by
  unfold input2205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2204 output1245)).val
theorem output2205_def : output2205 = (.seq output2204 output1245) := by
  unfold output2205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2205_skip : Flapjack.WordAlloc.isSkip output2205 = false := by
  rw [output2205_def]
  conv => lhs; cbv
  try rfl
theorem node2205_eq : Flapjack.WordAlloc.removeDeadStructural input2205 value652 value1 value2 = (output2205, value1100, value1) := by
  rw [input2205_def, output2205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1245_eq]
  try dsimp only
  rw [node2204_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2205 input1244)).val
theorem input2206_def : input2206 = (.seq input2205 input1244) := by
  unfold input2206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2205 output1244)).val
theorem output2206_def : output2206 = (.seq output2205 output1244) := by
  unfold output2206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2206_skip : Flapjack.WordAlloc.isSkip output2206 = false := by
  rw [output2206_def]
  conv => lhs; cbv
  try rfl
theorem node2206_eq : Flapjack.WordAlloc.removeDeadStructural input2206 value649 value1 value2 = (output2206, value1100, value1) := by
  rw [input2206_def, output2206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1244_eq]
  try dsimp only
  rw [node2205_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2206 input1239)).val
theorem input2207_def : input2207 = (.seq input2206 input1239) := by
  unfold input2207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2206 output1239)).val
theorem output2207_def : output2207 = (.seq output2206 output1239) := by
  unfold output2207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2207_skip : Flapjack.WordAlloc.isSkip output2207 = false := by
  rw [output2207_def]
  conv => lhs; cbv
  try rfl
theorem node2207_eq : Flapjack.WordAlloc.removeDeadStructural input2207 value648 value1 value2 = (output2207, value1100, value1) := by
  rw [input2207_def, output2207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1239_eq]
  try dsimp only
  rw [node2206_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2207 input1238)).val
theorem input2208_def : input2208 = (.seq input2207 input1238) := by
  unfold input2208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2207 output1238)).val
theorem output2208_def : output2208 = (.seq output2207 output1238) := by
  unfold output2208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2208_skip : Flapjack.WordAlloc.isSkip output2208 = false := by
  rw [output2208_def]
  conv => lhs; cbv
  try rfl
theorem node2208_eq : Flapjack.WordAlloc.removeDeadStructural input2208 value645 value1 value2 = (output2208, value1100, value1) := by
  rw [input2208_def, output2208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1238_eq]
  try dsimp only
  rw [node2207_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2208 input1233)).val
theorem input2209_def : input2209 = (.seq input2208 input1233) := by
  unfold input2209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2208 output1233)).val
theorem output2209_def : output2209 = (.seq output2208 output1233) := by
  unfold output2209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2209_skip : Flapjack.WordAlloc.isSkip output2209 = false := by
  rw [output2209_def]
  conv => lhs; cbv
  try rfl
theorem node2209_eq : Flapjack.WordAlloc.removeDeadStructural input2209 value644 value1 value2 = (output2209, value1100, value1) := by
  rw [input2209_def, output2209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1233_eq]
  try dsimp only
  rw [node2208_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2209 input1232)).val
theorem input2210_def : input2210 = (.seq input2209 input1232) := by
  unfold input2210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2209)).val
theorem output2210_def : output2210 = (output2209) := by
  unfold output2210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2210_skip : Flapjack.WordAlloc.isSkip output2210 = false := by
  rw [output2210_def]
  conv => lhs; cbv
  try rfl
theorem node2210_eq : Flapjack.WordAlloc.removeDeadStructural input2210 value644 value1 value2 = (output2210, value1100, value1) := by
  rw [input2210_def, output2210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1232_eq]
  try dsimp only
  rw [node2209_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2210 input1231)).val
theorem input2211_def : input2211 = (.seq input2210 input1231) := by
  unfold input2211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2210)).val
theorem output2211_def : output2211 = (output2210) := by
  unfold output2211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2211_skip : Flapjack.WordAlloc.isSkip output2211 = false := by
  rw [output2211_def]
  conv => lhs; cbv
  try rfl
theorem node2211_eq : Flapjack.WordAlloc.removeDeadStructural input2211 value644 value1 value2 = (output2211, value1100, value1) := by
  rw [input2211_def, output2211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1231_eq]
  try dsimp only
  rw [node2210_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2211 input1230)).val
theorem input2212_def : input2212 = (.seq input2211 input1230) := by
  unfold input2212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2211 output1230)).val
theorem output2212_def : output2212 = (.seq output2211 output1230) := by
  unfold output2212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2212_skip : Flapjack.WordAlloc.isSkip output2212 = false := by
  rw [output2212_def]
  conv => lhs; cbv
  try rfl
theorem node2212_eq : Flapjack.WordAlloc.removeDeadStructural input2212 value641 value1 value2 = (output2212, value1100, value1) := by
  rw [input2212_def, output2212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1230_eq]
  try dsimp only
  rw [node2211_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2212 input1225)).val
theorem input2213_def : input2213 = (.seq input2212 input1225) := by
  unfold input2213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2212 output1225)).val
theorem output2213_def : output2213 = (.seq output2212 output1225) := by
  unfold output2213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2213_skip : Flapjack.WordAlloc.isSkip output2213 = false := by
  rw [output2213_def]
  conv => lhs; cbv
  try rfl
theorem node2213_eq : Flapjack.WordAlloc.removeDeadStructural input2213 value638 value1 value2 = (output2213, value1100, value1) := by
  rw [input2213_def, output2213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1225_eq]
  try dsimp only
  rw [node2212_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2213 input1220)).val
theorem input2214_def : input2214 = (.seq input2213 input1220) := by
  unfold input2214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2213 output1220)).val
theorem output2214_def : output2214 = (.seq output2213 output1220) := by
  unfold output2214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2214_skip : Flapjack.WordAlloc.isSkip output2214 = false := by
  rw [output2214_def]
  conv => lhs; cbv
  try rfl
theorem node2214_eq : Flapjack.WordAlloc.removeDeadStructural input2214 value634 value1 value2 = (output2214, value1100, value1) := by
  rw [input2214_def, output2214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1220_eq]
  try dsimp only
  rw [node2213_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2214 input1213)).val
theorem input2215_def : input2215 = (.seq input2214 input1213) := by
  unfold input2215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2214)).val
theorem output2215_def : output2215 = (output2214) := by
  unfold output2215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2215_skip : Flapjack.WordAlloc.isSkip output2215 = false := by
  rw [output2215_def]
  conv => lhs; cbv
  try rfl
theorem node2215_eq : Flapjack.WordAlloc.removeDeadStructural input2215 value634 value1 value2 = (output2215, value1100, value1) := by
  rw [input2215_def, output2215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1213_eq]
  try dsimp only
  rw [node2214_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2215 input1212)).val
theorem input2216_def : input2216 = (.seq input2215 input1212) := by
  unfold input2216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2215)).val
theorem output2216_def : output2216 = (output2215) := by
  unfold output2216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2216_skip : Flapjack.WordAlloc.isSkip output2216 = false := by
  rw [output2216_def]
  conv => lhs; cbv
  try rfl
theorem node2216_eq : Flapjack.WordAlloc.removeDeadStructural input2216 value634 value1 value2 = (output2216, value1100, value1) := by
  rw [input2216_def, output2216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1212_eq]
  try dsimp only
  rw [node2215_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2216 input1211)).val
theorem input2217_def : input2217 = (.seq input2216 input1211) := by
  unfold input2217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2216 output1211)).val
theorem output2217_def : output2217 = (.seq output2216 output1211) := by
  unfold output2217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2217_skip : Flapjack.WordAlloc.isSkip output2217 = false := by
  rw [output2217_def]
  conv => lhs; cbv
  try rfl
theorem node2217_eq : Flapjack.WordAlloc.removeDeadStructural input2217 value633 value1 value2 = (output2217, value1100, value1) := by
  rw [input2217_def, output2217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1211_eq]
  try dsimp only
  rw [node2216_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2217 input1210)).val
theorem input2218_def : input2218 = (.seq input2217 input1210) := by
  unfold input2218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2217 output1210)).val
theorem output2218_def : output2218 = (.seq output2217 output1210) := by
  unfold output2218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2218_skip : Flapjack.WordAlloc.isSkip output2218 = false := by
  rw [output2218_def]
  conv => lhs; cbv
  try rfl
theorem node2218_eq : Flapjack.WordAlloc.removeDeadStructural input2218 value632 value1 value2 = (output2218, value1100, value1) := by
  rw [input2218_def, output2218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1210_eq]
  try dsimp only
  rw [node2217_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2218 input1209)).val
theorem input2219_def : input2219 = (.seq input2218 input1209) := by
  unfold input2219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2218 output1209)).val
theorem output2219_def : output2219 = (.seq output2218 output1209) := by
  unfold output2219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2219_skip : Flapjack.WordAlloc.isSkip output2219 = false := by
  rw [output2219_def]
  conv => lhs; cbv
  try rfl
theorem node2219_eq : Flapjack.WordAlloc.removeDeadStructural input2219 value629 value1 value2 = (output2219, value1100, value1) := by
  rw [input2219_def, output2219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1209_eq]
  try dsimp only
  rw [node2218_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2219 input1204)).val
theorem input2220_def : input2220 = (.seq input2219 input1204) := by
  unfold input2220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2219 output1204)).val
theorem output2220_def : output2220 = (.seq output2219 output1204) := by
  unfold output2220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2220_skip : Flapjack.WordAlloc.isSkip output2220 = false := by
  rw [output2220_def]
  conv => lhs; cbv
  try rfl
theorem node2220_eq : Flapjack.WordAlloc.removeDeadStructural input2220 value628 value1 value2 = (output2220, value1100, value1) := by
  rw [input2220_def, output2220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1204_eq]
  try dsimp only
  rw [node2219_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2220 input1203)).val
theorem input2221_def : input2221 = (.seq input2220 input1203) := by
  unfold input2221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2220 output1203)).val
theorem output2221_def : output2221 = (.seq output2220 output1203) := by
  unfold output2221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2221_skip : Flapjack.WordAlloc.isSkip output2221 = false := by
  rw [output2221_def]
  conv => lhs; cbv
  try rfl
theorem node2221_eq : Flapjack.WordAlloc.removeDeadStructural input2221 value625 value1 value2 = (output2221, value1100, value1) := by
  rw [input2221_def, output2221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1203_eq]
  try dsimp only
  rw [node2220_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2221 input1198)).val
theorem input2222_def : input2222 = (.seq input2221 input1198) := by
  unfold input2222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2221 output1198)).val
theorem output2222_def : output2222 = (.seq output2221 output1198) := by
  unfold output2222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2222_skip : Flapjack.WordAlloc.isSkip output2222 = false := by
  rw [output2222_def]
  conv => lhs; cbv
  try rfl
theorem node2222_eq : Flapjack.WordAlloc.removeDeadStructural input2222 value624 value1 value2 = (output2222, value1100, value1) := by
  rw [input2222_def, output2222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1198_eq]
  try dsimp only
  rw [node2221_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2222 input1197)).val
theorem input2223_def : input2223 = (.seq input2222 input1197) := by
  unfold input2223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2222 output1197)).val
theorem output2223_def : output2223 = (.seq output2222 output1197) := by
  unfold output2223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2223_skip : Flapjack.WordAlloc.isSkip output2223 = false := by
  rw [output2223_def]
  conv => lhs; cbv
  try rfl
theorem node2223_eq : Flapjack.WordAlloc.removeDeadStructural input2223 value622 value1 value2 = (output2223, value1100, value1) := by
  rw [input2223_def, output2223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1197_eq]
  try dsimp only
  rw [node2222_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2223 input1194)).val
theorem input2224_def : input2224 = (.seq input2223 input1194) := by
  unfold input2224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2223 output1194)).val
theorem output2224_def : output2224 = (.seq output2223 output1194) := by
  unfold output2224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2224_skip : Flapjack.WordAlloc.isSkip output2224 = false := by
  rw [output2224_def]
  conv => lhs; cbv
  try rfl
theorem node2224_eq : Flapjack.WordAlloc.removeDeadStructural input2224 value621 value1 value2 = (output2224, value1100, value1) := by
  rw [input2224_def, output2224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1194_eq]
  try dsimp only
  rw [node2223_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2224 input1193)).val
theorem input2225_def : input2225 = (.seq input2224 input1193) := by
  unfold input2225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2224 output1193)).val
theorem output2225_def : output2225 = (.seq output2224 output1193) := by
  unfold output2225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2225_skip : Flapjack.WordAlloc.isSkip output2225 = false := by
  rw [output2225_def]
  conv => lhs; cbv
  try rfl
theorem node2225_eq : Flapjack.WordAlloc.removeDeadStructural input2225 value620 value1 value2 = (output2225, value1100, value1) := by
  rw [input2225_def, output2225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1193_eq]
  try dsimp only
  rw [node2224_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2225 input1192)).val
theorem input2226_def : input2226 = (.seq input2225 input1192) := by
  unfold input2226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2225 output1192)).val
theorem output2226_def : output2226 = (.seq output2225 output1192) := by
  unfold output2226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2226_skip : Flapjack.WordAlloc.isSkip output2226 = false := by
  rw [output2226_def]
  conv => lhs; cbv
  try rfl
theorem node2226_eq : Flapjack.WordAlloc.removeDeadStructural input2226 value619 value1 value2 = (output2226, value1100, value1) := by
  rw [input2226_def, output2226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1192_eq]
  try dsimp only
  rw [node2225_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2226 input1191)).val
theorem input2227_def : input2227 = (.seq input2226 input1191) := by
  unfold input2227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2226 output1191)).val
theorem output2227_def : output2227 = (.seq output2226 output1191) := by
  unfold output2227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2227_skip : Flapjack.WordAlloc.isSkip output2227 = false := by
  rw [output2227_def]
  conv => lhs; cbv
  try rfl
theorem node2227_eq : Flapjack.WordAlloc.removeDeadStructural input2227 value616 value1 value2 = (output2227, value1100, value1) := by
  rw [input2227_def, output2227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1191_eq]
  try dsimp only
  rw [node2226_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2227 input1186)).val
theorem input2228_def : input2228 = (.seq input2227 input1186) := by
  unfold input2228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2227 output1186)).val
theorem output2228_def : output2228 = (.seq output2227 output1186) := by
  unfold output2228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2228_skip : Flapjack.WordAlloc.isSkip output2228 = false := by
  rw [output2228_def]
  conv => lhs; cbv
  try rfl
theorem node2228_eq : Flapjack.WordAlloc.removeDeadStructural input2228 value615 value1 value2 = (output2228, value1100, value1) := by
  rw [input2228_def, output2228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1186_eq]
  try dsimp only
  rw [node2227_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2228 input1185)).val
theorem input2229_def : input2229 = (.seq input2228 input1185) := by
  unfold input2229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2228 output1185)).val
theorem output2229_def : output2229 = (.seq output2228 output1185) := by
  unfold output2229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2229_skip : Flapjack.WordAlloc.isSkip output2229 = false := by
  rw [output2229_def]
  conv => lhs; cbv
  try rfl
theorem node2229_eq : Flapjack.WordAlloc.removeDeadStructural input2229 value610 value1 value2 = (output2229, value1100, value1) := by
  rw [input2229_def, output2229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1185_eq]
  try dsimp only
  rw [node2228_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2229 input1176)).val
theorem input2230_def : input2230 = (.seq input2229 input1176) := by
  unfold input2230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2229 output1176)).val
theorem output2230_def : output2230 = (.seq output2229 output1176) := by
  unfold output2230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2230_skip : Flapjack.WordAlloc.isSkip output2230 = false := by
  rw [output2230_def]
  conv => lhs; cbv
  try rfl
theorem node2230_eq : Flapjack.WordAlloc.removeDeadStructural input2230 value609 value1 value2 = (output2230, value1100, value1) := by
  rw [input2230_def, output2230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1176_eq]
  try dsimp only
  rw [node2229_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2230 input1175)).val
theorem input2231_def : input2231 = (.seq input2230 input1175) := by
  unfold input2231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2230 output1175)).val
theorem output2231_def : output2231 = (.seq output2230 output1175) := by
  unfold output2231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2231_skip : Flapjack.WordAlloc.isSkip output2231 = false := by
  rw [output2231_def]
  conv => lhs; cbv
  try rfl
theorem node2231_eq : Flapjack.WordAlloc.removeDeadStructural input2231 value605 value1 value2 = (output2231, value1100, value1) := by
  rw [input2231_def, output2231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1175_eq]
  try dsimp only
  rw [node2230_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2231 input1168)).val
theorem input2232_def : input2232 = (.seq input2231 input1168) := by
  unfold input2232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2231 output1168)).val
theorem output2232_def : output2232 = (.seq output2231 output1168) := by
  unfold output2232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2232_skip : Flapjack.WordAlloc.isSkip output2232 = false := by
  rw [output2232_def]
  conv => lhs; cbv
  try rfl
theorem node2232_eq : Flapjack.WordAlloc.removeDeadStructural input2232 value604 value1 value2 = (output2232, value1100, value1) := by
  rw [input2232_def, output2232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1168_eq]
  try dsimp only
  rw [node2231_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2232 input1167)).val
theorem input2233_def : input2233 = (.seq input2232 input1167) := by
  unfold input2233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2232 output1167)).val
theorem output2233_def : output2233 = (.seq output2232 output1167) := by
  unfold output2233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2233_skip : Flapjack.WordAlloc.isSkip output2233 = false := by
  rw [output2233_def]
  conv => lhs; cbv
  try rfl
theorem node2233_eq : Flapjack.WordAlloc.removeDeadStructural input2233 value603 value1 value2 = (output2233, value1100, value1) := by
  rw [input2233_def, output2233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1167_eq]
  try dsimp only
  rw [node2232_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2233 input1166)).val
theorem input2234_def : input2234 = (.seq input2233 input1166) := by
  unfold input2234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2233 output1166)).val
theorem output2234_def : output2234 = (.seq output2233 output1166) := by
  unfold output2234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2234_skip : Flapjack.WordAlloc.isSkip output2234 = false := by
  rw [output2234_def]
  conv => lhs; cbv
  try rfl
theorem node2234_eq : Flapjack.WordAlloc.removeDeadStructural input2234 value602 value1 value2 = (output2234, value1100, value1) := by
  rw [input2234_def, output2234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1166_eq]
  try dsimp only
  rw [node2233_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2234 input1165)).val
theorem input2235_def : input2235 = (.seq input2234 input1165) := by
  unfold input2235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2234 output1165)).val
theorem output2235_def : output2235 = (.seq output2234 output1165) := by
  unfold output2235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2235_skip : Flapjack.WordAlloc.isSkip output2235 = false := by
  rw [output2235_def]
  conv => lhs; cbv
  try rfl
theorem node2235_eq : Flapjack.WordAlloc.removeDeadStructural input2235 value599 value1 value2 = (output2235, value1100, value1) := by
  rw [input2235_def, output2235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1165_eq]
  try dsimp only
  rw [node2234_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2235 input1160)).val
theorem input2236_def : input2236 = (.seq input2235 input1160) := by
  unfold input2236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2235 output1160)).val
theorem output2236_def : output2236 = (.seq output2235 output1160) := by
  unfold output2236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2236_skip : Flapjack.WordAlloc.isSkip output2236 = false := by
  rw [output2236_def]
  conv => lhs; cbv
  try rfl
theorem node2236_eq : Flapjack.WordAlloc.removeDeadStructural input2236 value598 value1 value2 = (output2236, value1100, value1) := by
  rw [input2236_def, output2236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1160_eq]
  try dsimp only
  rw [node2235_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2236 input1159)).val
theorem input2237_def : input2237 = (.seq input2236 input1159) := by
  unfold input2237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2236 output1159)).val
theorem output2237_def : output2237 = (.seq output2236 output1159) := by
  unfold output2237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2237_skip : Flapjack.WordAlloc.isSkip output2237 = false := by
  rw [output2237_def]
  conv => lhs; cbv
  try rfl
theorem node2237_eq : Flapjack.WordAlloc.removeDeadStructural input2237 value593 value1 value2 = (output2237, value1100, value1) := by
  rw [input2237_def, output2237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1159_eq]
  try dsimp only
  rw [node2236_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2237 input1150)).val
theorem input2238_def : input2238 = (.seq input2237 input1150) := by
  unfold input2238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2237 output1150)).val
theorem output2238_def : output2238 = (.seq output2237 output1150) := by
  unfold output2238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2238_skip : Flapjack.WordAlloc.isSkip output2238 = false := by
  rw [output2238_def]
  conv => lhs; cbv
  try rfl
theorem node2238_eq : Flapjack.WordAlloc.removeDeadStructural input2238 value592 value1 value2 = (output2238, value1100, value1) := by
  rw [input2238_def, output2238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1150_eq]
  try dsimp only
  rw [node2237_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2238 input1149)).val
theorem input2239_def : input2239 = (.seq input2238 input1149) := by
  unfold input2239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2238 output1149)).val
theorem output2239_def : output2239 = (.seq output2238 output1149) := by
  unfold output2239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2239_skip : Flapjack.WordAlloc.isSkip output2239 = false := by
  rw [output2239_def]
  conv => lhs; cbv
  try rfl
theorem node2239_eq : Flapjack.WordAlloc.removeDeadStructural input2239 value588 value1 value2 = (output2239, value1100, value1) := by
  rw [input2239_def, output2239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1149_eq]
  try dsimp only
  rw [node2238_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2239 input1142)).val
theorem input2240_def : input2240 = (.seq input2239 input1142) := by
  unfold input2240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2239 output1142)).val
theorem output2240_def : output2240 = (.seq output2239 output1142) := by
  unfold output2240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2240_skip : Flapjack.WordAlloc.isSkip output2240 = false := by
  rw [output2240_def]
  conv => lhs; cbv
  try rfl
theorem node2240_eq : Flapjack.WordAlloc.removeDeadStructural input2240 value587 value1 value2 = (output2240, value1100, value1) := by
  rw [input2240_def, output2240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1142_eq]
  try dsimp only
  rw [node2239_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2240 input1141)).val
theorem input2241_def : input2241 = (.seq input2240 input1141) := by
  unfold input2241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2240 output1141)).val
theorem output2241_def : output2241 = (.seq output2240 output1141) := by
  unfold output2241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2241_skip : Flapjack.WordAlloc.isSkip output2241 = false := by
  rw [output2241_def]
  conv => lhs; cbv
  try rfl
theorem node2241_eq : Flapjack.WordAlloc.removeDeadStructural input2241 value586 value1 value2 = (output2241, value1100, value1) := by
  rw [input2241_def, output2241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1141_eq]
  try dsimp only
  rw [node2240_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2241 input1140)).val
theorem input2242_def : input2242 = (.seq input2241 input1140) := by
  unfold input2242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2241 output1140)).val
theorem output2242_def : output2242 = (.seq output2241 output1140) := by
  unfold output2242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2242_skip : Flapjack.WordAlloc.isSkip output2242 = false := by
  rw [output2242_def]
  conv => lhs; cbv
  try rfl
theorem node2242_eq : Flapjack.WordAlloc.removeDeadStructural input2242 value585 value1 value2 = (output2242, value1100, value1) := by
  rw [input2242_def, output2242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1140_eq]
  try dsimp only
  rw [node2241_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2242 input1139)).val
theorem input2243_def : input2243 = (.seq input2242 input1139) := by
  unfold input2243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2242 output1139)).val
theorem output2243_def : output2243 = (.seq output2242 output1139) := by
  unfold output2243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2243_skip : Flapjack.WordAlloc.isSkip output2243 = false := by
  rw [output2243_def]
  conv => lhs; cbv
  try rfl
theorem node2243_eq : Flapjack.WordAlloc.removeDeadStructural input2243 value582 value1 value2 = (output2243, value1100, value1) := by
  rw [input2243_def, output2243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1139_eq]
  try dsimp only
  rw [node2242_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2243 input1134)).val
theorem input2244_def : input2244 = (.seq input2243 input1134) := by
  unfold input2244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2243 output1134)).val
theorem output2244_def : output2244 = (.seq output2243 output1134) := by
  unfold output2244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2244_skip : Flapjack.WordAlloc.isSkip output2244 = false := by
  rw [output2244_def]
  conv => lhs; cbv
  try rfl
theorem node2244_eq : Flapjack.WordAlloc.removeDeadStructural input2244 value581 value1 value2 = (output2244, value1100, value1) := by
  rw [input2244_def, output2244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1134_eq]
  try dsimp only
  rw [node2243_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2244 input1133)).val
theorem input2245_def : input2245 = (.seq input2244 input1133) := by
  unfold input2245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2244 output1133)).val
theorem output2245_def : output2245 = (.seq output2244 output1133) := by
  unfold output2245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2245_skip : Flapjack.WordAlloc.isSkip output2245 = false := by
  rw [output2245_def]
  conv => lhs; cbv
  try rfl
theorem node2245_eq : Flapjack.WordAlloc.removeDeadStructural input2245 value578 value1 value2 = (output2245, value1100, value1) := by
  rw [input2245_def, output2245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1133_eq]
  try dsimp only
  rw [node2244_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2245 input1128)).val
theorem input2246_def : input2246 = (.seq input2245 input1128) := by
  unfold input2246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2245 output1128)).val
theorem output2246_def : output2246 = (.seq output2245 output1128) := by
  unfold output2246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2246_skip : Flapjack.WordAlloc.isSkip output2246 = false := by
  rw [output2246_def]
  conv => lhs; cbv
  try rfl
theorem node2246_eq : Flapjack.WordAlloc.removeDeadStructural input2246 value577 value1 value2 = (output2246, value1100, value1) := by
  rw [input2246_def, output2246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1128_eq]
  try dsimp only
  rw [node2245_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2246 input1127)).val
theorem input2247_def : input2247 = (.seq input2246 input1127) := by
  unfold input2247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2246 output1127)).val
theorem output2247_def : output2247 = (.seq output2246 output1127) := by
  unfold output2247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2247_skip : Flapjack.WordAlloc.isSkip output2247 = false := by
  rw [output2247_def]
  conv => lhs; cbv
  try rfl
theorem node2247_eq : Flapjack.WordAlloc.removeDeadStructural input2247 value575 value1 value2 = (output2247, value1100, value1) := by
  rw [input2247_def, output2247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1127_eq]
  try dsimp only
  rw [node2246_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2247 input1124)).val
theorem input2248_def : input2248 = (.seq input2247 input1124) := by
  unfold input2248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2247 output1124)).val
theorem output2248_def : output2248 = (.seq output2247 output1124) := by
  unfold output2248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2248_skip : Flapjack.WordAlloc.isSkip output2248 = false := by
  rw [output2248_def]
  conv => lhs; cbv
  try rfl
theorem node2248_eq : Flapjack.WordAlloc.removeDeadStructural input2248 value574 value1 value2 = (output2248, value1100, value1) := by
  rw [input2248_def, output2248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1124_eq]
  try dsimp only
  rw [node2247_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2248 input1123)).val
theorem input2249_def : input2249 = (.seq input2248 input1123) := by
  unfold input2249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2248 output1123)).val
theorem output2249_def : output2249 = (.seq output2248 output1123) := by
  unfold output2249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2249_skip : Flapjack.WordAlloc.isSkip output2249 = false := by
  rw [output2249_def]
  conv => lhs; cbv
  try rfl
theorem node2249_eq : Flapjack.WordAlloc.removeDeadStructural input2249 value569 value1 value2 = (output2249, value1100, value1) := by
  rw [input2249_def, output2249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1123_eq]
  try dsimp only
  rw [node2248_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2249 input1114)).val
theorem input2250_def : input2250 = (.seq input2249 input1114) := by
  unfold input2250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2249 output1114)).val
theorem output2250_def : output2250 = (.seq output2249 output1114) := by
  unfold output2250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2250_skip : Flapjack.WordAlloc.isSkip output2250 = false := by
  rw [output2250_def]
  conv => lhs; cbv
  try rfl
theorem node2250_eq : Flapjack.WordAlloc.removeDeadStructural input2250 value568 value1 value2 = (output2250, value1100, value1) := by
  rw [input2250_def, output2250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1114_eq]
  try dsimp only
  rw [node2249_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2250 input1113)).val
theorem input2251_def : input2251 = (.seq input2250 input1113) := by
  unfold input2251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2250 output1113)).val
theorem output2251_def : output2251 = (.seq output2250 output1113) := by
  unfold output2251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2251_skip : Flapjack.WordAlloc.isSkip output2251 = false := by
  rw [output2251_def]
  conv => lhs; cbv
  try rfl
theorem node2251_eq : Flapjack.WordAlloc.removeDeadStructural input2251 value563 value1 value2 = (output2251, value1100, value1) := by
  rw [input2251_def, output2251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1113_eq]
  try dsimp only
  rw [node2250_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2251 input1104)).val
theorem input2252_def : input2252 = (.seq input2251 input1104) := by
  unfold input2252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2251 output1104)).val
theorem output2252_def : output2252 = (.seq output2251 output1104) := by
  unfold output2252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2252_skip : Flapjack.WordAlloc.isSkip output2252 = false := by
  rw [output2252_def]
  conv => lhs; cbv
  try rfl
theorem node2252_eq : Flapjack.WordAlloc.removeDeadStructural input2252 value562 value1 value2 = (output2252, value1100, value1) := by
  rw [input2252_def, output2252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1104_eq]
  try dsimp only
  rw [node2251_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2252 input1103)).val
theorem input2253_def : input2253 = (.seq input2252 input1103) := by
  unfold input2253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2252)).val
theorem output2253_def : output2253 = (output2252) := by
  unfold output2253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2253_skip : Flapjack.WordAlloc.isSkip output2253 = false := by
  rw [output2253_def]
  conv => lhs; cbv
  try rfl
theorem node2253_eq : Flapjack.WordAlloc.removeDeadStructural input2253 value562 value1 value2 = (output2253, value1100, value1) := by
  rw [input2253_def, output2253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1103_eq]
  try dsimp only
  rw [node2252_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2253 input1102)).val
theorem input2254_def : input2254 = (.seq input2253 input1102) := by
  unfold input2254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2253)).val
theorem output2254_def : output2254 = (output2253) := by
  unfold output2254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2254_skip : Flapjack.WordAlloc.isSkip output2254 = false := by
  rw [output2254_def]
  conv => lhs; cbv
  try rfl
theorem node2254_eq : Flapjack.WordAlloc.removeDeadStructural input2254 value562 value1 value2 = (output2254, value1100, value1) := by
  rw [input2254_def, output2254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1102_eq]
  try dsimp only
  rw [node2253_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2254 input1101)).val
theorem input2255_def : input2255 = (.seq input2254 input1101) := by
  unfold input2255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2254 output1101)).val
theorem output2255_def : output2255 = (.seq output2254 output1101) := by
  unfold output2255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2255_skip : Flapjack.WordAlloc.isSkip output2255 = false := by
  rw [output2255_def]
  conv => lhs; cbv
  try rfl
theorem node2255_eq : Flapjack.WordAlloc.removeDeadStructural input2255 value559 value1 value2 = (output2255, value1100, value1) := by
  rw [input2255_def, output2255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1101_eq]
  try dsimp only
  rw [node2254_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2255 input1096)).val
theorem input2256_def : input2256 = (.seq input2255 input1096) := by
  unfold input2256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2255 output1096)).val
theorem output2256_def : output2256 = (.seq output2255 output1096) := by
  unfold output2256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2256_skip : Flapjack.WordAlloc.isSkip output2256 = false := by
  rw [output2256_def]
  conv => lhs; cbv
  try rfl
theorem node2256_eq : Flapjack.WordAlloc.removeDeadStructural input2256 value556 value1 value2 = (output2256, value1100, value1) := by
  rw [input2256_def, output2256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1096_eq]
  try dsimp only
  rw [node2255_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2256 input1091)).val
theorem input2257_def : input2257 = (.seq input2256 input1091) := by
  unfold input2257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2256 output1091)).val
theorem output2257_def : output2257 = (.seq output2256 output1091) := by
  unfold output2257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2257_skip : Flapjack.WordAlloc.isSkip output2257 = false := by
  rw [output2257_def]
  conv => lhs; cbv
  try rfl
theorem node2257_eq : Flapjack.WordAlloc.removeDeadStructural input2257 value552 value1 value2 = (output2257, value1100, value1) := by
  rw [input2257_def, output2257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1091_eq]
  try dsimp only
  rw [node2256_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2257 input1084)).val
theorem input2258_def : input2258 = (.seq input2257 input1084) := by
  unfold input2258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2257)).val
theorem output2258_def : output2258 = (output2257) := by
  unfold output2258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2258_skip : Flapjack.WordAlloc.isSkip output2258 = false := by
  rw [output2258_def]
  conv => lhs; cbv
  try rfl
theorem node2258_eq : Flapjack.WordAlloc.removeDeadStructural input2258 value552 value1 value2 = (output2258, value1100, value1) := by
  rw [input2258_def, output2258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1084_eq]
  try dsimp only
  rw [node2257_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2258 input1083)).val
theorem input2259_def : input2259 = (.seq input2258 input1083) := by
  unfold input2259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2258)).val
theorem output2259_def : output2259 = (output2258) := by
  unfold output2259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2259_skip : Flapjack.WordAlloc.isSkip output2259 = false := by
  rw [output2259_def]
  conv => lhs; cbv
  try rfl
theorem node2259_eq : Flapjack.WordAlloc.removeDeadStructural input2259 value552 value1 value2 = (output2259, value1100, value1) := by
  rw [input2259_def, output2259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1083_eq]
  try dsimp only
  rw [node2258_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2259 input1082)).val
theorem input2260_def : input2260 = (.seq input2259 input1082) := by
  unfold input2260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2259 output1082)).val
theorem output2260_def : output2260 = (.seq output2259 output1082) := by
  unfold output2260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2260_skip : Flapjack.WordAlloc.isSkip output2260 = false := by
  rw [output2260_def]
  conv => lhs; cbv
  try rfl
theorem node2260_eq : Flapjack.WordAlloc.removeDeadStructural input2260 value551 value1 value2 = (output2260, value1100, value1) := by
  rw [input2260_def, output2260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1082_eq]
  try dsimp only
  rw [node2259_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2260 input1081)).val
theorem input2261_def : input2261 = (.seq input2260 input1081) := by
  unfold input2261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2260 output1081)).val
theorem output2261_def : output2261 = (.seq output2260 output1081) := by
  unfold output2261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2261_skip : Flapjack.WordAlloc.isSkip output2261 = false := by
  rw [output2261_def]
  conv => lhs; cbv
  try rfl
theorem node2261_eq : Flapjack.WordAlloc.removeDeadStructural input2261 value550 value1 value2 = (output2261, value1100, value1) := by
  rw [input2261_def, output2261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1081_eq]
  try dsimp only
  rw [node2260_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2261 input1080)).val
theorem input2262_def : input2262 = (.seq input2261 input1080) := by
  unfold input2262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2261 output1080)).val
theorem output2262_def : output2262 = (.seq output2261 output1080) := by
  unfold output2262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2262_skip : Flapjack.WordAlloc.isSkip output2262 = false := by
  rw [output2262_def]
  conv => lhs; cbv
  try rfl
theorem node2262_eq : Flapjack.WordAlloc.removeDeadStructural input2262 value547 value1 value2 = (output2262, value1100, value1) := by
  rw [input2262_def, output2262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1080_eq]
  try dsimp only
  rw [node2261_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2262 input1075)).val
theorem input2263_def : input2263 = (.seq input2262 input1075) := by
  unfold input2263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2262 output1075)).val
theorem output2263_def : output2263 = (.seq output2262 output1075) := by
  unfold output2263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2263_skip : Flapjack.WordAlloc.isSkip output2263 = false := by
  rw [output2263_def]
  conv => lhs; cbv
  try rfl
theorem node2263_eq : Flapjack.WordAlloc.removeDeadStructural input2263 value546 value1 value2 = (output2263, value1100, value1) := by
  rw [input2263_def, output2263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1075_eq]
  try dsimp only
  rw [node2262_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2263 input1074)).val
theorem input2264_def : input2264 = (.seq input2263 input1074) := by
  unfold input2264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2263 output1074)).val
theorem output2264_def : output2264 = (.seq output2263 output1074) := by
  unfold output2264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2264_skip : Flapjack.WordAlloc.isSkip output2264 = false := by
  rw [output2264_def]
  conv => lhs; cbv
  try rfl
theorem node2264_eq : Flapjack.WordAlloc.removeDeadStructural input2264 value543 value1 value2 = (output2264, value1100, value1) := by
  rw [input2264_def, output2264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1074_eq]
  try dsimp only
  rw [node2263_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2264 input1069)).val
theorem input2265_def : input2265 = (.seq input2264 input1069) := by
  unfold input2265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2264 output1069)).val
theorem output2265_def : output2265 = (.seq output2264 output1069) := by
  unfold output2265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2265_skip : Flapjack.WordAlloc.isSkip output2265 = false := by
  rw [output2265_def]
  conv => lhs; cbv
  try rfl
theorem node2265_eq : Flapjack.WordAlloc.removeDeadStructural input2265 value542 value1 value2 = (output2265, value1100, value1) := by
  rw [input2265_def, output2265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1069_eq]
  try dsimp only
  rw [node2264_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2265 input1068)).val
theorem input2266_def : input2266 = (.seq input2265 input1068) := by
  unfold input2266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2265 output1068)).val
theorem output2266_def : output2266 = (.seq output2265 output1068) := by
  unfold output2266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2266_skip : Flapjack.WordAlloc.isSkip output2266 = false := by
  rw [output2266_def]
  conv => lhs; cbv
  try rfl
theorem node2266_eq : Flapjack.WordAlloc.removeDeadStructural input2266 value540 value1 value2 = (output2266, value1100, value1) := by
  rw [input2266_def, output2266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1068_eq]
  try dsimp only
  rw [node2265_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2266 input1065)).val
theorem input2267_def : input2267 = (.seq input2266 input1065) := by
  unfold input2267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2266 output1065)).val
theorem output2267_def : output2267 = (.seq output2266 output1065) := by
  unfold output2267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2267_skip : Flapjack.WordAlloc.isSkip output2267 = false := by
  rw [output2267_def]
  conv => lhs; cbv
  try rfl
theorem node2267_eq : Flapjack.WordAlloc.removeDeadStructural input2267 value539 value1 value2 = (output2267, value1100, value1) := by
  rw [input2267_def, output2267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1065_eq]
  try dsimp only
  rw [node2266_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2267 input1064)).val
theorem input2268_def : input2268 = (.seq input2267 input1064) := by
  unfold input2268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2267 output1064)).val
theorem output2268_def : output2268 = (.seq output2267 output1064) := by
  unfold output2268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2268_skip : Flapjack.WordAlloc.isSkip output2268 = false := by
  rw [output2268_def]
  conv => lhs; cbv
  try rfl
theorem node2268_eq : Flapjack.WordAlloc.removeDeadStructural input2268 value538 value1 value2 = (output2268, value1100, value1) := by
  rw [input2268_def, output2268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1064_eq]
  try dsimp only
  rw [node2267_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2268 input1063)).val
theorem input2269_def : input2269 = (.seq input2268 input1063) := by
  unfold input2269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2268 output1063)).val
theorem output2269_def : output2269 = (.seq output2268 output1063) := by
  unfold output2269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2269_skip : Flapjack.WordAlloc.isSkip output2269 = false := by
  rw [output2269_def]
  conv => lhs; cbv
  try rfl
theorem node2269_eq : Flapjack.WordAlloc.removeDeadStructural input2269 value537 value1 value2 = (output2269, value1100, value1) := by
  rw [input2269_def, output2269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1063_eq]
  try dsimp only
  rw [node2268_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2269 input1062)).val
theorem input2270_def : input2270 = (.seq input2269 input1062) := by
  unfold input2270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2269 output1062)).val
theorem output2270_def : output2270 = (.seq output2269 output1062) := by
  unfold output2270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2270_skip : Flapjack.WordAlloc.isSkip output2270 = false := by
  rw [output2270_def]
  conv => lhs; cbv
  try rfl
theorem node2270_eq : Flapjack.WordAlloc.removeDeadStructural input2270 value534 value1 value2 = (output2270, value1100, value1) := by
  rw [input2270_def, output2270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1062_eq]
  try dsimp only
  rw [node2269_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2270 input1057)).val
theorem input2271_def : input2271 = (.seq input2270 input1057) := by
  unfold input2271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2270 output1057)).val
theorem output2271_def : output2271 = (.seq output2270 output1057) := by
  unfold output2271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2271_skip : Flapjack.WordAlloc.isSkip output2271 = false := by
  rw [output2271_def]
  conv => lhs; cbv
  try rfl
theorem node2271_eq : Flapjack.WordAlloc.removeDeadStructural input2271 value533 value1 value2 = (output2271, value1100, value1) := by
  rw [input2271_def, output2271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1057_eq]
  try dsimp only
  rw [node2270_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2271 input1056)).val
theorem input2272_def : input2272 = (.seq input2271 input1056) := by
  unfold input2272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2271 output1056)).val
theorem output2272_def : output2272 = (.seq output2271 output1056) := by
  unfold output2272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2272_skip : Flapjack.WordAlloc.isSkip output2272 = false := by
  rw [output2272_def]
  conv => lhs; cbv
  try rfl
theorem node2272_eq : Flapjack.WordAlloc.removeDeadStructural input2272 value528 value1 value2 = (output2272, value1100, value1) := by
  rw [input2272_def, output2272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1056_eq]
  try dsimp only
  rw [node2271_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2272 input1047)).val
theorem input2273_def : input2273 = (.seq input2272 input1047) := by
  unfold input2273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2272 output1047)).val
theorem output2273_def : output2273 = (.seq output2272 output1047) := by
  unfold output2273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2273_skip : Flapjack.WordAlloc.isSkip output2273 = false := by
  rw [output2273_def]
  conv => lhs; cbv
  try rfl
theorem node2273_eq : Flapjack.WordAlloc.removeDeadStructural input2273 value527 value1 value2 = (output2273, value1100, value1) := by
  rw [input2273_def, output2273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1047_eq]
  try dsimp only
  rw [node2272_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2273 input1046)).val
theorem input2274_def : input2274 = (.seq input2273 input1046) := by
  unfold input2274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2273 output1046)).val
theorem output2274_def : output2274 = (.seq output2273 output1046) := by
  unfold output2274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2274_skip : Flapjack.WordAlloc.isSkip output2274 = false := by
  rw [output2274_def]
  conv => lhs; cbv
  try rfl
theorem node2274_eq : Flapjack.WordAlloc.removeDeadStructural input2274 value523 value1 value2 = (output2274, value1100, value1) := by
  rw [input2274_def, output2274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1046_eq]
  try dsimp only
  rw [node2273_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2274 input1039)).val
theorem input2275_def : input2275 = (.seq input2274 input1039) := by
  unfold input2275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2274 output1039)).val
theorem output2275_def : output2275 = (.seq output2274 output1039) := by
  unfold output2275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2275_skip : Flapjack.WordAlloc.isSkip output2275 = false := by
  rw [output2275_def]
  conv => lhs; cbv
  try rfl
theorem node2275_eq : Flapjack.WordAlloc.removeDeadStructural input2275 value522 value1 value2 = (output2275, value1100, value1) := by
  rw [input2275_def, output2275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1039_eq]
  try dsimp only
  rw [node2274_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2275 input1038)).val
theorem input2276_def : input2276 = (.seq input2275 input1038) := by
  unfold input2276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2275 output1038)).val
theorem output2276_def : output2276 = (.seq output2275 output1038) := by
  unfold output2276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2276_skip : Flapjack.WordAlloc.isSkip output2276 = false := by
  rw [output2276_def]
  conv => lhs; cbv
  try rfl
theorem node2276_eq : Flapjack.WordAlloc.removeDeadStructural input2276 value521 value1 value2 = (output2276, value1100, value1) := by
  rw [input2276_def, output2276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1038_eq]
  try dsimp only
  rw [node2275_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2276 input1037)).val
theorem input2277_def : input2277 = (.seq input2276 input1037) := by
  unfold input2277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2276 output1037)).val
theorem output2277_def : output2277 = (.seq output2276 output1037) := by
  unfold output2277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2277_skip : Flapjack.WordAlloc.isSkip output2277 = false := by
  rw [output2277_def]
  conv => lhs; cbv
  try rfl
theorem node2277_eq : Flapjack.WordAlloc.removeDeadStructural input2277 value520 value1 value2 = (output2277, value1100, value1) := by
  rw [input2277_def, output2277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1037_eq]
  try dsimp only
  rw [node2276_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2277 input1036)).val
theorem input2278_def : input2278 = (.seq input2277 input1036) := by
  unfold input2278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2277 output1036)).val
theorem output2278_def : output2278 = (.seq output2277 output1036) := by
  unfold output2278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2278_skip : Flapjack.WordAlloc.isSkip output2278 = false := by
  rw [output2278_def]
  conv => lhs; cbv
  try rfl
theorem node2278_eq : Flapjack.WordAlloc.removeDeadStructural input2278 value517 value1 value2 = (output2278, value1100, value1) := by
  rw [input2278_def, output2278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1036_eq]
  try dsimp only
  rw [node2277_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2278 input1031)).val
theorem input2279_def : input2279 = (.seq input2278 input1031) := by
  unfold input2279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2278 output1031)).val
theorem output2279_def : output2279 = (.seq output2278 output1031) := by
  unfold output2279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2279_skip : Flapjack.WordAlloc.isSkip output2279 = false := by
  rw [output2279_def]
  conv => lhs; cbv
  try rfl
theorem node2279_eq : Flapjack.WordAlloc.removeDeadStructural input2279 value516 value1 value2 = (output2279, value1100, value1) := by
  rw [input2279_def, output2279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1031_eq]
  try dsimp only
  rw [node2278_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2279 input1030)).val
theorem input2280_def : input2280 = (.seq input2279 input1030) := by
  unfold input2280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2279 output1030)).val
theorem output2280_def : output2280 = (.seq output2279 output1030) := by
  unfold output2280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2280_skip : Flapjack.WordAlloc.isSkip output2280 = false := by
  rw [output2280_def]
  conv => lhs; cbv
  try rfl
theorem node2280_eq : Flapjack.WordAlloc.removeDeadStructural input2280 value511 value1 value2 = (output2280, value1100, value1) := by
  rw [input2280_def, output2280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1030_eq]
  try dsimp only
  rw [node2279_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2280 input1021)).val
theorem input2281_def : input2281 = (.seq input2280 input1021) := by
  unfold input2281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2280 output1021)).val
theorem output2281_def : output2281 = (.seq output2280 output1021) := by
  unfold output2281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2281_skip : Flapjack.WordAlloc.isSkip output2281 = false := by
  rw [output2281_def]
  conv => lhs; cbv
  try rfl
theorem node2281_eq : Flapjack.WordAlloc.removeDeadStructural input2281 value510 value1 value2 = (output2281, value1100, value1) := by
  rw [input2281_def, output2281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1021_eq]
  try dsimp only
  rw [node2280_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2281 input1020)).val
theorem input2282_def : input2282 = (.seq input2281 input1020) := by
  unfold input2282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2281 output1020)).val
theorem output2282_def : output2282 = (.seq output2281 output1020) := by
  unfold output2282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2282_skip : Flapjack.WordAlloc.isSkip output2282 = false := by
  rw [output2282_def]
  conv => lhs; cbv
  try rfl
theorem node2282_eq : Flapjack.WordAlloc.removeDeadStructural input2282 value506 value1 value2 = (output2282, value1100, value1) := by
  rw [input2282_def, output2282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1020_eq]
  try dsimp only
  rw [node2281_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2282 input1013)).val
theorem input2283_def : input2283 = (.seq input2282 input1013) := by
  unfold input2283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2282 output1013)).val
theorem output2283_def : output2283 = (.seq output2282 output1013) := by
  unfold output2283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2283_skip : Flapjack.WordAlloc.isSkip output2283 = false := by
  rw [output2283_def]
  conv => lhs; cbv
  try rfl
theorem node2283_eq : Flapjack.WordAlloc.removeDeadStructural input2283 value505 value1 value2 = (output2283, value1100, value1) := by
  rw [input2283_def, output2283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1013_eq]
  try dsimp only
  rw [node2282_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2283 input1012)).val
theorem input2284_def : input2284 = (.seq input2283 input1012) := by
  unfold input2284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2283 output1012)).val
theorem output2284_def : output2284 = (.seq output2283 output1012) := by
  unfold output2284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2284_skip : Flapjack.WordAlloc.isSkip output2284 = false := by
  rw [output2284_def]
  conv => lhs; cbv
  try rfl
theorem node2284_eq : Flapjack.WordAlloc.removeDeadStructural input2284 value502 value1 value2 = (output2284, value1100, value1) := by
  rw [input2284_def, output2284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1012_eq]
  try dsimp only
  rw [node2283_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2284 input1007)).val
theorem input2285_def : input2285 = (.seq input2284 input1007) := by
  unfold input2285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2284 output1007)).val
theorem output2285_def : output2285 = (.seq output2284 output1007) := by
  unfold output2285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2285_skip : Flapjack.WordAlloc.isSkip output2285 = false := by
  rw [output2285_def]
  conv => lhs; cbv
  try rfl
theorem node2285_eq : Flapjack.WordAlloc.removeDeadStructural input2285 value501 value1 value2 = (output2285, value1100, value1) := by
  rw [input2285_def, output2285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1007_eq]
  try dsimp only
  rw [node2284_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2285 input1006)).val
theorem input2286_def : input2286 = (.seq input2285 input1006) := by
  unfold input2286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2285 output1006)).val
theorem output2286_def : output2286 = (.seq output2285 output1006) := by
  unfold output2286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2286_skip : Flapjack.WordAlloc.isSkip output2286 = false := by
  rw [output2286_def]
  conv => lhs; cbv
  try rfl
theorem node2286_eq : Flapjack.WordAlloc.removeDeadStructural input2286 value498 value1 value2 = (output2286, value1100, value1) := by
  rw [input2286_def, output2286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1006_eq]
  try dsimp only
  rw [node2285_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2286 input1001)).val
theorem input2287_def : input2287 = (.seq input2286 input1001) := by
  unfold input2287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2286 output1001)).val
theorem output2287_def : output2287 = (.seq output2286 output1001) := by
  unfold output2287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2287_skip : Flapjack.WordAlloc.isSkip output2287 = false := by
  rw [output2287_def]
  conv => lhs; cbv
  try rfl
theorem node2287_eq : Flapjack.WordAlloc.removeDeadStructural input2287 value497 value1 value2 = (output2287, value1100, value1) := by
  rw [input2287_def, output2287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1001_eq]
  try dsimp only
  rw [node2286_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2287 input1000)).val
theorem input2288_def : input2288 = (.seq input2287 input1000) := by
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
theorem node2288_eq : Flapjack.WordAlloc.removeDeadStructural input2288 value497 value1 value2 = (output2288, value1100, value1) := by
  rw [input2288_def, output2288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1000_eq]
  try dsimp only
  rw [node2287_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2288 input999)).val
theorem input2289_def : input2289 = (.seq input2288 input999) := by
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
theorem node2289_eq : Flapjack.WordAlloc.removeDeadStructural input2289 value497 value1 value2 = (output2289, value1100, value1) := by
  rw [input2289_def, output2289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node999_eq]
  try dsimp only
  rw [node2288_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2289 input998)).val
theorem input2290_def : input2290 = (.seq input2289 input998) := by
  unfold input2290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2289 output998)).val
theorem output2290_def : output2290 = (.seq output2289 output998) := by
  unfold output2290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2290_skip : Flapjack.WordAlloc.isSkip output2290 = false := by
  rw [output2290_def]
  conv => lhs; cbv
  try rfl
theorem node2290_eq : Flapjack.WordAlloc.removeDeadStructural input2290 value494 value1 value2 = (output2290, value1100, value1) := by
  rw [input2290_def, output2290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node998_eq]
  try dsimp only
  rw [node2289_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2290 input993)).val
theorem input2291_def : input2291 = (.seq input2290 input993) := by
  unfold input2291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2290 output993)).val
theorem output2291_def : output2291 = (.seq output2290 output993) := by
  unfold output2291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2291_skip : Flapjack.WordAlloc.isSkip output2291 = false := by
  rw [output2291_def]
  conv => lhs; cbv
  try rfl
theorem node2291_eq : Flapjack.WordAlloc.removeDeadStructural input2291 value491 value1 value2 = (output2291, value1100, value1) := by
  rw [input2291_def, output2291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node993_eq]
  try dsimp only
  rw [node2290_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2291 input988)).val
theorem input2292_def : input2292 = (.seq input2291 input988) := by
  unfold input2292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2291 output988)).val
theorem output2292_def : output2292 = (.seq output2291 output988) := by
  unfold output2292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2292_skip : Flapjack.WordAlloc.isSkip output2292 = false := by
  rw [output2292_def]
  conv => lhs; cbv
  try rfl
theorem node2292_eq : Flapjack.WordAlloc.removeDeadStructural input2292 value487 value1 value2 = (output2292, value1100, value1) := by
  rw [input2292_def, output2292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node988_eq]
  try dsimp only
  rw [node2291_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2292 input981)).val
theorem input2293_def : input2293 = (.seq input2292 input981) := by
  unfold input2293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2292)).val
theorem output2293_def : output2293 = (output2292) := by
  unfold output2293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2293_skip : Flapjack.WordAlloc.isSkip output2293 = false := by
  rw [output2293_def]
  conv => lhs; cbv
  try rfl
theorem node2293_eq : Flapjack.WordAlloc.removeDeadStructural input2293 value487 value1 value2 = (output2293, value1100, value1) := by
  rw [input2293_def, output2293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node981_eq]
  try dsimp only
  rw [node2292_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2293 input980)).val
theorem input2294_def : input2294 = (.seq input2293 input980) := by
  unfold input2294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2293)).val
theorem output2294_def : output2294 = (output2293) := by
  unfold output2294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2294_skip : Flapjack.WordAlloc.isSkip output2294 = false := by
  rw [output2294_def]
  conv => lhs; cbv
  try rfl
theorem node2294_eq : Flapjack.WordAlloc.removeDeadStructural input2294 value487 value1 value2 = (output2294, value1100, value1) := by
  rw [input2294_def, output2294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node980_eq]
  try dsimp only
  rw [node2293_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2294 input979)).val
theorem input2295_def : input2295 = (.seq input2294 input979) := by
  unfold input2295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2294 output979)).val
theorem output2295_def : output2295 = (.seq output2294 output979) := by
  unfold output2295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2295_skip : Flapjack.WordAlloc.isSkip output2295 = false := by
  rw [output2295_def]
  conv => lhs; cbv
  try rfl
theorem node2295_eq : Flapjack.WordAlloc.removeDeadStructural input2295 value486 value1 value2 = (output2295, value1100, value1) := by
  rw [input2295_def, output2295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node979_eq]
  try dsimp only
  rw [node2294_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2295 input978)).val
theorem input2296_def : input2296 = (.seq input2295 input978) := by
  unfold input2296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2295 output978)).val
theorem output2296_def : output2296 = (.seq output2295 output978) := by
  unfold output2296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2296_skip : Flapjack.WordAlloc.isSkip output2296 = false := by
  rw [output2296_def]
  conv => lhs; cbv
  try rfl
theorem node2296_eq : Flapjack.WordAlloc.removeDeadStructural input2296 value485 value1 value2 = (output2296, value1100, value1) := by
  rw [input2296_def, output2296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node978_eq]
  try dsimp only
  rw [node2295_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2296 input977)).val
theorem input2297_def : input2297 = (.seq input2296 input977) := by
  unfold input2297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2296 output977)).val
theorem output2297_def : output2297 = (.seq output2296 output977) := by
  unfold output2297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2297_skip : Flapjack.WordAlloc.isSkip output2297 = false := by
  rw [output2297_def]
  conv => lhs; cbv
  try rfl
theorem node2297_eq : Flapjack.WordAlloc.removeDeadStructural input2297 value482 value1 value2 = (output2297, value1100, value1) := by
  rw [input2297_def, output2297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node977_eq]
  try dsimp only
  rw [node2296_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2297 input972)).val
theorem input2298_def : input2298 = (.seq input2297 input972) := by
  unfold input2298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2297 output972)).val
theorem output2298_def : output2298 = (.seq output2297 output972) := by
  unfold output2298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2298_skip : Flapjack.WordAlloc.isSkip output2298 = false := by
  rw [output2298_def]
  conv => lhs; cbv
  try rfl
theorem node2298_eq : Flapjack.WordAlloc.removeDeadStructural input2298 value481 value1 value2 = (output2298, value1100, value1) := by
  rw [input2298_def, output2298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node972_eq]
  try dsimp only
  rw [node2297_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2298 input971)).val
theorem input2299_def : input2299 = (.seq input2298 input971) := by
  unfold input2299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2298 output971)).val
theorem output2299_def : output2299 = (.seq output2298 output971) := by
  unfold output2299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2299_skip : Flapjack.WordAlloc.isSkip output2299 = false := by
  rw [output2299_def]
  conv => lhs; cbv
  try rfl
theorem node2299_eq : Flapjack.WordAlloc.removeDeadStructural input2299 value478 value1 value2 = (output2299, value1100, value1) := by
  rw [input2299_def, output2299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node971_eq]
  try dsimp only
  rw [node2298_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2299 input966)).val
theorem input2300_def : input2300 = (.seq input2299 input966) := by
  unfold input2300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2299 output966)).val
theorem output2300_def : output2300 = (.seq output2299 output966) := by
  unfold output2300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2300_skip : Flapjack.WordAlloc.isSkip output2300 = false := by
  rw [output2300_def]
  conv => lhs; cbv
  try rfl
theorem node2300_eq : Flapjack.WordAlloc.removeDeadStructural input2300 value477 value1 value2 = (output2300, value1100, value1) := by
  rw [input2300_def, output2300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node966_eq]
  try dsimp only
  rw [node2299_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2300 input965)).val
theorem input2301_def : input2301 = (.seq input2300 input965) := by
  unfold input2301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2300 output965)).val
theorem output2301_def : output2301 = (.seq output2300 output965) := by
  unfold output2301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2301_skip : Flapjack.WordAlloc.isSkip output2301 = false := by
  rw [output2301_def]
  conv => lhs; cbv
  try rfl
theorem node2301_eq : Flapjack.WordAlloc.removeDeadStructural input2301 value475 value1 value2 = (output2301, value1100, value1) := by
  rw [input2301_def, output2301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node965_eq]
  try dsimp only
  rw [node2300_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2301 input962)).val
theorem input2302_def : input2302 = (.seq input2301 input962) := by
  unfold input2302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2301 output962)).val
theorem output2302_def : output2302 = (.seq output2301 output962) := by
  unfold output2302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2302_skip : Flapjack.WordAlloc.isSkip output2302 = false := by
  rw [output2302_def]
  conv => lhs; cbv
  try rfl
theorem node2302_eq : Flapjack.WordAlloc.removeDeadStructural input2302 value474 value1 value2 = (output2302, value1100, value1) := by
  rw [input2302_def, output2302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node962_eq]
  try dsimp only
  rw [node2301_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2302 input961)).val
theorem input2303_def : input2303 = (.seq input2302 input961) := by
  unfold input2303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2302 output961)).val
theorem output2303_def : output2303 = (.seq output2302 output961) := by
  unfold output2303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2303_skip : Flapjack.WordAlloc.isSkip output2303 = false := by
  rw [output2303_def]
  conv => lhs; cbv
  try rfl
theorem node2303_eq : Flapjack.WordAlloc.removeDeadStructural input2303 value473 value1 value2 = (output2303, value1100, value1) := by
  rw [input2303_def, output2303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node961_eq]
  try dsimp only
  rw [node2302_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node2303_eq
end InitECandidate.Proofs.DeadStages647
