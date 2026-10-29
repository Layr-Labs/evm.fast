import InitECandidate.Proofs.DeadStages713.Chunk063
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input16384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16383 input4086)).val
theorem input16384_def : input16384 = (.seq input16383 input4086) := by
  unfold input16384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16383 output4086)).val
theorem output16384_def : output16384 = (.seq output16383 output4086) := by
  unfold output16384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16384_skip : Flapjack.WordAlloc.isSkip output16384 = false := by
  rw [output16384_def]
  conv => lhs; cbv
  try rfl
theorem node16384_eq : Flapjack.WordAlloc.removeDeadStructural input16384 value5 value1 value2 = (output16384, value6896, value1) := by
  rw [input16384_def, output16384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4086_eq]
  try dsimp only
  rw [node16383_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16384 input4083)).val
theorem input16385_def : input16385 = (.seq input16384 input4083) := by
  unfold input16385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16384 output4083)).val
theorem output16385_def : output16385 = (.seq output16384 output4083) := by
  unfold output16385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16385_skip : Flapjack.WordAlloc.isSkip output16385 = false := by
  rw [output16385_def]
  conv => lhs; cbv
  try rfl
theorem node16385_eq : Flapjack.WordAlloc.removeDeadStructural input16385 value2040 value1 value2 = (output16385, value6896, value1) := by
  rw [input16385_def, output16385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4083_eq]
  try dsimp only
  rw [node16384_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16385 input4072)).val
theorem input16386_def : input16386 = (.seq input16385 input4072) := by
  unfold input16386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16385)).val
theorem output16386_def : output16386 = (output16385) := by
  unfold output16386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16386_skip : Flapjack.WordAlloc.isSkip output16386 = false := by
  rw [output16386_def]
  conv => lhs; cbv
  try rfl
theorem node16386_eq : Flapjack.WordAlloc.removeDeadStructural input16386 value2040 value1 value2 = (output16386, value6896, value1) := by
  rw [input16386_def, output16386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4072_eq]
  try dsimp only
  rw [node16385_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16386 input4071)).val
theorem input16387_def : input16387 = (.seq input16386 input4071) := by
  unfold input16387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16386 output4071)).val
theorem output16387_def : output16387 = (.seq output16386 output4071) := by
  unfold output16387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16387_skip : Flapjack.WordAlloc.isSkip output16387 = false := by
  rw [output16387_def]
  conv => lhs; cbv
  try rfl
theorem node16387_eq : Flapjack.WordAlloc.removeDeadStructural input16387 value2039 value1 value2 = (output16387, value6896, value1) := by
  rw [input16387_def, output16387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4071_eq]
  try dsimp only
  rw [node16386_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16387 input4070)).val
theorem input16388_def : input16388 = (.seq input16387 input4070) := by
  unfold input16388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16387 output4070)).val
theorem output16388_def : output16388 = (.seq output16387 output4070) := by
  unfold output16388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16388_skip : Flapjack.WordAlloc.isSkip output16388 = false := by
  rw [output16388_def]
  conv => lhs; cbv
  try rfl
theorem node16388_eq : Flapjack.WordAlloc.removeDeadStructural input16388 value5 value1 value2 = (output16388, value6896, value1) := by
  rw [input16388_def, output16388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4070_eq]
  try dsimp only
  rw [node16387_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16388 input4067)).val
theorem input16389_def : input16389 = (.seq input16388 input4067) := by
  unfold input16389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16388 output4067)).val
theorem output16389_def : output16389 = (.seq output16388 output4067) := by
  unfold output16389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16389_skip : Flapjack.WordAlloc.isSkip output16389 = false := by
  rw [output16389_def]
  conv => lhs; cbv
  try rfl
theorem node16389_eq : Flapjack.WordAlloc.removeDeadStructural input16389 value2032 value1 value2 = (output16389, value6896, value1) := by
  rw [input16389_def, output16389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4067_eq]
  try dsimp only
  rw [node16388_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16389 input4056)).val
theorem input16390_def : input16390 = (.seq input16389 input4056) := by
  unfold input16390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16389)).val
theorem output16390_def : output16390 = (output16389) := by
  unfold output16390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16390_skip : Flapjack.WordAlloc.isSkip output16390 = false := by
  rw [output16390_def]
  conv => lhs; cbv
  try rfl
theorem node16390_eq : Flapjack.WordAlloc.removeDeadStructural input16390 value2032 value1 value2 = (output16390, value6896, value1) := by
  rw [input16390_def, output16390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4056_eq]
  try dsimp only
  rw [node16389_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16390 input4055)).val
theorem input16391_def : input16391 = (.seq input16390 input4055) := by
  unfold input16391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16390 output4055)).val
theorem output16391_def : output16391 = (.seq output16390 output4055) := by
  unfold output16391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16391_skip : Flapjack.WordAlloc.isSkip output16391 = false := by
  rw [output16391_def]
  conv => lhs; cbv
  try rfl
theorem node16391_eq : Flapjack.WordAlloc.removeDeadStructural input16391 value2031 value1 value2 = (output16391, value6896, value1) := by
  rw [input16391_def, output16391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4055_eq]
  try dsimp only
  rw [node16390_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16391 input4054)).val
theorem input16392_def : input16392 = (.seq input16391 input4054) := by
  unfold input16392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16391 output4054)).val
theorem output16392_def : output16392 = (.seq output16391 output4054) := by
  unfold output16392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16392_skip : Flapjack.WordAlloc.isSkip output16392 = false := by
  rw [output16392_def]
  conv => lhs; cbv
  try rfl
theorem node16392_eq : Flapjack.WordAlloc.removeDeadStructural input16392 value5 value1 value2 = (output16392, value6896, value1) := by
  rw [input16392_def, output16392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4054_eq]
  try dsimp only
  rw [node16391_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16392 input4051)).val
theorem input16393_def : input16393 = (.seq input16392 input4051) := by
  unfold input16393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16392 output4051)).val
theorem output16393_def : output16393 = (.seq output16392 output4051) := by
  unfold output16393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16393_skip : Flapjack.WordAlloc.isSkip output16393 = false := by
  rw [output16393_def]
  conv => lhs; cbv
  try rfl
theorem node16393_eq : Flapjack.WordAlloc.removeDeadStructural input16393 value2024 value1 value2 = (output16393, value6896, value1) := by
  rw [input16393_def, output16393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4051_eq]
  try dsimp only
  rw [node16392_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16393 input4040)).val
theorem input16394_def : input16394 = (.seq input16393 input4040) := by
  unfold input16394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16393)).val
theorem output16394_def : output16394 = (output16393) := by
  unfold output16394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16394_skip : Flapjack.WordAlloc.isSkip output16394 = false := by
  rw [output16394_def]
  conv => lhs; cbv
  try rfl
theorem node16394_eq : Flapjack.WordAlloc.removeDeadStructural input16394 value2024 value1 value2 = (output16394, value6896, value1) := by
  rw [input16394_def, output16394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4040_eq]
  try dsimp only
  rw [node16393_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16394 input4039)).val
theorem input16395_def : input16395 = (.seq input16394 input4039) := by
  unfold input16395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16394 output4039)).val
theorem output16395_def : output16395 = (.seq output16394 output4039) := by
  unfold output16395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16395_skip : Flapjack.WordAlloc.isSkip output16395 = false := by
  rw [output16395_def]
  conv => lhs; cbv
  try rfl
theorem node16395_eq : Flapjack.WordAlloc.removeDeadStructural input16395 value2023 value1 value2 = (output16395, value6896, value1) := by
  rw [input16395_def, output16395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4039_eq]
  try dsimp only
  rw [node16394_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16395 input4038)).val
theorem input16396_def : input16396 = (.seq input16395 input4038) := by
  unfold input16396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16395 output4038)).val
theorem output16396_def : output16396 = (.seq output16395 output4038) := by
  unfold output16396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16396_skip : Flapjack.WordAlloc.isSkip output16396 = false := by
  rw [output16396_def]
  conv => lhs; cbv
  try rfl
theorem node16396_eq : Flapjack.WordAlloc.removeDeadStructural input16396 value5 value1 value2 = (output16396, value6896, value1) := by
  rw [input16396_def, output16396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4038_eq]
  try dsimp only
  rw [node16395_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16396 input4035)).val
theorem input16397_def : input16397 = (.seq input16396 input4035) := by
  unfold input16397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16396 output4035)).val
theorem output16397_def : output16397 = (.seq output16396 output4035) := by
  unfold output16397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16397_skip : Flapjack.WordAlloc.isSkip output16397 = false := by
  rw [output16397_def]
  conv => lhs; cbv
  try rfl
theorem node16397_eq : Flapjack.WordAlloc.removeDeadStructural input16397 value2016 value1 value2 = (output16397, value6896, value1) := by
  rw [input16397_def, output16397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4035_eq]
  try dsimp only
  rw [node16396_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16397 input4024)).val
theorem input16398_def : input16398 = (.seq input16397 input4024) := by
  unfold input16398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16397)).val
theorem output16398_def : output16398 = (output16397) := by
  unfold output16398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16398_skip : Flapjack.WordAlloc.isSkip output16398 = false := by
  rw [output16398_def]
  conv => lhs; cbv
  try rfl
theorem node16398_eq : Flapjack.WordAlloc.removeDeadStructural input16398 value2016 value1 value2 = (output16398, value6896, value1) := by
  rw [input16398_def, output16398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4024_eq]
  try dsimp only
  rw [node16397_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16398 input4023)).val
theorem input16399_def : input16399 = (.seq input16398 input4023) := by
  unfold input16399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16398 output4023)).val
theorem output16399_def : output16399 = (.seq output16398 output4023) := by
  unfold output16399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16399_skip : Flapjack.WordAlloc.isSkip output16399 = false := by
  rw [output16399_def]
  conv => lhs; cbv
  try rfl
theorem node16399_eq : Flapjack.WordAlloc.removeDeadStructural input16399 value2015 value1 value2 = (output16399, value6896, value1) := by
  rw [input16399_def, output16399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4023_eq]
  try dsimp only
  rw [node16398_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16399 input4022)).val
theorem input16400_def : input16400 = (.seq input16399 input4022) := by
  unfold input16400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16399 output4022)).val
theorem output16400_def : output16400 = (.seq output16399 output4022) := by
  unfold output16400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16400_skip : Flapjack.WordAlloc.isSkip output16400 = false := by
  rw [output16400_def]
  conv => lhs; cbv
  try rfl
theorem node16400_eq : Flapjack.WordAlloc.removeDeadStructural input16400 value5 value1 value2 = (output16400, value6896, value1) := by
  rw [input16400_def, output16400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4022_eq]
  try dsimp only
  rw [node16399_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16400 input4019)).val
theorem input16401_def : input16401 = (.seq input16400 input4019) := by
  unfold input16401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16400 output4019)).val
theorem output16401_def : output16401 = (.seq output16400 output4019) := by
  unfold output16401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16401_skip : Flapjack.WordAlloc.isSkip output16401 = false := by
  rw [output16401_def]
  conv => lhs; cbv
  try rfl
theorem node16401_eq : Flapjack.WordAlloc.removeDeadStructural input16401 value2008 value1 value2 = (output16401, value6896, value1) := by
  rw [input16401_def, output16401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4019_eq]
  try dsimp only
  rw [node16400_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16401 input4008)).val
theorem input16402_def : input16402 = (.seq input16401 input4008) := by
  unfold input16402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16401)).val
theorem output16402_def : output16402 = (output16401) := by
  unfold output16402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16402_skip : Flapjack.WordAlloc.isSkip output16402 = false := by
  rw [output16402_def]
  conv => lhs; cbv
  try rfl
theorem node16402_eq : Flapjack.WordAlloc.removeDeadStructural input16402 value2008 value1 value2 = (output16402, value6896, value1) := by
  rw [input16402_def, output16402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4008_eq]
  try dsimp only
  rw [node16401_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16402 input4007)).val
theorem input16403_def : input16403 = (.seq input16402 input4007) := by
  unfold input16403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16402 output4007)).val
theorem output16403_def : output16403 = (.seq output16402 output4007) := by
  unfold output16403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16403_skip : Flapjack.WordAlloc.isSkip output16403 = false := by
  rw [output16403_def]
  conv => lhs; cbv
  try rfl
theorem node16403_eq : Flapjack.WordAlloc.removeDeadStructural input16403 value2007 value1 value2 = (output16403, value6896, value1) := by
  rw [input16403_def, output16403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4007_eq]
  try dsimp only
  rw [node16402_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16403 input4006)).val
theorem input16404_def : input16404 = (.seq input16403 input4006) := by
  unfold input16404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16403 output4006)).val
theorem output16404_def : output16404 = (.seq output16403 output4006) := by
  unfold output16404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16404_skip : Flapjack.WordAlloc.isSkip output16404 = false := by
  rw [output16404_def]
  conv => lhs; cbv
  try rfl
theorem node16404_eq : Flapjack.WordAlloc.removeDeadStructural input16404 value5 value1 value2 = (output16404, value6896, value1) := by
  rw [input16404_def, output16404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4006_eq]
  try dsimp only
  rw [node16403_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16404 input4003)).val
theorem input16405_def : input16405 = (.seq input16404 input4003) := by
  unfold input16405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16404 output4003)).val
theorem output16405_def : output16405 = (.seq output16404 output4003) := by
  unfold output16405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16405_skip : Flapjack.WordAlloc.isSkip output16405 = false := by
  rw [output16405_def]
  conv => lhs; cbv
  try rfl
theorem node16405_eq : Flapjack.WordAlloc.removeDeadStructural input16405 value2000 value1 value2 = (output16405, value6896, value1) := by
  rw [input16405_def, output16405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4003_eq]
  try dsimp only
  rw [node16404_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16405 input3992)).val
theorem input16406_def : input16406 = (.seq input16405 input3992) := by
  unfold input16406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16405)).val
theorem output16406_def : output16406 = (output16405) := by
  unfold output16406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16406_skip : Flapjack.WordAlloc.isSkip output16406 = false := by
  rw [output16406_def]
  conv => lhs; cbv
  try rfl
theorem node16406_eq : Flapjack.WordAlloc.removeDeadStructural input16406 value2000 value1 value2 = (output16406, value6896, value1) := by
  rw [input16406_def, output16406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3992_eq]
  try dsimp only
  rw [node16405_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16406 input3991)).val
theorem input16407_def : input16407 = (.seq input16406 input3991) := by
  unfold input16407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16406 output3991)).val
theorem output16407_def : output16407 = (.seq output16406 output3991) := by
  unfold output16407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16407_skip : Flapjack.WordAlloc.isSkip output16407 = false := by
  rw [output16407_def]
  conv => lhs; cbv
  try rfl
theorem node16407_eq : Flapjack.WordAlloc.removeDeadStructural input16407 value1999 value1 value2 = (output16407, value6896, value1) := by
  rw [input16407_def, output16407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3991_eq]
  try dsimp only
  rw [node16406_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16407 input3990)).val
theorem input16408_def : input16408 = (.seq input16407 input3990) := by
  unfold input16408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16407 output3990)).val
theorem output16408_def : output16408 = (.seq output16407 output3990) := by
  unfold output16408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16408_skip : Flapjack.WordAlloc.isSkip output16408 = false := by
  rw [output16408_def]
  conv => lhs; cbv
  try rfl
theorem node16408_eq : Flapjack.WordAlloc.removeDeadStructural input16408 value5 value1 value2 = (output16408, value6896, value1) := by
  rw [input16408_def, output16408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3990_eq]
  try dsimp only
  rw [node16407_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16408 input3987)).val
theorem input16409_def : input16409 = (.seq input16408 input3987) := by
  unfold input16409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16408 output3987)).val
theorem output16409_def : output16409 = (.seq output16408 output3987) := by
  unfold output16409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16409_skip : Flapjack.WordAlloc.isSkip output16409 = false := by
  rw [output16409_def]
  conv => lhs; cbv
  try rfl
theorem node16409_eq : Flapjack.WordAlloc.removeDeadStructural input16409 value1992 value1 value2 = (output16409, value6896, value1) := by
  rw [input16409_def, output16409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3987_eq]
  try dsimp only
  rw [node16408_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16409 input3976)).val
theorem input16410_def : input16410 = (.seq input16409 input3976) := by
  unfold input16410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16409)).val
theorem output16410_def : output16410 = (output16409) := by
  unfold output16410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16410_skip : Flapjack.WordAlloc.isSkip output16410 = false := by
  rw [output16410_def]
  conv => lhs; cbv
  try rfl
theorem node16410_eq : Flapjack.WordAlloc.removeDeadStructural input16410 value1992 value1 value2 = (output16410, value6896, value1) := by
  rw [input16410_def, output16410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3976_eq]
  try dsimp only
  rw [node16409_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16410 input3975)).val
theorem input16411_def : input16411 = (.seq input16410 input3975) := by
  unfold input16411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16410 output3975)).val
theorem output16411_def : output16411 = (.seq output16410 output3975) := by
  unfold output16411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16411_skip : Flapjack.WordAlloc.isSkip output16411 = false := by
  rw [output16411_def]
  conv => lhs; cbv
  try rfl
theorem node16411_eq : Flapjack.WordAlloc.removeDeadStructural input16411 value1991 value1 value2 = (output16411, value6896, value1) := by
  rw [input16411_def, output16411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3975_eq]
  try dsimp only
  rw [node16410_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16411 input3974)).val
theorem input16412_def : input16412 = (.seq input16411 input3974) := by
  unfold input16412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16411 output3974)).val
theorem output16412_def : output16412 = (.seq output16411 output3974) := by
  unfold output16412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16412_skip : Flapjack.WordAlloc.isSkip output16412 = false := by
  rw [output16412_def]
  conv => lhs; cbv
  try rfl
theorem node16412_eq : Flapjack.WordAlloc.removeDeadStructural input16412 value5 value1 value2 = (output16412, value6896, value1) := by
  rw [input16412_def, output16412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3974_eq]
  try dsimp only
  rw [node16411_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16412 input3971)).val
theorem input16413_def : input16413 = (.seq input16412 input3971) := by
  unfold input16413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16412 output3971)).val
theorem output16413_def : output16413 = (.seq output16412 output3971) := by
  unfold output16413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16413_skip : Flapjack.WordAlloc.isSkip output16413 = false := by
  rw [output16413_def]
  conv => lhs; cbv
  try rfl
theorem node16413_eq : Flapjack.WordAlloc.removeDeadStructural input16413 value1984 value1 value2 = (output16413, value6896, value1) := by
  rw [input16413_def, output16413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3971_eq]
  try dsimp only
  rw [node16412_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16413 input3960)).val
theorem input16414_def : input16414 = (.seq input16413 input3960) := by
  unfold input16414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16413)).val
theorem output16414_def : output16414 = (output16413) := by
  unfold output16414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16414_skip : Flapjack.WordAlloc.isSkip output16414 = false := by
  rw [output16414_def]
  conv => lhs; cbv
  try rfl
theorem node16414_eq : Flapjack.WordAlloc.removeDeadStructural input16414 value1984 value1 value2 = (output16414, value6896, value1) := by
  rw [input16414_def, output16414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3960_eq]
  try dsimp only
  rw [node16413_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16414 input3959)).val
theorem input16415_def : input16415 = (.seq input16414 input3959) := by
  unfold input16415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16414 output3959)).val
theorem output16415_def : output16415 = (.seq output16414 output3959) := by
  unfold output16415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16415_skip : Flapjack.WordAlloc.isSkip output16415 = false := by
  rw [output16415_def]
  conv => lhs; cbv
  try rfl
