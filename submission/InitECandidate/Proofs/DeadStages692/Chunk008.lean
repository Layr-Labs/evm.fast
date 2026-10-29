import InitECandidate.Proofs.DeadStages692.Chunk007
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages692
@[irreducible, cbv_opaque] def input2048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2047 input514)).val
theorem input2048_def : input2048 = (.seq input2047 input514) := by
  unfold input2048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2047 output514)).val
theorem output2048_def : output2048 = (.seq output2047 output514) := by
  unfold output2048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2048_skip : Flapjack.WordAlloc.isSkip output2048 = false := by
  rw [output2048_def]
  conv => lhs; cbv
  try rfl
theorem node2048_eq : Flapjack.WordAlloc.removeDeadStructural input2048 value277 value1 value2 = (output2048, value833, value1) := by
  rw [input2048_def, output2048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node514_eq]
  try dsimp only
  rw [node2047_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2048 input509)).val
theorem input2049_def : input2049 = (.seq input2048 input509) := by
  unfold input2049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2048 output509)).val
theorem output2049_def : output2049 = (.seq output2048 output509) := by
  unfold output2049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2049_skip : Flapjack.WordAlloc.isSkip output2049 = false := by
  rw [output2049_def]
  conv => lhs; cbv
  try rfl
theorem node2049_eq : Flapjack.WordAlloc.removeDeadStructural input2049 value277 value1 value2 = (output2049, value833, value1) := by
  rw [input2049_def, output2049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node509_eq]
  try dsimp only
  rw [node2048_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2049 input508)).val
theorem input2050_def : input2050 = (.seq input2049 input508) := by
  unfold input2050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2049 output508)).val
theorem output2050_def : output2050 = (.seq output2049 output508) := by
  unfold output2050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2050_skip : Flapjack.WordAlloc.isSkip output2050 = false := by
  rw [output2050_def]
  conv => lhs; cbv
  try rfl
theorem node2050_eq : Flapjack.WordAlloc.removeDeadStructural input2050 value276 value1 value2 = (output2050, value833, value1) := by
  rw [input2050_def, output2050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node508_eq]
  try dsimp only
  rw [node2049_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2050 input507)).val
theorem input2051_def : input2051 = (.seq input2050 input507) := by
  unfold input2051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2050 output507)).val
theorem output2051_def : output2051 = (.seq output2050 output507) := by
  unfold output2051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2051_skip : Flapjack.WordAlloc.isSkip output2051 = false := by
  rw [output2051_def]
  conv => lhs; cbv
  try rfl
theorem node2051_eq : Flapjack.WordAlloc.removeDeadStructural input2051 value275 value1 value2 = (output2051, value833, value1) := by
  rw [input2051_def, output2051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node507_eq]
  try dsimp only
  rw [node2050_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2051 input506)).val
theorem input2052_def : input2052 = (.seq input2051 input506) := by
  unfold input2052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2051 output506)).val
theorem output2052_def : output2052 = (.seq output2051 output506) := by
  unfold output2052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2052_skip : Flapjack.WordAlloc.isSkip output2052 = false := by
  rw [output2052_def]
  conv => lhs; cbv
  try rfl
theorem node2052_eq : Flapjack.WordAlloc.removeDeadStructural input2052 value274 value1 value2 = (output2052, value833, value1) := by
  rw [input2052_def, output2052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node506_eq]
  try dsimp only
  rw [node2051_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2052 input505)).val
theorem input2053_def : input2053 = (.seq input2052 input505) := by
  unfold input2053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2052 output505)).val
theorem output2053_def : output2053 = (.seq output2052 output505) := by
  unfold output2053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2053_skip : Flapjack.WordAlloc.isSkip output2053 = false := by
  rw [output2053_def]
  conv => lhs; cbv
  try rfl
theorem node2053_eq : Flapjack.WordAlloc.removeDeadStructural input2053 value273 value1 value2 = (output2053, value833, value1) := by
  rw [input2053_def, output2053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node505_eq]
  try dsimp only
  rw [node2052_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2053 input504)).val
theorem input2054_def : input2054 = (.seq input2053 input504) := by
  unfold input2054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2053 output504)).val
theorem output2054_def : output2054 = (.seq output2053 output504) := by
  unfold output2054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2054_skip : Flapjack.WordAlloc.isSkip output2054 = false := by
  rw [output2054_def]
  conv => lhs; cbv
  try rfl
theorem node2054_eq : Flapjack.WordAlloc.removeDeadStructural input2054 value270 value1 value2 = (output2054, value833, value1) := by
  rw [input2054_def, output2054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node504_eq]
  try dsimp only
  rw [node2053_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2054 input499)).val
theorem input2055_def : input2055 = (.seq input2054 input499) := by
  unfold input2055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2054 output499)).val
theorem output2055_def : output2055 = (.seq output2054 output499) := by
  unfold output2055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2055_skip : Flapjack.WordAlloc.isSkip output2055 = false := by
  rw [output2055_def]
  conv => lhs; cbv
  try rfl
theorem node2055_eq : Flapjack.WordAlloc.removeDeadStructural input2055 value270 value1 value2 = (output2055, value833, value1) := by
  rw [input2055_def, output2055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node499_eq]
  try dsimp only
  rw [node2054_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2055 input498)).val
theorem input2056_def : input2056 = (.seq input2055 input498) := by
  unfold input2056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2055 output498)).val
theorem output2056_def : output2056 = (.seq output2055 output498) := by
  unfold output2056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2056_skip : Flapjack.WordAlloc.isSkip output2056 = false := by
  rw [output2056_def]
  conv => lhs; cbv
  try rfl
theorem node2056_eq : Flapjack.WordAlloc.removeDeadStructural input2056 value269 value1 value2 = (output2056, value833, value1) := by
  rw [input2056_def, output2056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node498_eq]
  try dsimp only
  rw [node2055_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2056 input497)).val
theorem input2057_def : input2057 = (.seq input2056 input497) := by
  unfold input2057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2056 output497)).val
theorem output2057_def : output2057 = (.seq output2056 output497) := by
  unfold output2057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2057_skip : Flapjack.WordAlloc.isSkip output2057 = false := by
  rw [output2057_def]
  conv => lhs; cbv
  try rfl
theorem node2057_eq : Flapjack.WordAlloc.removeDeadStructural input2057 value268 value1 value2 = (output2057, value833, value1) := by
  rw [input2057_def, output2057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node497_eq]
  try dsimp only
  rw [node2056_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2057 input496)).val
theorem input2058_def : input2058 = (.seq input2057 input496) := by
  unfold input2058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2057 output496)).val
theorem output2058_def : output2058 = (.seq output2057 output496) := by
  unfold output2058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2058_skip : Flapjack.WordAlloc.isSkip output2058 = false := by
  rw [output2058_def]
  conv => lhs; cbv
  try rfl
theorem node2058_eq : Flapjack.WordAlloc.removeDeadStructural input2058 value267 value1 value2 = (output2058, value833, value1) := by
  rw [input2058_def, output2058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node496_eq]
  try dsimp only
  rw [node2057_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2058 input495)).val
theorem input2059_def : input2059 = (.seq input2058 input495) := by
  unfold input2059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2058 output495)).val
theorem output2059_def : output2059 = (.seq output2058 output495) := by
  unfold output2059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2059_skip : Flapjack.WordAlloc.isSkip output2059 = false := by
  rw [output2059_def]
  conv => lhs; cbv
  try rfl
theorem node2059_eq : Flapjack.WordAlloc.removeDeadStructural input2059 value266 value1 value2 = (output2059, value833, value1) := by
  rw [input2059_def, output2059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node495_eq]
  try dsimp only
  rw [node2058_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2059 input494)).val
theorem input2060_def : input2060 = (.seq input2059 input494) := by
  unfold input2060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2059 output494)).val
theorem output2060_def : output2060 = (.seq output2059 output494) := by
  unfold output2060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2060_skip : Flapjack.WordAlloc.isSkip output2060 = false := by
  rw [output2060_def]
  conv => lhs; cbv
  try rfl
theorem node2060_eq : Flapjack.WordAlloc.removeDeadStructural input2060 value263 value1 value2 = (output2060, value833, value1) := by
  rw [input2060_def, output2060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node494_eq]
  try dsimp only
  rw [node2059_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2060 input489)).val
theorem input2061_def : input2061 = (.seq input2060 input489) := by
  unfold input2061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2060 output489)).val
theorem output2061_def : output2061 = (.seq output2060 output489) := by
  unfold output2061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2061_skip : Flapjack.WordAlloc.isSkip output2061 = false := by
  rw [output2061_def]
  conv => lhs; cbv
  try rfl
theorem node2061_eq : Flapjack.WordAlloc.removeDeadStructural input2061 value263 value1 value2 = (output2061, value833, value1) := by
  rw [input2061_def, output2061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node489_eq]
  try dsimp only
  rw [node2060_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2061 input488)).val
theorem input2062_def : input2062 = (.seq input2061 input488) := by
  unfold input2062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2061 output488)).val
theorem output2062_def : output2062 = (.seq output2061 output488) := by
  unfold output2062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2062_skip : Flapjack.WordAlloc.isSkip output2062 = false := by
  rw [output2062_def]
  conv => lhs; cbv
  try rfl
theorem node2062_eq : Flapjack.WordAlloc.removeDeadStructural input2062 value262 value1 value2 = (output2062, value833, value1) := by
  rw [input2062_def, output2062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node488_eq]
  try dsimp only
  rw [node2061_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2062 input487)).val
theorem input2063_def : input2063 = (.seq input2062 input487) := by
  unfold input2063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2062 output487)).val
theorem output2063_def : output2063 = (.seq output2062 output487) := by
  unfold output2063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2063_skip : Flapjack.WordAlloc.isSkip output2063 = false := by
  rw [output2063_def]
  conv => lhs; cbv
  try rfl
theorem node2063_eq : Flapjack.WordAlloc.removeDeadStructural input2063 value261 value1 value2 = (output2063, value833, value1) := by
  rw [input2063_def, output2063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node487_eq]
  try dsimp only
  rw [node2062_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2063 input486)).val
theorem input2064_def : input2064 = (.seq input2063 input486) := by
  unfold input2064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2063 output486)).val
theorem output2064_def : output2064 = (.seq output2063 output486) := by
  unfold output2064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2064_skip : Flapjack.WordAlloc.isSkip output2064 = false := by
  rw [output2064_def]
  conv => lhs; cbv
  try rfl
theorem node2064_eq : Flapjack.WordAlloc.removeDeadStructural input2064 value260 value1 value2 = (output2064, value833, value1) := by
  rw [input2064_def, output2064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node486_eq]
  try dsimp only
  rw [node2063_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2064 input485)).val
theorem input2065_def : input2065 = (.seq input2064 input485) := by
  unfold input2065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2064 output485)).val
theorem output2065_def : output2065 = (.seq output2064 output485) := by
  unfold output2065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2065_skip : Flapjack.WordAlloc.isSkip output2065 = false := by
  rw [output2065_def]
  conv => lhs; cbv
  try rfl
theorem node2065_eq : Flapjack.WordAlloc.removeDeadStructural input2065 value259 value1 value2 = (output2065, value833, value1) := by
  rw [input2065_def, output2065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node485_eq]
  try dsimp only
  rw [node2064_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2065 input484)).val
theorem input2066_def : input2066 = (.seq input2065 input484) := by
  unfold input2066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2065 output484)).val
theorem output2066_def : output2066 = (.seq output2065 output484) := by
  unfold output2066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2066_skip : Flapjack.WordAlloc.isSkip output2066 = false := by
  rw [output2066_def]
  conv => lhs; cbv
  try rfl
theorem node2066_eq : Flapjack.WordAlloc.removeDeadStructural input2066 value256 value1 value2 = (output2066, value833, value1) := by
  rw [input2066_def, output2066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node484_eq]
  try dsimp only
  rw [node2065_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2066 input479)).val
theorem input2067_def : input2067 = (.seq input2066 input479) := by
  unfold input2067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2066 output479)).val
theorem output2067_def : output2067 = (.seq output2066 output479) := by
  unfold output2067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2067_skip : Flapjack.WordAlloc.isSkip output2067 = false := by
  rw [output2067_def]
  conv => lhs; cbv
  try rfl
theorem node2067_eq : Flapjack.WordAlloc.removeDeadStructural input2067 value256 value1 value2 = (output2067, value833, value1) := by
  rw [input2067_def, output2067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node479_eq]
  try dsimp only
  rw [node2066_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2067 input478)).val
theorem input2068_def : input2068 = (.seq input2067 input478) := by
  unfold input2068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2067 output478)).val
theorem output2068_def : output2068 = (.seq output2067 output478) := by
  unfold output2068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2068_skip : Flapjack.WordAlloc.isSkip output2068 = false := by
  rw [output2068_def]
  conv => lhs; cbv
  try rfl
theorem node2068_eq : Flapjack.WordAlloc.removeDeadStructural input2068 value255 value1 value2 = (output2068, value833, value1) := by
  rw [input2068_def, output2068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node478_eq]
  try dsimp only
  rw [node2067_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2068 input477)).val
theorem input2069_def : input2069 = (.seq input2068 input477) := by
  unfold input2069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2068 output477)).val
theorem output2069_def : output2069 = (.seq output2068 output477) := by
  unfold output2069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2069_skip : Flapjack.WordAlloc.isSkip output2069 = false := by
  rw [output2069_def]
  conv => lhs; cbv
  try rfl
theorem node2069_eq : Flapjack.WordAlloc.removeDeadStructural input2069 value254 value1 value2 = (output2069, value833, value1) := by
  rw [input2069_def, output2069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node477_eq]
  try dsimp only
  rw [node2068_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2069 input476)).val
theorem input2070_def : input2070 = (.seq input2069 input476) := by
  unfold input2070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2069 output476)).val
