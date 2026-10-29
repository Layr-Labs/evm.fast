import InitECandidate.Proofs.DeadStages64.Chunk045
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages64
@[irreducible, cbv_opaque] def input1472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1471 input54)).val
theorem input1472_def : input1472 = (.seq input1471 input54) := by
  unfold input1472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1471 output54)).val
theorem output1472_def : output1472 = (.seq output1471 output54) := by
  unfold output1472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1472_skip : Flapjack.WordAlloc.isSkip output1472 = false := by
  rw [output1472_def]
  conv => lhs; cbv
  try rfl
theorem node1472_eq : Flapjack.WordAlloc.removeDeadStructural input1472 value30 value1 value2 = (output1472, value4, value1) := by
  rw [input1472_def, output1472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node54_eq]
  dsimp only
  rw [node1471_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1472 input53)).val
theorem input1473_def : input1473 = (.seq input1472 input53) := by
  unfold input1473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1472 output53)).val
theorem output1473_def : output1473 = (.seq output1472 output53) := by
  unfold output1473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1473_skip : Flapjack.WordAlloc.isSkip output1473 = false := by
  rw [output1473_def]
  conv => lhs; cbv
  try rfl
theorem node1473_eq : Flapjack.WordAlloc.removeDeadStructural input1473 value4 value1 value2 = (output1473, value4, value1) := by
  rw [input1473_def, output1473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node53_eq]
  dsimp only
  rw [node1472_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1473 input50)).val
theorem input1474_def : input1474 = (.seq input1473 input50) := by
  unfold input1474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1473 output50)).val
theorem output1474_def : output1474 = (.seq output1473 output50) := by
  unfold output1474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1474_skip : Flapjack.WordAlloc.isSkip output1474 = false := by
  rw [output1474_def]
  conv => lhs; cbv
  try rfl
theorem node1474_eq : Flapjack.WordAlloc.removeDeadStructural input1474 value25 value1 value2 = (output1474, value4, value1) := by
  rw [input1474_def, output1474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node50_eq]
  dsimp only
  rw [node1473_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1474 input43)).val
theorem input1475_def : input1475 = (.seq input1474 input43) := by
  unfold input1475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1474)).val
theorem output1475_def : output1475 = (output1474) := by
  unfold output1475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1475_skip : Flapjack.WordAlloc.isSkip output1475 = false := by
  rw [output1475_def]
  conv => lhs; cbv
  try rfl
theorem node1475_eq : Flapjack.WordAlloc.removeDeadStructural input1475 value25 value1 value2 = (output1475, value4, value1) := by
  rw [input1475_def, output1475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node43_eq]
  dsimp only
  rw [node1474_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1475 input42)).val
theorem input1476_def : input1476 = (.seq input1475 input42) := by
  unfold input1476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1475 output42)).val
theorem output1476_def : output1476 = (.seq output1475 output42) := by
  unfold output1476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1476_skip : Flapjack.WordAlloc.isSkip output1476 = false := by
  rw [output1476_def]
  conv => lhs; cbv
  try rfl
theorem node1476_eq : Flapjack.WordAlloc.removeDeadStructural input1476 value24 value1 value2 = (output1476, value4, value1) := by
  rw [input1476_def, output1476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node42_eq]
  dsimp only
  rw [node1475_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1476 input41)).val
theorem input1477_def : input1477 = (.seq input1476 input41) := by
  unfold input1477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1476 output41)).val
theorem output1477_def : output1477 = (.seq output1476 output41) := by
  unfold output1477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1477_skip : Flapjack.WordAlloc.isSkip output1477 = false := by
  rw [output1477_def]
  conv => lhs; cbv
  try rfl
theorem node1477_eq : Flapjack.WordAlloc.removeDeadStructural input1477 value4 value1 value2 = (output1477, value4, value1) := by
  rw [input1477_def, output1477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node41_eq]
  dsimp only
  rw [node1476_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1477 input38)).val
theorem input1478_def : input1478 = (.seq input1477 input38) := by
  unfold input1478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1477 output38)).val
theorem output1478_def : output1478 = (.seq output1477 output38) := by
  unfold output1478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1478_skip : Flapjack.WordAlloc.isSkip output1478 = false := by
  rw [output1478_def]
  conv => lhs; cbv
  try rfl
theorem node1478_eq : Flapjack.WordAlloc.removeDeadStructural input1478 value19 value1 value2 = (output1478, value4, value1) := by
  rw [input1478_def, output1478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node38_eq]
  dsimp only
  rw [node1477_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1478 input31)).val