theorem node16415_eq : Flapjack.WordAlloc.removeDeadStructural input16415 value1983 value1 value2 = (output16415, value6896, value1) := by
  rw [input16415_def, output16415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3959_eq]
  try dsimp only
  rw [node16414_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16415 input3958)).val
theorem input16416_def : input16416 = (.seq input16415 input3958) := by
  unfold input16416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16415 output3958)).val
theorem output16416_def : output16416 = (.seq output16415 output3958) := by
  unfold output16416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16416_skip : Flapjack.WordAlloc.isSkip output16416 = false := by
  rw [output16416_def]
  conv => lhs; cbv
  try rfl
theorem node16416_eq : Flapjack.WordAlloc.removeDeadStructural input16416 value5 value1 value2 = (output16416, value6896, value1) := by
  rw [input16416_def, output16416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3958_eq]
  try dsimp only
  rw [node16415_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16416 input3955)).val
theorem input16417_def : input16417 = (.seq input16416 input3955) := by
  unfold input16417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16416 output3955)).val
theorem output16417_def : output16417 = (.seq output16416 output3955) := by
  unfold output16417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16417_skip : Flapjack.WordAlloc.isSkip output16417 = false := by
  rw [output16417_def]
  conv => lhs; cbv
  try rfl
theorem node16417_eq : Flapjack.WordAlloc.removeDeadStructural input16417 value1976 value1 value2 = (output16417, value6896, value1) := by
  rw [input16417_def, output16417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3955_eq]
  try dsimp only
  rw [node16416_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16417 input3944)).val
theorem input16418_def : input16418 = (.seq input16417 input3944) := by
  unfold input16418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16417)).val
theorem output16418_def : output16418 = (output16417) := by
  unfold output16418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16418_skip : Flapjack.WordAlloc.isSkip output16418 = false := by
  rw [output16418_def]
  conv => lhs; cbv
  try rfl
theorem node16418_eq : Flapjack.WordAlloc.removeDeadStructural input16418 value1976 value1 value2 = (output16418, value6896, value1) := by
  rw [input16418_def, output16418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3944_eq]
  try dsimp only
  rw [node16417_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16418 input3943)).val
theorem input16419_def : input16419 = (.seq input16418 input3943) := by
  unfold input16419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16418 output3943)).val
theorem output16419_def : output16419 = (.seq output16418 output3943) := by
  unfold output16419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16419_skip : Flapjack.WordAlloc.isSkip output16419 = false := by
  rw [output16419_def]
  conv => lhs; cbv
  try rfl
theorem node16419_eq : Flapjack.WordAlloc.removeDeadStructural input16419 value1975 value1 value2 = (output16419, value6896, value1) := by
  rw [input16419_def, output16419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3943_eq]
  try dsimp only
  rw [node16418_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16419 input3942)).val
theorem input16420_def : input16420 = (.seq input16419 input3942) := by
  unfold input16420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16419 output3942)).val
theorem output16420_def : output16420 = (.seq output16419 output3942) := by
  unfold output16420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16420_skip : Flapjack.WordAlloc.isSkip output16420 = false := by
  rw [output16420_def]
  conv => lhs; cbv
  try rfl
theorem node16420_eq : Flapjack.WordAlloc.removeDeadStructural input16420 value5 value1 value2 = (output16420, value6896, value1) := by
  rw [input16420_def, output16420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3942_eq]
  try dsimp only
  rw [node16419_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16420 input3939)).val
theorem input16421_def : input16421 = (.seq input16420 input3939) := by
  unfold input16421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16420 output3939)).val
theorem output16421_def : output16421 = (.seq output16420 output3939) := by
  unfold output16421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16421_skip : Flapjack.WordAlloc.isSkip output16421 = false := by
  rw [output16421_def]
  conv => lhs; cbv
  try rfl
theorem node16421_eq : Flapjack.WordAlloc.removeDeadStructural input16421 value1968 value1 value2 = (output16421, value6896, value1) := by
  rw [input16421_def, output16421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3939_eq]
  try dsimp only
  rw [node16420_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16421 input3928)).val
theorem input16422_def : input16422 = (.seq input16421 input3928) := by
  unfold input16422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16421)).val
theorem output16422_def : output16422 = (output16421) := by
  unfold output16422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16422_skip : Flapjack.WordAlloc.isSkip output16422 = false := by
  rw [output16422_def]
  conv => lhs; cbv
  try rfl
theorem node16422_eq : Flapjack.WordAlloc.removeDeadStructural input16422 value1968 value1 value2 = (output16422, value6896, value1) := by
  rw [input16422_def, output16422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3928_eq]
  try dsimp only
  rw [node16421_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16422 input3927)).val
theorem input16423_def : input16423 = (.seq input16422 input3927) := by
  unfold input16423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16422 output3927)).val
theorem output16423_def : output16423 = (.seq output16422 output3927) := by
  unfold output16423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16423_skip : Flapjack.WordAlloc.isSkip output16423 = false := by
  rw [output16423_def]
  conv => lhs; cbv
  try rfl
theorem node16423_eq : Flapjack.WordAlloc.removeDeadStructural input16423 value1967 value1 value2 = (output16423, value6896, value1) := by
  rw [input16423_def, output16423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3927_eq]
  try dsimp only
  rw [node16422_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16423 input3926)).val
theorem input16424_def : input16424 = (.seq input16423 input3926) := by
  unfold input16424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16423 output3926)).val
theorem output16424_def : output16424 = (.seq output16423 output3926) := by
  unfold output16424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16424_skip : Flapjack.WordAlloc.isSkip output16424 = false := by
  rw [output16424_def]
  conv => lhs; cbv
  try rfl
theorem node16424_eq : Flapjack.WordAlloc.removeDeadStructural input16424 value5 value1 value2 = (output16424, value6896, value1) := by
  rw [input16424_def, output16424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3926_eq]
  try dsimp only
  rw [node16423_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16424 input3923)).val
theorem input16425_def : input16425 = (.seq input16424 input3923) := by
  unfold input16425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16424 output3923)).val
theorem output16425_def : output16425 = (.seq output16424 output3923) := by
  unfold output16425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16425_skip : Flapjack.WordAlloc.isSkip output16425 = false := by
  rw [output16425_def]
  conv => lhs; cbv
  try rfl
theorem node16425_eq : Flapjack.WordAlloc.removeDeadStructural input16425 value1960 value1 value2 = (output16425, value6896, value1) := by
  rw [input16425_def, output16425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3923_eq]
  try dsimp only
  rw [node16424_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16425 input3912)).val
theorem input16426_def : input16426 = (.seq input16425 input3912) := by
  unfold input16426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16425)).val
theorem output16426_def : output16426 = (output16425) := by
  unfold output16426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16426_skip : Flapjack.WordAlloc.isSkip output16426 = false := by
  rw [output16426_def]
  conv => lhs; cbv
  try rfl
theorem node16426_eq : Flapjack.WordAlloc.removeDeadStructural input16426 value1960 value1 value2 = (output16426, value6896, value1) := by
  rw [input16426_def, output16426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3912_eq]
  try dsimp only
  rw [node16425_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16426 input3911)).val
theorem input16427_def : input16427 = (.seq input16426 input3911) := by
  unfold input16427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16426 output3911)).val
theorem output16427_def : output16427 = (.seq output16426 output3911) := by
  unfold output16427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16427_skip : Flapjack.WordAlloc.isSkip output16427 = false := by
  rw [output16427_def]
  conv => lhs; cbv
  try rfl
theorem node16427_eq : Flapjack.WordAlloc.removeDeadStructural input16427 value1959 value1 value2 = (output16427, value6896, value1) := by
  rw [input16427_def, output16427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3911_eq]
  try dsimp only
  rw [node16426_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16427 input3910)).val
theorem input16428_def : input16428 = (.seq input16427 input3910) := by
  unfold input16428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16427 output3910)).val
theorem output16428_def : output16428 = (.seq output16427 output3910) := by
  unfold output16428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16428_skip : Flapjack.WordAlloc.isSkip output16428 = false := by
  rw [output16428_def]
  conv => lhs; cbv
  try rfl
theorem node16428_eq : Flapjack.WordAlloc.removeDeadStructural input16428 value5 value1 value2 = (output16428, value6896, value1) := by
  rw [input16428_def, output16428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3910_eq]
  try dsimp only
  rw [node16427_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16428 input3907)).val
theorem input16429_def : input16429 = (.seq input16428 input3907) := by
  unfold input16429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16428 output3907)).val
theorem output16429_def : output16429 = (.seq output16428 output3907) := by
  unfold output16429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16429_skip : Flapjack.WordAlloc.isSkip output16429 = false := by
  rw [output16429_def]
  conv => lhs; cbv
  try rfl
theorem node16429_eq : Flapjack.WordAlloc.removeDeadStructural input16429 value1952 value1 value2 = (output16429, value6896, value1) := by
  rw [input16429_def, output16429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3907_eq]
  try dsimp only
  rw [node16428_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16429 input3896)).val
theorem input16430_def : input16430 = (.seq input16429 input3896) := by
  unfold input16430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16429)).val
theorem output16430_def : output16430 = (output16429) := by
  unfold output16430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16430_skip : Flapjack.WordAlloc.isSkip output16430 = false := by
  rw [output16430_def]
  conv => lhs; cbv
  try rfl
theorem node16430_eq : Flapjack.WordAlloc.removeDeadStructural input16430 value1952 value1 value2 = (output16430, value6896, value1) := by
  rw [input16430_def, output16430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3896_eq]
  try dsimp only
  rw [node16429_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16430 input3895)).val
theorem input16431_def : input16431 = (.seq input16430 input3895) := by
  unfold input16431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16430 output3895)).val
theorem output16431_def : output16431 = (.seq output16430 output3895) := by
  unfold output16431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16431_skip : Flapjack.WordAlloc.isSkip output16431 = false := by
  rw [output16431_def]
  conv => lhs; cbv
  try rfl
theorem node16431_eq : Flapjack.WordAlloc.removeDeadStructural input16431 value1951 value1 value2 = (output16431, value6896, value1) := by
  rw [input16431_def, output16431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3895_eq]
  try dsimp only
  rw [node16430_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16431 input3894)).val
theorem input16432_def : input16432 = (.seq input16431 input3894) := by
  unfold input16432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16431 output3894)).val
theorem output16432_def : output16432 = (.seq output16431 output3894) := by
  unfold output16432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16432_skip : Flapjack.WordAlloc.isSkip output16432 = false := by
  rw [output16432_def]
  conv => lhs; cbv
  try rfl
theorem node16432_eq : Flapjack.WordAlloc.removeDeadStructural input16432 value5 value1 value2 = (output16432, value6896, value1) := by
  rw [input16432_def, output16432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3894_eq]
  try dsimp only
  rw [node16431_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16432 input3891)).val
theorem input16433_def : input16433 = (.seq input16432 input3891) := by
  unfold input16433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16432 output3891)).val
theorem output16433_def : output16433 = (.seq output16432 output3891) := by
  unfold output16433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16433_skip : Flapjack.WordAlloc.isSkip output16433 = false := by
  rw [output16433_def]
  conv => lhs; cbv
  try rfl
theorem node16433_eq : Flapjack.WordAlloc.removeDeadStructural input16433 value1944 value1 value2 = (output16433, value6896, value1) := by
  rw [input16433_def, output16433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3891_eq]
  try dsimp only
  rw [node16432_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16433 input3880)).val
theorem input16434_def : input16434 = (.seq input16433 input3880) := by
  unfold input16434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16433)).val
theorem output16434_def : output16434 = (output16433) := by
  unfold output16434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16434_skip : Flapjack.WordAlloc.isSkip output16434 = false := by
  rw [output16434_def]
  conv => lhs; cbv
  try rfl
theorem node16434_eq : Flapjack.WordAlloc.removeDeadStructural input16434 value1944 value1 value2 = (output16434, value6896, value1) := by
  rw [input16434_def, output16434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3880_eq]
  try dsimp only
  rw [node16433_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16434 input3879)).val
theorem input16435_def : input16435 = (.seq input16434 input3879) := by
  unfold input16435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16434 output3879)).val
theorem output16435_def : output16435 = (.seq output16434 output3879) := by
  unfold output16435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16435_skip : Flapjack.WordAlloc.isSkip output16435 = false := by
  rw [output16435_def]
  conv => lhs; cbv
  try rfl
theorem node16435_eq : Flapjack.WordAlloc.removeDeadStructural input16435 value1943 value1 value2 = (output16435, value6896, value1) := by
  rw [input16435_def, output16435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3879_eq]
  try dsimp only
  rw [node16434_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16435 input3878)).val
theorem input16436_def : input16436 = (.seq input16435 input3878) := by
  unfold input16436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16435 output3878)).val
theorem output16436_def : output16436 = (.seq output16435 output3878) := by
  unfold output16436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16436_skip : Flapjack.WordAlloc.isSkip output16436 = false := by
  rw [output16436_def]
  conv => lhs; cbv
  try rfl
theorem node16436_eq : Flapjack.WordAlloc.removeDeadStructural input16436 value5 value1 value2 = (output16436, value6896, value1) := by
  rw [input16436_def, output16436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3878_eq]
  try dsimp only
  rw [node16435_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16436 input3875)).val
theorem input16437_def : input16437 = (.seq input16436 input3875) := by
  unfold input16437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16436 output3875)).val
theorem output16437_def : output16437 = (.seq output16436 output3875) := by
  unfold output16437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16437_skip : Flapjack.WordAlloc.isSkip output16437 = false := by
  rw [output16437_def]
  conv => lhs; cbv
  try rfl
theorem node16437_eq : Flapjack.WordAlloc.removeDeadStructural input16437 value1936 value1 value2 = (output16437, value6896, value1) := by
  rw [input16437_def, output16437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3875_eq]
  try dsimp only
  rw [node16436_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16437 input3864)).val
theorem input16438_def : input16438 = (.seq input16437 input3864) := by
  unfold input16438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16437)).val
theorem output16438_def : output16438 = (output16437) := by
  unfold output16438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16438_skip : Flapjack.WordAlloc.isSkip output16438 = false := by
  rw [output16438_def]
  conv => lhs; cbv
  try rfl
theorem node16438_eq : Flapjack.WordAlloc.removeDeadStructural input16438 value1936 value1 value2 = (output16438, value6896, value1) := by
  rw [input16438_def, output16438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3864_eq]
  try dsimp only
  rw [node16437_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16438 input3863)).val
theorem input16439_def : input16439 = (.seq input16438 input3863) := by
  unfold input16439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16438 output3863)).val
theorem output16439_def : output16439 = (.seq output16438 output3863) := by
  unfold output16439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16439_skip : Flapjack.WordAlloc.isSkip output16439 = false := by
  rw [output16439_def]
  conv => lhs; cbv
  try rfl
theorem node16439_eq : Flapjack.WordAlloc.removeDeadStructural input16439 value1935 value1 value2 = (output16439, value6896, value1) := by
  rw [input16439_def, output16439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3863_eq]
  try dsimp only
  rw [node16438_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16439 input3862)).val
theorem input16440_def : input16440 = (.seq input16439 input3862) := by
  unfold input16440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16439 output3862)).val
theorem output16440_def : output16440 = (.seq output16439 output3862) := by
  unfold output16440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16440_skip : Flapjack.WordAlloc.isSkip output16440 = false := by
  rw [output16440_def]
  conv => lhs; cbv
  try rfl
theorem node16440_eq : Flapjack.WordAlloc.removeDeadStructural input16440 value5 value1 value2 = (output16440, value6896, value1) := by
  rw [input16440_def, output16440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3862_eq]
  try dsimp only
  rw [node16439_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16440 input3859)).val
theorem input16441_def : input16441 = (.seq input16440 input3859) := by
  unfold input16441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16440 output3859)).val
theorem output16441_def : output16441 = (.seq output16440 output3859) := by
  unfold output16441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16441_skip : Flapjack.WordAlloc.isSkip output16441 = false := by
  rw [output16441_def]
  conv => lhs; cbv
  try rfl
theorem node16441_eq : Flapjack.WordAlloc.removeDeadStructural input16441 value1928 value1 value2 = (output16441, value6896, value1) := by
  rw [input16441_def, output16441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3859_eq]
  try dsimp only
  rw [node16440_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16441 input3848)).val
theorem input16442_def : input16442 = (.seq input16441 input3848) := by
  unfold input16442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16441)).val
theorem output16442_def : output16442 = (output16441) := by
  unfold output16442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16442_skip : Flapjack.WordAlloc.isSkip output16442 = false := by
  rw [output16442_def]
  conv => lhs; cbv
  try rfl
theorem node16442_eq : Flapjack.WordAlloc.removeDeadStructural input16442 value1928 value1 value2 = (output16442, value6896, value1) := by
  rw [input16442_def, output16442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3848_eq]
  try dsimp only
  rw [node16441_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16442 input3847)).val
theorem input16443_def : input16443 = (.seq input16442 input3847) := by
  unfold input16443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16442 output3847)).val
theorem output16443_def : output16443 = (.seq output16442 output3847) := by
  unfold output16443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16443_skip : Flapjack.WordAlloc.isSkip output16443 = false := by
  rw [output16443_def]
  conv => lhs; cbv
  try rfl
theorem node16443_eq : Flapjack.WordAlloc.removeDeadStructural input16443 value1927 value1 value2 = (output16443, value6896, value1) := by
  rw [input16443_def, output16443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3847_eq]
  try dsimp only
  rw [node16442_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16443 input3846)).val
theorem input16444_def : input16444 = (.seq input16443 input3846) := by
  unfold input16444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16443 output3846)).val
theorem output16444_def : output16444 = (.seq output16443 output3846) := by
  unfold output16444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16444_skip : Flapjack.WordAlloc.isSkip output16444 = false := by
  rw [output16444_def]
  conv => lhs; cbv
  try rfl
theorem node16444_eq : Flapjack.WordAlloc.removeDeadStructural input16444 value5 value1 value2 = (output16444, value6896, value1) := by
  rw [input16444_def, output16444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3846_eq]
  try dsimp only
  rw [node16443_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16444 input3843)).val
theorem input16445_def : input16445 = (.seq input16444 input3843) := by
  unfold input16445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16444 output3843)).val
theorem output16445_def : output16445 = (.seq output16444 output3843) := by
  unfold output16445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16445_skip : Flapjack.WordAlloc.isSkip output16445 = false := by
  rw [output16445_def]
  conv => lhs; cbv
  try rfl
theorem node16445_eq : Flapjack.WordAlloc.removeDeadStructural input16445 value1920 value1 value2 = (output16445, value6896, value1) := by
  rw [input16445_def, output16445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3843_eq]
  try dsimp only
  rw [node16444_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16445 input3832)).val
theorem input16446_def : input16446 = (.seq input16445 input3832) := by
  unfold input16446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16445)).val
theorem output16446_def : output16446 = (output16445) := by
  unfold output16446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16446_skip : Flapjack.WordAlloc.isSkip output16446 = false := by
  rw [output16446_def]
  conv => lhs; cbv
  try rfl
theorem node16446_eq : Flapjack.WordAlloc.removeDeadStructural input16446 value1920 value1 value2 = (output16446, value6896, value1) := by
  rw [input16446_def, output16446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3832_eq]
  try dsimp only
  rw [node16445_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16446 input3831)).val
theorem input16447_def : input16447 = (.seq input16446 input3831) := by
  unfold input16447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16446 output3831)).val
theorem output16447_def : output16447 = (.seq output16446 output3831) := by
  unfold output16447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16447_skip : Flapjack.WordAlloc.isSkip output16447 = false := by
  rw [output16447_def]
  conv => lhs; cbv
  try rfl
theorem node16447_eq : Flapjack.WordAlloc.removeDeadStructural input16447 value1919 value1 value2 = (output16447, value6896, value1) := by
  rw [input16447_def, output16447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3831_eq]
  try dsimp only
  rw [node16446_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16447 input3830)).val