theorem output2070_def : output2070 = (.seq output2069 output476) := by
  unfold output2070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2070_skip : Flapjack.WordAlloc.isSkip output2070 = false := by
  rw [output2070_def]
  conv => lhs; cbv
  try rfl
theorem node2070_eq : Flapjack.WordAlloc.removeDeadStructural input2070 value253 value1 value2 = (output2070, value833, value1) := by
  rw [input2070_def, output2070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node476_eq]
  try dsimp only
  rw [node2069_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2070 input475)).val
theorem input2071_def : input2071 = (.seq input2070 input475) := by
  unfold input2071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2070 output475)).val
theorem output2071_def : output2071 = (.seq output2070 output475) := by
  unfold output2071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2071_skip : Flapjack.WordAlloc.isSkip output2071 = false := by
  rw [output2071_def]
  conv => lhs; cbv
  try rfl
theorem node2071_eq : Flapjack.WordAlloc.removeDeadStructural input2071 value252 value1 value2 = (output2071, value833, value1) := by
  rw [input2071_def, output2071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node475_eq]
  try dsimp only
  rw [node2070_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2071 input474)).val
theorem input2072_def : input2072 = (.seq input2071 input474) := by
  unfold input2072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2071 output474)).val
theorem output2072_def : output2072 = (.seq output2071 output474) := by
  unfold output2072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2072_skip : Flapjack.WordAlloc.isSkip output2072 = false := by
  rw [output2072_def]
  conv => lhs; cbv
  try rfl
theorem node2072_eq : Flapjack.WordAlloc.removeDeadStructural input2072 value249 value1 value2 = (output2072, value833, value1) := by
  rw [input2072_def, output2072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node474_eq]
  try dsimp only
  rw [node2071_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2072 input469)).val
theorem input2073_def : input2073 = (.seq input2072 input469) := by
  unfold input2073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2072 output469)).val
theorem output2073_def : output2073 = (.seq output2072 output469) := by
  unfold output2073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2073_skip : Flapjack.WordAlloc.isSkip output2073 = false := by
  rw [output2073_def]
  conv => lhs; cbv
  try rfl
theorem node2073_eq : Flapjack.WordAlloc.removeDeadStructural input2073 value249 value1 value2 = (output2073, value833, value1) := by
  rw [input2073_def, output2073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node469_eq]
  try dsimp only
  rw [node2072_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2073 input468)).val
theorem input2074_def : input2074 = (.seq input2073 input468) := by
  unfold input2074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2073 output468)).val
theorem output2074_def : output2074 = (.seq output2073 output468) := by
  unfold output2074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2074_skip : Flapjack.WordAlloc.isSkip output2074 = false := by
  rw [output2074_def]
  conv => lhs; cbv
  try rfl
theorem node2074_eq : Flapjack.WordAlloc.removeDeadStructural input2074 value248 value1 value2 = (output2074, value833, value1) := by
  rw [input2074_def, output2074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node468_eq]
  try dsimp only
  rw [node2073_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2074 input467)).val
theorem input2075_def : input2075 = (.seq input2074 input467) := by
  unfold input2075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2074 output467)).val
theorem output2075_def : output2075 = (.seq output2074 output467) := by
  unfold output2075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2075_skip : Flapjack.WordAlloc.isSkip output2075 = false := by
  rw [output2075_def]
  conv => lhs; cbv
  try rfl
theorem node2075_eq : Flapjack.WordAlloc.removeDeadStructural input2075 value247 value1 value2 = (output2075, value833, value1) := by
  rw [input2075_def, output2075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node467_eq]
  try dsimp only
  rw [node2074_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2075 input466)).val
theorem input2076_def : input2076 = (.seq input2075 input466) := by
  unfold input2076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2075 output466)).val
theorem output2076_def : output2076 = (.seq output2075 output466) := by
  unfold output2076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2076_skip : Flapjack.WordAlloc.isSkip output2076 = false := by
  rw [output2076_def]
  conv => lhs; cbv
  try rfl
theorem node2076_eq : Flapjack.WordAlloc.removeDeadStructural input2076 value246 value1 value2 = (output2076, value833, value1) := by
  rw [input2076_def, output2076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node466_eq]
  try dsimp only
  rw [node2075_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2076 input465)).val
theorem input2077_def : input2077 = (.seq input2076 input465) := by
  unfold input2077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2076 output465)).val
theorem output2077_def : output2077 = (.seq output2076 output465) := by
  unfold output2077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2077_skip : Flapjack.WordAlloc.isSkip output2077 = false := by
  rw [output2077_def]
  conv => lhs; cbv
  try rfl
theorem node2077_eq : Flapjack.WordAlloc.removeDeadStructural input2077 value243 value1 value2 = (output2077, value833, value1) := by
  rw [input2077_def, output2077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node465_eq]
  try dsimp only
  rw [node2076_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2077 input460)).val
theorem input2078_def : input2078 = (.seq input2077 input460) := by
  unfold input2078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2077 output460)).val
theorem output2078_def : output2078 = (.seq output2077 output460) := by
  unfold output2078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2078_skip : Flapjack.WordAlloc.isSkip output2078 = false := by
  rw [output2078_def]
  conv => lhs; cbv
  try rfl
theorem node2078_eq : Flapjack.WordAlloc.removeDeadStructural input2078 value243 value1 value2 = (output2078, value833, value1) := by
  rw [input2078_def, output2078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node460_eq]
  try dsimp only
  rw [node2077_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2078 input459)).val
theorem input2079_def : input2079 = (.seq input2078 input459) := by
  unfold input2079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2078 output459)).val
theorem output2079_def : output2079 = (.seq output2078 output459) := by
  unfold output2079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2079_skip : Flapjack.WordAlloc.isSkip output2079 = false := by
  rw [output2079_def]
  conv => lhs; cbv
  try rfl
theorem node2079_eq : Flapjack.WordAlloc.removeDeadStructural input2079 value242 value1 value2 = (output2079, value833, value1) := by
  rw [input2079_def, output2079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node459_eq]
  try dsimp only
  rw [node2078_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2079 input458)).val
theorem input2080_def : input2080 = (.seq input2079 input458) := by
  unfold input2080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2079 output458)).val
theorem output2080_def : output2080 = (.seq output2079 output458) := by
  unfold output2080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2080_skip : Flapjack.WordAlloc.isSkip output2080 = false := by
  rw [output2080_def]
  conv => lhs; cbv
  try rfl
theorem node2080_eq : Flapjack.WordAlloc.removeDeadStructural input2080 value241 value1 value2 = (output2080, value833, value1) := by
  rw [input2080_def, output2080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node458_eq]
  try dsimp only
  rw [node2079_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2080 input457)).val
theorem input2081_def : input2081 = (.seq input2080 input457) := by
  unfold input2081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2080 output457)).val
theorem output2081_def : output2081 = (.seq output2080 output457) := by
  unfold output2081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2081_skip : Flapjack.WordAlloc.isSkip output2081 = false := by
  rw [output2081_def]
  conv => lhs; cbv
  try rfl
theorem node2081_eq : Flapjack.WordAlloc.removeDeadStructural input2081 value181 value1 value2 = (output2081, value833, value1) := by
  rw [input2081_def, output2081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node457_eq]
  try dsimp only
  rw [node2080_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2081 input274)).val
theorem input2082_def : input2082 = (.seq input2081 input274) := by
  unfold input2082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2081 output274)).val
theorem output2082_def : output2082 = (.seq output2081 output274) := by
  unfold output2082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2082_skip : Flapjack.WordAlloc.isSkip output2082 = false := by
  rw [output2082_def]
  conv => lhs; cbv
  try rfl
theorem node2082_eq : Flapjack.WordAlloc.removeDeadStructural input2082 value181 value1 value2 = (output2082, value833, value1) := by
  rw [input2082_def, output2082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node274_eq]
  try dsimp only
  rw [node2081_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2082 input273)).val
theorem input2083_def : input2083 = (.seq input2082 input273) := by
  unfold input2083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2082 output273)).val
theorem output2083_def : output2083 = (.seq output2082 output273) := by
  unfold output2083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2083_skip : Flapjack.WordAlloc.isSkip output2083 = false := by
  rw [output2083_def]
  conv => lhs; cbv
  try rfl
theorem node2083_eq : Flapjack.WordAlloc.removeDeadStructural input2083 value180 value1 value2 = (output2083, value833, value1) := by
  rw [input2083_def, output2083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node273_eq]
  try dsimp only
  rw [node2082_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2083 input272)).val
theorem input2084_def : input2084 = (.seq input2083 input272) := by
  unfold input2084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2083 output272)).val
theorem output2084_def : output2084 = (.seq output2083 output272) := by
  unfold output2084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2084_skip : Flapjack.WordAlloc.isSkip output2084 = false := by
  rw [output2084_def]
  conv => lhs; cbv
  try rfl
theorem node2084_eq : Flapjack.WordAlloc.removeDeadStructural input2084 value177 value1 value2 = (output2084, value833, value1) := by
  rw [input2084_def, output2084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node272_eq]
  try dsimp only
  rw [node2083_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2084 input267)).val
theorem input2085_def : input2085 = (.seq input2084 input267) := by
  unfold input2085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2084 output267)).val
theorem output2085_def : output2085 = (.seq output2084 output267) := by
  unfold output2085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2085_skip : Flapjack.WordAlloc.isSkip output2085 = false := by
  rw [output2085_def]
  conv => lhs; cbv
  try rfl
theorem node2085_eq : Flapjack.WordAlloc.removeDeadStructural input2085 value177 value1 value2 = (output2085, value833, value1) := by
  rw [input2085_def, output2085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node267_eq]
  try dsimp only
  rw [node2084_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2085 input266)).val
theorem input2086_def : input2086 = (.seq input2085 input266) := by
  unfold input2086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2085 output266)).val
theorem output2086_def : output2086 = (.seq output2085 output266) := by
  unfold output2086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2086_skip : Flapjack.WordAlloc.isSkip output2086 = false := by
  rw [output2086_def]
  conv => lhs; cbv
  try rfl
theorem node2086_eq : Flapjack.WordAlloc.removeDeadStructural input2086 value176 value1 value2 = (output2086, value833, value1) := by
  rw [input2086_def, output2086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node266_eq]
  try dsimp only
  rw [node2085_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2086 input265)).val
theorem input2087_def : input2087 = (.seq input2086 input265) := by
  unfold input2087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2086 output265)).val
theorem output2087_def : output2087 = (.seq output2086 output265) := by
  unfold output2087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2087_skip : Flapjack.WordAlloc.isSkip output2087 = false := by
  rw [output2087_def]
  conv => lhs; cbv
  try rfl
theorem node2087_eq : Flapjack.WordAlloc.removeDeadStructural input2087 value173 value1 value2 = (output2087, value833, value1) := by
  rw [input2087_def, output2087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node265_eq]
  try dsimp only
  rw [node2086_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2087 input260)).val
theorem input2088_def : input2088 = (.seq input2087 input260) := by
  unfold input2088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2087 output260)).val
theorem output2088_def : output2088 = (.seq output2087 output260) := by
  unfold output2088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2088_skip : Flapjack.WordAlloc.isSkip output2088 = false := by
  rw [output2088_def]
  conv => lhs; cbv
  try rfl
theorem node2088_eq : Flapjack.WordAlloc.removeDeadStructural input2088 value173 value1 value2 = (output2088, value833, value1) := by
  rw [input2088_def, output2088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node260_eq]
  try dsimp only
  rw [node2087_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2088 input259)).val
theorem input2089_def : input2089 = (.seq input2088 input259) := by
  unfold input2089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2088 output259)).val
theorem output2089_def : output2089 = (.seq output2088 output259) := by
  unfold output2089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2089_skip : Flapjack.WordAlloc.isSkip output2089 = false := by
  rw [output2089_def]
  conv => lhs; cbv
  try rfl
theorem node2089_eq : Flapjack.WordAlloc.removeDeadStructural input2089 value172 value1 value2 = (output2089, value833, value1) := by
  rw [input2089_def, output2089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node259_eq]
  try dsimp only
  rw [node2088_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2089 input258)).val
theorem input2090_def : input2090 = (.seq input2089 input258) := by
  unfold input2090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2089 output258)).val
theorem output2090_def : output2090 = (.seq output2089 output258) := by
  unfold output2090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2090_skip : Flapjack.WordAlloc.isSkip output2090 = false := by
  rw [output2090_def]
  conv => lhs; cbv
  try rfl
theorem node2090_eq : Flapjack.WordAlloc.removeDeadStructural input2090 value169 value1 value2 = (output2090, value833, value1) := by
  rw [input2090_def, output2090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node258_eq]
  try dsimp only
  rw [node2089_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2090 input253)).val
theorem input2091_def : input2091 = (.seq input2090 input253) := by
  unfold input2091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2090 output253)).val
theorem output2091_def : output2091 = (.seq output2090 output253) := by
  unfold output2091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2091_skip : Flapjack.WordAlloc.isSkip output2091 = false := by
  rw [output2091_def]
  conv => lhs; cbv
  try rfl
theorem node2091_eq : Flapjack.WordAlloc.removeDeadStructural input2091 value169 value1 value2 = (output2091, value833, value1) := by
  rw [input2091_def, output2091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node253_eq]
  try dsimp only
  rw [node2090_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2091 input252)).val
theorem input2092_def : input2092 = (.seq input2091 input252) := by
  unfold input2092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2091 output252)).val
theorem output2092_def : output2092 = (.seq output2091 output252) := by
  unfold output2092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2092_skip : Flapjack.WordAlloc.isSkip output2092 = false := by
  rw [output2092_def]
  conv => lhs; cbv
  try rfl
theorem node2092_eq : Flapjack.WordAlloc.removeDeadStructural input2092 value168 value1 value2 = (output2092, value833, value1) := by
  rw [input2092_def, output2092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node252_eq]
  try dsimp only
  rw [node2091_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2092 input251)).val