theorem input1479_def : input1479 = (.seq input1478 input31) := by
  unfold input1479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1478)).val
theorem output1479_def : output1479 = (output1478) := by
  unfold output1479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1479_skip : Flapjack.WordAlloc.isSkip output1479 = false := by
  rw [output1479_def]
  conv => lhs; cbv
  try rfl
theorem node1479_eq : Flapjack.WordAlloc.removeDeadStructural input1479 value19 value1 value2 = (output1479, value4, value1) := by
  rw [input1479_def, output1479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node31_eq]
  dsimp only
  rw [node1478_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1479 input30)).val
theorem input1480_def : input1480 = (.seq input1479 input30) := by
  unfold input1480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1479 output30)).val
theorem output1480_def : output1480 = (.seq output1479 output30) := by
  unfold output1480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1480_skip : Flapjack.WordAlloc.isSkip output1480 = false := by
  rw [output1480_def]
  conv => lhs; cbv
  try rfl
theorem node1480_eq : Flapjack.WordAlloc.removeDeadStructural input1480 value18 value1 value2 = (output1480, value4, value1) := by
  rw [input1480_def, output1480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node30_eq]
  dsimp only
  rw [node1479_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1480 input29)).val
theorem input1481_def : input1481 = (.seq input1480 input29) := by
  unfold input1481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1480 output29)).val
theorem output1481_def : output1481 = (.seq output1480 output29) := by
  unfold output1481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1481_skip : Flapjack.WordAlloc.isSkip output1481 = false := by
  rw [output1481_def]
  conv => lhs; cbv
  try rfl
theorem node1481_eq : Flapjack.WordAlloc.removeDeadStructural input1481 value4 value1 value2 = (output1481, value4, value1) := by
  rw [input1481_def, output1481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node29_eq]
  dsimp only
  rw [node1480_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1481 input26)).val
theorem input1482_def : input1482 = (.seq input1481 input26) := by
  unfold input1482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1481 output26)).val
theorem output1482_def : output1482 = (.seq output1481 output26) := by
  unfold output1482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1482_skip : Flapjack.WordAlloc.isSkip output1482 = false := by
  rw [output1482_def]
  conv => lhs; cbv
  try rfl
theorem node1482_eq : Flapjack.WordAlloc.removeDeadStructural input1482 value13 value1 value2 = (output1482, value4, value1) := by
  rw [input1482_def, output1482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node26_eq]
  dsimp only
  rw [node1481_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1482 input19)).val
theorem input1483_def : input1483 = (.seq input1482 input19) := by
  unfold input1483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1482)).val
theorem output1483_def : output1483 = (output1482) := by
  unfold output1483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1483_skip : Flapjack.WordAlloc.isSkip output1483 = false := by
  rw [output1483_def]
  conv => lhs; cbv
  try rfl
theorem node1483_eq : Flapjack.WordAlloc.removeDeadStructural input1483 value13 value1 value2 = (output1483, value4, value1) := by
  rw [input1483_def, output1483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node19_eq]
  dsimp only
  rw [node1482_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1483 input18)).val
theorem input1484_def : input1484 = (.seq input1483 input18) := by
  unfold input1484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1483 output18)).val
theorem output1484_def : output1484 = (.seq output1483 output18) := by
  unfold output1484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1484_skip : Flapjack.WordAlloc.isSkip output1484 = false := by
  rw [output1484_def]
  conv => lhs; cbv
  try rfl
theorem node1484_eq : Flapjack.WordAlloc.removeDeadStructural input1484 value12 value1 value2 = (output1484, value4, value1) := by
  rw [input1484_def, output1484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node18_eq]
  dsimp only
  rw [node1483_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1484 input17)).val
theorem input1485_def : input1485 = (.seq input1484 input17) := by
  unfold input1485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1484 output17)).val
theorem output1485_def : output1485 = (.seq output1484 output17) := by
  unfold output1485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1485_skip : Flapjack.WordAlloc.isSkip output1485 = false := by
  rw [output1485_def]
  conv => lhs; cbv
  try rfl
theorem node1485_eq : Flapjack.WordAlloc.removeDeadStructural input1485 value4 value1 value2 = (output1485, value4, value1) := by
  rw [input1485_def, output1485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node17_eq]
  dsimp only
  rw [node1484_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1485 input14)).val