theorem input16448_def : input16448 = (.seq input16447 input3830) := by
  unfold input16448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16447 output3830)).val
theorem output16448_def : output16448 = (.seq output16447 output3830) := by
  unfold output16448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16448_skip : Flapjack.WordAlloc.isSkip output16448 = false := by
  rw [output16448_def]
  conv => lhs; cbv
  try rfl
theorem node16448_eq : Flapjack.WordAlloc.removeDeadStructural input16448 value5 value1 value2 = (output16448, value6896, value1) := by
  rw [input16448_def, output16448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3830_eq]
  try dsimp only
  rw [node16447_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16448 input3827)).val
theorem input16449_def : input16449 = (.seq input16448 input3827) := by
  unfold input16449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16448 output3827)).val
theorem output16449_def : output16449 = (.seq output16448 output3827) := by
  unfold output16449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16449_skip : Flapjack.WordAlloc.isSkip output16449 = false := by
  rw [output16449_def]
  conv => lhs; cbv
  try rfl
theorem node16449_eq : Flapjack.WordAlloc.removeDeadStructural input16449 value1912 value1 value2 = (output16449, value6896, value1) := by
  rw [input16449_def, output16449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3827_eq]
  try dsimp only
  rw [node16448_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16449 input3816)).val
theorem input16450_def : input16450 = (.seq input16449 input3816) := by
  unfold input16450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16449)).val
theorem output16450_def : output16450 = (output16449) := by
  unfold output16450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16450_skip : Flapjack.WordAlloc.isSkip output16450 = false := by
  rw [output16450_def]
  conv => lhs; cbv
  try rfl
theorem node16450_eq : Flapjack.WordAlloc.removeDeadStructural input16450 value1912 value1 value2 = (output16450, value6896, value1) := by
  rw [input16450_def, output16450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3816_eq]
  try dsimp only
  rw [node16449_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16450 input3815)).val
theorem input16451_def : input16451 = (.seq input16450 input3815) := by
  unfold input16451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16450 output3815)).val
theorem output16451_def : output16451 = (.seq output16450 output3815) := by
  unfold output16451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16451_skip : Flapjack.WordAlloc.isSkip output16451 = false := by
  rw [output16451_def]
  conv => lhs; cbv
  try rfl
theorem node16451_eq : Flapjack.WordAlloc.removeDeadStructural input16451 value1911 value1 value2 = (output16451, value6896, value1) := by
  rw [input16451_def, output16451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3815_eq]
  try dsimp only
  rw [node16450_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16451 input3814)).val
theorem input16452_def : input16452 = (.seq input16451 input3814) := by
  unfold input16452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16451 output3814)).val
theorem output16452_def : output16452 = (.seq output16451 output3814) := by
  unfold output16452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16452_skip : Flapjack.WordAlloc.isSkip output16452 = false := by
  rw [output16452_def]
  conv => lhs; cbv
  try rfl
theorem node16452_eq : Flapjack.WordAlloc.removeDeadStructural input16452 value5 value1 value2 = (output16452, value6896, value1) := by
  rw [input16452_def, output16452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3814_eq]
  try dsimp only
  rw [node16451_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16452 input3811)).val
theorem input16453_def : input16453 = (.seq input16452 input3811) := by
  unfold input16453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16452 output3811)).val
theorem output16453_def : output16453 = (.seq output16452 output3811) := by
  unfold output16453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16453_skip : Flapjack.WordAlloc.isSkip output16453 = false := by
  rw [output16453_def]
  conv => lhs; cbv
  try rfl
theorem node16453_eq : Flapjack.WordAlloc.removeDeadStructural input16453 value1904 value1 value2 = (output16453, value6896, value1) := by
  rw [input16453_def, output16453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3811_eq]
  try dsimp only
  rw [node16452_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16453 input3800)).val
theorem input16454_def : input16454 = (.seq input16453 input3800) := by
  unfold input16454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16453)).val
theorem output16454_def : output16454 = (output16453) := by
  unfold output16454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16454_skip : Flapjack.WordAlloc.isSkip output16454 = false := by
  rw [output16454_def]
  conv => lhs; cbv
  try rfl
theorem node16454_eq : Flapjack.WordAlloc.removeDeadStructural input16454 value1904 value1 value2 = (output16454, value6896, value1) := by
  rw [input16454_def, output16454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3800_eq]
  try dsimp only
  rw [node16453_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16454 input3799)).val
theorem input16455_def : input16455 = (.seq input16454 input3799) := by
  unfold input16455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16454 output3799)).val
theorem output16455_def : output16455 = (.seq output16454 output3799) := by
  unfold output16455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16455_skip : Flapjack.WordAlloc.isSkip output16455 = false := by
  rw [output16455_def]
  conv => lhs; cbv
  try rfl
theorem node16455_eq : Flapjack.WordAlloc.removeDeadStructural input16455 value1903 value1 value2 = (output16455, value6896, value1) := by
  rw [input16455_def, output16455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3799_eq]
  try dsimp only
  rw [node16454_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16455 input3798)).val
theorem input16456_def : input16456 = (.seq input16455 input3798) := by
  unfold input16456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16455 output3798)).val
theorem output16456_def : output16456 = (.seq output16455 output3798) := by
  unfold output16456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16456_skip : Flapjack.WordAlloc.isSkip output16456 = false := by
  rw [output16456_def]
  conv => lhs; cbv
  try rfl
theorem node16456_eq : Flapjack.WordAlloc.removeDeadStructural input16456 value5 value1 value2 = (output16456, value6896, value1) := by
  rw [input16456_def, output16456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3798_eq]
  try dsimp only
  rw [node16455_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16456 input3795)).val
theorem input16457_def : input16457 = (.seq input16456 input3795) := by
  unfold input16457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16456 output3795)).val
theorem output16457_def : output16457 = (.seq output16456 output3795) := by
  unfold output16457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16457_skip : Flapjack.WordAlloc.isSkip output16457 = false := by
  rw [output16457_def]
  conv => lhs; cbv
  try rfl
theorem node16457_eq : Flapjack.WordAlloc.removeDeadStructural input16457 value1896 value1 value2 = (output16457, value6896, value1) := by
  rw [input16457_def, output16457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3795_eq]
  try dsimp only
  rw [node16456_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16457 input3784)).val
theorem input16458_def : input16458 = (.seq input16457 input3784) := by
  unfold input16458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16457)).val
theorem output16458_def : output16458 = (output16457) := by
  unfold output16458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16458_skip : Flapjack.WordAlloc.isSkip output16458 = false := by
  rw [output16458_def]
  conv => lhs; cbv
  try rfl
theorem node16458_eq : Flapjack.WordAlloc.removeDeadStructural input16458 value1896 value1 value2 = (output16458, value6896, value1) := by
  rw [input16458_def, output16458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3784_eq]
  try dsimp only
  rw [node16457_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16458 input3783)).val
theorem input16459_def : input16459 = (.seq input16458 input3783) := by
  unfold input16459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16458 output3783)).val
theorem output16459_def : output16459 = (.seq output16458 output3783) := by
  unfold output16459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16459_skip : Flapjack.WordAlloc.isSkip output16459 = false := by
  rw [output16459_def]
  conv => lhs; cbv
  try rfl
theorem node16459_eq : Flapjack.WordAlloc.removeDeadStructural input16459 value1895 value1 value2 = (output16459, value6896, value1) := by
  rw [input16459_def, output16459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3783_eq]
  try dsimp only
  rw [node16458_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16459 input3782)).val
theorem input16460_def : input16460 = (.seq input16459 input3782) := by
  unfold input16460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16459 output3782)).val
theorem output16460_def : output16460 = (.seq output16459 output3782) := by
  unfold output16460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16460_skip : Flapjack.WordAlloc.isSkip output16460 = false := by
  rw [output16460_def]
  conv => lhs; cbv
  try rfl
theorem node16460_eq : Flapjack.WordAlloc.removeDeadStructural input16460 value5 value1 value2 = (output16460, value6896, value1) := by
  rw [input16460_def, output16460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3782_eq]
  try dsimp only
  rw [node16459_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16460 input3779)).val
theorem input16461_def : input16461 = (.seq input16460 input3779) := by
  unfold input16461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16460 output3779)).val
theorem output16461_def : output16461 = (.seq output16460 output3779) := by
  unfold output16461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16461_skip : Flapjack.WordAlloc.isSkip output16461 = false := by
  rw [output16461_def]
  conv => lhs; cbv
  try rfl
theorem node16461_eq : Flapjack.WordAlloc.removeDeadStructural input16461 value1888 value1 value2 = (output16461, value6896, value1) := by
  rw [input16461_def, output16461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3779_eq]
  try dsimp only
  rw [node16460_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16461 input3768)).val
theorem input16462_def : input16462 = (.seq input16461 input3768) := by
  unfold input16462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16461)).val
theorem output16462_def : output16462 = (output16461) := by
  unfold output16462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16462_skip : Flapjack.WordAlloc.isSkip output16462 = false := by
  rw [output16462_def]
  conv => lhs; cbv
  try rfl
theorem node16462_eq : Flapjack.WordAlloc.removeDeadStructural input16462 value1888 value1 value2 = (output16462, value6896, value1) := by
  rw [input16462_def, output16462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3768_eq]
  try dsimp only
  rw [node16461_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16462 input3767)).val
theorem input16463_def : input16463 = (.seq input16462 input3767) := by
  unfold input16463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16462 output3767)).val
theorem output16463_def : output16463 = (.seq output16462 output3767) := by
  unfold output16463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16463_skip : Flapjack.WordAlloc.isSkip output16463 = false := by
  rw [output16463_def]
  conv => lhs; cbv
  try rfl
theorem node16463_eq : Flapjack.WordAlloc.removeDeadStructural input16463 value1887 value1 value2 = (output16463, value6896, value1) := by
  rw [input16463_def, output16463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3767_eq]
  try dsimp only
  rw [node16462_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16463 input3766)).val
theorem input16464_def : input16464 = (.seq input16463 input3766) := by
  unfold input16464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16463 output3766)).val
theorem output16464_def : output16464 = (.seq output16463 output3766) := by
  unfold output16464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16464_skip : Flapjack.WordAlloc.isSkip output16464 = false := by
  rw [output16464_def]
  conv => lhs; cbv
  try rfl
theorem node16464_eq : Flapjack.WordAlloc.removeDeadStructural input16464 value5 value1 value2 = (output16464, value6896, value1) := by
  rw [input16464_def, output16464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3766_eq]
  try dsimp only
  rw [node16463_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16464 input3763)).val
theorem input16465_def : input16465 = (.seq input16464 input3763) := by
  unfold input16465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16464 output3763)).val
theorem output16465_def : output16465 = (.seq output16464 output3763) := by
  unfold output16465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16465_skip : Flapjack.WordAlloc.isSkip output16465 = false := by
  rw [output16465_def]
  conv => lhs; cbv
  try rfl
theorem node16465_eq : Flapjack.WordAlloc.removeDeadStructural input16465 value1880 value1 value2 = (output16465, value6896, value1) := by
  rw [input16465_def, output16465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3763_eq]
  try dsimp only
  rw [node16464_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16465 input3752)).val
theorem input16466_def : input16466 = (.seq input16465 input3752) := by
  unfold input16466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16465)).val
theorem output16466_def : output16466 = (output16465) := by
  unfold output16466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16466_skip : Flapjack.WordAlloc.isSkip output16466 = false := by
  rw [output16466_def]
  conv => lhs; cbv
  try rfl
theorem node16466_eq : Flapjack.WordAlloc.removeDeadStructural input16466 value1880 value1 value2 = (output16466, value6896, value1) := by
  rw [input16466_def, output16466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3752_eq]
  try dsimp only
  rw [node16465_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16466 input3751)).val
theorem input16467_def : input16467 = (.seq input16466 input3751) := by
  unfold input16467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16466 output3751)).val
theorem output16467_def : output16467 = (.seq output16466 output3751) := by
  unfold output16467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16467_skip : Flapjack.WordAlloc.isSkip output16467 = false := by
  rw [output16467_def]
  conv => lhs; cbv
  try rfl
theorem node16467_eq : Flapjack.WordAlloc.removeDeadStructural input16467 value1879 value1 value2 = (output16467, value6896, value1) := by
  rw [input16467_def, output16467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3751_eq]
  try dsimp only
  rw [node16466_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16467 input3750)).val
theorem input16468_def : input16468 = (.seq input16467 input3750) := by
  unfold input16468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16467 output3750)).val
theorem output16468_def : output16468 = (.seq output16467 output3750) := by
  unfold output16468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16468_skip : Flapjack.WordAlloc.isSkip output16468 = false := by
  rw [output16468_def]
  conv => lhs; cbv
  try rfl
theorem node16468_eq : Flapjack.WordAlloc.removeDeadStructural input16468 value5 value1 value2 = (output16468, value6896, value1) := by
  rw [input16468_def, output16468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3750_eq]
  try dsimp only
  rw [node16467_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16468 input3747)).val
theorem input16469_def : input16469 = (.seq input16468 input3747) := by
  unfold input16469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16468 output3747)).val
theorem output16469_def : output16469 = (.seq output16468 output3747) := by
  unfold output16469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16469_skip : Flapjack.WordAlloc.isSkip output16469 = false := by
  rw [output16469_def]
  conv => lhs; cbv
  try rfl
theorem node16469_eq : Flapjack.WordAlloc.removeDeadStructural input16469 value1872 value1 value2 = (output16469, value6896, value1) := by
  rw [input16469_def, output16469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3747_eq]
  try dsimp only
  rw [node16468_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16469 input3736)).val
theorem input16470_def : input16470 = (.seq input16469 input3736) := by
  unfold input16470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16469)).val
theorem output16470_def : output16470 = (output16469) := by
  unfold output16470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16470_skip : Flapjack.WordAlloc.isSkip output16470 = false := by
  rw [output16470_def]
  conv => lhs; cbv
  try rfl
theorem node16470_eq : Flapjack.WordAlloc.removeDeadStructural input16470 value1872 value1 value2 = (output16470, value6896, value1) := by
  rw [input16470_def, output16470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3736_eq]
  try dsimp only
  rw [node16469_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16470 input3735)).val
theorem input16471_def : input16471 = (.seq input16470 input3735) := by
  unfold input16471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16470 output3735)).val
theorem output16471_def : output16471 = (.seq output16470 output3735) := by
  unfold output16471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16471_skip : Flapjack.WordAlloc.isSkip output16471 = false := by
  rw [output16471_def]
  conv => lhs; cbv
  try rfl
theorem node16471_eq : Flapjack.WordAlloc.removeDeadStructural input16471 value1871 value1 value2 = (output16471, value6896, value1) := by
  rw [input16471_def, output16471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3735_eq]
  try dsimp only
  rw [node16470_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16471 input3734)).val
theorem input16472_def : input16472 = (.seq input16471 input3734) := by
  unfold input16472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16471 output3734)).val
theorem output16472_def : output16472 = (.seq output16471 output3734) := by
  unfold output16472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16472_skip : Flapjack.WordAlloc.isSkip output16472 = false := by
  rw [output16472_def]
  conv => lhs; cbv
  try rfl
theorem node16472_eq : Flapjack.WordAlloc.removeDeadStructural input16472 value5 value1 value2 = (output16472, value6896, value1) := by
  rw [input16472_def, output16472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3734_eq]
  try dsimp only
  rw [node16471_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16472 input3731)).val
theorem input16473_def : input16473 = (.seq input16472 input3731) := by
  unfold input16473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16472 output3731)).val
theorem output16473_def : output16473 = (.seq output16472 output3731) := by
  unfold output16473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16473_skip : Flapjack.WordAlloc.isSkip output16473 = false := by
  rw [output16473_def]
  conv => lhs; cbv
  try rfl
theorem node16473_eq : Flapjack.WordAlloc.removeDeadStructural input16473 value1864 value1 value2 = (output16473, value6896, value1) := by
  rw [input16473_def, output16473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3731_eq]
  try dsimp only
  rw [node16472_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16473 input3720)).val
theorem input16474_def : input16474 = (.seq input16473 input3720) := by
  unfold input16474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16473)).val
theorem output16474_def : output16474 = (output16473) := by
  unfold output16474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16474_skip : Flapjack.WordAlloc.isSkip output16474 = false := by
  rw [output16474_def]
  conv => lhs; cbv
  try rfl
theorem node16474_eq : Flapjack.WordAlloc.removeDeadStructural input16474 value1864 value1 value2 = (output16474, value6896, value1) := by
  rw [input16474_def, output16474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3720_eq]
  try dsimp only
  rw [node16473_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16474 input3719)).val
theorem input16475_def : input16475 = (.seq input16474 input3719) := by
  unfold input16475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16474 output3719)).val
theorem output16475_def : output16475 = (.seq output16474 output3719) := by
  unfold output16475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16475_skip : Flapjack.WordAlloc.isSkip output16475 = false := by
  rw [output16475_def]
  conv => lhs; cbv
  try rfl
theorem node16475_eq : Flapjack.WordAlloc.removeDeadStructural input16475 value1863 value1 value2 = (output16475, value6896, value1) := by
  rw [input16475_def, output16475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3719_eq]
  try dsimp only
  rw [node16474_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16475 input3718)).val
theorem input16476_def : input16476 = (.seq input16475 input3718) := by
  unfold input16476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16475 output3718)).val
theorem output16476_def : output16476 = (.seq output16475 output3718) := by
  unfold output16476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16476_skip : Flapjack.WordAlloc.isSkip output16476 = false := by
  rw [output16476_def]
  conv => lhs; cbv
  try rfl
theorem node16476_eq : Flapjack.WordAlloc.removeDeadStructural input16476 value5 value1 value2 = (output16476, value6896, value1) := by
  rw [input16476_def, output16476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3718_eq]
  try dsimp only
  rw [node16475_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16476 input3715)).val
theorem input16477_def : input16477 = (.seq input16476 input3715) := by
  unfold input16477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16476 output3715)).val
theorem output16477_def : output16477 = (.seq output16476 output3715) := by
  unfold output16477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16477_skip : Flapjack.WordAlloc.isSkip output16477 = false := by
  rw [output16477_def]
  conv => lhs; cbv
  try rfl
theorem node16477_eq : Flapjack.WordAlloc.removeDeadStructural input16477 value1856 value1 value2 = (output16477, value6896, value1) := by
  rw [input16477_def, output16477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3715_eq]
  try dsimp only
  rw [node16476_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16477 input3704)).val
theorem input16478_def : input16478 = (.seq input16477 input3704) := by
  unfold input16478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16477)).val
theorem output16478_def : output16478 = (output16477) := by
  unfold output16478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16478_skip : Flapjack.WordAlloc.isSkip output16478 = false := by
  rw [output16478_def]
  conv => lhs; cbv
  try rfl
theorem node16478_eq : Flapjack.WordAlloc.removeDeadStructural input16478 value1856 value1 value2 = (output16478, value6896, value1) := by
  rw [input16478_def, output16478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3704_eq]
  try dsimp only
  rw [node16477_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16478 input3703)).val
theorem input16479_def : input16479 = (.seq input16478 input3703) := by
  unfold input16479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16478 output3703)).val
theorem output16479_def : output16479 = (.seq output16478 output3703) := by
  unfold output16479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16479_skip : Flapjack.WordAlloc.isSkip output16479 = false := by
  rw [output16479_def]
  conv => lhs; cbv
  try rfl
theorem node16479_eq : Flapjack.WordAlloc.removeDeadStructural input16479 value1855 value1 value2 = (output16479, value6896, value1) := by
  rw [input16479_def, output16479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3703_eq]
  try dsimp only
  rw [node16478_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16479 input3702)).val