theorem input2093_def : input2093 = (.seq input2092 input251) := by
  unfold input2093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2092 output251)).val
theorem output2093_def : output2093 = (.seq output2092 output251) := by
  unfold output2093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2093_skip : Flapjack.WordAlloc.isSkip output2093 = false := by
  rw [output2093_def]
  conv => lhs; cbv
  try rfl
theorem node2093_eq : Flapjack.WordAlloc.removeDeadStructural input2093 value165 value1 value2 = (output2093, value833, value1) := by
  rw [input2093_def, output2093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node251_eq]
  try dsimp only
  rw [node2092_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2093 input246)).val
theorem input2094_def : input2094 = (.seq input2093 input246) := by
  unfold input2094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2093 output246)).val
theorem output2094_def : output2094 = (.seq output2093 output246) := by
  unfold output2094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2094_skip : Flapjack.WordAlloc.isSkip output2094 = false := by
  rw [output2094_def]
  conv => lhs; cbv
  try rfl
theorem node2094_eq : Flapjack.WordAlloc.removeDeadStructural input2094 value165 value1 value2 = (output2094, value833, value1) := by
  rw [input2094_def, output2094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node246_eq]
  try dsimp only
  rw [node2093_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2094 input245)).val
theorem input2095_def : input2095 = (.seq input2094 input245) := by
  unfold input2095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2094 output245)).val
theorem output2095_def : output2095 = (.seq output2094 output245) := by
  unfold output2095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2095_skip : Flapjack.WordAlloc.isSkip output2095 = false := by
  rw [output2095_def]
  conv => lhs; cbv
  try rfl
theorem node2095_eq : Flapjack.WordAlloc.removeDeadStructural input2095 value164 value1 value2 = (output2095, value833, value1) := by
  rw [input2095_def, output2095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node245_eq]
  try dsimp only
  rw [node2094_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2095 input244)).val
theorem input2096_def : input2096 = (.seq input2095 input244) := by
  unfold input2096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2095 output244)).val
theorem output2096_def : output2096 = (.seq output2095 output244) := by
  unfold output2096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2096_skip : Flapjack.WordAlloc.isSkip output2096 = false := by
  rw [output2096_def]
  conv => lhs; cbv
  try rfl
theorem node2096_eq : Flapjack.WordAlloc.removeDeadStructural input2096 value161 value1 value2 = (output2096, value833, value1) := by
  rw [input2096_def, output2096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node244_eq]
  try dsimp only
  rw [node2095_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2096 input239)).val
theorem input2097_def : input2097 = (.seq input2096 input239) := by
  unfold input2097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2096 output239)).val
theorem output2097_def : output2097 = (.seq output2096 output239) := by
  unfold output2097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2097_skip : Flapjack.WordAlloc.isSkip output2097 = false := by
  rw [output2097_def]
  conv => lhs; cbv
  try rfl
theorem node2097_eq : Flapjack.WordAlloc.removeDeadStructural input2097 value161 value1 value2 = (output2097, value833, value1) := by
  rw [input2097_def, output2097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node239_eq]
  try dsimp only
  rw [node2096_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2097 input238)).val
theorem input2098_def : input2098 = (.seq input2097 input238) := by
  unfold input2098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2097 output238)).val
theorem output2098_def : output2098 = (.seq output2097 output238) := by
  unfold output2098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2098_skip : Flapjack.WordAlloc.isSkip output2098 = false := by
  rw [output2098_def]
  conv => lhs; cbv
  try rfl
theorem node2098_eq : Flapjack.WordAlloc.removeDeadStructural input2098 value160 value1 value2 = (output2098, value833, value1) := by
  rw [input2098_def, output2098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node238_eq]
  try dsimp only
  rw [node2097_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2098 input237)).val
theorem input2099_def : input2099 = (.seq input2098 input237) := by
  unfold input2099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2098 output237)).val
theorem output2099_def : output2099 = (.seq output2098 output237) := by
  unfold output2099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2099_skip : Flapjack.WordAlloc.isSkip output2099 = false := by
  rw [output2099_def]
  conv => lhs; cbv
  try rfl
theorem node2099_eq : Flapjack.WordAlloc.removeDeadStructural input2099 value157 value1 value2 = (output2099, value833, value1) := by
  rw [input2099_def, output2099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node237_eq]
  try dsimp only
  rw [node2098_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2099 input232)).val
theorem input2100_def : input2100 = (.seq input2099 input232) := by
  unfold input2100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2099 output232)).val
theorem output2100_def : output2100 = (.seq output2099 output232) := by
  unfold output2100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2100_skip : Flapjack.WordAlloc.isSkip output2100 = false := by
  rw [output2100_def]
  conv => lhs; cbv
  try rfl
theorem node2100_eq : Flapjack.WordAlloc.removeDeadStructural input2100 value157 value1 value2 = (output2100, value833, value1) := by
  rw [input2100_def, output2100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node232_eq]
  try dsimp only
  rw [node2099_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2100 input231)).val
theorem input2101_def : input2101 = (.seq input2100 input231) := by
  unfold input2101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2100 output231)).val
theorem output2101_def : output2101 = (.seq output2100 output231) := by
  unfold output2101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2101_skip : Flapjack.WordAlloc.isSkip output2101 = false := by
  rw [output2101_def]
  conv => lhs; cbv
  try rfl
theorem node2101_eq : Flapjack.WordAlloc.removeDeadStructural input2101 value156 value1 value2 = (output2101, value833, value1) := by
  rw [input2101_def, output2101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node231_eq]
  try dsimp only
  rw [node2100_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2101 input230)).val
theorem input2102_def : input2102 = (.seq input2101 input230) := by
  unfold input2102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2101 output230)).val
theorem output2102_def : output2102 = (.seq output2101 output230) := by
  unfold output2102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2102_skip : Flapjack.WordAlloc.isSkip output2102 = false := by
  rw [output2102_def]
  conv => lhs; cbv
  try rfl
theorem node2102_eq : Flapjack.WordAlloc.removeDeadStructural input2102 value153 value1 value2 = (output2102, value833, value1) := by
  rw [input2102_def, output2102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node230_eq]
  try dsimp only
  rw [node2101_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2102 input225)).val
theorem input2103_def : input2103 = (.seq input2102 input225) := by
  unfold input2103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2102 output225)).val
theorem output2103_def : output2103 = (.seq output2102 output225) := by
  unfold output2103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2103_skip : Flapjack.WordAlloc.isSkip output2103 = false := by
  rw [output2103_def]
  conv => lhs; cbv
  try rfl
theorem node2103_eq : Flapjack.WordAlloc.removeDeadStructural input2103 value153 value1 value2 = (output2103, value833, value1) := by
  rw [input2103_def, output2103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node225_eq]
  try dsimp only
  rw [node2102_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2103 input224)).val
theorem input2104_def : input2104 = (.seq input2103 input224) := by
  unfold input2104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2103 output224)).val
theorem output2104_def : output2104 = (.seq output2103 output224) := by
  unfold output2104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2104_skip : Flapjack.WordAlloc.isSkip output2104 = false := by
  rw [output2104_def]
  conv => lhs; cbv
  try rfl
theorem node2104_eq : Flapjack.WordAlloc.removeDeadStructural input2104 value152 value1 value2 = (output2104, value833, value1) := by
  rw [input2104_def, output2104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node224_eq]
  try dsimp only
  rw [node2103_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2104 input223)).val
theorem input2105_def : input2105 = (.seq input2104 input223) := by
  unfold input2105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2104 output223)).val
theorem output2105_def : output2105 = (.seq output2104 output223) := by
  unfold output2105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2105_skip : Flapjack.WordAlloc.isSkip output2105 = false := by
  rw [output2105_def]
  conv => lhs; cbv
  try rfl
theorem node2105_eq : Flapjack.WordAlloc.removeDeadStructural input2105 value149 value1 value2 = (output2105, value833, value1) := by
  rw [input2105_def, output2105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node223_eq]
  try dsimp only
  rw [node2104_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2105 input218)).val
theorem input2106_def : input2106 = (.seq input2105 input218) := by
  unfold input2106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2105 output218)).val
theorem output2106_def : output2106 = (.seq output2105 output218) := by
  unfold output2106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2106_skip : Flapjack.WordAlloc.isSkip output2106 = false := by
  rw [output2106_def]
  conv => lhs; cbv
  try rfl
theorem node2106_eq : Flapjack.WordAlloc.removeDeadStructural input2106 value149 value1 value2 = (output2106, value833, value1) := by
  rw [input2106_def, output2106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node218_eq]
  try dsimp only
  rw [node2105_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2106 input217)).val
theorem input2107_def : input2107 = (.seq input2106 input217) := by
  unfold input2107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2106 output217)).val
theorem output2107_def : output2107 = (.seq output2106 output217) := by
  unfold output2107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2107_skip : Flapjack.WordAlloc.isSkip output2107 = false := by
  rw [output2107_def]
  conv => lhs; cbv
  try rfl
theorem node2107_eq : Flapjack.WordAlloc.removeDeadStructural input2107 value148 value1 value2 = (output2107, value833, value1) := by
  rw [input2107_def, output2107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node217_eq]
  try dsimp only
  rw [node2106_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2107 input216)).val
theorem input2108_def : input2108 = (.seq input2107 input216) := by
  unfold input2108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2107 output216)).val
theorem output2108_def : output2108 = (.seq output2107 output216) := by
  unfold output2108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2108_skip : Flapjack.WordAlloc.isSkip output2108 = false := by
  rw [output2108_def]
  conv => lhs; cbv
  try rfl
theorem node2108_eq : Flapjack.WordAlloc.removeDeadStructural input2108 value147 value1 value2 = (output2108, value833, value1) := by
  rw [input2108_def, output2108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node216_eq]
  try dsimp only
  rw [node2107_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2108 input215)).val
theorem input2109_def : input2109 = (.seq input2108 input215) := by
  unfold input2109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2108 output215)).val
theorem output2109_def : output2109 = (.seq output2108 output215) := by
  unfold output2109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2109_skip : Flapjack.WordAlloc.isSkip output2109 = false := by
  rw [output2109_def]
  conv => lhs; cbv
  try rfl
theorem node2109_eq : Flapjack.WordAlloc.removeDeadStructural input2109 value146 value1 value2 = (output2109, value833, value1) := by
  rw [input2109_def, output2109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node215_eq]
  try dsimp only
  rw [node2108_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2109 input214)).val
theorem input2110_def : input2110 = (.seq input2109 input214) := by
  unfold input2110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2109 output214)).val
theorem output2110_def : output2110 = (.seq output2109 output214) := by
  unfold output2110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2110_skip : Flapjack.WordAlloc.isSkip output2110 = false := by
  rw [output2110_def]
  conv => lhs; cbv
  try rfl
theorem node2110_eq : Flapjack.WordAlloc.removeDeadStructural input2110 value145 value1 value2 = (output2110, value833, value1) := by
  rw [input2110_def, output2110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node214_eq]
  try dsimp only
  rw [node2109_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2110 input213)).val
theorem input2111_def : input2111 = (.seq input2110 input213) := by
  unfold input2111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2110 output213)).val
theorem output2111_def : output2111 = (.seq output2110 output213) := by
  unfold output2111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2111_skip : Flapjack.WordAlloc.isSkip output2111 = false := by
  rw [output2111_def]
  conv => lhs; cbv
  try rfl
theorem node2111_eq : Flapjack.WordAlloc.removeDeadStructural input2111 value142 value1 value2 = (output2111, value833, value1) := by
  rw [input2111_def, output2111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node213_eq]
  try dsimp only
  rw [node2110_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2111 input208)).val
theorem input2112_def : input2112 = (.seq input2111 input208) := by
  unfold input2112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2111 output208)).val
theorem output2112_def : output2112 = (.seq output2111 output208) := by
  unfold output2112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2112_skip : Flapjack.WordAlloc.isSkip output2112 = false := by
  rw [output2112_def]
  conv => lhs; cbv
  try rfl
theorem node2112_eq : Flapjack.WordAlloc.removeDeadStructural input2112 value142 value1 value2 = (output2112, value833, value1) := by
  rw [input2112_def, output2112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node208_eq]
  try dsimp only
  rw [node2111_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2112 input207)).val
theorem input2113_def : input2113 = (.seq input2112 input207) := by
  unfold input2113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2112 output207)).val
theorem output2113_def : output2113 = (.seq output2112 output207) := by
  unfold output2113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2113_skip : Flapjack.WordAlloc.isSkip output2113 = false := by
  rw [output2113_def]
  conv => lhs; cbv
  try rfl
theorem node2113_eq : Flapjack.WordAlloc.removeDeadStructural input2113 value141 value1 value2 = (output2113, value833, value1) := by
  rw [input2113_def, output2113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node207_eq]
  try dsimp only
  rw [node2112_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2113 input206)).val
theorem input2114_def : input2114 = (.seq input2113 input206) := by
  unfold input2114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2113 output206)).val
theorem output2114_def : output2114 = (.seq output2113 output206) := by
  unfold output2114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2114_skip : Flapjack.WordAlloc.isSkip output2114 = false := by
  rw [output2114_def]
  conv => lhs; cbv
  try rfl
theorem node2114_eq : Flapjack.WordAlloc.removeDeadStructural input2114 value140 value1 value2 = (output2114, value833, value1) := by
  rw [input2114_def, output2114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node206_eq]
  try dsimp only
  rw [node2113_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2114 input205)).val
theorem input2115_def : input2115 = (.seq input2114 input205) := by
  unfold input2115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2114 output205)).val
theorem output2115_def : output2115 = (.seq output2114 output205) := by
  unfold output2115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2115_skip : Flapjack.WordAlloc.isSkip output2115 = false := by
  rw [output2115_def]
  conv => lhs; cbv
  try rfl
theorem node2115_eq : Flapjack.WordAlloc.removeDeadStructural input2115 value139 value1 value2 = (output2115, value833, value1) := by
  rw [input2115_def, output2115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node205_eq]
  try dsimp only
  rw [node2114_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2115 input204)).val