theorem input1486_def : input1486 = (.seq input1485 input14) := by
  unfold input1486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1485 output14)).val
theorem output1486_def : output1486 = (.seq output1485 output14) := by
  unfold output1486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1486_skip : Flapjack.WordAlloc.isSkip output1486 = false := by
  rw [output1486_def]
  conv => lhs; cbv
  try rfl
theorem node1486_eq : Flapjack.WordAlloc.removeDeadStructural input1486 value7 value1 value2 = (output1486, value4, value1) := by
  rw [input1486_def, output1486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node14_eq]
  dsimp only
  rw [node1485_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1486 input7)).val
theorem input1487_def : input1487 = (.seq input1486 input7) := by
  unfold input1487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1486)).val
theorem output1487_def : output1487 = (output1486) := by
  unfold output1487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1487_skip : Flapjack.WordAlloc.isSkip output1487 = false := by
  rw [output1487_def]
  conv => lhs; cbv
  try rfl
theorem node1487_eq : Flapjack.WordAlloc.removeDeadStructural input1487 value7 value1 value2 = (output1487, value4, value1) := by
  rw [input1487_def, output1487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7_eq]
  dsimp only
  rw [node1486_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1487 input6)).val
theorem input1488_def : input1488 = (.seq input1487 input6) := by
  unfold input1488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1487 output6)).val
theorem output1488_def : output1488 = (.seq output1487 output6) := by
  unfold output1488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1488_skip : Flapjack.WordAlloc.isSkip output1488 = false := by
  rw [output1488_def]
  conv => lhs; cbv
  try rfl
theorem node1488_eq : Flapjack.WordAlloc.removeDeadStructural input1488 value6 value1 value2 = (output1488, value4, value1) := by
  rw [input1488_def, output1488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6_eq]
  dsimp only
  rw [node1487_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1488 input5)).val
theorem input1489_def : input1489 = (.seq input1488 input5) := by
  unfold input1489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1488 output5)).val
theorem output1489_def : output1489 = (.seq output1488 output5) := by
  unfold output1489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1489_skip : Flapjack.WordAlloc.isSkip output1489 = false := by
  rw [output1489_def]
  conv => lhs; cbv
  try rfl
theorem node1489_eq : Flapjack.WordAlloc.removeDeadStructural input1489 value4 value1 value2 = (output1489, value4, value1) := by
  rw [input1489_def, output1489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5_eq]
  dsimp only
  rw [node1488_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1489 input2)).val
theorem input1490_def : input1490 = (.seq input1489 input2) := by
  unfold input1490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1489 output2)).val
theorem output1490_def : output1490 = (.seq output1489 output2) := by
  unfold output1490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1490_skip : Flapjack.WordAlloc.isSkip output1490 = false := by
  rw [output1490_def]
  conv => lhs; cbv
  try rfl
theorem node1490_eq : Flapjack.WordAlloc.removeDeadStructural input1490 value0 value1 value2 = (output1490, value4, value1) := by
  rw [input1490_def, output1490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2_eq]
  dsimp only
  rw [node1489_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(9, 0)])).val
theorem input1491_def : input1491 = (Flapjack.WordLangProgHOL.move 1 [(9, 0)]) := by
  unfold input1491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(9, 0)])).val
theorem output1491_def : output1491 = (Flapjack.WordLangProgHOL.move 1 [(9, 0)]) := by
  unfold output1491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1491_skip : Flapjack.WordAlloc.isSkip output1491 = false := by
  rw [output1491_def]
  conv => lhs; cbv
  try rfl
theorem node1491_eq : Flapjack.WordAlloc.removeDeadStructural input1491 value4 value1 value2 = (output1491, value3, value1) := by
  rw [input1491_def, output1491_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1491 input1490)).val
theorem input1492_def : input1492 = (.seq input1491 input1490) := by
  unfold input1492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1491 output1490)).val
theorem output1492_def : output1492 = (.seq output1491 output1490) := by
  unfold output1492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1492_skip : Flapjack.WordAlloc.isSkip output1492 = false := by
  rw [output1492_def]
  conv => lhs; cbv
  try rfl
theorem node1492_eq : Flapjack.WordAlloc.removeDeadStructural input1492 value0 value1 value2 = (output1492, value3, value1) := by
  rw [input1492_def, output1492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1490_eq]
  dsimp only
  rw [node1491_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node1492_eq
end InitECandidate.Proofs.DeadStages64