theorem input16480_def : input16480 = (.seq input16479 input3702) := by
  unfold input16480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16479 output3702)).val
theorem output16480_def : output16480 = (.seq output16479 output3702) := by
  unfold output16480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16480_skip : Flapjack.WordAlloc.isSkip output16480 = false := by
  rw [output16480_def]
  conv => lhs; cbv
  try rfl
theorem node16480_eq : Flapjack.WordAlloc.removeDeadStructural input16480 value5 value1 value2 = (output16480, value6896, value1) := by
  rw [input16480_def, output16480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3702_eq]
  try dsimp only
  rw [node16479_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16480 input3699)).val
theorem input16481_def : input16481 = (.seq input16480 input3699) := by
  unfold input16481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16480 output3699)).val
theorem output16481_def : output16481 = (.seq output16480 output3699) := by
  unfold output16481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16481_skip : Flapjack.WordAlloc.isSkip output16481 = false := by
  rw [output16481_def]
  conv => lhs; cbv
  try rfl
theorem node16481_eq : Flapjack.WordAlloc.removeDeadStructural input16481 value1848 value1 value2 = (output16481, value6896, value1) := by
  rw [input16481_def, output16481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3699_eq]
  try dsimp only
  rw [node16480_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16481 input3688)).val
theorem input16482_def : input16482 = (.seq input16481 input3688) := by
  unfold input16482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16481)).val
theorem output16482_def : output16482 = (output16481) := by
  unfold output16482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16482_skip : Flapjack.WordAlloc.isSkip output16482 = false := by
  rw [output16482_def]
  conv => lhs; cbv
  try rfl
theorem node16482_eq : Flapjack.WordAlloc.removeDeadStructural input16482 value1848 value1 value2 = (output16482, value6896, value1) := by
  rw [input16482_def, output16482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3688_eq]
  try dsimp only
  rw [node16481_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16482 input3687)).val
theorem input16483_def : input16483 = (.seq input16482 input3687) := by
  unfold input16483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16482 output3687)).val
theorem output16483_def : output16483 = (.seq output16482 output3687) := by
  unfold output16483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16483_skip : Flapjack.WordAlloc.isSkip output16483 = false := by
  rw [output16483_def]
  conv => lhs; cbv
  try rfl
theorem node16483_eq : Flapjack.WordAlloc.removeDeadStructural input16483 value1847 value1 value2 = (output16483, value6896, value1) := by
  rw [input16483_def, output16483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3687_eq]
  try dsimp only
  rw [node16482_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16483 input3686)).val
theorem input16484_def : input16484 = (.seq input16483 input3686) := by
  unfold input16484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16483 output3686)).val
theorem output16484_def : output16484 = (.seq output16483 output3686) := by
  unfold output16484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16484_skip : Flapjack.WordAlloc.isSkip output16484 = false := by
  rw [output16484_def]
  conv => lhs; cbv
  try rfl
theorem node16484_eq : Flapjack.WordAlloc.removeDeadStructural input16484 value5 value1 value2 = (output16484, value6896, value1) := by
  rw [input16484_def, output16484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3686_eq]
  try dsimp only
  rw [node16483_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16484 input3683)).val
theorem input16485_def : input16485 = (.seq input16484 input3683) := by
  unfold input16485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16484 output3683)).val
theorem output16485_def : output16485 = (.seq output16484 output3683) := by
  unfold output16485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16485_skip : Flapjack.WordAlloc.isSkip output16485 = false := by
  rw [output16485_def]
  conv => lhs; cbv
  try rfl
theorem node16485_eq : Flapjack.WordAlloc.removeDeadStructural input16485 value1840 value1 value2 = (output16485, value6896, value1) := by
  rw [input16485_def, output16485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3683_eq]
  try dsimp only
  rw [node16484_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16485 input3672)).val
theorem input16486_def : input16486 = (.seq input16485 input3672) := by
  unfold input16486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16485)).val
theorem output16486_def : output16486 = (output16485) := by
  unfold output16486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16486_skip : Flapjack.WordAlloc.isSkip output16486 = false := by
  rw [output16486_def]
  conv => lhs; cbv
  try rfl
theorem node16486_eq : Flapjack.WordAlloc.removeDeadStructural input16486 value1840 value1 value2 = (output16486, value6896, value1) := by
  rw [input16486_def, output16486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3672_eq]
  try dsimp only
  rw [node16485_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16486 input3671)).val
theorem input16487_def : input16487 = (.seq input16486 input3671) := by
  unfold input16487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16486 output3671)).val
theorem output16487_def : output16487 = (.seq output16486 output3671) := by
  unfold output16487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16487_skip : Flapjack.WordAlloc.isSkip output16487 = false := by
  rw [output16487_def]
  conv => lhs; cbv
  try rfl
theorem node16487_eq : Flapjack.WordAlloc.removeDeadStructural input16487 value1839 value1 value2 = (output16487, value6896, value1) := by
  rw [input16487_def, output16487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3671_eq]
  try dsimp only
  rw [node16486_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16487 input3670)).val
theorem input16488_def : input16488 = (.seq input16487 input3670) := by
  unfold input16488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16487 output3670)).val
theorem output16488_def : output16488 = (.seq output16487 output3670) := by
  unfold output16488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16488_skip : Flapjack.WordAlloc.isSkip output16488 = false := by
  rw [output16488_def]
  conv => lhs; cbv
  try rfl
theorem node16488_eq : Flapjack.WordAlloc.removeDeadStructural input16488 value5 value1 value2 = (output16488, value6896, value1) := by
  rw [input16488_def, output16488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3670_eq]
  try dsimp only
  rw [node16487_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16488 input3667)).val
theorem input16489_def : input16489 = (.seq input16488 input3667) := by
  unfold input16489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16488 output3667)).val
theorem output16489_def : output16489 = (.seq output16488 output3667) := by
  unfold output16489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16489_skip : Flapjack.WordAlloc.isSkip output16489 = false := by
  rw [output16489_def]
  conv => lhs; cbv
  try rfl
theorem node16489_eq : Flapjack.WordAlloc.removeDeadStructural input16489 value1832 value1 value2 = (output16489, value6896, value1) := by
  rw [input16489_def, output16489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3667_eq]
  try dsimp only
  rw [node16488_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16489 input3656)).val
theorem input16490_def : input16490 = (.seq input16489 input3656) := by
  unfold input16490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16489)).val
theorem output16490_def : output16490 = (output16489) := by
  unfold output16490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16490_skip : Flapjack.WordAlloc.isSkip output16490 = false := by
  rw [output16490_def]
  conv => lhs; cbv
  try rfl
theorem node16490_eq : Flapjack.WordAlloc.removeDeadStructural input16490 value1832 value1 value2 = (output16490, value6896, value1) := by
  rw [input16490_def, output16490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3656_eq]
  try dsimp only
  rw [node16489_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16490 input3655)).val
theorem input16491_def : input16491 = (.seq input16490 input3655) := by
  unfold input16491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16490 output3655)).val
theorem output16491_def : output16491 = (.seq output16490 output3655) := by
  unfold output16491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16491_skip : Flapjack.WordAlloc.isSkip output16491 = false := by
  rw [output16491_def]
  conv => lhs; cbv
  try rfl
theorem node16491_eq : Flapjack.WordAlloc.removeDeadStructural input16491 value1831 value1 value2 = (output16491, value6896, value1) := by
  rw [input16491_def, output16491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3655_eq]
  try dsimp only
  rw [node16490_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16491 input3654)).val
theorem input16492_def : input16492 = (.seq input16491 input3654) := by
  unfold input16492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16491 output3654)).val
theorem output16492_def : output16492 = (.seq output16491 output3654) := by
  unfold output16492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16492_skip : Flapjack.WordAlloc.isSkip output16492 = false := by
  rw [output16492_def]
  conv => lhs; cbv
  try rfl
theorem node16492_eq : Flapjack.WordAlloc.removeDeadStructural input16492 value5 value1 value2 = (output16492, value6896, value1) := by
  rw [input16492_def, output16492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3654_eq]
  try dsimp only
  rw [node16491_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16492 input3651)).val
theorem input16493_def : input16493 = (.seq input16492 input3651) := by
  unfold input16493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16492 output3651)).val
theorem output16493_def : output16493 = (.seq output16492 output3651) := by
  unfold output16493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16493_skip : Flapjack.WordAlloc.isSkip output16493 = false := by
  rw [output16493_def]
  conv => lhs; cbv
  try rfl
theorem node16493_eq : Flapjack.WordAlloc.removeDeadStructural input16493 value1824 value1 value2 = (output16493, value6896, value1) := by
  rw [input16493_def, output16493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3651_eq]
  try dsimp only
  rw [node16492_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16493 input3640)).val
theorem input16494_def : input16494 = (.seq input16493 input3640) := by
  unfold input16494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16493)).val
theorem output16494_def : output16494 = (output16493) := by
  unfold output16494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16494_skip : Flapjack.WordAlloc.isSkip output16494 = false := by
  rw [output16494_def]
  conv => lhs; cbv
  try rfl
theorem node16494_eq : Flapjack.WordAlloc.removeDeadStructural input16494 value1824 value1 value2 = (output16494, value6896, value1) := by
  rw [input16494_def, output16494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3640_eq]
  try dsimp only
  rw [node16493_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16494 input3639)).val
theorem input16495_def : input16495 = (.seq input16494 input3639) := by
  unfold input16495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16494 output3639)).val
theorem output16495_def : output16495 = (.seq output16494 output3639) := by
  unfold output16495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16495_skip : Flapjack.WordAlloc.isSkip output16495 = false := by
  rw [output16495_def]
  conv => lhs; cbv
  try rfl
theorem node16495_eq : Flapjack.WordAlloc.removeDeadStructural input16495 value1823 value1 value2 = (output16495, value6896, value1) := by
  rw [input16495_def, output16495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3639_eq]
  try dsimp only
  rw [node16494_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16495 input3638)).val
theorem input16496_def : input16496 = (.seq input16495 input3638) := by
  unfold input16496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16495 output3638)).val
theorem output16496_def : output16496 = (.seq output16495 output3638) := by
  unfold output16496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16496_skip : Flapjack.WordAlloc.isSkip output16496 = false := by
  rw [output16496_def]
  conv => lhs; cbv
  try rfl
theorem node16496_eq : Flapjack.WordAlloc.removeDeadStructural input16496 value5 value1 value2 = (output16496, value6896, value1) := by
  rw [input16496_def, output16496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3638_eq]
  try dsimp only
  rw [node16495_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16496 input3635)).val
theorem input16497_def : input16497 = (.seq input16496 input3635) := by
  unfold input16497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16496 output3635)).val
theorem output16497_def : output16497 = (.seq output16496 output3635) := by
  unfold output16497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16497_skip : Flapjack.WordAlloc.isSkip output16497 = false := by
  rw [output16497_def]
  conv => lhs; cbv
  try rfl
theorem node16497_eq : Flapjack.WordAlloc.removeDeadStructural input16497 value1816 value1 value2 = (output16497, value6896, value1) := by
  rw [input16497_def, output16497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3635_eq]
  try dsimp only
  rw [node16496_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16497 input3624)).val
theorem input16498_def : input16498 = (.seq input16497 input3624) := by
  unfold input16498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16497)).val
theorem output16498_def : output16498 = (output16497) := by
  unfold output16498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16498_skip : Flapjack.WordAlloc.isSkip output16498 = false := by
  rw [output16498_def]
  conv => lhs; cbv
  try rfl
theorem node16498_eq : Flapjack.WordAlloc.removeDeadStructural input16498 value1816 value1 value2 = (output16498, value6896, value1) := by
  rw [input16498_def, output16498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3624_eq]
  try dsimp only
  rw [node16497_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16498 input3623)).val
theorem input16499_def : input16499 = (.seq input16498 input3623) := by
  unfold input16499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16498 output3623)).val
theorem output16499_def : output16499 = (.seq output16498 output3623) := by
  unfold output16499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16499_skip : Flapjack.WordAlloc.isSkip output16499 = false := by
  rw [output16499_def]
  conv => lhs; cbv
  try rfl
theorem node16499_eq : Flapjack.WordAlloc.removeDeadStructural input16499 value1815 value1 value2 = (output16499, value6896, value1) := by
  rw [input16499_def, output16499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3623_eq]
  try dsimp only
  rw [node16498_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16499 input3622)).val
theorem input16500_def : input16500 = (.seq input16499 input3622) := by
  unfold input16500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16499 output3622)).val
theorem output16500_def : output16500 = (.seq output16499 output3622) := by
  unfold output16500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16500_skip : Flapjack.WordAlloc.isSkip output16500 = false := by
  rw [output16500_def]
  conv => lhs; cbv
  try rfl
theorem node16500_eq : Flapjack.WordAlloc.removeDeadStructural input16500 value5 value1 value2 = (output16500, value6896, value1) := by
  rw [input16500_def, output16500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3622_eq]
  try dsimp only
  rw [node16499_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16500 input3619)).val
theorem input16501_def : input16501 = (.seq input16500 input3619) := by
  unfold input16501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16500 output3619)).val
theorem output16501_def : output16501 = (.seq output16500 output3619) := by
  unfold output16501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16501_skip : Flapjack.WordAlloc.isSkip output16501 = false := by
  rw [output16501_def]
  conv => lhs; cbv
  try rfl
theorem node16501_eq : Flapjack.WordAlloc.removeDeadStructural input16501 value1808 value1 value2 = (output16501, value6896, value1) := by
  rw [input16501_def, output16501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3619_eq]
  try dsimp only
  rw [node16500_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16501 input3608)).val
theorem input16502_def : input16502 = (.seq input16501 input3608) := by
  unfold input16502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16501)).val
theorem output16502_def : output16502 = (output16501) := by
  unfold output16502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16502_skip : Flapjack.WordAlloc.isSkip output16502 = false := by
  rw [output16502_def]
  conv => lhs; cbv
  try rfl
theorem node16502_eq : Flapjack.WordAlloc.removeDeadStructural input16502 value1808 value1 value2 = (output16502, value6896, value1) := by
  rw [input16502_def, output16502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3608_eq]
  try dsimp only
  rw [node16501_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16502 input3607)).val
theorem input16503_def : input16503 = (.seq input16502 input3607) := by
  unfold input16503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16502 output3607)).val
theorem output16503_def : output16503 = (.seq output16502 output3607) := by
  unfold output16503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16503_skip : Flapjack.WordAlloc.isSkip output16503 = false := by
  rw [output16503_def]
  conv => lhs; cbv
  try rfl
theorem node16503_eq : Flapjack.WordAlloc.removeDeadStructural input16503 value1807 value1 value2 = (output16503, value6896, value1) := by
  rw [input16503_def, output16503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3607_eq]
  try dsimp only
  rw [node16502_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16503 input3606)).val
theorem input16504_def : input16504 = (.seq input16503 input3606) := by
  unfold input16504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16503 output3606)).val
theorem output16504_def : output16504 = (.seq output16503 output3606) := by
  unfold output16504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16504_skip : Flapjack.WordAlloc.isSkip output16504 = false := by
  rw [output16504_def]
  conv => lhs; cbv
  try rfl
theorem node16504_eq : Flapjack.WordAlloc.removeDeadStructural input16504 value5 value1 value2 = (output16504, value6896, value1) := by
  rw [input16504_def, output16504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3606_eq]
  try dsimp only
  rw [node16503_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16504 input3603)).val
theorem input16505_def : input16505 = (.seq input16504 input3603) := by
  unfold input16505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16504 output3603)).val
theorem output16505_def : output16505 = (.seq output16504 output3603) := by
  unfold output16505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16505_skip : Flapjack.WordAlloc.isSkip output16505 = false := by
  rw [output16505_def]
  conv => lhs; cbv
  try rfl
theorem node16505_eq : Flapjack.WordAlloc.removeDeadStructural input16505 value1800 value1 value2 = (output16505, value6896, value1) := by
  rw [input16505_def, output16505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3603_eq]
  try dsimp only
  rw [node16504_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16505 input3592)).val
theorem input16506_def : input16506 = (.seq input16505 input3592) := by
  unfold input16506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16505)).val
theorem output16506_def : output16506 = (output16505) := by
  unfold output16506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16506_skip : Flapjack.WordAlloc.isSkip output16506 = false := by
  rw [output16506_def]
  conv => lhs; cbv
  try rfl
theorem node16506_eq : Flapjack.WordAlloc.removeDeadStructural input16506 value1800 value1 value2 = (output16506, value6896, value1) := by
  rw [input16506_def, output16506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3592_eq]
  try dsimp only
  rw [node16505_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16506 input3591)).val
theorem input16507_def : input16507 = (.seq input16506 input3591) := by
  unfold input16507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16506 output3591)).val
theorem output16507_def : output16507 = (.seq output16506 output3591) := by
  unfold output16507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16507_skip : Flapjack.WordAlloc.isSkip output16507 = false := by
  rw [output16507_def]
  conv => lhs; cbv
  try rfl
theorem node16507_eq : Flapjack.WordAlloc.removeDeadStructural input16507 value1799 value1 value2 = (output16507, value6896, value1) := by
  rw [input16507_def, output16507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3591_eq]
  try dsimp only
  rw [node16506_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16507 input3590)).val
theorem input16508_def : input16508 = (.seq input16507 input3590) := by
  unfold input16508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16507 output3590)).val
theorem output16508_def : output16508 = (.seq output16507 output3590) := by
  unfold output16508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16508_skip : Flapjack.WordAlloc.isSkip output16508 = false := by
  rw [output16508_def]
  conv => lhs; cbv
  try rfl
theorem node16508_eq : Flapjack.WordAlloc.removeDeadStructural input16508 value5 value1 value2 = (output16508, value6896, value1) := by
  rw [input16508_def, output16508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3590_eq]
  try dsimp only
  rw [node16507_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16508 input3587)).val
theorem input16509_def : input16509 = (.seq input16508 input3587) := by
  unfold input16509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16508 output3587)).val
theorem output16509_def : output16509 = (.seq output16508 output3587) := by
  unfold output16509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16509_skip : Flapjack.WordAlloc.isSkip output16509 = false := by
  rw [output16509_def]
  conv => lhs; cbv
  try rfl
theorem node16509_eq : Flapjack.WordAlloc.removeDeadStructural input16509 value1792 value1 value2 = (output16509, value6896, value1) := by
  rw [input16509_def, output16509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3587_eq]
  try dsimp only
  rw [node16508_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16509 input3576)).val
theorem input16510_def : input16510 = (.seq input16509 input3576) := by
  unfold input16510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16509)).val
theorem output16510_def : output16510 = (output16509) := by
  unfold output16510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16510_skip : Flapjack.WordAlloc.isSkip output16510 = false := by
  rw [output16510_def]
  conv => lhs; cbv
  try rfl
theorem node16510_eq : Flapjack.WordAlloc.removeDeadStructural input16510 value1792 value1 value2 = (output16510, value6896, value1) := by
  rw [input16510_def, output16510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3576_eq]
  try dsimp only
  rw [node16509_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16510 input3575)).val
theorem input16511_def : input16511 = (.seq input16510 input3575) := by
  unfold input16511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16510 output3575)).val
theorem output16511_def : output16511 = (.seq output16510 output3575) := by
  unfold output16511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16511_skip : Flapjack.WordAlloc.isSkip output16511 = false := by
  rw [output16511_def]
  conv => lhs; cbv
  try rfl
theorem node16511_eq : Flapjack.WordAlloc.removeDeadStructural input16511 value1791 value1 value2 = (output16511, value6896, value1) := by
  rw [input16511_def, output16511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3575_eq]
  try dsimp only
  rw [node16510_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16511 input3574)).val