theorem input2116_def : input2116 = (.seq input2115 input204) := by
  unfold input2116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2115 output204)).val
theorem output2116_def : output2116 = (.seq output2115 output204) := by
  unfold output2116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2116_skip : Flapjack.WordAlloc.isSkip output2116 = false := by
  rw [output2116_def]
  conv => lhs; cbv
  try rfl
theorem node2116_eq : Flapjack.WordAlloc.removeDeadStructural input2116 value138 value1 value2 = (output2116, value833, value1) := by
  rw [input2116_def, output2116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node204_eq]
  try dsimp only
  rw [node2115_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2116 input203)).val
theorem input2117_def : input2117 = (.seq input2116 input203) := by
  unfold input2117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2116 output203)).val
theorem output2117_def : output2117 = (.seq output2116 output203) := by
  unfold output2117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2117_skip : Flapjack.WordAlloc.isSkip output2117 = false := by
  rw [output2117_def]
  conv => lhs; cbv
  try rfl
theorem node2117_eq : Flapjack.WordAlloc.removeDeadStructural input2117 value135 value1 value2 = (output2117, value833, value1) := by
  rw [input2117_def, output2117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node203_eq]
  try dsimp only
  rw [node2116_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2117 input198)).val
theorem input2118_def : input2118 = (.seq input2117 input198) := by
  unfold input2118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2117 output198)).val
theorem output2118_def : output2118 = (.seq output2117 output198) := by
  unfold output2118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2118_skip : Flapjack.WordAlloc.isSkip output2118 = false := by
  rw [output2118_def]
  conv => lhs; cbv
  try rfl
theorem node2118_eq : Flapjack.WordAlloc.removeDeadStructural input2118 value135 value1 value2 = (output2118, value833, value1) := by
  rw [input2118_def, output2118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node198_eq]
  try dsimp only
  rw [node2117_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2118 input197)).val
theorem input2119_def : input2119 = (.seq input2118 input197) := by
  unfold input2119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2118 output197)).val
theorem output2119_def : output2119 = (.seq output2118 output197) := by
  unfold output2119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2119_skip : Flapjack.WordAlloc.isSkip output2119 = false := by
  rw [output2119_def]
  conv => lhs; cbv
  try rfl
theorem node2119_eq : Flapjack.WordAlloc.removeDeadStructural input2119 value134 value1 value2 = (output2119, value833, value1) := by
  rw [input2119_def, output2119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node197_eq]
  try dsimp only
  rw [node2118_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2119 input196)).val
theorem input2120_def : input2120 = (.seq input2119 input196) := by
  unfold input2120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2119 output196)).val
theorem output2120_def : output2120 = (.seq output2119 output196) := by
  unfold output2120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2120_skip : Flapjack.WordAlloc.isSkip output2120 = false := by
  rw [output2120_def]
  conv => lhs; cbv
  try rfl
theorem node2120_eq : Flapjack.WordAlloc.removeDeadStructural input2120 value133 value1 value2 = (output2120, value833, value1) := by
  rw [input2120_def, output2120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node196_eq]
  try dsimp only
  rw [node2119_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2120 input195)).val
theorem input2121_def : input2121 = (.seq input2120 input195) := by
  unfold input2121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2120 output195)).val
theorem output2121_def : output2121 = (.seq output2120 output195) := by
  unfold output2121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2121_skip : Flapjack.WordAlloc.isSkip output2121 = false := by
  rw [output2121_def]
  conv => lhs; cbv
  try rfl
theorem node2121_eq : Flapjack.WordAlloc.removeDeadStructural input2121 value132 value1 value2 = (output2121, value833, value1) := by
  rw [input2121_def, output2121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node195_eq]
  try dsimp only
  rw [node2120_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2121 input194)).val
theorem input2122_def : input2122 = (.seq input2121 input194) := by
  unfold input2122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2121 output194)).val
theorem output2122_def : output2122 = (.seq output2121 output194) := by
  unfold output2122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2122_skip : Flapjack.WordAlloc.isSkip output2122 = false := by
  rw [output2122_def]
  conv => lhs; cbv
  try rfl
theorem node2122_eq : Flapjack.WordAlloc.removeDeadStructural input2122 value129 value1 value2 = (output2122, value833, value1) := by
  rw [input2122_def, output2122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node194_eq]
  try dsimp only
  rw [node2121_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2122 input189)).val
theorem input2123_def : input2123 = (.seq input2122 input189) := by
  unfold input2123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2122 output189)).val
theorem output2123_def : output2123 = (.seq output2122 output189) := by
  unfold output2123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2123_skip : Flapjack.WordAlloc.isSkip output2123 = false := by
  rw [output2123_def]
  conv => lhs; cbv
  try rfl
theorem node2123_eq : Flapjack.WordAlloc.removeDeadStructural input2123 value129 value1 value2 = (output2123, value833, value1) := by
  rw [input2123_def, output2123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node189_eq]
  try dsimp only
  rw [node2122_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2123 input188)).val
theorem input2124_def : input2124 = (.seq input2123 input188) := by
  unfold input2124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2123 output188)).val
theorem output2124_def : output2124 = (.seq output2123 output188) := by
  unfold output2124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2124_skip : Flapjack.WordAlloc.isSkip output2124 = false := by
  rw [output2124_def]
  conv => lhs; cbv
  try rfl
theorem node2124_eq : Flapjack.WordAlloc.removeDeadStructural input2124 value128 value1 value2 = (output2124, value833, value1) := by
  rw [input2124_def, output2124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node188_eq]
  try dsimp only
  rw [node2123_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2124 input187)).val
theorem input2125_def : input2125 = (.seq input2124 input187) := by
  unfold input2125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2124 output187)).val
theorem output2125_def : output2125 = (.seq output2124 output187) := by
  unfold output2125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2125_skip : Flapjack.WordAlloc.isSkip output2125 = false := by
  rw [output2125_def]
  conv => lhs; cbv
  try rfl
theorem node2125_eq : Flapjack.WordAlloc.removeDeadStructural input2125 value127 value1 value2 = (output2125, value833, value1) := by
  rw [input2125_def, output2125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node187_eq]
  try dsimp only
  rw [node2124_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2125 input186)).val
theorem input2126_def : input2126 = (.seq input2125 input186) := by
  unfold input2126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2125 output186)).val
theorem output2126_def : output2126 = (.seq output2125 output186) := by
  unfold output2126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2126_skip : Flapjack.WordAlloc.isSkip output2126 = false := by
  rw [output2126_def]
  conv => lhs; cbv
  try rfl
theorem node2126_eq : Flapjack.WordAlloc.removeDeadStructural input2126 value126 value1 value2 = (output2126, value833, value1) := by
  rw [input2126_def, output2126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node186_eq]
  try dsimp only
  rw [node2125_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2126 input185)).val
theorem input2127_def : input2127 = (.seq input2126 input185) := by
  unfold input2127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2126 output185)).val
theorem output2127_def : output2127 = (.seq output2126 output185) := by
  unfold output2127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2127_skip : Flapjack.WordAlloc.isSkip output2127 = false := by
  rw [output2127_def]
  conv => lhs; cbv
  try rfl
theorem node2127_eq : Flapjack.WordAlloc.removeDeadStructural input2127 value125 value1 value2 = (output2127, value833, value1) := by
  rw [input2127_def, output2127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node185_eq]
  try dsimp only
  rw [node2126_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2127 input184)).val
theorem input2128_def : input2128 = (.seq input2127 input184) := by
  unfold input2128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2127 output184)).val
theorem output2128_def : output2128 = (.seq output2127 output184) := by
  unfold output2128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2128_skip : Flapjack.WordAlloc.isSkip output2128 = false := by
  rw [output2128_def]
  conv => lhs; cbv
  try rfl
theorem node2128_eq : Flapjack.WordAlloc.removeDeadStructural input2128 value122 value1 value2 = (output2128, value833, value1) := by
  rw [input2128_def, output2128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node184_eq]
  try dsimp only
  rw [node2127_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2128 input179)).val
theorem input2129_def : input2129 = (.seq input2128 input179) := by
  unfold input2129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2128 output179)).val
theorem output2129_def : output2129 = (.seq output2128 output179) := by
  unfold output2129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2129_skip : Flapjack.WordAlloc.isSkip output2129 = false := by
  rw [output2129_def]
  conv => lhs; cbv
  try rfl
theorem node2129_eq : Flapjack.WordAlloc.removeDeadStructural input2129 value122 value1 value2 = (output2129, value833, value1) := by
  rw [input2129_def, output2129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node179_eq]
  try dsimp only
  rw [node2128_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2129 input178)).val
theorem input2130_def : input2130 = (.seq input2129 input178) := by
  unfold input2130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2129 output178)).val
theorem output2130_def : output2130 = (.seq output2129 output178) := by
  unfold output2130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2130_skip : Flapjack.WordAlloc.isSkip output2130 = false := by
  rw [output2130_def]
  conv => lhs; cbv
  try rfl
theorem node2130_eq : Flapjack.WordAlloc.removeDeadStructural input2130 value121 value1 value2 = (output2130, value833, value1) := by
  rw [input2130_def, output2130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node178_eq]
  try dsimp only
  rw [node2129_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2130 input177)).val
theorem input2131_def : input2131 = (.seq input2130 input177) := by
  unfold input2131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2130 output177)).val
theorem output2131_def : output2131 = (.seq output2130 output177) := by
  unfold output2131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2131_skip : Flapjack.WordAlloc.isSkip output2131 = false := by
  rw [output2131_def]
  conv => lhs; cbv
  try rfl
theorem node2131_eq : Flapjack.WordAlloc.removeDeadStructural input2131 value120 value1 value2 = (output2131, value833, value1) := by
  rw [input2131_def, output2131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node177_eq]
  try dsimp only
  rw [node2130_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2131 input176)).val
theorem input2132_def : input2132 = (.seq input2131 input176) := by
  unfold input2132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2131 output176)).val
theorem output2132_def : output2132 = (.seq output2131 output176) := by
  unfold output2132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2132_skip : Flapjack.WordAlloc.isSkip output2132 = false := by
  rw [output2132_def]
  conv => lhs; cbv
  try rfl
theorem node2132_eq : Flapjack.WordAlloc.removeDeadStructural input2132 value119 value1 value2 = (output2132, value833, value1) := by
  rw [input2132_def, output2132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node176_eq]
  try dsimp only
  rw [node2131_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2132 input175)).val
theorem input2133_def : input2133 = (.seq input2132 input175) := by
  unfold input2133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2132 output175)).val
theorem output2133_def : output2133 = (.seq output2132 output175) := by
  unfold output2133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2133_skip : Flapjack.WordAlloc.isSkip output2133 = false := by
  rw [output2133_def]
  conv => lhs; cbv
  try rfl
theorem node2133_eq : Flapjack.WordAlloc.removeDeadStructural input2133 value118 value1 value2 = (output2133, value833, value1) := by
  rw [input2133_def, output2133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node175_eq]
  try dsimp only
  rw [node2132_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2133 input174)).val
theorem input2134_def : input2134 = (.seq input2133 input174) := by
  unfold input2134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2133 output174)).val
theorem output2134_def : output2134 = (.seq output2133 output174) := by
  unfold output2134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2134_skip : Flapjack.WordAlloc.isSkip output2134 = false := by
  rw [output2134_def]
  conv => lhs; cbv
  try rfl
theorem node2134_eq : Flapjack.WordAlloc.removeDeadStructural input2134 value115 value1 value2 = (output2134, value833, value1) := by
  rw [input2134_def, output2134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node174_eq]
  try dsimp only
  rw [node2133_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2134 input169)).val
theorem input2135_def : input2135 = (.seq input2134 input169) := by
  unfold input2135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2134 output169)).val
theorem output2135_def : output2135 = (.seq output2134 output169) := by
  unfold output2135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2135_skip : Flapjack.WordAlloc.isSkip output2135 = false := by
  rw [output2135_def]
  conv => lhs; cbv
  try rfl
theorem node2135_eq : Flapjack.WordAlloc.removeDeadStructural input2135 value115 value1 value2 = (output2135, value833, value1) := by
  rw [input2135_def, output2135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node169_eq]
  try dsimp only
  rw [node2134_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2135 input168)).val
theorem input2136_def : input2136 = (.seq input2135 input168) := by
  unfold input2136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2135 output168)).val
theorem output2136_def : output2136 = (.seq output2135 output168) := by
  unfold output2136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2136_skip : Flapjack.WordAlloc.isSkip output2136 = false := by
  rw [output2136_def]
  conv => lhs; cbv
  try rfl
theorem node2136_eq : Flapjack.WordAlloc.removeDeadStructural input2136 value114 value1 value2 = (output2136, value833, value1) := by
  rw [input2136_def, output2136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node168_eq]
  try dsimp only
  rw [node2135_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2136 input167)).val
theorem input2137_def : input2137 = (.seq input2136 input167) := by
  unfold input2137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2136 output167)).val
theorem output2137_def : output2137 = (.seq output2136 output167) := by
  unfold output2137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2137_skip : Flapjack.WordAlloc.isSkip output2137 = false := by
  rw [output2137_def]
  conv => lhs; cbv
  try rfl
theorem node2137_eq : Flapjack.WordAlloc.removeDeadStructural input2137 value113 value1 value2 = (output2137, value833, value1) := by
  rw [input2137_def, output2137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node167_eq]
  try dsimp only
  rw [node2136_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2137 input166)).val
theorem input2138_def : input2138 = (.seq input2137 input166) := by
  unfold input2138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2137 output166)).val
theorem output2138_def : output2138 = (.seq output2137 output166) := by
  unfold output2138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2138_skip : Flapjack.WordAlloc.isSkip output2138 = false := by
  rw [output2138_def]
  conv => lhs; cbv
  try rfl
theorem node2138_eq : Flapjack.WordAlloc.removeDeadStructural input2138 value112 value1 value2 = (output2138, value833, value1) := by
  rw [input2138_def, output2138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node166_eq]
  try dsimp only
  rw [node2137_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2138 input165)).val
theorem input2139_def : input2139 = (.seq input2138 input165) := by
  unfold input2139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2138 output165)).val
theorem output2139_def : output2139 = (.seq output2138 output165) := by
  unfold output2139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2139_skip : Flapjack.WordAlloc.isSkip output2139 = false := by
  rw [output2139_def]
  conv => lhs; cbv
  try rfl
theorem node2139_eq : Flapjack.WordAlloc.removeDeadStructural input2139 value111 value1 value2 = (output2139, value833, value1) := by
  rw [input2139_def, output2139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node165_eq]
  try dsimp only
  rw [node2138_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2139 input164)).val
theorem input2140_def : input2140 = (.seq input2139 input164) := by
  unfold input2140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2139 output164)).val
theorem output2140_def : output2140 = (.seq output2139 output164) := by
  unfold output2140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2140_skip : Flapjack.WordAlloc.isSkip output2140 = false := by
  rw [output2140_def]
  conv => lhs; cbv
  try rfl
theorem node2140_eq : Flapjack.WordAlloc.removeDeadStructural input2140 value108 value1 value2 = (output2140, value833, value1) := by
  rw [input2140_def, output2140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node164_eq]
  try dsimp only
  rw [node2139_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2140 input159)).val
theorem input2141_def : input2141 = (.seq input2140 input159) := by
  unfold input2141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2140 output159)).val
theorem output2141_def : output2141 = (.seq output2140 output159) := by
  unfold output2141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2141_skip : Flapjack.WordAlloc.isSkip output2141 = false := by
  rw [output2141_def]
  conv => lhs; cbv
  try rfl
theorem node2141_eq : Flapjack.WordAlloc.removeDeadStructural input2141 value108 value1 value2 = (output2141, value833, value1) := by
  rw [input2141_def, output2141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node159_eq]
  try dsimp only
  rw [node2140_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2141 input158)).val
theorem input2142_def : input2142 = (.seq input2141 input158) := by
  unfold input2142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2141 output158)).val
theorem output2142_def : output2142 = (.seq output2141 output158) := by
  unfold output2142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2142_skip : Flapjack.WordAlloc.isSkip output2142 = false := by
  rw [output2142_def]
  conv => lhs; cbv
  try rfl
theorem node2142_eq : Flapjack.WordAlloc.removeDeadStructural input2142 value107 value1 value2 = (output2142, value833, value1) := by
  rw [input2142_def, output2142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node158_eq]
  try dsimp only
  rw [node2141_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2142 input157)).val
theorem input2143_def : input2143 = (.seq input2142 input157) := by
  unfold input2143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2142 output157)).val
theorem output2143_def : output2143 = (.seq output2142 output157) := by
  unfold output2143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2143_skip : Flapjack.WordAlloc.isSkip output2143 = false := by
  rw [output2143_def]
  conv => lhs; cbv
  try rfl
theorem node2143_eq : Flapjack.WordAlloc.removeDeadStructural input2143 value106 value1 value2 = (output2143, value833, value1) := by
  rw [input2143_def, output2143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node157_eq]
  try dsimp only
  rw [node2142_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2143 input156)).val
theorem input2144_def : input2144 = (.seq input2143 input156) := by
  unfold input2144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2143 output156)).val
theorem output2144_def : output2144 = (.seq output2143 output156) := by
  unfold output2144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2144_skip : Flapjack.WordAlloc.isSkip output2144 = false := by
  rw [output2144_def]
  conv => lhs; cbv
  try rfl
theorem node2144_eq : Flapjack.WordAlloc.removeDeadStructural input2144 value105 value1 value2 = (output2144, value833, value1) := by
  rw [input2144_def, output2144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node156_eq]
  try dsimp only
  rw [node2143_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2144 input155)).val
theorem input2145_def : input2145 = (.seq input2144 input155) := by
  unfold input2145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2144 output155)).val
theorem output2145_def : output2145 = (.seq output2144 output155) := by
  unfold output2145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2145_skip : Flapjack.WordAlloc.isSkip output2145 = false := by
  rw [output2145_def]
  conv => lhs; cbv
  try rfl
theorem node2145_eq : Flapjack.WordAlloc.removeDeadStructural input2145 value102 value1 value2 = (output2145, value833, value1) := by
  rw [input2145_def, output2145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node155_eq]
  try dsimp only
  rw [node2144_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2145 input150)).val
theorem input2146_def : input2146 = (.seq input2145 input150) := by
  unfold input2146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2145 output150)).val
theorem output2146_def : output2146 = (.seq output2145 output150) := by
  unfold output2146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2146_skip : Flapjack.WordAlloc.isSkip output2146 = false := by
  rw [output2146_def]
  conv => lhs; cbv
  try rfl
theorem node2146_eq : Flapjack.WordAlloc.removeDeadStructural input2146 value102 value1 value2 = (output2146, value833, value1) := by
  rw [input2146_def, output2146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node150_eq]
  try dsimp only
  rw [node2145_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2146 input149)).val
theorem input2147_def : input2147 = (.seq input2146 input149) := by
  unfold input2147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2146 output149)).val
theorem output2147_def : output2147 = (.seq output2146 output149) := by
  unfold output2147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2147_skip : Flapjack.WordAlloc.isSkip output2147 = false := by
  rw [output2147_def]
  conv => lhs; cbv
  try rfl
theorem node2147_eq : Flapjack.WordAlloc.removeDeadStructural input2147 value101 value1 value2 = (output2147, value833, value1) := by
  rw [input2147_def, output2147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node149_eq]
  try dsimp only
  rw [node2146_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2147 input148)).val
theorem input2148_def : input2148 = (.seq input2147 input148) := by
  unfold input2148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2147 output148)).val
theorem output2148_def : output2148 = (.seq output2147 output148) := by
  unfold output2148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2148_skip : Flapjack.WordAlloc.isSkip output2148 = false := by
  rw [output2148_def]
  conv => lhs; cbv
  try rfl
theorem node2148_eq : Flapjack.WordAlloc.removeDeadStructural input2148 value100 value1 value2 = (output2148, value833, value1) := by
  rw [input2148_def, output2148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node148_eq]
  try dsimp only
  rw [node2147_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2148 input147)).val
theorem input2149_def : input2149 = (.seq input2148 input147) := by
  unfold input2149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2148 output147)).val
theorem output2149_def : output2149 = (.seq output2148 output147) := by
  unfold output2149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2149_skip : Flapjack.WordAlloc.isSkip output2149 = false := by
  rw [output2149_def]
  conv => lhs; cbv
  try rfl
theorem node2149_eq : Flapjack.WordAlloc.removeDeadStructural input2149 value99 value1 value2 = (output2149, value833, value1) := by
  rw [input2149_def, output2149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node147_eq]
  try dsimp only
  rw [node2148_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2149 input146)).val
theorem input2150_def : input2150 = (.seq input2149 input146) := by
  unfold input2150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2149 output146)).val
theorem output2150_def : output2150 = (.seq output2149 output146) := by
  unfold output2150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2150_skip : Flapjack.WordAlloc.isSkip output2150 = false := by
  rw [output2150_def]
  conv => lhs; cbv
  try rfl
theorem node2150_eq : Flapjack.WordAlloc.removeDeadStructural input2150 value98 value1 value2 = (output2150, value833, value1) := by
  rw [input2150_def, output2150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node146_eq]
  try dsimp only
  rw [node2149_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2150 input145)).val
theorem input2151_def : input2151 = (.seq input2150 input145) := by
  unfold input2151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2150 output145)).val
theorem output2151_def : output2151 = (.seq output2150 output145) := by
  unfold output2151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2151_skip : Flapjack.WordAlloc.isSkip output2151 = false := by
  rw [output2151_def]
  conv => lhs; cbv
  try rfl
theorem node2151_eq : Flapjack.WordAlloc.removeDeadStructural input2151 value95 value1 value2 = (output2151, value833, value1) := by
  rw [input2151_def, output2151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node145_eq]
  try dsimp only
  rw [node2150_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2151 input140)).val
theorem input2152_def : input2152 = (.seq input2151 input140) := by
  unfold input2152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2151 output140)).val
theorem output2152_def : output2152 = (.seq output2151 output140) := by
  unfold output2152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2152_skip : Flapjack.WordAlloc.isSkip output2152 = false := by
  rw [output2152_def]
  conv => lhs; cbv
  try rfl
theorem node2152_eq : Flapjack.WordAlloc.removeDeadStructural input2152 value95 value1 value2 = (output2152, value833, value1) := by
  rw [input2152_def, output2152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node140_eq]
  try dsimp only
  rw [node2151_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2152 input139)).val
theorem input2153_def : input2153 = (.seq input2152 input139) := by
  unfold input2153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2152 output139)).val
theorem output2153_def : output2153 = (.seq output2152 output139) := by
  unfold output2153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2153_skip : Flapjack.WordAlloc.isSkip output2153 = false := by
  rw [output2153_def]
  conv => lhs; cbv
  try rfl
theorem node2153_eq : Flapjack.WordAlloc.removeDeadStructural input2153 value94 value1 value2 = (output2153, value833, value1) := by
  rw [input2153_def, output2153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node139_eq]
  try dsimp only
  rw [node2152_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2153 input138)).val
theorem input2154_def : input2154 = (.seq input2153 input138) := by
  unfold input2154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2153 output138)).val
theorem output2154_def : output2154 = (.seq output2153 output138) := by
  unfold output2154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2154_skip : Flapjack.WordAlloc.isSkip output2154 = false := by
  rw [output2154_def]
  conv => lhs; cbv
  try rfl
theorem node2154_eq : Flapjack.WordAlloc.removeDeadStructural input2154 value93 value1 value2 = (output2154, value833, value1) := by
  rw [input2154_def, output2154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node138_eq]
  try dsimp only
  rw [node2153_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2154 input137)).val
theorem input2155_def : input2155 = (.seq input2154 input137) := by
  unfold input2155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2154 output137)).val
theorem output2155_def : output2155 = (.seq output2154 output137) := by
  unfold output2155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2155_skip : Flapjack.WordAlloc.isSkip output2155 = false := by
  rw [output2155_def]
  conv => lhs; cbv
  try rfl
theorem node2155_eq : Flapjack.WordAlloc.removeDeadStructural input2155 value92 value1 value2 = (output2155, value833, value1) := by
  rw [input2155_def, output2155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node137_eq]
  try dsimp only
  rw [node2154_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2155 input136)).val
theorem input2156_def : input2156 = (.seq input2155 input136) := by
  unfold input2156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2155 output136)).val
theorem output2156_def : output2156 = (.seq output2155 output136) := by
  unfold output2156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2156_skip : Flapjack.WordAlloc.isSkip output2156 = false := by
  rw [output2156_def]
  conv => lhs; cbv
  try rfl
theorem node2156_eq : Flapjack.WordAlloc.removeDeadStructural input2156 value91 value1 value2 = (output2156, value833, value1) := by
  rw [input2156_def, output2156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node136_eq]
  try dsimp only
  rw [node2155_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2156 input135)).val
theorem input2157_def : input2157 = (.seq input2156 input135) := by
  unfold input2157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2156 output135)).val
theorem output2157_def : output2157 = (.seq output2156 output135) := by
  unfold output2157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2157_skip : Flapjack.WordAlloc.isSkip output2157 = false := by
  rw [output2157_def]
  conv => lhs; cbv
  try rfl
theorem node2157_eq : Flapjack.WordAlloc.removeDeadStructural input2157 value88 value1 value2 = (output2157, value833, value1) := by
  rw [input2157_def, output2157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node135_eq]
  try dsimp only
  rw [node2156_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2157 input130)).val
theorem input2158_def : input2158 = (.seq input2157 input130) := by
  unfold input2158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2157 output130)).val
theorem output2158_def : output2158 = (.seq output2157 output130) := by
  unfold output2158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2158_skip : Flapjack.WordAlloc.isSkip output2158 = false := by
  rw [output2158_def]
  conv => lhs; cbv
  try rfl
theorem node2158_eq : Flapjack.WordAlloc.removeDeadStructural input2158 value88 value1 value2 = (output2158, value833, value1) := by
  rw [input2158_def, output2158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node130_eq]
  try dsimp only
  rw [node2157_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2158 input129)).val
theorem input2159_def : input2159 = (.seq input2158 input129) := by
  unfold input2159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2158 output129)).val
theorem output2159_def : output2159 = (.seq output2158 output129) := by
  unfold output2159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2159_skip : Flapjack.WordAlloc.isSkip output2159 = false := by
  rw [output2159_def]
  conv => lhs; cbv
  try rfl
theorem node2159_eq : Flapjack.WordAlloc.removeDeadStructural input2159 value87 value1 value2 = (output2159, value833, value1) := by
  rw [input2159_def, output2159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node129_eq]
  try dsimp only
  rw [node2158_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2159 input128)).val
theorem input2160_def : input2160 = (.seq input2159 input128) := by
  unfold input2160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2159 output128)).val
theorem output2160_def : output2160 = (.seq output2159 output128) := by
  unfold output2160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2160_skip : Flapjack.WordAlloc.isSkip output2160 = false := by
  rw [output2160_def]
  conv => lhs; cbv
  try rfl
theorem node2160_eq : Flapjack.WordAlloc.removeDeadStructural input2160 value86 value1 value2 = (output2160, value833, value1) := by
  rw [input2160_def, output2160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node128_eq]
  try dsimp only
  rw [node2159_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2160 input127)).val
theorem input2161_def : input2161 = (.seq input2160 input127) := by
  unfold input2161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2160 output127)).val