theorem input16512_def : input16512 = (.seq input16511 input3574) := by
  unfold input16512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16511 output3574)).val
theorem output16512_def : output16512 = (.seq output16511 output3574) := by
  unfold output16512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16512_skip : Flapjack.WordAlloc.isSkip output16512 = false := by
  rw [output16512_def]
  conv => lhs; cbv
  try rfl
theorem node16512_eq : Flapjack.WordAlloc.removeDeadStructural input16512 value5 value1 value2 = (output16512, value6896, value1) := by
  rw [input16512_def, output16512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3574_eq]
  try dsimp only
  rw [node16511_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16512 input3571)).val
theorem input16513_def : input16513 = (.seq input16512 input3571) := by
  unfold input16513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16512 output3571)).val
theorem output16513_def : output16513 = (.seq output16512 output3571) := by
  unfold output16513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16513_skip : Flapjack.WordAlloc.isSkip output16513 = false := by
  rw [output16513_def]
  conv => lhs; cbv
  try rfl
theorem node16513_eq : Flapjack.WordAlloc.removeDeadStructural input16513 value1784 value1 value2 = (output16513, value6896, value1) := by
  rw [input16513_def, output16513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3571_eq]
  try dsimp only
  rw [node16512_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16513 input3560)).val
theorem input16514_def : input16514 = (.seq input16513 input3560) := by
  unfold input16514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16513)).val
theorem output16514_def : output16514 = (output16513) := by
  unfold output16514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16514_skip : Flapjack.WordAlloc.isSkip output16514 = false := by
  rw [output16514_def]
  conv => lhs; cbv
  try rfl
theorem node16514_eq : Flapjack.WordAlloc.removeDeadStructural input16514 value1784 value1 value2 = (output16514, value6896, value1) := by
  rw [input16514_def, output16514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3560_eq]
  try dsimp only
  rw [node16513_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16514 input3559)).val
theorem input16515_def : input16515 = (.seq input16514 input3559) := by
  unfold input16515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16514 output3559)).val
theorem output16515_def : output16515 = (.seq output16514 output3559) := by
  unfold output16515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16515_skip : Flapjack.WordAlloc.isSkip output16515 = false := by
  rw [output16515_def]
  conv => lhs; cbv
  try rfl
theorem node16515_eq : Flapjack.WordAlloc.removeDeadStructural input16515 value1783 value1 value2 = (output16515, value6896, value1) := by
  rw [input16515_def, output16515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3559_eq]
  try dsimp only
  rw [node16514_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16515 input3558)).val
theorem input16516_def : input16516 = (.seq input16515 input3558) := by
  unfold input16516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16515 output3558)).val
theorem output16516_def : output16516 = (.seq output16515 output3558) := by
  unfold output16516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16516_skip : Flapjack.WordAlloc.isSkip output16516 = false := by
  rw [output16516_def]
  conv => lhs; cbv
  try rfl
theorem node16516_eq : Flapjack.WordAlloc.removeDeadStructural input16516 value5 value1 value2 = (output16516, value6896, value1) := by
  rw [input16516_def, output16516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3558_eq]
  try dsimp only
  rw [node16515_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16516 input3555)).val
theorem input16517_def : input16517 = (.seq input16516 input3555) := by
  unfold input16517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16516 output3555)).val
theorem output16517_def : output16517 = (.seq output16516 output3555) := by
  unfold output16517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16517_skip : Flapjack.WordAlloc.isSkip output16517 = false := by
  rw [output16517_def]
  conv => lhs; cbv
  try rfl
theorem node16517_eq : Flapjack.WordAlloc.removeDeadStructural input16517 value1776 value1 value2 = (output16517, value6896, value1) := by
  rw [input16517_def, output16517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3555_eq]
  try dsimp only
  rw [node16516_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16517 input3544)).val
theorem input16518_def : input16518 = (.seq input16517 input3544) := by
  unfold input16518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16517)).val
theorem output16518_def : output16518 = (output16517) := by
  unfold output16518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16518_skip : Flapjack.WordAlloc.isSkip output16518 = false := by
  rw [output16518_def]
  conv => lhs; cbv
  try rfl
theorem node16518_eq : Flapjack.WordAlloc.removeDeadStructural input16518 value1776 value1 value2 = (output16518, value6896, value1) := by
  rw [input16518_def, output16518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3544_eq]
  try dsimp only
  rw [node16517_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16518 input3543)).val
theorem input16519_def : input16519 = (.seq input16518 input3543) := by
  unfold input16519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16518 output3543)).val
theorem output16519_def : output16519 = (.seq output16518 output3543) := by
  unfold output16519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16519_skip : Flapjack.WordAlloc.isSkip output16519 = false := by
  rw [output16519_def]
  conv => lhs; cbv
  try rfl
theorem node16519_eq : Flapjack.WordAlloc.removeDeadStructural input16519 value1775 value1 value2 = (output16519, value6896, value1) := by
  rw [input16519_def, output16519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3543_eq]
  try dsimp only
  rw [node16518_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16519 input3542)).val
theorem input16520_def : input16520 = (.seq input16519 input3542) := by
  unfold input16520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16519 output3542)).val
theorem output16520_def : output16520 = (.seq output16519 output3542) := by
  unfold output16520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16520_skip : Flapjack.WordAlloc.isSkip output16520 = false := by
  rw [output16520_def]
  conv => lhs; cbv
  try rfl
theorem node16520_eq : Flapjack.WordAlloc.removeDeadStructural input16520 value5 value1 value2 = (output16520, value6896, value1) := by
  rw [input16520_def, output16520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3542_eq]
  try dsimp only
  rw [node16519_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16520 input3539)).val
theorem input16521_def : input16521 = (.seq input16520 input3539) := by
  unfold input16521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16520 output3539)).val
theorem output16521_def : output16521 = (.seq output16520 output3539) := by
  unfold output16521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16521_skip : Flapjack.WordAlloc.isSkip output16521 = false := by
  rw [output16521_def]
  conv => lhs; cbv
  try rfl
theorem node16521_eq : Flapjack.WordAlloc.removeDeadStructural input16521 value1768 value1 value2 = (output16521, value6896, value1) := by
  rw [input16521_def, output16521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3539_eq]
  try dsimp only
  rw [node16520_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16521 input3528)).val
theorem input16522_def : input16522 = (.seq input16521 input3528) := by
  unfold input16522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16521)).val
theorem output16522_def : output16522 = (output16521) := by
  unfold output16522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16522_skip : Flapjack.WordAlloc.isSkip output16522 = false := by
  rw [output16522_def]
  conv => lhs; cbv
  try rfl
theorem node16522_eq : Flapjack.WordAlloc.removeDeadStructural input16522 value1768 value1 value2 = (output16522, value6896, value1) := by
  rw [input16522_def, output16522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3528_eq]
  try dsimp only
  rw [node16521_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16522 input3527)).val
theorem input16523_def : input16523 = (.seq input16522 input3527) := by
  unfold input16523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16522 output3527)).val
theorem output16523_def : output16523 = (.seq output16522 output3527) := by
  unfold output16523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16523_skip : Flapjack.WordAlloc.isSkip output16523 = false := by
  rw [output16523_def]
  conv => lhs; cbv
  try rfl
theorem node16523_eq : Flapjack.WordAlloc.removeDeadStructural input16523 value1767 value1 value2 = (output16523, value6896, value1) := by
  rw [input16523_def, output16523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3527_eq]
  try dsimp only
  rw [node16522_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16523 input3526)).val
theorem input16524_def : input16524 = (.seq input16523 input3526) := by
  unfold input16524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16523 output3526)).val
theorem output16524_def : output16524 = (.seq output16523 output3526) := by
  unfold output16524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16524_skip : Flapjack.WordAlloc.isSkip output16524 = false := by
  rw [output16524_def]
  conv => lhs; cbv
  try rfl
theorem node16524_eq : Flapjack.WordAlloc.removeDeadStructural input16524 value5 value1 value2 = (output16524, value6896, value1) := by
  rw [input16524_def, output16524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3526_eq]
  try dsimp only
  rw [node16523_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16524 input3523)).val
theorem input16525_def : input16525 = (.seq input16524 input3523) := by
  unfold input16525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16524 output3523)).val
theorem output16525_def : output16525 = (.seq output16524 output3523) := by
  unfold output16525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16525_skip : Flapjack.WordAlloc.isSkip output16525 = false := by
  rw [output16525_def]
  conv => lhs; cbv
  try rfl
theorem node16525_eq : Flapjack.WordAlloc.removeDeadStructural input16525 value1760 value1 value2 = (output16525, value6896, value1) := by
  rw [input16525_def, output16525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3523_eq]
  try dsimp only
  rw [node16524_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16525 input3512)).val
theorem input16526_def : input16526 = (.seq input16525 input3512) := by
  unfold input16526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16525)).val
theorem output16526_def : output16526 = (output16525) := by
  unfold output16526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16526_skip : Flapjack.WordAlloc.isSkip output16526 = false := by
  rw [output16526_def]
  conv => lhs; cbv
  try rfl
theorem node16526_eq : Flapjack.WordAlloc.removeDeadStructural input16526 value1760 value1 value2 = (output16526, value6896, value1) := by
  rw [input16526_def, output16526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3512_eq]
  try dsimp only
  rw [node16525_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16526 input3511)).val
theorem input16527_def : input16527 = (.seq input16526 input3511) := by
  unfold input16527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16526 output3511)).val
theorem output16527_def : output16527 = (.seq output16526 output3511) := by
  unfold output16527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16527_skip : Flapjack.WordAlloc.isSkip output16527 = false := by
  rw [output16527_def]
  conv => lhs; cbv
  try rfl
theorem node16527_eq : Flapjack.WordAlloc.removeDeadStructural input16527 value1759 value1 value2 = (output16527, value6896, value1) := by
  rw [input16527_def, output16527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3511_eq]
  try dsimp only
  rw [node16526_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16527 input3510)).val
theorem input16528_def : input16528 = (.seq input16527 input3510) := by
  unfold input16528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16527 output3510)).val
theorem output16528_def : output16528 = (.seq output16527 output3510) := by
  unfold output16528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16528_skip : Flapjack.WordAlloc.isSkip output16528 = false := by
  rw [output16528_def]
  conv => lhs; cbv
  try rfl
theorem node16528_eq : Flapjack.WordAlloc.removeDeadStructural input16528 value5 value1 value2 = (output16528, value6896, value1) := by
  rw [input16528_def, output16528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3510_eq]
  try dsimp only
  rw [node16527_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16528 input3507)).val
theorem input16529_def : input16529 = (.seq input16528 input3507) := by
  unfold input16529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16528 output3507)).val
theorem output16529_def : output16529 = (.seq output16528 output3507) := by
  unfold output16529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16529_skip : Flapjack.WordAlloc.isSkip output16529 = false := by
  rw [output16529_def]
  conv => lhs; cbv
  try rfl
theorem node16529_eq : Flapjack.WordAlloc.removeDeadStructural input16529 value1752 value1 value2 = (output16529, value6896, value1) := by
  rw [input16529_def, output16529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3507_eq]
  try dsimp only
  rw [node16528_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16529 input3496)).val
theorem input16530_def : input16530 = (.seq input16529 input3496) := by
  unfold input16530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16529)).val
theorem output16530_def : output16530 = (output16529) := by
  unfold output16530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16530_skip : Flapjack.WordAlloc.isSkip output16530 = false := by
  rw [output16530_def]
  conv => lhs; cbv
  try rfl
theorem node16530_eq : Flapjack.WordAlloc.removeDeadStructural input16530 value1752 value1 value2 = (output16530, value6896, value1) := by
  rw [input16530_def, output16530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3496_eq]
  try dsimp only
  rw [node16529_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16530 input3495)).val
theorem input16531_def : input16531 = (.seq input16530 input3495) := by
  unfold input16531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16530 output3495)).val
theorem output16531_def : output16531 = (.seq output16530 output3495) := by
  unfold output16531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16531_skip : Flapjack.WordAlloc.isSkip output16531 = false := by
  rw [output16531_def]
  conv => lhs; cbv
  try rfl
theorem node16531_eq : Flapjack.WordAlloc.removeDeadStructural input16531 value1751 value1 value2 = (output16531, value6896, value1) := by
  rw [input16531_def, output16531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3495_eq]
  try dsimp only
  rw [node16530_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16531 input3494)).val
theorem input16532_def : input16532 = (.seq input16531 input3494) := by
  unfold input16532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16531 output3494)).val
theorem output16532_def : output16532 = (.seq output16531 output3494) := by
  unfold output16532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16532_skip : Flapjack.WordAlloc.isSkip output16532 = false := by
  rw [output16532_def]
  conv => lhs; cbv
  try rfl
theorem node16532_eq : Flapjack.WordAlloc.removeDeadStructural input16532 value5 value1 value2 = (output16532, value6896, value1) := by
  rw [input16532_def, output16532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3494_eq]
  try dsimp only
  rw [node16531_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16532 input3491)).val
theorem input16533_def : input16533 = (.seq input16532 input3491) := by
  unfold input16533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16532 output3491)).val
theorem output16533_def : output16533 = (.seq output16532 output3491) := by
  unfold output16533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16533_skip : Flapjack.WordAlloc.isSkip output16533 = false := by
  rw [output16533_def]
  conv => lhs; cbv
  try rfl
theorem node16533_eq : Flapjack.WordAlloc.removeDeadStructural input16533 value1744 value1 value2 = (output16533, value6896, value1) := by
  rw [input16533_def, output16533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3491_eq]
  try dsimp only
  rw [node16532_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16533 input3480)).val
theorem input16534_def : input16534 = (.seq input16533 input3480) := by
  unfold input16534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16533)).val
theorem output16534_def : output16534 = (output16533) := by
  unfold output16534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16534_skip : Flapjack.WordAlloc.isSkip output16534 = false := by
  rw [output16534_def]
  conv => lhs; cbv
  try rfl
theorem node16534_eq : Flapjack.WordAlloc.removeDeadStructural input16534 value1744 value1 value2 = (output16534, value6896, value1) := by
  rw [input16534_def, output16534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3480_eq]
  try dsimp only
  rw [node16533_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16534 input3479)).val
theorem input16535_def : input16535 = (.seq input16534 input3479) := by
  unfold input16535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16534 output3479)).val
theorem output16535_def : output16535 = (.seq output16534 output3479) := by
  unfold output16535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16535_skip : Flapjack.WordAlloc.isSkip output16535 = false := by
  rw [output16535_def]
  conv => lhs; cbv
  try rfl
theorem node16535_eq : Flapjack.WordAlloc.removeDeadStructural input16535 value1743 value1 value2 = (output16535, value6896, value1) := by
  rw [input16535_def, output16535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3479_eq]
  try dsimp only
  rw [node16534_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16535 input3478)).val
theorem input16536_def : input16536 = (.seq input16535 input3478) := by
  unfold input16536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16535 output3478)).val
theorem output16536_def : output16536 = (.seq output16535 output3478) := by
  unfold output16536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16536_skip : Flapjack.WordAlloc.isSkip output16536 = false := by
  rw [output16536_def]
  conv => lhs; cbv
  try rfl
theorem node16536_eq : Flapjack.WordAlloc.removeDeadStructural input16536 value5 value1 value2 = (output16536, value6896, value1) := by
  rw [input16536_def, output16536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3478_eq]
  try dsimp only
  rw [node16535_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16536 input3475)).val
theorem input16537_def : input16537 = (.seq input16536 input3475) := by
  unfold input16537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16536 output3475)).val
theorem output16537_def : output16537 = (.seq output16536 output3475) := by
  unfold output16537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16537_skip : Flapjack.WordAlloc.isSkip output16537 = false := by
  rw [output16537_def]
  conv => lhs; cbv
  try rfl
theorem node16537_eq : Flapjack.WordAlloc.removeDeadStructural input16537 value1736 value1 value2 = (output16537, value6896, value1) := by
  rw [input16537_def, output16537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3475_eq]
  try dsimp only
  rw [node16536_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16537 input3464)).val
theorem input16538_def : input16538 = (.seq input16537 input3464) := by
  unfold input16538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16537)).val
theorem output16538_def : output16538 = (output16537) := by
  unfold output16538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16538_skip : Flapjack.WordAlloc.isSkip output16538 = false := by
  rw [output16538_def]
  conv => lhs; cbv
  try rfl
theorem node16538_eq : Flapjack.WordAlloc.removeDeadStructural input16538 value1736 value1 value2 = (output16538, value6896, value1) := by
  rw [input16538_def, output16538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3464_eq]
  try dsimp only
  rw [node16537_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16538 input3463)).val
theorem input16539_def : input16539 = (.seq input16538 input3463) := by
  unfold input16539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16538 output3463)).val
theorem output16539_def : output16539 = (.seq output16538 output3463) := by
  unfold output16539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16539_skip : Flapjack.WordAlloc.isSkip output16539 = false := by
  rw [output16539_def]
  conv => lhs; cbv
  try rfl
theorem node16539_eq : Flapjack.WordAlloc.removeDeadStructural input16539 value1735 value1 value2 = (output16539, value6896, value1) := by
  rw [input16539_def, output16539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3463_eq]
  try dsimp only
  rw [node16538_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16539 input3462)).val
theorem input16540_def : input16540 = (.seq input16539 input3462) := by
  unfold input16540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16539 output3462)).val
theorem output16540_def : output16540 = (.seq output16539 output3462) := by
  unfold output16540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16540_skip : Flapjack.WordAlloc.isSkip output16540 = false := by
  rw [output16540_def]
  conv => lhs; cbv
  try rfl
theorem node16540_eq : Flapjack.WordAlloc.removeDeadStructural input16540 value5 value1 value2 = (output16540, value6896, value1) := by
  rw [input16540_def, output16540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3462_eq]
  try dsimp only
  rw [node16539_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16540 input3459)).val
theorem input16541_def : input16541 = (.seq input16540 input3459) := by
  unfold input16541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16540 output3459)).val
theorem output16541_def : output16541 = (.seq output16540 output3459) := by
  unfold output16541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16541_skip : Flapjack.WordAlloc.isSkip output16541 = false := by
  rw [output16541_def]
  conv => lhs; cbv
  try rfl
theorem node16541_eq : Flapjack.WordAlloc.removeDeadStructural input16541 value1728 value1 value2 = (output16541, value6896, value1) := by
  rw [input16541_def, output16541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3459_eq]
  try dsimp only
  rw [node16540_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16541 input3448)).val
theorem input16542_def : input16542 = (.seq input16541 input3448) := by
  unfold input16542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16541)).val
theorem output16542_def : output16542 = (output16541) := by
  unfold output16542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16542_skip : Flapjack.WordAlloc.isSkip output16542 = false := by
  rw [output16542_def]
  conv => lhs; cbv
  try rfl
theorem node16542_eq : Flapjack.WordAlloc.removeDeadStructural input16542 value1728 value1 value2 = (output16542, value6896, value1) := by
  rw [input16542_def, output16542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3448_eq]
  try dsimp only
  rw [node16541_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16542 input3447)).val
theorem input16543_def : input16543 = (.seq input16542 input3447) := by
  unfold input16543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16542 output3447)).val
theorem output16543_def : output16543 = (.seq output16542 output3447) := by
  unfold output16543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16543_skip : Flapjack.WordAlloc.isSkip output16543 = false := by
  rw [output16543_def]
  conv => lhs; cbv
  try rfl
theorem node16543_eq : Flapjack.WordAlloc.removeDeadStructural input16543 value1727 value1 value2 = (output16543, value6896, value1) := by
  rw [input16543_def, output16543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3447_eq]
  try dsimp only
  rw [node16542_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16543 input3446)).val