theorem output2161_def : output2161 = (.seq output2160 output127) := by
  unfold output2161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2161_skip : Flapjack.WordAlloc.isSkip output2161 = false := by
  rw [output2161_def]
  conv => lhs; cbv
  try rfl
theorem node2161_eq : Flapjack.WordAlloc.removeDeadStructural input2161 value85 value1 value2 = (output2161, value833, value1) := by
  rw [input2161_def, output2161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node127_eq]
  try dsimp only
  rw [node2160_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2161 input126)).val
theorem input2162_def : input2162 = (.seq input2161 input126) := by
  unfold input2162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2161)).val
theorem output2162_def : output2162 = (output2161) := by
  unfold output2162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2162_skip : Flapjack.WordAlloc.isSkip output2162 = false := by
  rw [output2162_def]
  conv => lhs; cbv
  try rfl
theorem node2162_eq : Flapjack.WordAlloc.removeDeadStructural input2162 value85 value1 value2 = (output2162, value833, value1) := by
  rw [input2162_def, output2162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node126_eq]
  try dsimp only
  rw [node2161_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2162 input125)).val
theorem input2163_def : input2163 = (.seq input2162 input125) := by
  unfold input2163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2162 output125)).val
theorem output2163_def : output2163 = (.seq output2162 output125) := by
  unfold output2163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2163_skip : Flapjack.WordAlloc.isSkip output2163 = false := by
  rw [output2163_def]
  conv => lhs; cbv
  try rfl
theorem node2163_eq : Flapjack.WordAlloc.removeDeadStructural input2163 value81 value1 value2 = (output2163, value833, value1) := by
  rw [input2163_def, output2163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node125_eq]
  try dsimp only
  rw [node2162_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2163 input118)).val
theorem input2164_def : input2164 = (.seq input2163 input118) := by
  unfold input2164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2163 output118)).val
theorem output2164_def : output2164 = (.seq output2163 output118) := by
  unfold output2164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2164_skip : Flapjack.WordAlloc.isSkip output2164 = false := by
  rw [output2164_def]
  conv => lhs; cbv
  try rfl
theorem node2164_eq : Flapjack.WordAlloc.removeDeadStructural input2164 value81 value1 value2 = (output2164, value833, value1) := by
  rw [input2164_def, output2164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node118_eq]
  try dsimp only
  rw [node2163_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2164 input117)).val
theorem input2165_def : input2165 = (.seq input2164 input117) := by
  unfold input2165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2164 output117)).val
theorem output2165_def : output2165 = (.seq output2164 output117) := by
  unfold output2165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2165_skip : Flapjack.WordAlloc.isSkip output2165 = false := by
  rw [output2165_def]
  conv => lhs; cbv
  try rfl
theorem node2165_eq : Flapjack.WordAlloc.removeDeadStructural input2165 value80 value1 value2 = (output2165, value833, value1) := by
  rw [input2165_def, output2165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node117_eq]
  try dsimp only
  rw [node2164_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2165 input116)).val
theorem input2166_def : input2166 = (.seq input2165 input116) := by
  unfold input2166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2165 output116)).val
theorem output2166_def : output2166 = (.seq output2165 output116) := by
  unfold output2166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2166_skip : Flapjack.WordAlloc.isSkip output2166 = false := by
  rw [output2166_def]
  conv => lhs; cbv
  try rfl
theorem node2166_eq : Flapjack.WordAlloc.removeDeadStructural input2166 value79 value1 value2 = (output2166, value833, value1) := by
  rw [input2166_def, output2166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node116_eq]
  try dsimp only
  rw [node2165_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2166 input115)).val
theorem input2167_def : input2167 = (.seq input2166 input115) := by
  unfold input2167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2166 output115)).val
theorem output2167_def : output2167 = (.seq output2166 output115) := by
  unfold output2167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2167_skip : Flapjack.WordAlloc.isSkip output2167 = false := by
  rw [output2167_def]
  conv => lhs; cbv
  try rfl
theorem node2167_eq : Flapjack.WordAlloc.removeDeadStructural input2167 value78 value1 value2 = (output2167, value833, value1) := by
  rw [input2167_def, output2167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node115_eq]
  try dsimp only
  rw [node2166_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2167 input114)).val
theorem input2168_def : input2168 = (.seq input2167 input114) := by
  unfold input2168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2167 output114)).val
theorem output2168_def : output2168 = (.seq output2167 output114) := by
  unfold output2168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2168_skip : Flapjack.WordAlloc.isSkip output2168 = false := by
  rw [output2168_def]
  conv => lhs; cbv
  try rfl
theorem node2168_eq : Flapjack.WordAlloc.removeDeadStructural input2168 value77 value1 value2 = (output2168, value833, value1) := by
  rw [input2168_def, output2168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node114_eq]
  try dsimp only
  rw [node2167_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2168 input113)).val
theorem input2169_def : input2169 = (.seq input2168 input113) := by
  unfold input2169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2168 output113)).val
theorem output2169_def : output2169 = (.seq output2168 output113) := by
  unfold output2169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2169_skip : Flapjack.WordAlloc.isSkip output2169 = false := by
  rw [output2169_def]
  conv => lhs; cbv
  try rfl
theorem node2169_eq : Flapjack.WordAlloc.removeDeadStructural input2169 value74 value1 value2 = (output2169, value833, value1) := by
  rw [input2169_def, output2169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node113_eq]
  try dsimp only
  rw [node2168_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2169 input108)).val
theorem input2170_def : input2170 = (.seq input2169 input108) := by
  unfold input2170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2169 output108)).val
theorem output2170_def : output2170 = (.seq output2169 output108) := by
  unfold output2170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2170_skip : Flapjack.WordAlloc.isSkip output2170 = false := by
  rw [output2170_def]
  conv => lhs; cbv
  try rfl
theorem node2170_eq : Flapjack.WordAlloc.removeDeadStructural input2170 value74 value1 value2 = (output2170, value833, value1) := by
  rw [input2170_def, output2170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node108_eq]
  try dsimp only
  rw [node2169_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2170 input107)).val
theorem input2171_def : input2171 = (.seq input2170 input107) := by
  unfold input2171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2170 output107)).val
theorem output2171_def : output2171 = (.seq output2170 output107) := by
  unfold output2171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2171_skip : Flapjack.WordAlloc.isSkip output2171 = false := by
  rw [output2171_def]
  conv => lhs; cbv
  try rfl
theorem node2171_eq : Flapjack.WordAlloc.removeDeadStructural input2171 value73 value1 value2 = (output2171, value833, value1) := by
  rw [input2171_def, output2171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node107_eq]
  try dsimp only
  rw [node2170_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2171 input106)).val
theorem input2172_def : input2172 = (.seq input2171 input106) := by
  unfold input2172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2171 output106)).val
theorem output2172_def : output2172 = (.seq output2171 output106) := by
  unfold output2172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2172_skip : Flapjack.WordAlloc.isSkip output2172 = false := by
  rw [output2172_def]
  conv => lhs; cbv
  try rfl
theorem node2172_eq : Flapjack.WordAlloc.removeDeadStructural input2172 value72 value1 value2 = (output2172, value833, value1) := by
  rw [input2172_def, output2172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node106_eq]
  try dsimp only
  rw [node2171_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2172 input105)).val
theorem input2173_def : input2173 = (.seq input2172 input105) := by
  unfold input2173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2172 output105)).val
theorem output2173_def : output2173 = (.seq output2172 output105) := by
  unfold output2173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2173_skip : Flapjack.WordAlloc.isSkip output2173 = false := by
  rw [output2173_def]
  conv => lhs; cbv
  try rfl
theorem node2173_eq : Flapjack.WordAlloc.removeDeadStructural input2173 value71 value1 value2 = (output2173, value833, value1) := by
  rw [input2173_def, output2173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node105_eq]
  try dsimp only
  rw [node2172_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2173 input104)).val
theorem input2174_def : input2174 = (.seq input2173 input104) := by
  unfold input2174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2173 output104)).val
theorem output2174_def : output2174 = (.seq output2173 output104) := by
  unfold output2174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2174_skip : Flapjack.WordAlloc.isSkip output2174 = false := by
  rw [output2174_def]
  conv => lhs; cbv
  try rfl
theorem node2174_eq : Flapjack.WordAlloc.removeDeadStructural input2174 value70 value1 value2 = (output2174, value833, value1) := by
  rw [input2174_def, output2174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node104_eq]
  try dsimp only
  rw [node2173_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2174 input103)).val
theorem input2175_def : input2175 = (.seq input2174 input103) := by
  unfold input2175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2174 output103)).val
theorem output2175_def : output2175 = (.seq output2174 output103) := by
  unfold output2175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2175_skip : Flapjack.WordAlloc.isSkip output2175 = false := by
  rw [output2175_def]
  conv => lhs; cbv
  try rfl
theorem node2175_eq : Flapjack.WordAlloc.removeDeadStructural input2175 value67 value1 value2 = (output2175, value833, value1) := by
  rw [input2175_def, output2175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node103_eq]
  try dsimp only
  rw [node2174_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2175 input98)).val
theorem input2176_def : input2176 = (.seq input2175 input98) := by
  unfold input2176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2175 output98)).val
theorem output2176_def : output2176 = (.seq output2175 output98) := by
  unfold output2176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2176_skip : Flapjack.WordAlloc.isSkip output2176 = false := by
  rw [output2176_def]
  conv => lhs; cbv
  try rfl
theorem node2176_eq : Flapjack.WordAlloc.removeDeadStructural input2176 value67 value1 value2 = (output2176, value833, value1) := by
  rw [input2176_def, output2176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node98_eq]
  try dsimp only
  rw [node2175_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2176 input97)).val
theorem input2177_def : input2177 = (.seq input2176 input97) := by
  unfold input2177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2176 output97)).val
theorem output2177_def : output2177 = (.seq output2176 output97) := by
  unfold output2177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2177_skip : Flapjack.WordAlloc.isSkip output2177 = false := by
  rw [output2177_def]
  conv => lhs; cbv
  try rfl
theorem node2177_eq : Flapjack.WordAlloc.removeDeadStructural input2177 value66 value1 value2 = (output2177, value833, value1) := by
  rw [input2177_def, output2177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node97_eq]
  try dsimp only
  rw [node2176_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2177 input96)).val
theorem input2178_def : input2178 = (.seq input2177 input96) := by
  unfold input2178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2177 output96)).val
theorem output2178_def : output2178 = (.seq output2177 output96) := by
  unfold output2178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2178_skip : Flapjack.WordAlloc.isSkip output2178 = false := by
  rw [output2178_def]
  conv => lhs; cbv
  try rfl
theorem node2178_eq : Flapjack.WordAlloc.removeDeadStructural input2178 value65 value1 value2 = (output2178, value833, value1) := by
  rw [input2178_def, output2178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node96_eq]
  try dsimp only
  rw [node2177_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2178 input95)).val
theorem input2179_def : input2179 = (.seq input2178 input95) := by
  unfold input2179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2178 output95)).val
theorem output2179_def : output2179 = (.seq output2178 output95) := by
  unfold output2179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2179_skip : Flapjack.WordAlloc.isSkip output2179 = false := by
  rw [output2179_def]
  conv => lhs; cbv
  try rfl
theorem node2179_eq : Flapjack.WordAlloc.removeDeadStructural input2179 value64 value1 value2 = (output2179, value833, value1) := by
  rw [input2179_def, output2179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node95_eq]
  try dsimp only
  rw [node2178_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2179 input94)).val
theorem input2180_def : input2180 = (.seq input2179 input94) := by
  unfold input2180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2179 output94)).val
theorem output2180_def : output2180 = (.seq output2179 output94) := by
  unfold output2180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2180_skip : Flapjack.WordAlloc.isSkip output2180 = false := by
  rw [output2180_def]
  conv => lhs; cbv
  try rfl
theorem node2180_eq : Flapjack.WordAlloc.removeDeadStructural input2180 value63 value1 value2 = (output2180, value833, value1) := by
  rw [input2180_def, output2180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node94_eq]
  try dsimp only
  rw [node2179_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2180 input93)).val
theorem input2181_def : input2181 = (.seq input2180 input93) := by
  unfold input2181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2180 output93)).val
theorem output2181_def : output2181 = (.seq output2180 output93) := by
  unfold output2181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2181_skip : Flapjack.WordAlloc.isSkip output2181 = false := by
  rw [output2181_def]
  conv => lhs; cbv
  try rfl
theorem node2181_eq : Flapjack.WordAlloc.removeDeadStructural input2181 value60 value1 value2 = (output2181, value833, value1) := by
  rw [input2181_def, output2181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node93_eq]
  try dsimp only
  rw [node2180_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2181 input88)).val
theorem input2182_def : input2182 = (.seq input2181 input88) := by
  unfold input2182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2181 output88)).val
theorem output2182_def : output2182 = (.seq output2181 output88) := by
  unfold output2182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2182_skip : Flapjack.WordAlloc.isSkip output2182 = false := by
  rw [output2182_def]
  conv => lhs; cbv
  try rfl
theorem node2182_eq : Flapjack.WordAlloc.removeDeadStructural input2182 value60 value1 value2 = (output2182, value833, value1) := by
  rw [input2182_def, output2182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node88_eq]
  try dsimp only
  rw [node2181_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2182 input87)).val
theorem input2183_def : input2183 = (.seq input2182 input87) := by
  unfold input2183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2182 output87)).val
theorem output2183_def : output2183 = (.seq output2182 output87) := by
  unfold output2183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2183_skip : Flapjack.WordAlloc.isSkip output2183 = false := by
  rw [output2183_def]
  conv => lhs; cbv
  try rfl
theorem node2183_eq : Flapjack.WordAlloc.removeDeadStructural input2183 value59 value1 value2 = (output2183, value833, value1) := by
  rw [input2183_def, output2183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node87_eq]
  try dsimp only
  rw [node2182_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2183 input86)).val
theorem input2184_def : input2184 = (.seq input2183 input86) := by
  unfold input2184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2183 output86)).val
theorem output2184_def : output2184 = (.seq output2183 output86) := by
  unfold output2184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2184_skip : Flapjack.WordAlloc.isSkip output2184 = false := by
  rw [output2184_def]
  conv => lhs; cbv
  try rfl
theorem node2184_eq : Flapjack.WordAlloc.removeDeadStructural input2184 value58 value1 value2 = (output2184, value833, value1) := by
  rw [input2184_def, output2184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node86_eq]
  try dsimp only
  rw [node2183_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2184 input85)).val
theorem input2185_def : input2185 = (.seq input2184 input85) := by
  unfold input2185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2184 output85)).val
theorem output2185_def : output2185 = (.seq output2184 output85) := by
  unfold output2185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2185_skip : Flapjack.WordAlloc.isSkip output2185 = false := by
  rw [output2185_def]
  conv => lhs; cbv
  try rfl
theorem node2185_eq : Flapjack.WordAlloc.removeDeadStructural input2185 value57 value1 value2 = (output2185, value833, value1) := by
  rw [input2185_def, output2185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node85_eq]
  try dsimp only
  rw [node2184_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2185 input84)).val
theorem input2186_def : input2186 = (.seq input2185 input84) := by
  unfold input2186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2185 output84)).val
theorem output2186_def : output2186 = (.seq output2185 output84) := by
  unfold output2186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2186_skip : Flapjack.WordAlloc.isSkip output2186 = false := by
  rw [output2186_def]
  conv => lhs; cbv
  try rfl
theorem node2186_eq : Flapjack.WordAlloc.removeDeadStructural input2186 value56 value1 value2 = (output2186, value833, value1) := by
  rw [input2186_def, output2186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node84_eq]
  try dsimp only
  rw [node2185_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2186 input83)).val
theorem input2187_def : input2187 = (.seq input2186 input83) := by
  unfold input2187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2186 output83)).val
theorem output2187_def : output2187 = (.seq output2186 output83) := by
  unfold output2187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2187_skip : Flapjack.WordAlloc.isSkip output2187 = false := by
  rw [output2187_def]
  conv => lhs; cbv
  try rfl
theorem node2187_eq : Flapjack.WordAlloc.removeDeadStructural input2187 value53 value1 value2 = (output2187, value833, value1) := by
  rw [input2187_def, output2187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node83_eq]
  try dsimp only
  rw [node2186_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2187 input78)).val
theorem input2188_def : input2188 = (.seq input2187 input78) := by
  unfold input2188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2187 output78)).val
theorem output2188_def : output2188 = (.seq output2187 output78) := by
  unfold output2188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2188_skip : Flapjack.WordAlloc.isSkip output2188 = false := by
  rw [output2188_def]
  conv => lhs; cbv
  try rfl
theorem node2188_eq : Flapjack.WordAlloc.removeDeadStructural input2188 value53 value1 value2 = (output2188, value833, value1) := by
  rw [input2188_def, output2188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node78_eq]
  try dsimp only
  rw [node2187_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2188 input77)).val
theorem input2189_def : input2189 = (.seq input2188 input77) := by
  unfold input2189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2188 output77)).val
theorem output2189_def : output2189 = (.seq output2188 output77) := by
  unfold output2189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2189_skip : Flapjack.WordAlloc.isSkip output2189 = false := by
  rw [output2189_def]
  conv => lhs; cbv
  try rfl
theorem node2189_eq : Flapjack.WordAlloc.removeDeadStructural input2189 value52 value1 value2 = (output2189, value833, value1) := by
  rw [input2189_def, output2189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node77_eq]
  try dsimp only
  rw [node2188_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2189 input76)).val
theorem input2190_def : input2190 = (.seq input2189 input76) := by
  unfold input2190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2189 output76)).val
theorem output2190_def : output2190 = (.seq output2189 output76) := by
  unfold output2190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2190_skip : Flapjack.WordAlloc.isSkip output2190 = false := by
  rw [output2190_def]
  conv => lhs; cbv
  try rfl
theorem node2190_eq : Flapjack.WordAlloc.removeDeadStructural input2190 value51 value1 value2 = (output2190, value833, value1) := by
  rw [input2190_def, output2190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node76_eq]
  try dsimp only
  rw [node2189_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2190 input75)).val
theorem input2191_def : input2191 = (.seq input2190 input75) := by
  unfold input2191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2190 output75)).val
theorem output2191_def : output2191 = (.seq output2190 output75) := by
  unfold output2191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2191_skip : Flapjack.WordAlloc.isSkip output2191 = false := by
  rw [output2191_def]
  conv => lhs; cbv
  try rfl
theorem node2191_eq : Flapjack.WordAlloc.removeDeadStructural input2191 value50 value1 value2 = (output2191, value833, value1) := by
  rw [input2191_def, output2191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node75_eq]
  try dsimp only
  rw [node2190_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2191 input74)).val
theorem input2192_def : input2192 = (.seq input2191 input74) := by
  unfold input2192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2191 output74)).val
theorem output2192_def : output2192 = (.seq output2191 output74) := by
  unfold output2192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2192_skip : Flapjack.WordAlloc.isSkip output2192 = false := by
  rw [output2192_def]
  conv => lhs; cbv
  try rfl
theorem node2192_eq : Flapjack.WordAlloc.removeDeadStructural input2192 value49 value1 value2 = (output2192, value833, value1) := by
  rw [input2192_def, output2192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node74_eq]
  try dsimp only
  rw [node2191_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2192 input73)).val
theorem input2193_def : input2193 = (.seq input2192 input73) := by
  unfold input2193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2192 output73)).val
theorem output2193_def : output2193 = (.seq output2192 output73) := by
  unfold output2193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2193_skip : Flapjack.WordAlloc.isSkip output2193 = false := by
  rw [output2193_def]
  conv => lhs; cbv
  try rfl
theorem node2193_eq : Flapjack.WordAlloc.removeDeadStructural input2193 value46 value1 value2 = (output2193, value833, value1) := by
  rw [input2193_def, output2193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node73_eq]
  try dsimp only
  rw [node2192_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2193 input68)).val
theorem input2194_def : input2194 = (.seq input2193 input68) := by
  unfold input2194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2193 output68)).val
theorem output2194_def : output2194 = (.seq output2193 output68) := by
  unfold output2194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2194_skip : Flapjack.WordAlloc.isSkip output2194 = false := by
  rw [output2194_def]
  conv => lhs; cbv
  try rfl
theorem node2194_eq : Flapjack.WordAlloc.removeDeadStructural input2194 value46 value1 value2 = (output2194, value833, value1) := by
  rw [input2194_def, output2194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node68_eq]
  try dsimp only
  rw [node2193_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2194 input67)).val
theorem input2195_def : input2195 = (.seq input2194 input67) := by
  unfold input2195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2194 output67)).val
theorem output2195_def : output2195 = (.seq output2194 output67) := by
  unfold output2195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2195_skip : Flapjack.WordAlloc.isSkip output2195 = false := by
  rw [output2195_def]
  conv => lhs; cbv
  try rfl
theorem node2195_eq : Flapjack.WordAlloc.removeDeadStructural input2195 value45 value1 value2 = (output2195, value833, value1) := by
  rw [input2195_def, output2195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node67_eq]
  try dsimp only
  rw [node2194_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2195 input66)).val
theorem input2196_def : input2196 = (.seq input2195 input66) := by
  unfold input2196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2195 output66)).val
theorem output2196_def : output2196 = (.seq output2195 output66) := by
  unfold output2196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2196_skip : Flapjack.WordAlloc.isSkip output2196 = false := by
  rw [output2196_def]
  conv => lhs; cbv
  try rfl
theorem node2196_eq : Flapjack.WordAlloc.removeDeadStructural input2196 value44 value1 value2 = (output2196, value833, value1) := by
  rw [input2196_def, output2196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node66_eq]
  try dsimp only
  rw [node2195_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2196 input65)).val
theorem input2197_def : input2197 = (.seq input2196 input65) := by
  unfold input2197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2196 output65)).val
theorem output2197_def : output2197 = (.seq output2196 output65) := by
  unfold output2197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2197_skip : Flapjack.WordAlloc.isSkip output2197 = false := by
  rw [output2197_def]
  conv => lhs; cbv
  try rfl
theorem node2197_eq : Flapjack.WordAlloc.removeDeadStructural input2197 value43 value1 value2 = (output2197, value833, value1) := by
  rw [input2197_def, output2197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node65_eq]
  try dsimp only
  rw [node2196_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2197 input64)).val
theorem input2198_def : input2198 = (.seq input2197 input64) := by
  unfold input2198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2197 output64)).val
theorem output2198_def : output2198 = (.seq output2197 output64) := by
  unfold output2198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2198_skip : Flapjack.WordAlloc.isSkip output2198 = false := by
  rw [output2198_def]
  conv => lhs; cbv
  try rfl
theorem node2198_eq : Flapjack.WordAlloc.removeDeadStructural input2198 value42 value1 value2 = (output2198, value833, value1) := by
  rw [input2198_def, output2198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node64_eq]
  try dsimp only
  rw [node2197_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2198 input63)).val
theorem input2199_def : input2199 = (.seq input2198 input63) := by
  unfold input2199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2198 output63)).val
theorem output2199_def : output2199 = (.seq output2198 output63) := by
  unfold output2199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2199_skip : Flapjack.WordAlloc.isSkip output2199 = false := by
  rw [output2199_def]
  conv => lhs; cbv
  try rfl
theorem node2199_eq : Flapjack.WordAlloc.removeDeadStructural input2199 value39 value1 value2 = (output2199, value833, value1) := by
  rw [input2199_def, output2199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node63_eq]
  try dsimp only
  rw [node2198_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2199 input58)).val
theorem input2200_def : input2200 = (.seq input2199 input58) := by
  unfold input2200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2199 output58)).val
theorem output2200_def : output2200 = (.seq output2199 output58) := by
  unfold output2200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2200_skip : Flapjack.WordAlloc.isSkip output2200 = false := by
  rw [output2200_def]
  conv => lhs; cbv
  try rfl
theorem node2200_eq : Flapjack.WordAlloc.removeDeadStructural input2200 value39 value1 value2 = (output2200, value833, value1) := by
  rw [input2200_def, output2200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node58_eq]
  try dsimp only
  rw [node2199_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2200 input57)).val
theorem input2201_def : input2201 = (.seq input2200 input57) := by
  unfold input2201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2200 output57)).val
theorem output2201_def : output2201 = (.seq output2200 output57) := by
  unfold output2201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2201_skip : Flapjack.WordAlloc.isSkip output2201 = false := by
  rw [output2201_def]
  conv => lhs; cbv
  try rfl
theorem node2201_eq : Flapjack.WordAlloc.removeDeadStructural input2201 value38 value1 value2 = (output2201, value833, value1) := by
  rw [input2201_def, output2201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node57_eq]
  try dsimp only
  rw [node2200_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2201 input56)).val
theorem input2202_def : input2202 = (.seq input2201 input56) := by
  unfold input2202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2201 output56)).val
theorem output2202_def : output2202 = (.seq output2201 output56) := by
  unfold output2202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2202_skip : Flapjack.WordAlloc.isSkip output2202 = false := by
  rw [output2202_def]
  conv => lhs; cbv
  try rfl
theorem node2202_eq : Flapjack.WordAlloc.removeDeadStructural input2202 value37 value1 value2 = (output2202, value833, value1) := by
  rw [input2202_def, output2202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node56_eq]
  try dsimp only
  rw [node2201_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2202 input55)).val
theorem input2203_def : input2203 = (.seq input2202 input55) := by
  unfold input2203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2202 output55)).val
theorem output2203_def : output2203 = (.seq output2202 output55) := by
  unfold output2203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2203_skip : Flapjack.WordAlloc.isSkip output2203 = false := by
  rw [output2203_def]
  conv => lhs; cbv
  try rfl
theorem node2203_eq : Flapjack.WordAlloc.removeDeadStructural input2203 value36 value1 value2 = (output2203, value833, value1) := by
  rw [input2203_def, output2203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node55_eq]
  try dsimp only
  rw [node2202_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2203 input54)).val
theorem input2204_def : input2204 = (.seq input2203 input54) := by
  unfold input2204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2203 output54)).val
theorem output2204_def : output2204 = (.seq output2203 output54) := by
  unfold output2204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2204_skip : Flapjack.WordAlloc.isSkip output2204 = false := by
  rw [output2204_def]
  conv => lhs; cbv
  try rfl
theorem node2204_eq : Flapjack.WordAlloc.removeDeadStructural input2204 value35 value1 value2 = (output2204, value833, value1) := by
  rw [input2204_def, output2204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node54_eq]
  try dsimp only
  rw [node2203_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2204 input53)).val
theorem input2205_def : input2205 = (.seq input2204 input53) := by
  unfold input2205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2204 output53)).val
theorem output2205_def : output2205 = (.seq output2204 output53) := by
  unfold output2205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2205_skip : Flapjack.WordAlloc.isSkip output2205 = false := by
  rw [output2205_def]
  conv => lhs; cbv
  try rfl
theorem node2205_eq : Flapjack.WordAlloc.removeDeadStructural input2205 value32 value1 value2 = (output2205, value833, value1) := by
  rw [input2205_def, output2205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node53_eq]
  try dsimp only
  rw [node2204_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2205 input48)).val
theorem input2206_def : input2206 = (.seq input2205 input48) := by
  unfold input2206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2205 output48)).val
theorem output2206_def : output2206 = (.seq output2205 output48) := by
  unfold output2206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2206_skip : Flapjack.WordAlloc.isSkip output2206 = false := by
  rw [output2206_def]
  conv => lhs; cbv
  try rfl
theorem node2206_eq : Flapjack.WordAlloc.removeDeadStructural input2206 value32 value1 value2 = (output2206, value833, value1) := by
  rw [input2206_def, output2206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node48_eq]
  try dsimp only
  rw [node2205_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2206 input47)).val