theorem input16544_def : input16544 = (.seq input16543 input3446) := by
  unfold input16544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16543 output3446)).val
theorem output16544_def : output16544 = (.seq output16543 output3446) := by
  unfold output16544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16544_skip : Flapjack.WordAlloc.isSkip output16544 = false := by
  rw [output16544_def]
  conv => lhs; cbv
  try rfl
theorem node16544_eq : Flapjack.WordAlloc.removeDeadStructural input16544 value5 value1 value2 = (output16544, value6896, value1) := by
  rw [input16544_def, output16544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3446_eq]
  try dsimp only
  rw [node16543_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16544 input3443)).val
theorem input16545_def : input16545 = (.seq input16544 input3443) := by
  unfold input16545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16544 output3443)).val
theorem output16545_def : output16545 = (.seq output16544 output3443) := by
  unfold output16545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16545_skip : Flapjack.WordAlloc.isSkip output16545 = false := by
  rw [output16545_def]
  conv => lhs; cbv
  try rfl
theorem node16545_eq : Flapjack.WordAlloc.removeDeadStructural input16545 value1720 value1 value2 = (output16545, value6896, value1) := by
  rw [input16545_def, output16545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3443_eq]
  try dsimp only
  rw [node16544_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16545 input3432)).val
theorem input16546_def : input16546 = (.seq input16545 input3432) := by
  unfold input16546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16545)).val
theorem output16546_def : output16546 = (output16545) := by
  unfold output16546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16546_skip : Flapjack.WordAlloc.isSkip output16546 = false := by
  rw [output16546_def]
  conv => lhs; cbv
  try rfl
theorem node16546_eq : Flapjack.WordAlloc.removeDeadStructural input16546 value1720 value1 value2 = (output16546, value6896, value1) := by
  rw [input16546_def, output16546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3432_eq]
  try dsimp only
  rw [node16545_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16546 input3431)).val
theorem input16547_def : input16547 = (.seq input16546 input3431) := by
  unfold input16547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16546 output3431)).val
theorem output16547_def : output16547 = (.seq output16546 output3431) := by
  unfold output16547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16547_skip : Flapjack.WordAlloc.isSkip output16547 = false := by
  rw [output16547_def]
  conv => lhs; cbv
  try rfl
theorem node16547_eq : Flapjack.WordAlloc.removeDeadStructural input16547 value1719 value1 value2 = (output16547, value6896, value1) := by
  rw [input16547_def, output16547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3431_eq]
  try dsimp only
  rw [node16546_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16547 input3430)).val
theorem input16548_def : input16548 = (.seq input16547 input3430) := by
  unfold input16548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16547 output3430)).val
theorem output16548_def : output16548 = (.seq output16547 output3430) := by
  unfold output16548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16548_skip : Flapjack.WordAlloc.isSkip output16548 = false := by
  rw [output16548_def]
  conv => lhs; cbv
  try rfl
theorem node16548_eq : Flapjack.WordAlloc.removeDeadStructural input16548 value5 value1 value2 = (output16548, value6896, value1) := by
  rw [input16548_def, output16548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3430_eq]
  try dsimp only
  rw [node16547_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16548 input3427)).val
theorem input16549_def : input16549 = (.seq input16548 input3427) := by
  unfold input16549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16548 output3427)).val
theorem output16549_def : output16549 = (.seq output16548 output3427) := by
  unfold output16549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16549_skip : Flapjack.WordAlloc.isSkip output16549 = false := by
  rw [output16549_def]
  conv => lhs; cbv
  try rfl
theorem node16549_eq : Flapjack.WordAlloc.removeDeadStructural input16549 value1712 value1 value2 = (output16549, value6896, value1) := by
  rw [input16549_def, output16549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3427_eq]
  try dsimp only
  rw [node16548_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16549 input3416)).val
theorem input16550_def : input16550 = (.seq input16549 input3416) := by
  unfold input16550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16549)).val
theorem output16550_def : output16550 = (output16549) := by
  unfold output16550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16550_skip : Flapjack.WordAlloc.isSkip output16550 = false := by
  rw [output16550_def]
  conv => lhs; cbv
  try rfl
theorem node16550_eq : Flapjack.WordAlloc.removeDeadStructural input16550 value1712 value1 value2 = (output16550, value6896, value1) := by
  rw [input16550_def, output16550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3416_eq]
  try dsimp only
  rw [node16549_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16550 input3415)).val
theorem input16551_def : input16551 = (.seq input16550 input3415) := by
  unfold input16551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16550 output3415)).val
theorem output16551_def : output16551 = (.seq output16550 output3415) := by
  unfold output16551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16551_skip : Flapjack.WordAlloc.isSkip output16551 = false := by
  rw [output16551_def]
  conv => lhs; cbv
  try rfl
theorem node16551_eq : Flapjack.WordAlloc.removeDeadStructural input16551 value1711 value1 value2 = (output16551, value6896, value1) := by
  rw [input16551_def, output16551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3415_eq]
  try dsimp only
  rw [node16550_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16551 input3414)).val
theorem input16552_def : input16552 = (.seq input16551 input3414) := by
  unfold input16552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16551 output3414)).val
theorem output16552_def : output16552 = (.seq output16551 output3414) := by
  unfold output16552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16552_skip : Flapjack.WordAlloc.isSkip output16552 = false := by
  rw [output16552_def]
  conv => lhs; cbv
  try rfl
theorem node16552_eq : Flapjack.WordAlloc.removeDeadStructural input16552 value5 value1 value2 = (output16552, value6896, value1) := by
  rw [input16552_def, output16552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3414_eq]
  try dsimp only
  rw [node16551_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16552 input3411)).val
theorem input16553_def : input16553 = (.seq input16552 input3411) := by
  unfold input16553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16552 output3411)).val
theorem output16553_def : output16553 = (.seq output16552 output3411) := by
  unfold output16553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16553_skip : Flapjack.WordAlloc.isSkip output16553 = false := by
  rw [output16553_def]
  conv => lhs; cbv
  try rfl
theorem node16553_eq : Flapjack.WordAlloc.removeDeadStructural input16553 value1704 value1 value2 = (output16553, value6896, value1) := by
  rw [input16553_def, output16553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3411_eq]
  try dsimp only
  rw [node16552_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16553 input3400)).val
theorem input16554_def : input16554 = (.seq input16553 input3400) := by
  unfold input16554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16553)).val
theorem output16554_def : output16554 = (output16553) := by
  unfold output16554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16554_skip : Flapjack.WordAlloc.isSkip output16554 = false := by
  rw [output16554_def]
  conv => lhs; cbv
  try rfl
theorem node16554_eq : Flapjack.WordAlloc.removeDeadStructural input16554 value1704 value1 value2 = (output16554, value6896, value1) := by
  rw [input16554_def, output16554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3400_eq]
  try dsimp only
  rw [node16553_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16554 input3399)).val
theorem input16555_def : input16555 = (.seq input16554 input3399) := by
  unfold input16555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16554 output3399)).val
theorem output16555_def : output16555 = (.seq output16554 output3399) := by
  unfold output16555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16555_skip : Flapjack.WordAlloc.isSkip output16555 = false := by
  rw [output16555_def]
  conv => lhs; cbv
  try rfl
theorem node16555_eq : Flapjack.WordAlloc.removeDeadStructural input16555 value1703 value1 value2 = (output16555, value6896, value1) := by
  rw [input16555_def, output16555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3399_eq]
  try dsimp only
  rw [node16554_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16555 input3398)).val
theorem input16556_def : input16556 = (.seq input16555 input3398) := by
  unfold input16556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16555 output3398)).val
theorem output16556_def : output16556 = (.seq output16555 output3398) := by
  unfold output16556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16556_skip : Flapjack.WordAlloc.isSkip output16556 = false := by
  rw [output16556_def]
  conv => lhs; cbv
  try rfl
theorem node16556_eq : Flapjack.WordAlloc.removeDeadStructural input16556 value5 value1 value2 = (output16556, value6896, value1) := by
  rw [input16556_def, output16556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3398_eq]
  try dsimp only
  rw [node16555_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16556 input3395)).val
theorem input16557_def : input16557 = (.seq input16556 input3395) := by
  unfold input16557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16556 output3395)).val
theorem output16557_def : output16557 = (.seq output16556 output3395) := by
  unfold output16557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16557_skip : Flapjack.WordAlloc.isSkip output16557 = false := by
  rw [output16557_def]
  conv => lhs; cbv
  try rfl
theorem node16557_eq : Flapjack.WordAlloc.removeDeadStructural input16557 value1696 value1 value2 = (output16557, value6896, value1) := by
  rw [input16557_def, output16557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3395_eq]
  try dsimp only
  rw [node16556_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16557 input3384)).val
theorem input16558_def : input16558 = (.seq input16557 input3384) := by
  unfold input16558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16557)).val
theorem output16558_def : output16558 = (output16557) := by
  unfold output16558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16558_skip : Flapjack.WordAlloc.isSkip output16558 = false := by
  rw [output16558_def]
  conv => lhs; cbv
  try rfl
theorem node16558_eq : Flapjack.WordAlloc.removeDeadStructural input16558 value1696 value1 value2 = (output16558, value6896, value1) := by
  rw [input16558_def, output16558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3384_eq]
  try dsimp only
  rw [node16557_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16558 input3383)).val
theorem input16559_def : input16559 = (.seq input16558 input3383) := by
  unfold input16559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16558 output3383)).val
theorem output16559_def : output16559 = (.seq output16558 output3383) := by
  unfold output16559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16559_skip : Flapjack.WordAlloc.isSkip output16559 = false := by
  rw [output16559_def]
  conv => lhs; cbv
  try rfl
theorem node16559_eq : Flapjack.WordAlloc.removeDeadStructural input16559 value1695 value1 value2 = (output16559, value6896, value1) := by
  rw [input16559_def, output16559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3383_eq]
  try dsimp only
  rw [node16558_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16559 input3382)).val
theorem input16560_def : input16560 = (.seq input16559 input3382) := by
  unfold input16560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16559 output3382)).val
theorem output16560_def : output16560 = (.seq output16559 output3382) := by
  unfold output16560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16560_skip : Flapjack.WordAlloc.isSkip output16560 = false := by
  rw [output16560_def]
  conv => lhs; cbv
  try rfl
theorem node16560_eq : Flapjack.WordAlloc.removeDeadStructural input16560 value5 value1 value2 = (output16560, value6896, value1) := by
  rw [input16560_def, output16560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3382_eq]
  try dsimp only
  rw [node16559_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16560 input3379)).val
theorem input16561_def : input16561 = (.seq input16560 input3379) := by
  unfold input16561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16560 output3379)).val
theorem output16561_def : output16561 = (.seq output16560 output3379) := by
  unfold output16561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16561_skip : Flapjack.WordAlloc.isSkip output16561 = false := by
  rw [output16561_def]
  conv => lhs; cbv
  try rfl
theorem node16561_eq : Flapjack.WordAlloc.removeDeadStructural input16561 value1688 value1 value2 = (output16561, value6896, value1) := by
  rw [input16561_def, output16561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3379_eq]
  try dsimp only
  rw [node16560_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16561 input3368)).val
theorem input16562_def : input16562 = (.seq input16561 input3368) := by
  unfold input16562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16561)).val
theorem output16562_def : output16562 = (output16561) := by
  unfold output16562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16562_skip : Flapjack.WordAlloc.isSkip output16562 = false := by
  rw [output16562_def]
  conv => lhs; cbv
  try rfl
theorem node16562_eq : Flapjack.WordAlloc.removeDeadStructural input16562 value1688 value1 value2 = (output16562, value6896, value1) := by
  rw [input16562_def, output16562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3368_eq]
  try dsimp only
  rw [node16561_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16562 input3367)).val
theorem input16563_def : input16563 = (.seq input16562 input3367) := by
  unfold input16563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16562 output3367)).val
theorem output16563_def : output16563 = (.seq output16562 output3367) := by
  unfold output16563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16563_skip : Flapjack.WordAlloc.isSkip output16563 = false := by
  rw [output16563_def]
  conv => lhs; cbv
  try rfl
theorem node16563_eq : Flapjack.WordAlloc.removeDeadStructural input16563 value1687 value1 value2 = (output16563, value6896, value1) := by
  rw [input16563_def, output16563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3367_eq]
  try dsimp only
  rw [node16562_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16563 input3366)).val
theorem input16564_def : input16564 = (.seq input16563 input3366) := by
  unfold input16564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16563 output3366)).val
theorem output16564_def : output16564 = (.seq output16563 output3366) := by
  unfold output16564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16564_skip : Flapjack.WordAlloc.isSkip output16564 = false := by
  rw [output16564_def]
  conv => lhs; cbv
  try rfl
theorem node16564_eq : Flapjack.WordAlloc.removeDeadStructural input16564 value5 value1 value2 = (output16564, value6896, value1) := by
  rw [input16564_def, output16564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3366_eq]
  try dsimp only
  rw [node16563_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16564 input3363)).val
theorem input16565_def : input16565 = (.seq input16564 input3363) := by
  unfold input16565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16564 output3363)).val
theorem output16565_def : output16565 = (.seq output16564 output3363) := by
  unfold output16565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16565_skip : Flapjack.WordAlloc.isSkip output16565 = false := by
  rw [output16565_def]
  conv => lhs; cbv
  try rfl
theorem node16565_eq : Flapjack.WordAlloc.removeDeadStructural input16565 value1680 value1 value2 = (output16565, value6896, value1) := by
  rw [input16565_def, output16565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3363_eq]
  try dsimp only
  rw [node16564_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16565 input3352)).val
theorem input16566_def : input16566 = (.seq input16565 input3352) := by
  unfold input16566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16565)).val
theorem output16566_def : output16566 = (output16565) := by
  unfold output16566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16566_skip : Flapjack.WordAlloc.isSkip output16566 = false := by
  rw [output16566_def]
  conv => lhs; cbv
  try rfl
theorem node16566_eq : Flapjack.WordAlloc.removeDeadStructural input16566 value1680 value1 value2 = (output16566, value6896, value1) := by
  rw [input16566_def, output16566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3352_eq]
  try dsimp only
  rw [node16565_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16566 input3351)).val
theorem input16567_def : input16567 = (.seq input16566 input3351) := by
  unfold input16567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16566 output3351)).val
theorem output16567_def : output16567 = (.seq output16566 output3351) := by
  unfold output16567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16567_skip : Flapjack.WordAlloc.isSkip output16567 = false := by
  rw [output16567_def]
  conv => lhs; cbv
  try rfl
theorem node16567_eq : Flapjack.WordAlloc.removeDeadStructural input16567 value1679 value1 value2 = (output16567, value6896, value1) := by
  rw [input16567_def, output16567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3351_eq]
  try dsimp only
  rw [node16566_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16567 input3350)).val
theorem input16568_def : input16568 = (.seq input16567 input3350) := by
  unfold input16568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16567 output3350)).val
theorem output16568_def : output16568 = (.seq output16567 output3350) := by
  unfold output16568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16568_skip : Flapjack.WordAlloc.isSkip output16568 = false := by
  rw [output16568_def]
  conv => lhs; cbv
  try rfl
theorem node16568_eq : Flapjack.WordAlloc.removeDeadStructural input16568 value5 value1 value2 = (output16568, value6896, value1) := by
  rw [input16568_def, output16568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3350_eq]
  try dsimp only
  rw [node16567_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16568 input3347)).val
theorem input16569_def : input16569 = (.seq input16568 input3347) := by
  unfold input16569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16568 output3347)).val
theorem output16569_def : output16569 = (.seq output16568 output3347) := by
  unfold output16569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16569_skip : Flapjack.WordAlloc.isSkip output16569 = false := by
  rw [output16569_def]
  conv => lhs; cbv
  try rfl
theorem node16569_eq : Flapjack.WordAlloc.removeDeadStructural input16569 value1672 value1 value2 = (output16569, value6896, value1) := by
  rw [input16569_def, output16569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3347_eq]
  try dsimp only
  rw [node16568_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16569 input3336)).val
theorem input16570_def : input16570 = (.seq input16569 input3336) := by
  unfold input16570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16569)).val
theorem output16570_def : output16570 = (output16569) := by
  unfold output16570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16570_skip : Flapjack.WordAlloc.isSkip output16570 = false := by
  rw [output16570_def]
  conv => lhs; cbv
  try rfl
theorem node16570_eq : Flapjack.WordAlloc.removeDeadStructural input16570 value1672 value1 value2 = (output16570, value6896, value1) := by
  rw [input16570_def, output16570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3336_eq]
  try dsimp only
  rw [node16569_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16570 input3335)).val
theorem input16571_def : input16571 = (.seq input16570 input3335) := by
  unfold input16571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16570 output3335)).val
theorem output16571_def : output16571 = (.seq output16570 output3335) := by
  unfold output16571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16571_skip : Flapjack.WordAlloc.isSkip output16571 = false := by
  rw [output16571_def]
  conv => lhs; cbv
  try rfl
theorem node16571_eq : Flapjack.WordAlloc.removeDeadStructural input16571 value1671 value1 value2 = (output16571, value6896, value1) := by
  rw [input16571_def, output16571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3335_eq]
  try dsimp only
  rw [node16570_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16571 input3334)).val
theorem input16572_def : input16572 = (.seq input16571 input3334) := by
  unfold input16572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16571 output3334)).val
theorem output16572_def : output16572 = (.seq output16571 output3334) := by
  unfold output16572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16572_skip : Flapjack.WordAlloc.isSkip output16572 = false := by
  rw [output16572_def]
  conv => lhs; cbv
  try rfl
theorem node16572_eq : Flapjack.WordAlloc.removeDeadStructural input16572 value5 value1 value2 = (output16572, value6896, value1) := by
  rw [input16572_def, output16572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3334_eq]
  try dsimp only
  rw [node16571_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16572 input3331)).val
theorem input16573_def : input16573 = (.seq input16572 input3331) := by
  unfold input16573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16572 output3331)).val
theorem output16573_def : output16573 = (.seq output16572 output3331) := by
  unfold output16573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16573_skip : Flapjack.WordAlloc.isSkip output16573 = false := by
  rw [output16573_def]
  conv => lhs; cbv
  try rfl
theorem node16573_eq : Flapjack.WordAlloc.removeDeadStructural input16573 value1664 value1 value2 = (output16573, value6896, value1) := by
  rw [input16573_def, output16573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3331_eq]
  try dsimp only
  rw [node16572_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16573 input3320)).val
theorem input16574_def : input16574 = (.seq input16573 input3320) := by
  unfold input16574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16573)).val
theorem output16574_def : output16574 = (output16573) := by
  unfold output16574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16574_skip : Flapjack.WordAlloc.isSkip output16574 = false := by
  rw [output16574_def]
  conv => lhs; cbv
  try rfl
theorem node16574_eq : Flapjack.WordAlloc.removeDeadStructural input16574 value1664 value1 value2 = (output16574, value6896, value1) := by
  rw [input16574_def, output16574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3320_eq]
  try dsimp only
  rw [node16573_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16574 input3319)).val
theorem input16575_def : input16575 = (.seq input16574 input3319) := by
  unfold input16575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16574 output3319)).val
theorem output16575_def : output16575 = (.seq output16574 output3319) := by
  unfold output16575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16575_skip : Flapjack.WordAlloc.isSkip output16575 = false := by
  rw [output16575_def]
  conv => lhs; cbv
  try rfl
theorem node16575_eq : Flapjack.WordAlloc.removeDeadStructural input16575 value1663 value1 value2 = (output16575, value6896, value1) := by
  rw [input16575_def, output16575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3319_eq]
  try dsimp only
  rw [node16574_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16575 input3318)).val
theorem input16576_def : input16576 = (.seq input16575 input3318) := by
  unfold input16576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16575 output3318)).val
theorem output16576_def : output16576 = (.seq output16575 output3318) := by
  unfold output16576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16576_skip : Flapjack.WordAlloc.isSkip output16576 = false := by
  rw [output16576_def]
  conv => lhs; cbv
  try rfl
theorem node16576_eq : Flapjack.WordAlloc.removeDeadStructural input16576 value5 value1 value2 = (output16576, value6896, value1) := by
  rw [input16576_def, output16576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3318_eq]
  try dsimp only
  rw [node16575_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16576 input3315)).val
theorem input16577_def : input16577 = (.seq input16576 input3315) := by
  unfold input16577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16576 output3315)).val
theorem output16577_def : output16577 = (.seq output16576 output3315) := by
  unfold output16577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16577_skip : Flapjack.WordAlloc.isSkip output16577 = false := by
  rw [output16577_def]
  conv => lhs; cbv
  try rfl
theorem node16577_eq : Flapjack.WordAlloc.removeDeadStructural input16577 value1656 value1 value2 = (output16577, value6896, value1) := by
  rw [input16577_def, output16577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3315_eq]
  try dsimp only
  rw [node16576_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16577 input3304)).val
theorem input16578_def : input16578 = (.seq input16577 input3304) := by
  unfold input16578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16577)).val
theorem output16578_def : output16578 = (output16577) := by
  unfold output16578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16578_skip : Flapjack.WordAlloc.isSkip output16578 = false := by
  rw [output16578_def]
  conv => lhs; cbv
  try rfl
theorem node16578_eq : Flapjack.WordAlloc.removeDeadStructural input16578 value1656 value1 value2 = (output16578, value6896, value1) := by
  rw [input16578_def, output16578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3304_eq]
  try dsimp only
  rw [node16577_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16578 input3303)).val
theorem input16579_def : input16579 = (.seq input16578 input3303) := by
  unfold input16579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16578 output3303)).val
theorem output16579_def : output16579 = (.seq output16578 output3303) := by
  unfold output16579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16579_skip : Flapjack.WordAlloc.isSkip output16579 = false := by
  rw [output16579_def]
  conv => lhs; cbv
  try rfl
theorem node16579_eq : Flapjack.WordAlloc.removeDeadStructural input16579 value1655 value1 value2 = (output16579, value6896, value1) := by
  rw [input16579_def, output16579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3303_eq]
  try dsimp only
  rw [node16578_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16579 input3302)).val
theorem input16580_def : input16580 = (.seq input16579 input3302) := by
  unfold input16580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16579 output3302)).val
theorem output16580_def : output16580 = (.seq output16579 output3302) := by
  unfold output16580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16580_skip : Flapjack.WordAlloc.isSkip output16580 = false := by
  rw [output16580_def]
  conv => lhs; cbv
  try rfl
theorem node16580_eq : Flapjack.WordAlloc.removeDeadStructural input16580 value5 value1 value2 = (output16580, value6896, value1) := by
  rw [input16580_def, output16580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3302_eq]
  try dsimp only
  rw [node16579_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16580 input3299)).val
theorem input16581_def : input16581 = (.seq input16580 input3299) := by
  unfold input16581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16580 output3299)).val
theorem output16581_def : output16581 = (.seq output16580 output3299) := by
  unfold output16581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16581_skip : Flapjack.WordAlloc.isSkip output16581 = false := by
  rw [output16581_def]
  conv => lhs; cbv
  try rfl
theorem node16581_eq : Flapjack.WordAlloc.removeDeadStructural input16581 value1648 value1 value2 = (output16581, value6896, value1) := by
  rw [input16581_def, output16581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3299_eq]
  try dsimp only
  rw [node16580_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16581 input3288)).val
theorem input16582_def : input16582 = (.seq input16581 input3288) := by
  unfold input16582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16581)).val
theorem output16582_def : output16582 = (output16581) := by
  unfold output16582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16582_skip : Flapjack.WordAlloc.isSkip output16582 = false := by
  rw [output16582_def]
  conv => lhs; cbv
  try rfl
theorem node16582_eq : Flapjack.WordAlloc.removeDeadStructural input16582 value1648 value1 value2 = (output16582, value6896, value1) := by
  rw [input16582_def, output16582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3288_eq]
  try dsimp only
  rw [node16581_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16582 input3287)).val
theorem input16583_def : input16583 = (.seq input16582 input3287) := by
  unfold input16583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16582 output3287)).val
theorem output16583_def : output16583 = (.seq output16582 output3287) := by
  unfold output16583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16583_skip : Flapjack.WordAlloc.isSkip output16583 = false := by
  rw [output16583_def]
  conv => lhs; cbv
  try rfl
theorem node16583_eq : Flapjack.WordAlloc.removeDeadStructural input16583 value1647 value1 value2 = (output16583, value6896, value1) := by
  rw [input16583_def, output16583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3287_eq]
  try dsimp only
  rw [node16582_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16583 input3286)).val
theorem input16584_def : input16584 = (.seq input16583 input3286) := by
  unfold input16584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16583 output3286)).val
theorem output16584_def : output16584 = (.seq output16583 output3286) := by
  unfold output16584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16584_skip : Flapjack.WordAlloc.isSkip output16584 = false := by
  rw [output16584_def]
  conv => lhs; cbv
  try rfl
theorem node16584_eq : Flapjack.WordAlloc.removeDeadStructural input16584 value5 value1 value2 = (output16584, value6896, value1) := by
  rw [input16584_def, output16584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3286_eq]
  try dsimp only
  rw [node16583_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16584 input3283)).val
theorem input16585_def : input16585 = (.seq input16584 input3283) := by
  unfold input16585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16584 output3283)).val
theorem output16585_def : output16585 = (.seq output16584 output3283) := by
  unfold output16585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16585_skip : Flapjack.WordAlloc.isSkip output16585 = false := by
  rw [output16585_def]
  conv => lhs; cbv
  try rfl
theorem node16585_eq : Flapjack.WordAlloc.removeDeadStructural input16585 value1640 value1 value2 = (output16585, value6896, value1) := by
  rw [input16585_def, output16585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3283_eq]
  try dsimp only
  rw [node16584_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16585 input3272)).val
theorem input16586_def : input16586 = (.seq input16585 input3272) := by
  unfold input16586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16585)).val
theorem output16586_def : output16586 = (output16585) := by
  unfold output16586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16586_skip : Flapjack.WordAlloc.isSkip output16586 = false := by
  rw [output16586_def]
  conv => lhs; cbv
  try rfl
theorem node16586_eq : Flapjack.WordAlloc.removeDeadStructural input16586 value1640 value1 value2 = (output16586, value6896, value1) := by
  rw [input16586_def, output16586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3272_eq]
  try dsimp only
  rw [node16585_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16586 input3271)).val
theorem input16587_def : input16587 = (.seq input16586 input3271) := by
  unfold input16587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16586 output3271)).val
theorem output16587_def : output16587 = (.seq output16586 output3271) := by
  unfold output16587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16587_skip : Flapjack.WordAlloc.isSkip output16587 = false := by
  rw [output16587_def]
  conv => lhs; cbv
  try rfl
theorem node16587_eq : Flapjack.WordAlloc.removeDeadStructural input16587 value1639 value1 value2 = (output16587, value6896, value1) := by
  rw [input16587_def, output16587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3271_eq]
  try dsimp only
  rw [node16586_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16587 input3270)).val
theorem input16588_def : input16588 = (.seq input16587 input3270) := by
  unfold input16588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16587 output3270)).val
theorem output16588_def : output16588 = (.seq output16587 output3270) := by
  unfold output16588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16588_skip : Flapjack.WordAlloc.isSkip output16588 = false := by
  rw [output16588_def]
  conv => lhs; cbv
  try rfl
theorem node16588_eq : Flapjack.WordAlloc.removeDeadStructural input16588 value5 value1 value2 = (output16588, value6896, value1) := by
  rw [input16588_def, output16588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3270_eq]
  try dsimp only
  rw [node16587_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16588 input3267)).val
theorem input16589_def : input16589 = (.seq input16588 input3267) := by
  unfold input16589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16588 output3267)).val
theorem output16589_def : output16589 = (.seq output16588 output3267) := by
  unfold output16589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16589_skip : Flapjack.WordAlloc.isSkip output16589 = false := by
  rw [output16589_def]
  conv => lhs; cbv
  try rfl
theorem node16589_eq : Flapjack.WordAlloc.removeDeadStructural input16589 value1632 value1 value2 = (output16589, value6896, value1) := by
  rw [input16589_def, output16589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3267_eq]
  try dsimp only
  rw [node16588_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16589 input3256)).val
theorem input16590_def : input16590 = (.seq input16589 input3256) := by
  unfold input16590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16589)).val
theorem output16590_def : output16590 = (output16589) := by
  unfold output16590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16590_skip : Flapjack.WordAlloc.isSkip output16590 = false := by
  rw [output16590_def]
  conv => lhs; cbv
  try rfl
theorem node16590_eq : Flapjack.WordAlloc.removeDeadStructural input16590 value1632 value1 value2 = (output16590, value6896, value1) := by
  rw [input16590_def, output16590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3256_eq]
  try dsimp only
  rw [node16589_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16590 input3255)).val
theorem input16591_def : input16591 = (.seq input16590 input3255) := by
  unfold input16591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16590 output3255)).val
theorem output16591_def : output16591 = (.seq output16590 output3255) := by
  unfold output16591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16591_skip : Flapjack.WordAlloc.isSkip output16591 = false := by
  rw [output16591_def]
  conv => lhs; cbv
  try rfl
theorem node16591_eq : Flapjack.WordAlloc.removeDeadStructural input16591 value1631 value1 value2 = (output16591, value6896, value1) := by
  rw [input16591_def, output16591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3255_eq]
  try dsimp only
  rw [node16590_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16591 input3254)).val
theorem input16592_def : input16592 = (.seq input16591 input3254) := by
  unfold input16592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16591 output3254)).val
theorem output16592_def : output16592 = (.seq output16591 output3254) := by
  unfold output16592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16592_skip : Flapjack.WordAlloc.isSkip output16592 = false := by
  rw [output16592_def]
  conv => lhs; cbv
  try rfl
theorem node16592_eq : Flapjack.WordAlloc.removeDeadStructural input16592 value5 value1 value2 = (output16592, value6896, value1) := by
  rw [input16592_def, output16592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3254_eq]
  try dsimp only
  rw [node16591_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16592 input3251)).val
theorem input16593_def : input16593 = (.seq input16592 input3251) := by
  unfold input16593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16592 output3251)).val
theorem output16593_def : output16593 = (.seq output16592 output3251) := by
  unfold output16593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16593_skip : Flapjack.WordAlloc.isSkip output16593 = false := by
  rw [output16593_def]
  conv => lhs; cbv
  try rfl
theorem node16593_eq : Flapjack.WordAlloc.removeDeadStructural input16593 value1624 value1 value2 = (output16593, value6896, value1) := by
  rw [input16593_def, output16593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3251_eq]
  try dsimp only
  rw [node16592_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16593 input3240)).val
theorem input16594_def : input16594 = (.seq input16593 input3240) := by
  unfold input16594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16593)).val
theorem output16594_def : output16594 = (output16593) := by
  unfold output16594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16594_skip : Flapjack.WordAlloc.isSkip output16594 = false := by
  rw [output16594_def]
  conv => lhs; cbv
  try rfl
theorem node16594_eq : Flapjack.WordAlloc.removeDeadStructural input16594 value1624 value1 value2 = (output16594, value6896, value1) := by
  rw [input16594_def, output16594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3240_eq]
  try dsimp only
  rw [node16593_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16594 input3239)).val
theorem input16595_def : input16595 = (.seq input16594 input3239) := by
  unfold input16595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16594 output3239)).val
theorem output16595_def : output16595 = (.seq output16594 output3239) := by
  unfold output16595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16595_skip : Flapjack.WordAlloc.isSkip output16595 = false := by
  rw [output16595_def]
  conv => lhs; cbv
  try rfl
theorem node16595_eq : Flapjack.WordAlloc.removeDeadStructural input16595 value1623 value1 value2 = (output16595, value6896, value1) := by
  rw [input16595_def, output16595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3239_eq]
  try dsimp only
  rw [node16594_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16595 input3238)).val
theorem input16596_def : input16596 = (.seq input16595 input3238) := by
  unfold input16596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16595 output3238)).val
theorem output16596_def : output16596 = (.seq output16595 output3238) := by
  unfold output16596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16596_skip : Flapjack.WordAlloc.isSkip output16596 = false := by
  rw [output16596_def]
  conv => lhs; cbv
  try rfl
theorem node16596_eq : Flapjack.WordAlloc.removeDeadStructural input16596 value5 value1 value2 = (output16596, value6896, value1) := by
  rw [input16596_def, output16596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3238_eq]
  try dsimp only
  rw [node16595_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16596 input3235)).val
theorem input16597_def : input16597 = (.seq input16596 input3235) := by
  unfold input16597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16596 output3235)).val
theorem output16597_def : output16597 = (.seq output16596 output3235) := by
  unfold output16597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16597_skip : Flapjack.WordAlloc.isSkip output16597 = false := by
  rw [output16597_def]
  conv => lhs; cbv
  try rfl
theorem node16597_eq : Flapjack.WordAlloc.removeDeadStructural input16597 value1616 value1 value2 = (output16597, value6896, value1) := by
  rw [input16597_def, output16597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3235_eq]
  try dsimp only
  rw [node16596_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16597 input3224)).val
theorem input16598_def : input16598 = (.seq input16597 input3224) := by
  unfold input16598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16597)).val
theorem output16598_def : output16598 = (output16597) := by
  unfold output16598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16598_skip : Flapjack.WordAlloc.isSkip output16598 = false := by
  rw [output16598_def]
  conv => lhs; cbv
  try rfl
theorem node16598_eq : Flapjack.WordAlloc.removeDeadStructural input16598 value1616 value1 value2 = (output16598, value6896, value1) := by
  rw [input16598_def, output16598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3224_eq]
  try dsimp only
  rw [node16597_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16598 input3223)).val
theorem input16599_def : input16599 = (.seq input16598 input3223) := by
  unfold input16599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16598 output3223)).val
theorem output16599_def : output16599 = (.seq output16598 output3223) := by
  unfold output16599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16599_skip : Flapjack.WordAlloc.isSkip output16599 = false := by
  rw [output16599_def]
  conv => lhs; cbv
  try rfl
theorem node16599_eq : Flapjack.WordAlloc.removeDeadStructural input16599 value1615 value1 value2 = (output16599, value6896, value1) := by
  rw [input16599_def, output16599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3223_eq]
  try dsimp only
  rw [node16598_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16599 input3222)).val
theorem input16600_def : input16600 = (.seq input16599 input3222) := by
  unfold input16600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16599 output3222)).val
theorem output16600_def : output16600 = (.seq output16599 output3222) := by
  unfold output16600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16600_skip : Flapjack.WordAlloc.isSkip output16600 = false := by
  rw [output16600_def]
  conv => lhs; cbv
  try rfl
theorem node16600_eq : Flapjack.WordAlloc.removeDeadStructural input16600 value5 value1 value2 = (output16600, value6896, value1) := by
  rw [input16600_def, output16600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3222_eq]
  try dsimp only
  rw [node16599_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16600 input3219)).val
theorem input16601_def : input16601 = (.seq input16600 input3219) := by
  unfold input16601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16600 output3219)).val
theorem output16601_def : output16601 = (.seq output16600 output3219) := by
  unfold output16601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16601_skip : Flapjack.WordAlloc.isSkip output16601 = false := by
  rw [output16601_def]
  conv => lhs; cbv
  try rfl
theorem node16601_eq : Flapjack.WordAlloc.removeDeadStructural input16601 value1608 value1 value2 = (output16601, value6896, value1) := by
  rw [input16601_def, output16601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3219_eq]
  try dsimp only
  rw [node16600_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16601 input3208)).val
theorem input16602_def : input16602 = (.seq input16601 input3208) := by
  unfold input16602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16601)).val
theorem output16602_def : output16602 = (output16601) := by
  unfold output16602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16602_skip : Flapjack.WordAlloc.isSkip output16602 = false := by
  rw [output16602_def]
  conv => lhs; cbv
  try rfl
theorem node16602_eq : Flapjack.WordAlloc.removeDeadStructural input16602 value1608 value1 value2 = (output16602, value6896, value1) := by
  rw [input16602_def, output16602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3208_eq]
  try dsimp only
  rw [node16601_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16602 input3207)).val
theorem input16603_def : input16603 = (.seq input16602 input3207) := by
  unfold input16603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16602 output3207)).val
theorem output16603_def : output16603 = (.seq output16602 output3207) := by
  unfold output16603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16603_skip : Flapjack.WordAlloc.isSkip output16603 = false := by
  rw [output16603_def]
  conv => lhs; cbv
  try rfl
theorem node16603_eq : Flapjack.WordAlloc.removeDeadStructural input16603 value1607 value1 value2 = (output16603, value6896, value1) := by
  rw [input16603_def, output16603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3207_eq]
  try dsimp only
  rw [node16602_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16603 input3206)).val
theorem input16604_def : input16604 = (.seq input16603 input3206) := by
  unfold input16604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16603 output3206)).val
theorem output16604_def : output16604 = (.seq output16603 output3206) := by
  unfold output16604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16604_skip : Flapjack.WordAlloc.isSkip output16604 = false := by
  rw [output16604_def]
  conv => lhs; cbv
  try rfl
theorem node16604_eq : Flapjack.WordAlloc.removeDeadStructural input16604 value5 value1 value2 = (output16604, value6896, value1) := by
  rw [input16604_def, output16604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3206_eq]
  try dsimp only
  rw [node16603_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16604 input3203)).val
theorem input16605_def : input16605 = (.seq input16604 input3203) := by
  unfold input16605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16604 output3203)).val
theorem output16605_def : output16605 = (.seq output16604 output3203) := by
  unfold output16605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16605_skip : Flapjack.WordAlloc.isSkip output16605 = false := by
  rw [output16605_def]
  conv => lhs; cbv
  try rfl
theorem node16605_eq : Flapjack.WordAlloc.removeDeadStructural input16605 value1600 value1 value2 = (output16605, value6896, value1) := by
  rw [input16605_def, output16605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3203_eq]
  try dsimp only
  rw [node16604_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16605 input3192)).val
theorem input16606_def : input16606 = (.seq input16605 input3192) := by
  unfold input16606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16605)).val
theorem output16606_def : output16606 = (output16605) := by
  unfold output16606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16606_skip : Flapjack.WordAlloc.isSkip output16606 = false := by
  rw [output16606_def]
  conv => lhs; cbv
  try rfl
theorem node16606_eq : Flapjack.WordAlloc.removeDeadStructural input16606 value1600 value1 value2 = (output16606, value6896, value1) := by
  rw [input16606_def, output16606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3192_eq]
  try dsimp only
  rw [node16605_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16606 input3191)).val
theorem input16607_def : input16607 = (.seq input16606 input3191) := by
  unfold input16607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16606 output3191)).val
theorem output16607_def : output16607 = (.seq output16606 output3191) := by
  unfold output16607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16607_skip : Flapjack.WordAlloc.isSkip output16607 = false := by
  rw [output16607_def]
  conv => lhs; cbv
  try rfl
theorem node16607_eq : Flapjack.WordAlloc.removeDeadStructural input16607 value1599 value1 value2 = (output16607, value6896, value1) := by
  rw [input16607_def, output16607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3191_eq]
  try dsimp only
  rw [node16606_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16607 input3190)).val