theorem input2207_def : input2207 = (.seq input2206 input47) := by
  unfold input2207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2206 output47)).val
theorem output2207_def : output2207 = (.seq output2206 output47) := by
  unfold output2207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2207_skip : Flapjack.WordAlloc.isSkip output2207 = false := by
  rw [output2207_def]
  conv => lhs; cbv
  try rfl
theorem node2207_eq : Flapjack.WordAlloc.removeDeadStructural input2207 value31 value1 value2 = (output2207, value833, value1) := by
  rw [input2207_def, output2207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node47_eq]
  try dsimp only
  rw [node2206_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2207 input46)).val
theorem input2208_def : input2208 = (.seq input2207 input46) := by
  unfold input2208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2207 output46)).val
theorem output2208_def : output2208 = (.seq output2207 output46) := by
  unfold output2208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2208_skip : Flapjack.WordAlloc.isSkip output2208 = false := by
  rw [output2208_def]
  conv => lhs; cbv
  try rfl
theorem node2208_eq : Flapjack.WordAlloc.removeDeadStructural input2208 value30 value1 value2 = (output2208, value833, value1) := by
  rw [input2208_def, output2208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node46_eq]
  try dsimp only
  rw [node2207_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2208 input45)).val
theorem input2209_def : input2209 = (.seq input2208 input45) := by
  unfold input2209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2208 output45)).val
theorem output2209_def : output2209 = (.seq output2208 output45) := by
  unfold output2209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2209_skip : Flapjack.WordAlloc.isSkip output2209 = false := by
  rw [output2209_def]
  conv => lhs; cbv
  try rfl
theorem node2209_eq : Flapjack.WordAlloc.removeDeadStructural input2209 value29 value1 value2 = (output2209, value833, value1) := by
  rw [input2209_def, output2209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node45_eq]
  try dsimp only
  rw [node2208_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2209 input44)).val
theorem input2210_def : input2210 = (.seq input2209 input44) := by
  unfold input2210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2209 output44)).val
theorem output2210_def : output2210 = (.seq output2209 output44) := by
  unfold output2210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2210_skip : Flapjack.WordAlloc.isSkip output2210 = false := by
  rw [output2210_def]
  conv => lhs; cbv
  try rfl
theorem node2210_eq : Flapjack.WordAlloc.removeDeadStructural input2210 value26 value1 value2 = (output2210, value833, value1) := by
  rw [input2210_def, output2210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node44_eq]
  try dsimp only
  rw [node2209_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2210 input39)).val
theorem input2211_def : input2211 = (.seq input2210 input39) := by
  unfold input2211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2210 output39)).val
theorem output2211_def : output2211 = (.seq output2210 output39) := by
  unfold output2211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2211_skip : Flapjack.WordAlloc.isSkip output2211 = false := by
  rw [output2211_def]
  conv => lhs; cbv
  try rfl
theorem node2211_eq : Flapjack.WordAlloc.removeDeadStructural input2211 value26 value1 value2 = (output2211, value833, value1) := by
  rw [input2211_def, output2211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node39_eq]
  try dsimp only
  rw [node2210_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2211 input38)).val
theorem input2212_def : input2212 = (.seq input2211 input38) := by
  unfold input2212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2211 output38)).val
theorem output2212_def : output2212 = (.seq output2211 output38) := by
  unfold output2212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2212_skip : Flapjack.WordAlloc.isSkip output2212 = false := by
  rw [output2212_def]
  conv => lhs; cbv
  try rfl
theorem node2212_eq : Flapjack.WordAlloc.removeDeadStructural input2212 value23 value1 value2 = (output2212, value833, value1) := by
  rw [input2212_def, output2212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node38_eq]
  try dsimp only
  rw [node2211_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2212 input33)).val
theorem input2213_def : input2213 = (.seq input2212 input33) := by
  unfold input2213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2212 output33)).val
theorem output2213_def : output2213 = (.seq output2212 output33) := by
  unfold output2213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2213_skip : Flapjack.WordAlloc.isSkip output2213 = false := by
  rw [output2213_def]
  conv => lhs; cbv
  try rfl
theorem node2213_eq : Flapjack.WordAlloc.removeDeadStructural input2213 value22 value1 value2 = (output2213, value833, value1) := by
  rw [input2213_def, output2213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node33_eq]
  try dsimp only
  rw [node2212_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2213 input32)).val
theorem input2214_def : input2214 = (.seq input2213 input32) := by
  unfold input2214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2213 output32)).val
theorem output2214_def : output2214 = (.seq output2213 output32) := by
  unfold output2214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2214_skip : Flapjack.WordAlloc.isSkip output2214 = false := by
  rw [output2214_def]
  conv => lhs; cbv
  try rfl
theorem node2214_eq : Flapjack.WordAlloc.removeDeadStructural input2214 value21 value1 value2 = (output2214, value833, value1) := by
  rw [input2214_def, output2214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node32_eq]
  try dsimp only
  rw [node2213_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2214 input31)).val
theorem input2215_def : input2215 = (.seq input2214 input31) := by
  unfold input2215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2214 output31)).val
theorem output2215_def : output2215 = (.seq output2214 output31) := by
  unfold output2215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2215_skip : Flapjack.WordAlloc.isSkip output2215 = false := by
  rw [output2215_def]
  conv => lhs; cbv
  try rfl
theorem node2215_eq : Flapjack.WordAlloc.removeDeadStructural input2215 value18 value1 value2 = (output2215, value833, value1) := by
  rw [input2215_def, output2215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node31_eq]
  try dsimp only
  rw [node2214_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2215 input26)).val
theorem input2216_def : input2216 = (.seq input2215 input26) := by
  unfold input2216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2215 output26)).val
theorem output2216_def : output2216 = (.seq output2215 output26) := by
  unfold output2216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2216_skip : Flapjack.WordAlloc.isSkip output2216 = false := by
  rw [output2216_def]
  conv => lhs; cbv
  try rfl
theorem node2216_eq : Flapjack.WordAlloc.removeDeadStructural input2216 value18 value1 value2 = (output2216, value833, value1) := by
  rw [input2216_def, output2216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node26_eq]
  try dsimp only
  rw [node2215_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2216 input25)).val
theorem input2217_def : input2217 = (.seq input2216 input25) := by
  unfold input2217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2216 output25)).val
theorem output2217_def : output2217 = (.seq output2216 output25) := by
  unfold output2217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2217_skip : Flapjack.WordAlloc.isSkip output2217 = false := by
  rw [output2217_def]
  conv => lhs; cbv
  try rfl
theorem node2217_eq : Flapjack.WordAlloc.removeDeadStructural input2217 value14 value1 value2 = (output2217, value833, value1) := by
  rw [input2217_def, output2217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node25_eq]
  try dsimp only
  rw [node2216_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2217 input18)).val
theorem input2218_def : input2218 = (.seq input2217 input18) := by
  unfold input2218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2217 output18)).val
theorem output2218_def : output2218 = (.seq output2217 output18) := by
  unfold output2218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2218_skip : Flapjack.WordAlloc.isSkip output2218 = false := by
  rw [output2218_def]
  conv => lhs; cbv
  try rfl
theorem node2218_eq : Flapjack.WordAlloc.removeDeadStructural input2218 value13 value1 value2 = (output2218, value833, value1) := by
  rw [input2218_def, output2218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node18_eq]
  try dsimp only
  rw [node2217_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2218 input17)).val
theorem input2219_def : input2219 = (.seq input2218 input17) := by
  unfold input2219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2218 output17)).val
theorem output2219_def : output2219 = (.seq output2218 output17) := by
  unfold output2219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2219_skip : Flapjack.WordAlloc.isSkip output2219 = false := by
  rw [output2219_def]
  conv => lhs; cbv
  try rfl
theorem node2219_eq : Flapjack.WordAlloc.removeDeadStructural input2219 value12 value1 value2 = (output2219, value833, value1) := by
  rw [input2219_def, output2219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node17_eq]
  try dsimp only
  rw [node2218_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2219 input16)).val
theorem input2220_def : input2220 = (.seq input2219 input16) := by
  unfold input2220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2219 output16)).val
theorem output2220_def : output2220 = (.seq output2219 output16) := by
  unfold output2220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2220_skip : Flapjack.WordAlloc.isSkip output2220 = false := by
  rw [output2220_def]
  conv => lhs; cbv
  try rfl
theorem node2220_eq : Flapjack.WordAlloc.removeDeadStructural input2220 value9 value1 value2 = (output2220, value833, value1) := by
  rw [input2220_def, output2220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node16_eq]
  try dsimp only
  rw [node2219_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2220 input11)).val
theorem input2221_def : input2221 = (.seq input2220 input11) := by
  unfold input2221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2220 output11)).val
theorem output2221_def : output2221 = (.seq output2220 output11) := by
  unfold output2221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2221_skip : Flapjack.WordAlloc.isSkip output2221 = false := by
  rw [output2221_def]
  conv => lhs; cbv
  try rfl
theorem node2221_eq : Flapjack.WordAlloc.removeDeadStructural input2221 value9 value1 value2 = (output2221, value833, value1) := by
  rw [input2221_def, output2221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11_eq]
  try dsimp only
  rw [node2220_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2221 input10)).val
theorem input2222_def : input2222 = (.seq input2221 input10) := by
  unfold input2222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2221 output10)).val
theorem output2222_def : output2222 = (.seq output2221 output10) := by
  unfold output2222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2222_skip : Flapjack.WordAlloc.isSkip output2222 = false := by
  rw [output2222_def]
  conv => lhs; cbv
  try rfl
theorem node2222_eq : Flapjack.WordAlloc.removeDeadStructural input2222 value8 value1 value2 = (output2222, value833, value1) := by
  rw [input2222_def, output2222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10_eq]
  try dsimp only
  rw [node2221_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2222 input9)).val
theorem input2223_def : input2223 = (.seq input2222 input9) := by
  unfold input2223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2222 output9)).val
theorem output2223_def : output2223 = (.seq output2222 output9) := by
  unfold output2223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2223_skip : Flapjack.WordAlloc.isSkip output2223 = false := by
  rw [output2223_def]
  conv => lhs; cbv
  try rfl
theorem node2223_eq : Flapjack.WordAlloc.removeDeadStructural input2223 value5 value1 value2 = (output2223, value833, value1) := by
  rw [input2223_def, output2223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9_eq]
  try dsimp only
  rw [node2222_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2223 input4)).val
theorem input2224_def : input2224 = (.seq input2223 input4) := by
  unfold input2224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2223 output4)).val
theorem output2224_def : output2224 = (.seq output2223 output4) := by
  unfold output2224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2224_skip : Flapjack.WordAlloc.isSkip output2224 = false := by
  rw [output2224_def]
  conv => lhs; cbv
  try rfl
theorem node2224_eq : Flapjack.WordAlloc.removeDeadStructural input2224 value5 value1 value2 = (output2224, value833, value1) := by
  rw [input2224_def, output2224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4_eq]
  try dsimp only
  rw [node2223_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2224 input3)).val
theorem input2225_def : input2225 = (.seq input2224 input3) := by
  unfold input2225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2224 output3)).val
theorem output2225_def : output2225 = (.seq output2224 output3) := by
  unfold output2225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2225_skip : Flapjack.WordAlloc.isSkip output2225 = false := by
  rw [output2225_def]
  conv => lhs; cbv
  try rfl
theorem node2225_eq : Flapjack.WordAlloc.removeDeadStructural input2225 value4 value1 value2 = (output2225, value833, value1) := by
  rw [input2225_def, output2225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3_eq]
  try dsimp only
  rw [node2224_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2225 input2)).val
theorem input2226_def : input2226 = (.seq input2225 input2) := by
  unfold input2226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2225 output2)).val
theorem output2226_def : output2226 = (.seq output2225 output2) := by
  unfold output2226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2226_skip : Flapjack.WordAlloc.isSkip output2226 = false := by
  rw [output2226_def]
  conv => lhs; cbv
  try rfl
theorem node2226_eq : Flapjack.WordAlloc.removeDeadStructural input2226 value0 value1 value2 = (output2226, value833, value1) := by
  rw [input2226_def, output2226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2_eq]
  try dsimp only
  rw [node2225_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value834 : Flapjack.NumSet :=
Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln

@[irreducible, cbv_opaque] def input2227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(109, 0), (113, 2), (117, 4), (121, 6), (125, 8)])).val
theorem input2227_def : input2227 = (Flapjack.WordLangProgHOL.move 1 [(109, 0), (113, 2), (117, 4), (121, 6), (125, 8)]) := by
  unfold input2227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(109, 0), (113, 2), (117, 4), (121, 6), (125, 8)])).val
theorem output2227_def : output2227 = (Flapjack.WordLangProgHOL.move 1 [(109, 0), (113, 2), (117, 4), (121, 6), (125, 8)]) := by
  unfold output2227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2227_skip : Flapjack.WordAlloc.isSkip output2227 = false := by
  rw [output2227_def]
  conv => lhs; cbv
  try rfl
theorem node2227_eq : Flapjack.WordAlloc.removeDeadStructural input2227 value833 value1 value2 = (output2227, value834, value1) := by
  rw [input2227_def, output2227_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2227 input2226)).val
theorem input2228_def : input2228 = (.seq input2227 input2226) := by
  unfold input2228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2227 output2226)).val
theorem output2228_def : output2228 = (.seq output2227 output2226) := by
  unfold output2228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2228_skip : Flapjack.WordAlloc.isSkip output2228 = false := by
  rw [output2228_def]
  conv => lhs; cbv
  try rfl
theorem node2228_eq : Flapjack.WordAlloc.removeDeadStructural input2228 value0 value1 value2 = (output2228, value834, value1) := by
  rw [input2228_def, output2228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2226_eq]
  try dsimp only
  rw [node2227_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node2228_eq
end InitECandidate.Proofs.DeadStages692