theorem input16608_def : input16608 = (.seq input16607 input3190) := by
  unfold input16608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16607 output3190)).val
theorem output16608_def : output16608 = (.seq output16607 output3190) := by
  unfold output16608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16608_skip : Flapjack.WordAlloc.isSkip output16608 = false := by
  rw [output16608_def]
  conv => lhs; cbv
  try rfl
theorem node16608_eq : Flapjack.WordAlloc.removeDeadStructural input16608 value5 value1 value2 = (output16608, value6896, value1) := by
  rw [input16608_def, output16608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3190_eq]
  try dsimp only
  rw [node16607_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16608 input3187)).val
theorem input16609_def : input16609 = (.seq input16608 input3187) := by
  unfold input16609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16608 output3187)).val
theorem output16609_def : output16609 = (.seq output16608 output3187) := by
  unfold output16609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16609_skip : Flapjack.WordAlloc.isSkip output16609 = false := by
  rw [output16609_def]
  conv => lhs; cbv
  try rfl
theorem node16609_eq : Flapjack.WordAlloc.removeDeadStructural input16609 value1592 value1 value2 = (output16609, value6896, value1) := by
  rw [input16609_def, output16609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3187_eq]
  try dsimp only
  rw [node16608_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16609 input3176)).val
theorem input16610_def : input16610 = (.seq input16609 input3176) := by
  unfold input16610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16609)).val
theorem output16610_def : output16610 = (output16609) := by
  unfold output16610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16610_skip : Flapjack.WordAlloc.isSkip output16610 = false := by
  rw [output16610_def]
  conv => lhs; cbv
  try rfl
theorem node16610_eq : Flapjack.WordAlloc.removeDeadStructural input16610 value1592 value1 value2 = (output16610, value6896, value1) := by
  rw [input16610_def, output16610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3176_eq]
  try dsimp only
  rw [node16609_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16610 input3175)).val
theorem input16611_def : input16611 = (.seq input16610 input3175) := by
  unfold input16611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16610 output3175)).val
theorem output16611_def : output16611 = (.seq output16610 output3175) := by
  unfold output16611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16611_skip : Flapjack.WordAlloc.isSkip output16611 = false := by
  rw [output16611_def]
  conv => lhs; cbv
  try rfl
theorem node16611_eq : Flapjack.WordAlloc.removeDeadStructural input16611 value1591 value1 value2 = (output16611, value6896, value1) := by
  rw [input16611_def, output16611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3175_eq]
  try dsimp only
  rw [node16610_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16611 input3174)).val
theorem input16612_def : input16612 = (.seq input16611 input3174) := by
  unfold input16612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16611 output3174)).val
theorem output16612_def : output16612 = (.seq output16611 output3174) := by
  unfold output16612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16612_skip : Flapjack.WordAlloc.isSkip output16612 = false := by
  rw [output16612_def]
  conv => lhs; cbv
  try rfl
theorem node16612_eq : Flapjack.WordAlloc.removeDeadStructural input16612 value5 value1 value2 = (output16612, value6896, value1) := by
  rw [input16612_def, output16612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3174_eq]
  try dsimp only
  rw [node16611_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16612 input3171)).val
theorem input16613_def : input16613 = (.seq input16612 input3171) := by
  unfold input16613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16612 output3171)).val
theorem output16613_def : output16613 = (.seq output16612 output3171) := by
  unfold output16613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16613_skip : Flapjack.WordAlloc.isSkip output16613 = false := by
  rw [output16613_def]
  conv => lhs; cbv
  try rfl
theorem node16613_eq : Flapjack.WordAlloc.removeDeadStructural input16613 value1584 value1 value2 = (output16613, value6896, value1) := by
  rw [input16613_def, output16613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3171_eq]
  try dsimp only
  rw [node16612_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16613 input3160)).val
theorem input16614_def : input16614 = (.seq input16613 input3160) := by
  unfold input16614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16613)).val
theorem output16614_def : output16614 = (output16613) := by
  unfold output16614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16614_skip : Flapjack.WordAlloc.isSkip output16614 = false := by
  rw [output16614_def]
  conv => lhs; cbv
  try rfl
theorem node16614_eq : Flapjack.WordAlloc.removeDeadStructural input16614 value1584 value1 value2 = (output16614, value6896, value1) := by
  rw [input16614_def, output16614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3160_eq]
  try dsimp only
  rw [node16613_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16614 input3159)).val
theorem input16615_def : input16615 = (.seq input16614 input3159) := by
  unfold input16615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16614 output3159)).val
theorem output16615_def : output16615 = (.seq output16614 output3159) := by
  unfold output16615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16615_skip : Flapjack.WordAlloc.isSkip output16615 = false := by
  rw [output16615_def]
  conv => lhs; cbv
  try rfl
theorem node16615_eq : Flapjack.WordAlloc.removeDeadStructural input16615 value1583 value1 value2 = (output16615, value6896, value1) := by
  rw [input16615_def, output16615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3159_eq]
  try dsimp only
  rw [node16614_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16615 input3158)).val
theorem input16616_def : input16616 = (.seq input16615 input3158) := by
  unfold input16616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16615 output3158)).val
theorem output16616_def : output16616 = (.seq output16615 output3158) := by
  unfold output16616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16616_skip : Flapjack.WordAlloc.isSkip output16616 = false := by
  rw [output16616_def]
  conv => lhs; cbv
  try rfl
theorem node16616_eq : Flapjack.WordAlloc.removeDeadStructural input16616 value5 value1 value2 = (output16616, value6896, value1) := by
  rw [input16616_def, output16616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3158_eq]
  try dsimp only
  rw [node16615_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16616 input3155)).val
theorem input16617_def : input16617 = (.seq input16616 input3155) := by
  unfold input16617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16616 output3155)).val
theorem output16617_def : output16617 = (.seq output16616 output3155) := by
  unfold output16617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16617_skip : Flapjack.WordAlloc.isSkip output16617 = false := by
  rw [output16617_def]
  conv => lhs; cbv
  try rfl
theorem node16617_eq : Flapjack.WordAlloc.removeDeadStructural input16617 value1576 value1 value2 = (output16617, value6896, value1) := by
  rw [input16617_def, output16617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3155_eq]
  try dsimp only
  rw [node16616_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16617 input3144)).val
theorem input16618_def : input16618 = (.seq input16617 input3144) := by
  unfold input16618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16617)).val
theorem output16618_def : output16618 = (output16617) := by
  unfold output16618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16618_skip : Flapjack.WordAlloc.isSkip output16618 = false := by
  rw [output16618_def]
  conv => lhs; cbv
  try rfl
theorem node16618_eq : Flapjack.WordAlloc.removeDeadStructural input16618 value1576 value1 value2 = (output16618, value6896, value1) := by
  rw [input16618_def, output16618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3144_eq]
  try dsimp only
  rw [node16617_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16618 input3143)).val
theorem input16619_def : input16619 = (.seq input16618 input3143) := by
  unfold input16619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16618 output3143)).val
theorem output16619_def : output16619 = (.seq output16618 output3143) := by
  unfold output16619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16619_skip : Flapjack.WordAlloc.isSkip output16619 = false := by
  rw [output16619_def]
  conv => lhs; cbv
  try rfl
theorem node16619_eq : Flapjack.WordAlloc.removeDeadStructural input16619 value1575 value1 value2 = (output16619, value6896, value1) := by
  rw [input16619_def, output16619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3143_eq]
  try dsimp only
  rw [node16618_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16619 input3142)).val
theorem input16620_def : input16620 = (.seq input16619 input3142) := by
  unfold input16620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16619 output3142)).val
theorem output16620_def : output16620 = (.seq output16619 output3142) := by
  unfold output16620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16620_skip : Flapjack.WordAlloc.isSkip output16620 = false := by
  rw [output16620_def]
  conv => lhs; cbv
  try rfl
theorem node16620_eq : Flapjack.WordAlloc.removeDeadStructural input16620 value5 value1 value2 = (output16620, value6896, value1) := by
  rw [input16620_def, output16620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3142_eq]
  try dsimp only
  rw [node16619_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16620 input3139)).val
theorem input16621_def : input16621 = (.seq input16620 input3139) := by
  unfold input16621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16620 output3139)).val
theorem output16621_def : output16621 = (.seq output16620 output3139) := by
  unfold output16621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16621_skip : Flapjack.WordAlloc.isSkip output16621 = false := by
  rw [output16621_def]
  conv => lhs; cbv
  try rfl
theorem node16621_eq : Flapjack.WordAlloc.removeDeadStructural input16621 value1568 value1 value2 = (output16621, value6896, value1) := by
  rw [input16621_def, output16621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3139_eq]
  try dsimp only
  rw [node16620_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16621 input3128)).val
theorem input16622_def : input16622 = (.seq input16621 input3128) := by
  unfold input16622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16621)).val
theorem output16622_def : output16622 = (output16621) := by
  unfold output16622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16622_skip : Flapjack.WordAlloc.isSkip output16622 = false := by
  rw [output16622_def]
  conv => lhs; cbv
  try rfl
theorem node16622_eq : Flapjack.WordAlloc.removeDeadStructural input16622 value1568 value1 value2 = (output16622, value6896, value1) := by
  rw [input16622_def, output16622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3128_eq]
  try dsimp only
  rw [node16621_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16622 input3127)).val
theorem input16623_def : input16623 = (.seq input16622 input3127) := by
  unfold input16623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16622 output3127)).val
theorem output16623_def : output16623 = (.seq output16622 output3127) := by
  unfold output16623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16623_skip : Flapjack.WordAlloc.isSkip output16623 = false := by
  rw [output16623_def]
  conv => lhs; cbv
  try rfl
theorem node16623_eq : Flapjack.WordAlloc.removeDeadStructural input16623 value1567 value1 value2 = (output16623, value6896, value1) := by
  rw [input16623_def, output16623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3127_eq]
  try dsimp only
  rw [node16622_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16623 input3126)).val
theorem input16624_def : input16624 = (.seq input16623 input3126) := by
  unfold input16624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16623 output3126)).val
theorem output16624_def : output16624 = (.seq output16623 output3126) := by
  unfold output16624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16624_skip : Flapjack.WordAlloc.isSkip output16624 = false := by
  rw [output16624_def]
  conv => lhs; cbv
  try rfl
theorem node16624_eq : Flapjack.WordAlloc.removeDeadStructural input16624 value5 value1 value2 = (output16624, value6896, value1) := by
  rw [input16624_def, output16624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3126_eq]
  try dsimp only
  rw [node16623_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16624 input3123)).val
theorem input16625_def : input16625 = (.seq input16624 input3123) := by
  unfold input16625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16624 output3123)).val
theorem output16625_def : output16625 = (.seq output16624 output3123) := by
  unfold output16625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16625_skip : Flapjack.WordAlloc.isSkip output16625 = false := by
  rw [output16625_def]
  conv => lhs; cbv
  try rfl
theorem node16625_eq : Flapjack.WordAlloc.removeDeadStructural input16625 value1560 value1 value2 = (output16625, value6896, value1) := by
  rw [input16625_def, output16625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3123_eq]
  try dsimp only
  rw [node16624_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16625 input3112)).val
theorem input16626_def : input16626 = (.seq input16625 input3112) := by
  unfold input16626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16625)).val
theorem output16626_def : output16626 = (output16625) := by
  unfold output16626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16626_skip : Flapjack.WordAlloc.isSkip output16626 = false := by
  rw [output16626_def]
  conv => lhs; cbv
  try rfl
theorem node16626_eq : Flapjack.WordAlloc.removeDeadStructural input16626 value1560 value1 value2 = (output16626, value6896, value1) := by
  rw [input16626_def, output16626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3112_eq]
  try dsimp only
  rw [node16625_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16626 input3111)).val
theorem input16627_def : input16627 = (.seq input16626 input3111) := by
  unfold input16627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16626 output3111)).val
theorem output16627_def : output16627 = (.seq output16626 output3111) := by
  unfold output16627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16627_skip : Flapjack.WordAlloc.isSkip output16627 = false := by
  rw [output16627_def]
  conv => lhs; cbv
  try rfl
theorem node16627_eq : Flapjack.WordAlloc.removeDeadStructural input16627 value1559 value1 value2 = (output16627, value6896, value1) := by
  rw [input16627_def, output16627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3111_eq]
  try dsimp only
  rw [node16626_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16627 input3110)).val
theorem input16628_def : input16628 = (.seq input16627 input3110) := by
  unfold input16628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16627 output3110)).val
theorem output16628_def : output16628 = (.seq output16627 output3110) := by
  unfold output16628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16628_skip : Flapjack.WordAlloc.isSkip output16628 = false := by
  rw [output16628_def]
  conv => lhs; cbv
  try rfl
theorem node16628_eq : Flapjack.WordAlloc.removeDeadStructural input16628 value5 value1 value2 = (output16628, value6896, value1) := by
  rw [input16628_def, output16628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3110_eq]
  try dsimp only
  rw [node16627_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16628 input3107)).val
theorem input16629_def : input16629 = (.seq input16628 input3107) := by
  unfold input16629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16628 output3107)).val
theorem output16629_def : output16629 = (.seq output16628 output3107) := by
  unfold output16629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16629_skip : Flapjack.WordAlloc.isSkip output16629 = false := by
  rw [output16629_def]
  conv => lhs; cbv
  try rfl
theorem node16629_eq : Flapjack.WordAlloc.removeDeadStructural input16629 value1552 value1 value2 = (output16629, value6896, value1) := by
  rw [input16629_def, output16629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3107_eq]
  try dsimp only
  rw [node16628_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16629 input3096)).val
theorem input16630_def : input16630 = (.seq input16629 input3096) := by
  unfold input16630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16629)).val
theorem output16630_def : output16630 = (output16629) := by
  unfold output16630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16630_skip : Flapjack.WordAlloc.isSkip output16630 = false := by
  rw [output16630_def]
  conv => lhs; cbv
  try rfl
theorem node16630_eq : Flapjack.WordAlloc.removeDeadStructural input16630 value1552 value1 value2 = (output16630, value6896, value1) := by
  rw [input16630_def, output16630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3096_eq]
  try dsimp only
  rw [node16629_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16630 input3095)).val
theorem input16631_def : input16631 = (.seq input16630 input3095) := by
  unfold input16631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16630 output3095)).val
theorem output16631_def : output16631 = (.seq output16630 output3095) := by
  unfold output16631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16631_skip : Flapjack.WordAlloc.isSkip output16631 = false := by
  rw [output16631_def]
  conv => lhs; cbv
  try rfl
theorem node16631_eq : Flapjack.WordAlloc.removeDeadStructural input16631 value1551 value1 value2 = (output16631, value6896, value1) := by
  rw [input16631_def, output16631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3095_eq]
  try dsimp only
  rw [node16630_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16631 input3094)).val
theorem input16632_def : input16632 = (.seq input16631 input3094) := by
  unfold input16632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16631 output3094)).val
theorem output16632_def : output16632 = (.seq output16631 output3094) := by
  unfold output16632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16632_skip : Flapjack.WordAlloc.isSkip output16632 = false := by
  rw [output16632_def]
  conv => lhs; cbv
  try rfl
theorem node16632_eq : Flapjack.WordAlloc.removeDeadStructural input16632 value5 value1 value2 = (output16632, value6896, value1) := by
  rw [input16632_def, output16632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3094_eq]
  try dsimp only
  rw [node16631_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16632 input3091)).val
theorem input16633_def : input16633 = (.seq input16632 input3091) := by
  unfold input16633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16632 output3091)).val
theorem output16633_def : output16633 = (.seq output16632 output3091) := by
  unfold output16633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16633_skip : Flapjack.WordAlloc.isSkip output16633 = false := by
  rw [output16633_def]
  conv => lhs; cbv
  try rfl
theorem node16633_eq : Flapjack.WordAlloc.removeDeadStructural input16633 value1544 value1 value2 = (output16633, value6896, value1) := by
  rw [input16633_def, output16633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3091_eq]
  try dsimp only
  rw [node16632_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16633 input3080)).val
theorem input16634_def : input16634 = (.seq input16633 input3080) := by
  unfold input16634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16633)).val
theorem output16634_def : output16634 = (output16633) := by
  unfold output16634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16634_skip : Flapjack.WordAlloc.isSkip output16634 = false := by
  rw [output16634_def]
  conv => lhs; cbv
  try rfl
theorem node16634_eq : Flapjack.WordAlloc.removeDeadStructural input16634 value1544 value1 value2 = (output16634, value6896, value1) := by
  rw [input16634_def, output16634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3080_eq]
  try dsimp only
  rw [node16633_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16634 input3079)).val
theorem input16635_def : input16635 = (.seq input16634 input3079) := by
  unfold input16635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16634 output3079)).val
theorem output16635_def : output16635 = (.seq output16634 output3079) := by
  unfold output16635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16635_skip : Flapjack.WordAlloc.isSkip output16635 = false := by
  rw [output16635_def]
  conv => lhs; cbv
  try rfl
theorem node16635_eq : Flapjack.WordAlloc.removeDeadStructural input16635 value1543 value1 value2 = (output16635, value6896, value1) := by
  rw [input16635_def, output16635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3079_eq]
  try dsimp only
  rw [node16634_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16635 input3078)).val
theorem input16636_def : input16636 = (.seq input16635 input3078) := by
  unfold input16636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16635 output3078)).val
theorem output16636_def : output16636 = (.seq output16635 output3078) := by
  unfold output16636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16636_skip : Flapjack.WordAlloc.isSkip output16636 = false := by
  rw [output16636_def]
  conv => lhs; cbv
  try rfl
theorem node16636_eq : Flapjack.WordAlloc.removeDeadStructural input16636 value5 value1 value2 = (output16636, value6896, value1) := by
  rw [input16636_def, output16636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3078_eq]
  try dsimp only
  rw [node16635_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16636 input3075)).val
theorem input16637_def : input16637 = (.seq input16636 input3075) := by
  unfold input16637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16636 output3075)).val
theorem output16637_def : output16637 = (.seq output16636 output3075) := by
  unfold output16637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16637_skip : Flapjack.WordAlloc.isSkip output16637 = false := by
  rw [output16637_def]
  conv => lhs; cbv
  try rfl
theorem node16637_eq : Flapjack.WordAlloc.removeDeadStructural input16637 value1536 value1 value2 = (output16637, value6896, value1) := by
  rw [input16637_def, output16637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3075_eq]
  try dsimp only
  rw [node16636_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16637 input3064)).val
theorem input16638_def : input16638 = (.seq input16637 input3064) := by
  unfold input16638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16637)).val
theorem output16638_def : output16638 = (output16637) := by
  unfold output16638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16638_skip : Flapjack.WordAlloc.isSkip output16638 = false := by
  rw [output16638_def]
  conv => lhs; cbv
  try rfl
theorem node16638_eq : Flapjack.WordAlloc.removeDeadStructural input16638 value1536 value1 value2 = (output16638, value6896, value1) := by
  rw [input16638_def, output16638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3064_eq]
  try dsimp only
  rw [node16637_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16638 input3063)).val
theorem input16639_def : input16639 = (.seq input16638 input3063) := by
  unfold input16639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16638 output3063)).val
theorem output16639_def : output16639 = (.seq output16638 output3063) := by
  unfold output16639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16639_skip : Flapjack.WordAlloc.isSkip output16639 = false := by
  rw [output16639_def]
  conv => lhs; cbv
  try rfl
theorem node16639_eq : Flapjack.WordAlloc.removeDeadStructural input16639 value1535 value1 value2 = (output16639, value6896, value1) := by
  rw [input16639_def, output16639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3063_eq]
  try dsimp only
  rw [node16638_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node16639_eq
end InitECandidate.Proofs.DeadStages713
