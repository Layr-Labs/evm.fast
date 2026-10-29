import InitECandidate.Proofs.DeadStages347.Chunk005
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages347
@[irreducible, cbv_opaque] def input1536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1535 input1424)).val
theorem input1536_def : input1536 = (.seq input1535 input1424) := by
  unfold input1536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1535 output1424)).val
theorem output1536_def : output1536 = (.seq output1535 output1424) := by
  unfold output1536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1536_skip : Flapjack.WordAlloc.isSkip output1536 = false := by
  rw [output1536_def]
  conv => lhs; cbv
  try rfl
theorem node1536_eq : Flapjack.WordAlloc.removeDeadStructural input1536 value529 value1 value2 = (output1536, value566, value1) := by
  rw [input1536_def, output1536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1424_eq]
  try dsimp only
  rw [node1535_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1536 input1423)).val
theorem input1537_def : input1537 = (.seq input1536 input1423) := by
  unfold input1537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1536 output1423)).val
theorem output1537_def : output1537 = (.seq output1536 output1423) := by
  unfold output1537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1537_skip : Flapjack.WordAlloc.isSkip output1537 = false := by
  rw [output1537_def]
  conv => lhs; cbv
  try rfl
theorem node1537_eq : Flapjack.WordAlloc.removeDeadStructural input1537 value532 value1 value2 = (output1537, value566, value1) := by
  rw [input1537_def, output1537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1423_eq]
  try dsimp only
  rw [node1536_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1537 input1422)).val
theorem input1538_def : input1538 = (.seq input1537 input1422) := by
  unfold input1538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1537 output1422)).val
theorem output1538_def : output1538 = (.seq output1537 output1422) := by
  unfold output1538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1538_skip : Flapjack.WordAlloc.isSkip output1538 = false := by
  rw [output1538_def]
  conv => lhs; cbv
  try rfl
theorem node1538_eq : Flapjack.WordAlloc.removeDeadStructural input1538 value527 value1 value2 = (output1538, value566, value1) := by
  rw [input1538_def, output1538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1422_eq]
  try dsimp only
  rw [node1537_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1538 input1395)).val
theorem input1539_def : input1539 = (.seq input1538 input1395) := by
  unfold input1539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1538 output1395)).val
theorem output1539_def : output1539 = (.seq output1538 output1395) := by
  unfold output1539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1539_skip : Flapjack.WordAlloc.isSkip output1539 = false := by
  rw [output1539_def]
  conv => lhs; cbv
  try rfl
theorem node1539_eq : Flapjack.WordAlloc.removeDeadStructural input1539 value527 value1 value2 = (output1539, value566, value1) := by
  rw [input1539_def, output1539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1395_eq]
  try dsimp only
  rw [node1538_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1539 input1394)).val
theorem input1540_def : input1540 = (.seq input1539 input1394) := by
  unfold input1540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1539 output1394)).val
theorem output1540_def : output1540 = (.seq output1539 output1394) := by
  unfold output1540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1540_skip : Flapjack.WordAlloc.isSkip output1540 = false := by
  rw [output1540_def]
  conv => lhs; cbv
  try rfl
theorem node1540_eq : Flapjack.WordAlloc.removeDeadStructural input1540 value526 value1 value2 = (output1540, value566, value1) := by
  rw [input1540_def, output1540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1394_eq]
  try dsimp only
  rw [node1539_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1540 input1393)).val
theorem input1541_def : input1541 = (.seq input1540 input1393) := by
  unfold input1541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1540 output1393)).val
theorem output1541_def : output1541 = (.seq output1540 output1393) := by
  unfold output1541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1541_skip : Flapjack.WordAlloc.isSkip output1541 = false := by
  rw [output1541_def]
  conv => lhs; cbv
  try rfl
theorem node1541_eq : Flapjack.WordAlloc.removeDeadStructural input1541 value525 value1 value2 = (output1541, value566, value1) := by
  rw [input1541_def, output1541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1393_eq]
  try dsimp only
  rw [node1540_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1541 input1392)).val
theorem input1542_def : input1542 = (.seq input1541 input1392) := by
  unfold input1542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1541 output1392)).val
theorem output1542_def : output1542 = (.seq output1541 output1392) := by
  unfold output1542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1542_skip : Flapjack.WordAlloc.isSkip output1542 = false := by
  rw [output1542_def]
  conv => lhs; cbv
  try rfl
theorem node1542_eq : Flapjack.WordAlloc.removeDeadStructural input1542 value520 value1 value2 = (output1542, value566, value1) := by
  rw [input1542_def, output1542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1392_eq]
  try dsimp only
  rw [node1541_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1542 input1365)).val
theorem input1543_def : input1543 = (.seq input1542 input1365) := by
  unfold input1543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1542 output1365)).val
theorem output1543_def : output1543 = (.seq output1542 output1365) := by
  unfold output1543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1543_skip : Flapjack.WordAlloc.isSkip output1543 = false := by
  rw [output1543_def]
  conv => lhs; cbv
  try rfl
theorem node1543_eq : Flapjack.WordAlloc.removeDeadStructural input1543 value520 value1 value2 = (output1543, value566, value1) := by
  rw [input1543_def, output1543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1365_eq]
  try dsimp only
  rw [node1542_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1543 input1364)).val
theorem input1544_def : input1544 = (.seq input1543 input1364) := by
  unfold input1544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1543 output1364)).val
theorem output1544_def : output1544 = (.seq output1543 output1364) := by
  unfold output1544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1544_skip : Flapjack.WordAlloc.isSkip output1544 = false := by
  rw [output1544_def]
  conv => lhs; cbv
  try rfl
theorem node1544_eq : Flapjack.WordAlloc.removeDeadStructural input1544 value517 value1 value2 = (output1544, value566, value1) := by
  rw [input1544_def, output1544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1364_eq]
  try dsimp only
  rw [node1543_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1544 input1359)).val
theorem input1545_def : input1545 = (.seq input1544 input1359) := by
  unfold input1545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1544 output1359)).val
theorem output1545_def : output1545 = (.seq output1544 output1359) := by
  unfold output1545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1545_skip : Flapjack.WordAlloc.isSkip output1545 = false := by
  rw [output1545_def]
  conv => lhs; cbv
  try rfl
theorem node1545_eq : Flapjack.WordAlloc.removeDeadStructural input1545 value455 value1 value2 = (output1545, value566, value1) := by
  rw [input1545_def, output1545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1359_eq]
  try dsimp only
  rw [node1544_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1545 input1092)).val
theorem input1546_def : input1546 = (.seq input1545 input1092) := by
  unfold input1546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1545 output1092)).val
theorem output1546_def : output1546 = (.seq output1545 output1092) := by
  unfold output1546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1546_skip : Flapjack.WordAlloc.isSkip output1546 = false := by
  rw [output1546_def]
  conv => lhs; cbv
  try rfl
theorem node1546_eq : Flapjack.WordAlloc.removeDeadStructural input1546 value455 value1 value2 = (output1546, value566, value1) := by
  rw [input1546_def, output1546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1092_eq]
  try dsimp only
  rw [node1545_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1546 input1091)).val
theorem input1547_def : input1547 = (.seq input1546 input1091) := by
  unfold input1547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1546 output1091)).val
theorem output1547_def : output1547 = (.seq output1546 output1091) := by
  unfold output1547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1547_skip : Flapjack.WordAlloc.isSkip output1547 = false := by
  rw [output1547_def]
  conv => lhs; cbv
  try rfl
theorem node1547_eq : Flapjack.WordAlloc.removeDeadStructural input1547 value454 value1 value2 = (output1547, value566, value1) := by
  rw [input1547_def, output1547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1091_eq]
  try dsimp only
  rw [node1546_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1547 input1090)).val
theorem input1548_def : input1548 = (.seq input1547 input1090) := by
  unfold input1548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1547 output1090)).val
theorem output1548_def : output1548 = (.seq output1547 output1090) := by
  unfold output1548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1548_skip : Flapjack.WordAlloc.isSkip output1548 = false := by
  rw [output1548_def]
  conv => lhs; cbv
  try rfl
theorem node1548_eq : Flapjack.WordAlloc.removeDeadStructural input1548 value451 value1 value2 = (output1548, value566, value1) := by
  rw [input1548_def, output1548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1090_eq]
  try dsimp only
  rw [node1547_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1548 input1089)).val
theorem input1549_def : input1549 = (.seq input1548 input1089) := by
  unfold input1549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1548 output1089)).val
theorem output1549_def : output1549 = (.seq output1548 output1089) := by
  unfold output1549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1549_skip : Flapjack.WordAlloc.isSkip output1549 = false := by
  rw [output1549_def]
  conv => lhs; cbv
  try rfl
theorem node1549_eq : Flapjack.WordAlloc.removeDeadStructural input1549 value453 value1 value2 = (output1549, value566, value1) := by
  rw [input1549_def, output1549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1089_eq]
  try dsimp only
  rw [node1548_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1549 input1088)).val
theorem input1550_def : input1550 = (.seq input1549 input1088) := by
  unfold input1550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1549 output1088)).val
theorem output1550_def : output1550 = (.seq output1549 output1088) := by
  unfold output1550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1550_skip : Flapjack.WordAlloc.isSkip output1550 = false := by
  rw [output1550_def]
  conv => lhs; cbv
  try rfl
theorem node1550_eq : Flapjack.WordAlloc.removeDeadStructural input1550 value451 value1 value2 = (output1550, value566, value1) := by
  rw [input1550_def, output1550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1088_eq]
  try dsimp only
  rw [node1549_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1550 input1085)).val
theorem input1551_def : input1551 = (.seq input1550 input1085) := by
  unfold input1551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1550 output1085)).val
theorem output1551_def : output1551 = (.seq output1550 output1085) := by
  unfold output1551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1551_skip : Flapjack.WordAlloc.isSkip output1551 = false := by
  rw [output1551_def]
  conv => lhs; cbv
  try rfl
theorem node1551_eq : Flapjack.WordAlloc.removeDeadStructural input1551 value450 value1 value2 = (output1551, value566, value1) := by
  rw [input1551_def, output1551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1085_eq]
  try dsimp only
  rw [node1550_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1551 input1084)).val
theorem input1552_def : input1552 = (.seq input1551 input1084) := by
  unfold input1552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1551 output1084)).val
theorem output1552_def : output1552 = (.seq output1551 output1084) := by
  unfold output1552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1552_skip : Flapjack.WordAlloc.isSkip output1552 = false := by
  rw [output1552_def]
  conv => lhs; cbv
  try rfl
theorem node1552_eq : Flapjack.WordAlloc.removeDeadStructural input1552 value449 value1 value2 = (output1552, value566, value1) := by
  rw [input1552_def, output1552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1084_eq]
  try dsimp only
  rw [node1551_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1552 input1083)).val
theorem input1553_def : input1553 = (.seq input1552 input1083) := by
  unfold input1553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1552 output1083)).val
theorem output1553_def : output1553 = (.seq output1552 output1083) := by
  unfold output1553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1553_skip : Flapjack.WordAlloc.isSkip output1553 = false := by
  rw [output1553_def]
  conv => lhs; cbv
  try rfl
theorem node1553_eq : Flapjack.WordAlloc.removeDeadStructural input1553 value443 value1 value2 = (output1553, value566, value1) := by
  rw [input1553_def, output1553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1083_eq]
  try dsimp only
  rw [node1552_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1553 input1050)).val
theorem input1554_def : input1554 = (.seq input1553 input1050) := by
  unfold input1554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1553 output1050)).val
theorem output1554_def : output1554 = (.seq output1553 output1050) := by
  unfold output1554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1554_skip : Flapjack.WordAlloc.isSkip output1554 = false := by
  rw [output1554_def]
  conv => lhs; cbv
  try rfl
theorem node1554_eq : Flapjack.WordAlloc.removeDeadStructural input1554 value443 value1 value2 = (output1554, value566, value1) := by
  rw [input1554_def, output1554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1050_eq]
  try dsimp only
  rw [node1553_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1554 input1049)).val
theorem input1555_def : input1555 = (.seq input1554 input1049) := by
  unfold input1555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1554 output1049)).val
theorem output1555_def : output1555 = (.seq output1554 output1049) := by
  unfold output1555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1555_skip : Flapjack.WordAlloc.isSkip output1555 = false := by
  rw [output1555_def]
  conv => lhs; cbv
  try rfl
theorem node1555_eq : Flapjack.WordAlloc.removeDeadStructural input1555 value442 value1 value2 = (output1555, value566, value1) := by
  rw [input1555_def, output1555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1049_eq]
  try dsimp only
  rw [node1554_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1555 input1048)).val
theorem input1556_def : input1556 = (.seq input1555 input1048) := by
  unfold input1556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1555 output1048)).val
theorem output1556_def : output1556 = (.seq output1555 output1048) := by
  unfold output1556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1556_skip : Flapjack.WordAlloc.isSkip output1556 = false := by
  rw [output1556_def]
  conv => lhs; cbv
  try rfl
theorem node1556_eq : Flapjack.WordAlloc.removeDeadStructural input1556 value441 value1 value2 = (output1556, value566, value1) := by
  rw [input1556_def, output1556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1048_eq]
  try dsimp only
  rw [node1555_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1556 input1047)).val
theorem input1557_def : input1557 = (.seq input1556 input1047) := by
  unfold input1557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1556 output1047)).val
theorem output1557_def : output1557 = (.seq output1556 output1047) := by
  unfold output1557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1557_skip : Flapjack.WordAlloc.isSkip output1557 = false := by
  rw [output1557_def]
  conv => lhs; cbv
  try rfl
theorem node1557_eq : Flapjack.WordAlloc.removeDeadStructural input1557 value438 value1 value2 = (output1557, value566, value1) := by
  rw [input1557_def, output1557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1047_eq]
  try dsimp only
  rw [node1556_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1557 input1042)).val
theorem input1558_def : input1558 = (.seq input1557 input1042) := by
  unfold input1558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1557 output1042)).val
theorem output1558_def : output1558 = (.seq output1557 output1042) := by
  unfold output1558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1558_skip : Flapjack.WordAlloc.isSkip output1558 = false := by
  rw [output1558_def]
  conv => lhs; cbv
  try rfl
theorem node1558_eq : Flapjack.WordAlloc.removeDeadStructural input1558 value438 value1 value2 = (output1558, value566, value1) := by
  rw [input1558_def, output1558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1042_eq]
  try dsimp only
  rw [node1557_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1558 input1041)).val
theorem input1559_def : input1559 = (.seq input1558 input1041) := by
  unfold input1559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1558 output1041)).val
theorem output1559_def : output1559 = (.seq output1558 output1041) := by
  unfold output1559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1559_skip : Flapjack.WordAlloc.isSkip output1559 = false := by
  rw [output1559_def]
  conv => lhs; cbv
  try rfl
theorem node1559_eq : Flapjack.WordAlloc.removeDeadStructural input1559 value437 value1 value2 = (output1559, value566, value1) := by
  rw [input1559_def, output1559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1041_eq]
  try dsimp only
  rw [node1558_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1559 input1040)).val
theorem input1560_def : input1560 = (.seq input1559 input1040) := by
  unfold input1560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1559 output1040)).val
theorem output1560_def : output1560 = (.seq output1559 output1040) := by
  unfold output1560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1560_skip : Flapjack.WordAlloc.isSkip output1560 = false := by
  rw [output1560_def]
  conv => lhs; cbv
  try rfl
theorem node1560_eq : Flapjack.WordAlloc.removeDeadStructural input1560 value436 value1 value2 = (output1560, value566, value1) := by
  rw [input1560_def, output1560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1040_eq]
  try dsimp only
  rw [node1559_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1560 input1039)).val
theorem input1561_def : input1561 = (.seq input1560 input1039) := by
  unfold input1561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1560 output1039)).val
theorem output1561_def : output1561 = (.seq output1560 output1039) := by
  unfold output1561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1561_skip : Flapjack.WordAlloc.isSkip output1561 = false := by
  rw [output1561_def]
  conv => lhs; cbv
  try rfl
theorem node1561_eq : Flapjack.WordAlloc.removeDeadStructural input1561 value435 value1 value2 = (output1561, value566, value1) := by
  rw [input1561_def, output1561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1039_eq]
  try dsimp only
  rw [node1560_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1561 input1038)).val
theorem input1562_def : input1562 = (.seq input1561 input1038) := by
  unfold input1562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1561 output1038)).val
theorem output1562_def : output1562 = (.seq output1561 output1038) := by
  unfold output1562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1562_skip : Flapjack.WordAlloc.isSkip output1562 = false := by
  rw [output1562_def]
  conv => lhs; cbv
  try rfl
theorem node1562_eq : Flapjack.WordAlloc.removeDeadStructural input1562 value428 value1 value2 = (output1562, value566, value1) := by
  rw [input1562_def, output1562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1038_eq]
  try dsimp only
  rw [node1561_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1562 input993)).val
theorem input1563_def : input1563 = (.seq input1562 input993) := by
  unfold input1563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1562 output993)).val
theorem output1563_def : output1563 = (.seq output1562 output993) := by
  unfold output1563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1563_skip : Flapjack.WordAlloc.isSkip output1563 = false := by
  rw [output1563_def]
  conv => lhs; cbv
  try rfl
theorem node1563_eq : Flapjack.WordAlloc.removeDeadStructural input1563 value428 value1 value2 = (output1563, value566, value1) := by
  rw [input1563_def, output1563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node993_eq]
  try dsimp only
  rw [node1562_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1563 input992)).val
theorem input1564_def : input1564 = (.seq input1563 input992) := by
  unfold input1564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1563 output992)).val
theorem output1564_def : output1564 = (.seq output1563 output992) := by
  unfold output1564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1564_skip : Flapjack.WordAlloc.isSkip output1564 = false := by
  rw [output1564_def]
  conv => lhs; cbv
  try rfl
theorem node1564_eq : Flapjack.WordAlloc.removeDeadStructural input1564 value427 value1 value2 = (output1564, value566, value1) := by
  rw [input1564_def, output1564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node992_eq]
  try dsimp only
  rw [node1563_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1564 input991)).val
theorem input1565_def : input1565 = (.seq input1564 input991) := by
  unfold input1565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1564 output991)).val
theorem output1565_def : output1565 = (.seq output1564 output991) := by
  unfold output1565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1565_skip : Flapjack.WordAlloc.isSkip output1565 = false := by
  rw [output1565_def]
  conv => lhs; cbv
  try rfl
theorem node1565_eq : Flapjack.WordAlloc.removeDeadStructural input1565 value424 value1 value2 = (output1565, value566, value1) := by
  rw [input1565_def, output1565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node991_eq]
  try dsimp only
  rw [node1564_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1565 input990)).val
theorem input1566_def : input1566 = (.seq input1565 input990) := by
  unfold input1566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1565 output990)).val
theorem output1566_def : output1566 = (.seq output1565 output990) := by
  unfold output1566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1566_skip : Flapjack.WordAlloc.isSkip output1566 = false := by
  rw [output1566_def]
  conv => lhs; cbv
  try rfl
theorem node1566_eq : Flapjack.WordAlloc.removeDeadStructural input1566 value426 value1 value2 = (output1566, value566, value1) := by
  rw [input1566_def, output1566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node990_eq]
  try dsimp only
  rw [node1565_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1566 input989)).val
theorem input1567_def : input1567 = (.seq input1566 input989) := by
  unfold input1567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1566 output989)).val
theorem output1567_def : output1567 = (.seq output1566 output989) := by
  unfold output1567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1567_skip : Flapjack.WordAlloc.isSkip output1567 = false := by
  rw [output1567_def]
  conv => lhs; cbv
  try rfl
theorem node1567_eq : Flapjack.WordAlloc.removeDeadStructural input1567 value408 value1 value2 = (output1567, value566, value1) := by
  rw [input1567_def, output1567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node989_eq]
  try dsimp only
  rw [node1566_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1567 input912)).val
theorem input1568_def : input1568 = (.seq input1567 input912) := by
  unfold input1568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1567 output912)).val
theorem output1568_def : output1568 = (.seq output1567 output912) := by
  unfold output1568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1568_skip : Flapjack.WordAlloc.isSkip output1568 = false := by
  rw [output1568_def]
  conv => lhs; cbv
  try rfl
theorem node1568_eq : Flapjack.WordAlloc.removeDeadStructural input1568 value408 value1 value2 = (output1568, value566, value1) := by
  rw [input1568_def, output1568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node912_eq]
  try dsimp only
  rw [node1567_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1568 input911)).val
theorem input1569_def : input1569 = (.seq input1568 input911) := by
  unfold input1569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1568 output911)).val
theorem output1569_def : output1569 = (.seq output1568 output911) := by
  unfold output1569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1569_skip : Flapjack.WordAlloc.isSkip output1569 = false := by
  rw [output1569_def]
  conv => lhs; cbv
  try rfl
theorem node1569_eq : Flapjack.WordAlloc.removeDeadStructural input1569 value399 value1 value2 = (output1569, value566, value1) := by
  rw [input1569_def, output1569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node911_eq]
  try dsimp only
  rw [node1568_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1569 input910)).val
theorem input1570_def : input1570 = (.seq input1569 input910) := by
  unfold input1570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1569 output910)).val
theorem output1570_def : output1570 = (.seq output1569 output910) := by
  unfold output1570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1570_skip : Flapjack.WordAlloc.isSkip output1570 = false := by
  rw [output1570_def]
  conv => lhs; cbv
  try rfl
theorem node1570_eq : Flapjack.WordAlloc.removeDeadStructural input1570 value407 value1 value2 = (output1570, value566, value1) := by
  rw [input1570_def, output1570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node910_eq]
  try dsimp only
  rw [node1569_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1570 input909)).val
theorem input1571_def : input1571 = (.seq input1570 input909) := by
  unfold input1571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1570 output909)).val
theorem output1571_def : output1571 = (.seq output1570 output909) := by
  unfold output1571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1571_skip : Flapjack.WordAlloc.isSkip output1571 = false := by
  rw [output1571_def]
  conv => lhs; cbv
  try rfl
theorem node1571_eq : Flapjack.WordAlloc.removeDeadStructural input1571 value387 value1 value2 = (output1571, value566, value1) := by
  rw [input1571_def, output1571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node909_eq]
  try dsimp only
  rw [node1570_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1571 input836)).val
theorem input1572_def : input1572 = (.seq input1571 input836) := by
  unfold input1572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1571 output836)).val
theorem output1572_def : output1572 = (.seq output1571 output836) := by
  unfold output1572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1572_skip : Flapjack.WordAlloc.isSkip output1572 = false := by
  rw [output1572_def]
  conv => lhs; cbv
  try rfl
theorem node1572_eq : Flapjack.WordAlloc.removeDeadStructural input1572 value387 value1 value2 = (output1572, value566, value1) := by
  rw [input1572_def, output1572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node836_eq]
  try dsimp only
  rw [node1571_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1572 input835)).val
theorem input1573_def : input1573 = (.seq input1572 input835) := by
  unfold input1573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1572 output835)).val
theorem output1573_def : output1573 = (.seq output1572 output835) := by
  unfold output1573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1573_skip : Flapjack.WordAlloc.isSkip output1573 = false := by
  rw [output1573_def]
  conv => lhs; cbv
  try rfl
theorem node1573_eq : Flapjack.WordAlloc.removeDeadStructural input1573 value385 value1 value2 = (output1573, value566, value1) := by
  rw [input1573_def, output1573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node835_eq]
  try dsimp only
  rw [node1572_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1573 input832)).val
theorem input1574_def : input1574 = (.seq input1573 input832) := by
  unfold input1574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1573 output832)).val
theorem output1574_def : output1574 = (.seq output1573 output832) := by
  unfold output1574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1574_skip : Flapjack.WordAlloc.isSkip output1574 = false := by
  rw [output1574_def]
  conv => lhs; cbv
  try rfl
theorem node1574_eq : Flapjack.WordAlloc.removeDeadStructural input1574 value384 value1 value2 = (output1574, value566, value1) := by
  rw [input1574_def, output1574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node832_eq]
  try dsimp only
  rw [node1573_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1574 input831)).val
theorem input1575_def : input1575 = (.seq input1574 input831) := by
  unfold input1575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1574 output831)).val
theorem output1575_def : output1575 = (.seq output1574 output831) := by
  unfold output1575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1575_skip : Flapjack.WordAlloc.isSkip output1575 = false := by
  rw [output1575_def]
  conv => lhs; cbv
  try rfl
theorem node1575_eq : Flapjack.WordAlloc.removeDeadStructural input1575 value383 value1 value2 = (output1575, value566, value1) := by
  rw [input1575_def, output1575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node831_eq]
  try dsimp only
  rw [node1574_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1575 input830)).val
theorem input1576_def : input1576 = (.seq input1575 input830) := by
  unfold input1576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1575 output830)).val
theorem output1576_def : output1576 = (.seq output1575 output830) := by
  unfold output1576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1576_skip : Flapjack.WordAlloc.isSkip output1576 = false := by
  rw [output1576_def]
  conv => lhs; cbv
  try rfl
theorem node1576_eq : Flapjack.WordAlloc.removeDeadStructural input1576 value382 value1 value2 = (output1576, value566, value1) := by
  rw [input1576_def, output1576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node830_eq]
  try dsimp only
  rw [node1575_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1576 input829)).val
theorem input1577_def : input1577 = (.seq input1576 input829) := by
  unfold input1577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1576 output829)).val
theorem output1577_def : output1577 = (.seq output1576 output829) := by
  unfold output1577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1577_skip : Flapjack.WordAlloc.isSkip output1577 = false := by
  rw [output1577_def]
  conv => lhs; cbv
  try rfl
theorem node1577_eq : Flapjack.WordAlloc.removeDeadStructural input1577 value381 value1 value2 = (output1577, value566, value1) := by
  rw [input1577_def, output1577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node829_eq]
  try dsimp only
  rw [node1576_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1577 input828)).val
theorem input1578_def : input1578 = (.seq input1577 input828) := by
  unfold input1578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1577 output828)).val
theorem output1578_def : output1578 = (.seq output1577 output828) := by
  unfold output1578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1578_skip : Flapjack.WordAlloc.isSkip output1578 = false := by
  rw [output1578_def]
  conv => lhs; cbv
  try rfl
theorem node1578_eq : Flapjack.WordAlloc.removeDeadStructural input1578 value380 value1 value2 = (output1578, value566, value1) := by
  rw [input1578_def, output1578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node828_eq]
  try dsimp only
  rw [node1577_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1578 input827)).val
theorem input1579_def : input1579 = (.seq input1578 input827) := by
  unfold input1579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1578 output827)).val
theorem output1579_def : output1579 = (.seq output1578 output827) := by
  unfold output1579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1579_skip : Flapjack.WordAlloc.isSkip output1579 = false := by
  rw [output1579_def]
  conv => lhs; cbv
  try rfl
theorem node1579_eq : Flapjack.WordAlloc.removeDeadStructural input1579 value378 value1 value2 = (output1579, value566, value1) := by
  rw [input1579_def, output1579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node827_eq]
  try dsimp only
  rw [node1578_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1579 input824)).val
theorem input1580_def : input1580 = (.seq input1579 input824) := by
  unfold input1580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1579 output824)).val
theorem output1580_def : output1580 = (.seq output1579 output824) := by
  unfold output1580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1580_skip : Flapjack.WordAlloc.isSkip output1580 = false := by
  rw [output1580_def]
  conv => lhs; cbv
  try rfl
theorem node1580_eq : Flapjack.WordAlloc.removeDeadStructural input1580 value377 value1 value2 = (output1580, value566, value1) := by
  rw [input1580_def, output1580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node824_eq]
  try dsimp only
  rw [node1579_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1580 input823)).val
theorem input1581_def : input1581 = (.seq input1580 input823) := by
  unfold input1581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1580 output823)).val
theorem output1581_def : output1581 = (.seq output1580 output823) := by
  unfold output1581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1581_skip : Flapjack.WordAlloc.isSkip output1581 = false := by
  rw [output1581_def]
  conv => lhs; cbv
  try rfl
theorem node1581_eq : Flapjack.WordAlloc.removeDeadStructural input1581 value375 value1 value2 = (output1581, value566, value1) := by
  rw [input1581_def, output1581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node823_eq]
  try dsimp only
  rw [node1580_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1581 input820)).val
theorem input1582_def : input1582 = (.seq input1581 input820) := by
  unfold input1582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1581 output820)).val
theorem output1582_def : output1582 = (.seq output1581 output820) := by
  unfold output1582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1582_skip : Flapjack.WordAlloc.isSkip output1582 = false := by
  rw [output1582_def]
  conv => lhs; cbv
  try rfl
theorem node1582_eq : Flapjack.WordAlloc.removeDeadStructural input1582 value374 value1 value2 = (output1582, value566, value1) := by
  rw [input1582_def, output1582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node820_eq]
  try dsimp only
  rw [node1581_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1582 input819)).val
theorem input1583_def : input1583 = (.seq input1582 input819) := by
  unfold input1583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1582 output819)).val
theorem output1583_def : output1583 = (.seq output1582 output819) := by
  unfold output1583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1583_skip : Flapjack.WordAlloc.isSkip output1583 = false := by
  rw [output1583_def]
  conv => lhs; cbv
  try rfl
theorem node1583_eq : Flapjack.WordAlloc.removeDeadStructural input1583 value372 value1 value2 = (output1583, value566, value1) := by
  rw [input1583_def, output1583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node819_eq]
  try dsimp only
  rw [node1582_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1583 input816)).val
theorem input1584_def : input1584 = (.seq input1583 input816) := by
  unfold input1584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1583 output816)).val
theorem output1584_def : output1584 = (.seq output1583 output816) := by
  unfold output1584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1584_skip : Flapjack.WordAlloc.isSkip output1584 = false := by
  rw [output1584_def]
  conv => lhs; cbv
  try rfl
theorem node1584_eq : Flapjack.WordAlloc.removeDeadStructural input1584 value371 value1 value2 = (output1584, value566, value1) := by
  rw [input1584_def, output1584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node816_eq]
  try dsimp only
  rw [node1583_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1584 input815)).val
theorem input1585_def : input1585 = (.seq input1584 input815) := by
  unfold input1585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1584 output815)).val
theorem output1585_def : output1585 = (.seq output1584 output815) := by
  unfold output1585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1585_skip : Flapjack.WordAlloc.isSkip output1585 = false := by
  rw [output1585_def]
  conv => lhs; cbv
  try rfl
theorem node1585_eq : Flapjack.WordAlloc.removeDeadStructural input1585 value369 value1 value2 = (output1585, value566, value1) := by
  rw [input1585_def, output1585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node815_eq]
  try dsimp only
  rw [node1584_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1585 input812)).val
theorem input1586_def : input1586 = (.seq input1585 input812) := by
  unfold input1586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1585 output812)).val
theorem output1586_def : output1586 = (.seq output1585 output812) := by
  unfold output1586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1586_skip : Flapjack.WordAlloc.isSkip output1586 = false := by
  rw [output1586_def]
  conv => lhs; cbv
  try rfl
theorem node1586_eq : Flapjack.WordAlloc.removeDeadStructural input1586 value367 value1 value2 = (output1586, value566, value1) := by
  rw [input1586_def, output1586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node812_eq]
  try dsimp only
  rw [node1585_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1586 input809)).val
theorem input1587_def : input1587 = (.seq input1586 input809) := by
  unfold input1587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1586 output809)).val
theorem output1587_def : output1587 = (.seq output1586 output809) := by
  unfold output1587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1587_skip : Flapjack.WordAlloc.isSkip output1587 = false := by
  rw [output1587_def]
  conv => lhs; cbv
  try rfl
theorem node1587_eq : Flapjack.WordAlloc.removeDeadStructural input1587 value366 value1 value2 = (output1587, value566, value1) := by
  rw [input1587_def, output1587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node809_eq]
  try dsimp only
  rw [node1586_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1587 input808)).val
theorem input1588_def : input1588 = (.seq input1587 input808) := by
  unfold input1588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1587 output808)).val
theorem output1588_def : output1588 = (.seq output1587 output808) := by
  unfold output1588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1588_skip : Flapjack.WordAlloc.isSkip output1588 = false := by
  rw [output1588_def]
  conv => lhs; cbv
  try rfl
theorem node1588_eq : Flapjack.WordAlloc.removeDeadStructural input1588 value365 value1 value2 = (output1588, value566, value1) := by
  rw [input1588_def, output1588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node808_eq]
  try dsimp only
  rw [node1587_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1588 input807)).val
theorem input1589_def : input1589 = (.seq input1588 input807) := by
  unfold input1589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1588 output807)).val
theorem output1589_def : output1589 = (.seq output1588 output807) := by
  unfold output1589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1589_skip : Flapjack.WordAlloc.isSkip output1589 = false := by
  rw [output1589_def]
  conv => lhs; cbv
  try rfl
theorem node1589_eq : Flapjack.WordAlloc.removeDeadStructural input1589 value364 value1 value2 = (output1589, value566, value1) := by
  rw [input1589_def, output1589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node807_eq]
  try dsimp only
  rw [node1588_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1589 input806)).val
theorem input1590_def : input1590 = (.seq input1589 input806) := by
  unfold input1590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1589 output806)).val
theorem output1590_def : output1590 = (.seq output1589 output806) := by
  unfold output1590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1590_skip : Flapjack.WordAlloc.isSkip output1590 = false := by
  rw [output1590_def]
  conv => lhs; cbv
  try rfl
theorem node1590_eq : Flapjack.WordAlloc.removeDeadStructural input1590 value282 value1 value2 = (output1590, value566, value1) := by
  rw [input1590_def, output1590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node806_eq]
  try dsimp only
  rw [node1589_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1590 input611)).val
theorem input1591_def : input1591 = (.seq input1590 input611) := by
  unfold input1591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1590 output611)).val
theorem output1591_def : output1591 = (.seq output1590 output611) := by
  unfold output1591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1591_skip : Flapjack.WordAlloc.isSkip output1591 = false := by
  rw [output1591_def]
  conv => lhs; cbv
  try rfl
theorem node1591_eq : Flapjack.WordAlloc.removeDeadStructural input1591 value282 value1 value2 = (output1591, value566, value1) := by
  rw [input1591_def, output1591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node611_eq]
  try dsimp only
  rw [node1590_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1591 input610)).val
theorem input1592_def : input1592 = (.seq input1591 input610) := by
  unfold input1592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1591 output610)).val
theorem output1592_def : output1592 = (.seq output1591 output610) := by
  unfold output1592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1592_skip : Flapjack.WordAlloc.isSkip output1592 = false := by
  rw [output1592_def]
  conv => lhs; cbv
  try rfl
theorem node1592_eq : Flapjack.WordAlloc.removeDeadStructural input1592 value281 value1 value2 = (output1592, value566, value1) := by
  rw [input1592_def, output1592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node610_eq]
  try dsimp only
  rw [node1591_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1592 input609)).val
theorem input1593_def : input1593 = (.seq input1592 input609) := by
  unfold input1593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1592 output609)).val
theorem output1593_def : output1593 = (.seq output1592 output609) := by
  unfold output1593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1593_skip : Flapjack.WordAlloc.isSkip output1593 = false := by
  rw [output1593_def]
  conv => lhs; cbv
  try rfl
theorem node1593_eq : Flapjack.WordAlloc.removeDeadStructural input1593 value280 value1 value2 = (output1593, value566, value1) := by
  rw [input1593_def, output1593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node609_eq]
  try dsimp only
  rw [node1592_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1593 input608)).val
theorem input1594_def : input1594 = (.seq input1593 input608) := by
  unfold input1594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1593)).val
theorem output1594_def : output1594 = (output1593) := by
  unfold output1594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1594_skip : Flapjack.WordAlloc.isSkip output1594 = false := by
  rw [output1594_def]
  conv => lhs; cbv
  try rfl
theorem node1594_eq : Flapjack.WordAlloc.removeDeadStructural input1594 value280 value1 value2 = (output1594, value566, value1) := by
  rw [input1594_def, output1594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node608_eq]
  try dsimp only
  rw [node1593_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1594 input607)).val
theorem input1595_def : input1595 = (.seq input1594 input607) := by
  unfold input1595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1594)).val
theorem output1595_def : output1595 = (output1594) := by
  unfold output1595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1595_skip : Flapjack.WordAlloc.isSkip output1595 = false := by
  rw [output1595_def]
  conv => lhs; cbv
  try rfl
theorem node1595_eq : Flapjack.WordAlloc.removeDeadStructural input1595 value280 value1 value2 = (output1595, value566, value1) := by
  rw [input1595_def, output1595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node607_eq]
  try dsimp only
  rw [node1594_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1595 input606)).val
theorem input1596_def : input1596 = (.seq input1595 input606) := by
  unfold input1596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1595 output606)).val
theorem output1596_def : output1596 = (.seq output1595 output606) := by
  unfold output1596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1596_skip : Flapjack.WordAlloc.isSkip output1596 = false := by
  rw [output1596_def]
  conv => lhs; cbv
  try rfl
theorem node1596_eq : Flapjack.WordAlloc.removeDeadStructural input1596 value279 value1 value2 = (output1596, value566, value1) := by
  rw [input1596_def, output1596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node606_eq]
  try dsimp only
  rw [node1595_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1596 input605)).val
theorem input1597_def : input1597 = (.seq input1596 input605) := by
  unfold input1597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1596 output605)).val
theorem output1597_def : output1597 = (.seq output1596 output605) := by
  unfold output1597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1597_skip : Flapjack.WordAlloc.isSkip output1597 = false := by
  rw [output1597_def]
  conv => lhs; cbv
  try rfl
theorem node1597_eq : Flapjack.WordAlloc.removeDeadStructural input1597 value278 value1 value2 = (output1597, value566, value1) := by
  rw [input1597_def, output1597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node605_eq]
  try dsimp only
  rw [node1596_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1597 input604)).val
theorem input1598_def : input1598 = (.seq input1597 input604) := by
  unfold input1598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1597 output604)).val
theorem output1598_def : output1598 = (.seq output1597 output604) := by
  unfold output1598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1598_skip : Flapjack.WordAlloc.isSkip output1598 = false := by
  rw [output1598_def]
  conv => lhs; cbv
  try rfl
theorem node1598_eq : Flapjack.WordAlloc.removeDeadStructural input1598 value275 value1 value2 = (output1598, value566, value1) := by
  rw [input1598_def, output1598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node604_eq]
  try dsimp only
  rw [node1597_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1598 input599)).val
theorem input1599_def : input1599 = (.seq input1598 input599) := by
  unfold input1599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1598 output599)).val
theorem output1599_def : output1599 = (.seq output1598 output599) := by
  unfold output1599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1599_skip : Flapjack.WordAlloc.isSkip output1599 = false := by
  rw [output1599_def]
  conv => lhs; cbv
  try rfl
theorem node1599_eq : Flapjack.WordAlloc.removeDeadStructural input1599 value275 value1 value2 = (output1599, value566, value1) := by
  rw [input1599_def, output1599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node599_eq]
  try dsimp only
  rw [node1598_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1599 input598)).val
theorem input1600_def : input1600 = (.seq input1599 input598) := by
  unfold input1600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1599 output598)).val
theorem output1600_def : output1600 = (.seq output1599 output598) := by
  unfold output1600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1600_skip : Flapjack.WordAlloc.isSkip output1600 = false := by
  rw [output1600_def]
  conv => lhs; cbv
  try rfl
theorem node1600_eq : Flapjack.WordAlloc.removeDeadStructural input1600 value273 value1 value2 = (output1600, value566, value1) := by
  rw [input1600_def, output1600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node598_eq]
  try dsimp only
  rw [node1599_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1600 input595)).val
theorem input1601_def : input1601 = (.seq input1600 input595) := by
  unfold input1601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1600 output595)).val
theorem output1601_def : output1601 = (.seq output1600 output595) := by
  unfold output1601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1601_skip : Flapjack.WordAlloc.isSkip output1601 = false := by
  rw [output1601_def]
  conv => lhs; cbv
  try rfl
theorem node1601_eq : Flapjack.WordAlloc.removeDeadStructural input1601 value272 value1 value2 = (output1601, value566, value1) := by
  rw [input1601_def, output1601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node595_eq]
  try dsimp only
  rw [node1600_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1601 input594)).val
theorem input1602_def : input1602 = (.seq input1601 input594) := by
  unfold input1602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1601 output594)).val
theorem output1602_def : output1602 = (.seq output1601 output594) := by
  unfold output1602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1602_skip : Flapjack.WordAlloc.isSkip output1602 = false := by
  rw [output1602_def]
  conv => lhs; cbv
  try rfl
theorem node1602_eq : Flapjack.WordAlloc.removeDeadStructural input1602 value271 value1 value2 = (output1602, value566, value1) := by
  rw [input1602_def, output1602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node594_eq]
  try dsimp only
  rw [node1601_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1602 input593)).val
theorem input1603_def : input1603 = (.seq input1602 input593) := by
  unfold input1603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1602 output593)).val
theorem output1603_def : output1603 = (.seq output1602 output593) := by
  unfold output1603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1603_skip : Flapjack.WordAlloc.isSkip output1603 = false := by
  rw [output1603_def]
  conv => lhs; cbv
  try rfl
theorem node1603_eq : Flapjack.WordAlloc.removeDeadStructural input1603 value269 value1 value2 = (output1603, value566, value1) := by
  rw [input1603_def, output1603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node593_eq]
  try dsimp only
  rw [node1602_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1603 input590)).val
theorem input1604_def : input1604 = (.seq input1603 input590) := by
  unfold input1604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1603 output590)).val
theorem output1604_def : output1604 = (.seq output1603 output590) := by
  unfold output1604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1604_skip : Flapjack.WordAlloc.isSkip output1604 = false := by
  rw [output1604_def]
  conv => lhs; cbv
  try rfl
theorem node1604_eq : Flapjack.WordAlloc.removeDeadStructural input1604 value267 value1 value2 = (output1604, value566, value1) := by
  rw [input1604_def, output1604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node590_eq]
  try dsimp only
  rw [node1603_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1604 input587)).val
theorem input1605_def : input1605 = (.seq input1604 input587) := by
  unfold input1605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1604 output587)).val
theorem output1605_def : output1605 = (.seq output1604 output587) := by
  unfold output1605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1605_skip : Flapjack.WordAlloc.isSkip output1605 = false := by
  rw [output1605_def]
  conv => lhs; cbv
  try rfl
theorem node1605_eq : Flapjack.WordAlloc.removeDeadStructural input1605 value266 value1 value2 = (output1605, value566, value1) := by
  rw [input1605_def, output1605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node587_eq]
  try dsimp only
  rw [node1604_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1605 input586)).val
theorem input1606_def : input1606 = (.seq input1605 input586) := by
  unfold input1606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1605 output586)).val
theorem output1606_def : output1606 = (.seq output1605 output586) := by
  unfold output1606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1606_skip : Flapjack.WordAlloc.isSkip output1606 = false := by
  rw [output1606_def]
  conv => lhs; cbv
  try rfl
theorem node1606_eq : Flapjack.WordAlloc.removeDeadStructural input1606 value257 value1 value2 = (output1606, value566, value1) := by
  rw [input1606_def, output1606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node586_eq]
  try dsimp only
  rw [node1605_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1606 input585)).val
theorem input1607_def : input1607 = (.seq input1606 input585) := by
  unfold input1607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1606 output585)).val
theorem output1607_def : output1607 = (.seq output1606 output585) := by
  unfold output1607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1607_skip : Flapjack.WordAlloc.isSkip output1607 = false := by
  rw [output1607_def]
  conv => lhs; cbv
  try rfl
theorem node1607_eq : Flapjack.WordAlloc.removeDeadStructural input1607 value265 value1 value2 = (output1607, value566, value1) := by
  rw [input1607_def, output1607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node585_eq]
  try dsimp only
  rw [node1606_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1607 input584)).val
theorem input1608_def : input1608 = (.seq input1607 input584) := by
  unfold input1608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1607 output584)).val
theorem output1608_def : output1608 = (.seq output1607 output584) := by
  unfold output1608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1608_skip : Flapjack.WordAlloc.isSkip output1608 = false := by
  rw [output1608_def]
  conv => lhs; cbv
  try rfl
theorem node1608_eq : Flapjack.WordAlloc.removeDeadStructural input1608 value250 value1 value2 = (output1608, value566, value1) := by
  rw [input1608_def, output1608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node584_eq]
  try dsimp only
  rw [node1607_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1608 input535)).val
theorem input1609_def : input1609 = (.seq input1608 input535) := by
  unfold input1609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1608 output535)).val
theorem output1609_def : output1609 = (.seq output1608 output535) := by
  unfold output1609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1609_skip : Flapjack.WordAlloc.isSkip output1609 = false := by
  rw [output1609_def]
  conv => lhs; cbv
  try rfl
theorem node1609_eq : Flapjack.WordAlloc.removeDeadStructural input1609 value250 value1 value2 = (output1609, value566, value1) := by
  rw [input1609_def, output1609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node535_eq]
  try dsimp only
  rw [node1608_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1609 input534)).val
theorem input1610_def : input1610 = (.seq input1609 input534) := by
  unfold input1610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1609 output534)).val
theorem output1610_def : output1610 = (.seq output1609 output534) := by
  unfold output1610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1610_skip : Flapjack.WordAlloc.isSkip output1610 = false := by
  rw [output1610_def]
  conv => lhs; cbv
  try rfl
theorem node1610_eq : Flapjack.WordAlloc.removeDeadStructural input1610 value248 value1 value2 = (output1610, value566, value1) := by
  rw [input1610_def, output1610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node534_eq]
  try dsimp only
  rw [node1609_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1610 input531)).val
theorem input1611_def : input1611 = (.seq input1610 input531) := by
  unfold input1611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1610 output531)).val
theorem output1611_def : output1611 = (.seq output1610 output531) := by
  unfold output1611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1611_skip : Flapjack.WordAlloc.isSkip output1611 = false := by
  rw [output1611_def]
  conv => lhs; cbv
  try rfl
theorem node1611_eq : Flapjack.WordAlloc.removeDeadStructural input1611 value247 value1 value2 = (output1611, value566, value1) := by
  rw [input1611_def, output1611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node531_eq]
  try dsimp only
  rw [node1610_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1611 input530)).val
theorem input1612_def : input1612 = (.seq input1611 input530) := by
  unfold input1612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1611 output530)).val
theorem output1612_def : output1612 = (.seq output1611 output530) := by
  unfold output1612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1612_skip : Flapjack.WordAlloc.isSkip output1612 = false := by
  rw [output1612_def]
  conv => lhs; cbv
  try rfl
theorem node1612_eq : Flapjack.WordAlloc.removeDeadStructural input1612 value246 value1 value2 = (output1612, value566, value1) := by
  rw [input1612_def, output1612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node530_eq]
  try dsimp only
  rw [node1611_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1612 input529)).val
theorem input1613_def : input1613 = (.seq input1612 input529) := by
  unfold input1613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1612 output529)).val
theorem output1613_def : output1613 = (.seq output1612 output529) := by
  unfold output1613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1613_skip : Flapjack.WordAlloc.isSkip output1613 = false := by
  rw [output1613_def]
  conv => lhs; cbv
  try rfl
theorem node1613_eq : Flapjack.WordAlloc.removeDeadStructural input1613 value244 value1 value2 = (output1613, value566, value1) := by
  rw [input1613_def, output1613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node529_eq]
  try dsimp only
  rw [node1612_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1613 input526)).val
theorem input1614_def : input1614 = (.seq input1613 input526) := by
  unfold input1614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1613 output526)).val
theorem output1614_def : output1614 = (.seq output1613 output526) := by
  unfold output1614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1614_skip : Flapjack.WordAlloc.isSkip output1614 = false := by
  rw [output1614_def]
  conv => lhs; cbv
  try rfl
theorem node1614_eq : Flapjack.WordAlloc.removeDeadStructural input1614 value242 value1 value2 = (output1614, value566, value1) := by
  rw [input1614_def, output1614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node526_eq]
  try dsimp only
  rw [node1613_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1614 input523)).val
theorem input1615_def : input1615 = (.seq input1614 input523) := by
  unfold input1615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1614 output523)).val
theorem output1615_def : output1615 = (.seq output1614 output523) := by
  unfold output1615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1615_skip : Flapjack.WordAlloc.isSkip output1615 = false := by
  rw [output1615_def]
  conv => lhs; cbv
  try rfl
theorem node1615_eq : Flapjack.WordAlloc.removeDeadStructural input1615 value241 value1 value2 = (output1615, value566, value1) := by
  rw [input1615_def, output1615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node523_eq]
  try dsimp only
  rw [node1614_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1615 input522)).val
theorem input1616_def : input1616 = (.seq input1615 input522) := by
  unfold input1616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1615 output522)).val
theorem output1616_def : output1616 = (.seq output1615 output522) := by
  unfold output1616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1616_skip : Flapjack.WordAlloc.isSkip output1616 = false := by
  rw [output1616_def]
  conv => lhs; cbv
  try rfl
theorem node1616_eq : Flapjack.WordAlloc.removeDeadStructural input1616 value240 value1 value2 = (output1616, value566, value1) := by
  rw [input1616_def, output1616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node522_eq]
  try dsimp only
  rw [node1615_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1616 input521)).val
theorem input1617_def : input1617 = (.seq input1616 input521) := by
  unfold input1617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1616 output521)).val
theorem output1617_def : output1617 = (.seq output1616 output521) := by
  unfold output1617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1617_skip : Flapjack.WordAlloc.isSkip output1617 = false := by
  rw [output1617_def]
  conv => lhs; cbv
  try rfl
theorem node1617_eq : Flapjack.WordAlloc.removeDeadStructural input1617 value239 value1 value2 = (output1617, value566, value1) := by
  rw [input1617_def, output1617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node521_eq]
  try dsimp only
  rw [node1616_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1617 input520)).val
theorem input1618_def : input1618 = (.seq input1617 input520) := by
  unfold input1618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1617)).val
theorem output1618_def : output1618 = (output1617) := by
  unfold output1618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1618_skip : Flapjack.WordAlloc.isSkip output1618 = false := by
  rw [output1618_def]
  conv => lhs; cbv
  try rfl
theorem node1618_eq : Flapjack.WordAlloc.removeDeadStructural input1618 value239 value1 value2 = (output1618, value566, value1) := by
  rw [input1618_def, output1618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node520_eq]
  try dsimp only
  rw [node1617_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1618 input519)).val
theorem input1619_def : input1619 = (.seq input1618 input519) := by
  unfold input1619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1618 output519)).val
theorem output1619_def : output1619 = (.seq output1618 output519) := by
  unfold output1619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1619_skip : Flapjack.WordAlloc.isSkip output1619 = false := by
  rw [output1619_def]
  conv => lhs; cbv
  try rfl
theorem node1619_eq : Flapjack.WordAlloc.removeDeadStructural input1619 value238 value1 value2 = (output1619, value566, value1) := by
  rw [input1619_def, output1619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node519_eq]
  try dsimp only
  rw [node1618_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1619 input518)).val
theorem input1620_def : input1620 = (.seq input1619 input518) := by
  unfold input1620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1619 output518)).val
theorem output1620_def : output1620 = (.seq output1619 output518) := by
  unfold output1620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1620_skip : Flapjack.WordAlloc.isSkip output1620 = false := by
  rw [output1620_def]
  conv => lhs; cbv
  try rfl
theorem node1620_eq : Flapjack.WordAlloc.removeDeadStructural input1620 value235 value1 value2 = (output1620, value566, value1) := by
  rw [input1620_def, output1620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node518_eq]
  try dsimp only
  rw [node1619_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1620 input513)).val
theorem input1621_def : input1621 = (.seq input1620 input513) := by
  unfold input1621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1620 output513)).val
theorem output1621_def : output1621 = (.seq output1620 output513) := by
  unfold output1621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1621_skip : Flapjack.WordAlloc.isSkip output1621 = false := by
  rw [output1621_def]
  conv => lhs; cbv
  try rfl
theorem node1621_eq : Flapjack.WordAlloc.removeDeadStructural input1621 value235 value1 value2 = (output1621, value566, value1) := by
  rw [input1621_def, output1621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node513_eq]
  try dsimp only
  rw [node1620_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1621 input512)).val
theorem input1622_def : input1622 = (.seq input1621 input512) := by
  unfold input1622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1621 output512)).val
theorem output1622_def : output1622 = (.seq output1621 output512) := by
  unfold output1622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1622_skip : Flapjack.WordAlloc.isSkip output1622 = false := by
  rw [output1622_def]
  conv => lhs; cbv
  try rfl
theorem node1622_eq : Flapjack.WordAlloc.removeDeadStructural input1622 value233 value1 value2 = (output1622, value566, value1) := by
  rw [input1622_def, output1622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node512_eq]
  try dsimp only
  rw [node1621_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1622 input509)).val
theorem input1623_def : input1623 = (.seq input1622 input509) := by
  unfold input1623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1622 output509)).val
theorem output1623_def : output1623 = (.seq output1622 output509) := by
  unfold output1623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1623_skip : Flapjack.WordAlloc.isSkip output1623 = false := by
  rw [output1623_def]
  conv => lhs; cbv
  try rfl
theorem node1623_eq : Flapjack.WordAlloc.removeDeadStructural input1623 value232 value1 value2 = (output1623, value566, value1) := by
  rw [input1623_def, output1623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node509_eq]
  try dsimp only
  rw [node1622_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1623 input508)).val
theorem input1624_def : input1624 = (.seq input1623 input508) := by
  unfold input1624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1623 output508)).val
theorem output1624_def : output1624 = (.seq output1623 output508) := by
  unfold output1624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1624_skip : Flapjack.WordAlloc.isSkip output1624 = false := by
  rw [output1624_def]
  conv => lhs; cbv
  try rfl
theorem node1624_eq : Flapjack.WordAlloc.removeDeadStructural input1624 value231 value1 value2 = (output1624, value566, value1) := by
  rw [input1624_def, output1624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node508_eq]
  try dsimp only
  rw [node1623_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1624 input507)).val
theorem input1625_def : input1625 = (.seq input1624 input507) := by
  unfold input1625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1624 output507)).val
theorem output1625_def : output1625 = (.seq output1624 output507) := by
  unfold output1625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1625_skip : Flapjack.WordAlloc.isSkip output1625 = false := by
  rw [output1625_def]
  conv => lhs; cbv
  try rfl
theorem node1625_eq : Flapjack.WordAlloc.removeDeadStructural input1625 value230 value1 value2 = (output1625, value566, value1) := by
  rw [input1625_def, output1625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node507_eq]
  try dsimp only
  rw [node1624_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1625 input506)).val
theorem input1626_def : input1626 = (.seq input1625 input506) := by
  unfold input1626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1625 output506)).val
theorem output1626_def : output1626 = (.seq output1625 output506) := by
  unfold output1626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1626_skip : Flapjack.WordAlloc.isSkip output1626 = false := by
  rw [output1626_def]
  conv => lhs; cbv
  try rfl
theorem node1626_eq : Flapjack.WordAlloc.removeDeadStructural input1626 value229 value1 value2 = (output1626, value566, value1) := by
  rw [input1626_def, output1626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node506_eq]
  try dsimp only
  rw [node1625_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1626 input505)).val
theorem input1627_def : input1627 = (.seq input1626 input505) := by
  unfold input1627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1626 output505)).val
theorem output1627_def : output1627 = (.seq output1626 output505) := by
  unfold output1627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1627_skip : Flapjack.WordAlloc.isSkip output1627 = false := by
  rw [output1627_def]
  conv => lhs; cbv
  try rfl
theorem node1627_eq : Flapjack.WordAlloc.removeDeadStructural input1627 value228 value1 value2 = (output1627, value566, value1) := by
  rw [input1627_def, output1627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node505_eq]
  try dsimp only
  rw [node1626_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1627 input504)).val
theorem input1628_def : input1628 = (.seq input1627 input504) := by
  unfold input1628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1627 output504)).val
theorem output1628_def : output1628 = (.seq output1627 output504) := by
  unfold output1628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1628_skip : Flapjack.WordAlloc.isSkip output1628 = false := by
  rw [output1628_def]
  conv => lhs; cbv
  try rfl
theorem node1628_eq : Flapjack.WordAlloc.removeDeadStructural input1628 value226 value1 value2 = (output1628, value566, value1) := by
  rw [input1628_def, output1628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node504_eq]
  try dsimp only
  rw [node1627_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1628 input501)).val
theorem input1629_def : input1629 = (.seq input1628 input501) := by
  unfold input1629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1628 output501)).val
theorem output1629_def : output1629 = (.seq output1628 output501) := by
  unfold output1629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1629_skip : Flapjack.WordAlloc.isSkip output1629 = false := by
  rw [output1629_def]
  conv => lhs; cbv
  try rfl
theorem node1629_eq : Flapjack.WordAlloc.removeDeadStructural input1629 value225 value1 value2 = (output1629, value566, value1) := by
  rw [input1629_def, output1629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node501_eq]
  try dsimp only
  rw [node1628_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1629 input500)).val
theorem input1630_def : input1630 = (.seq input1629 input500) := by
  unfold input1630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1629 output500)).val
theorem output1630_def : output1630 = (.seq output1629 output500) := by
  unfold output1630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1630_skip : Flapjack.WordAlloc.isSkip output1630 = false := by
  rw [output1630_def]
  conv => lhs; cbv
  try rfl
theorem node1630_eq : Flapjack.WordAlloc.removeDeadStructural input1630 value223 value1 value2 = (output1630, value566, value1) := by
  rw [input1630_def, output1630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node500_eq]
  try dsimp only
  rw [node1629_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1630 input497)).val
theorem input1631_def : input1631 = (.seq input1630 input497) := by
  unfold input1631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1630 output497)).val
theorem output1631_def : output1631 = (.seq output1630 output497) := by
  unfold output1631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1631_skip : Flapjack.WordAlloc.isSkip output1631 = false := by
  rw [output1631_def]
  conv => lhs; cbv
  try rfl
theorem node1631_eq : Flapjack.WordAlloc.removeDeadStructural input1631 value222 value1 value2 = (output1631, value566, value1) := by
  rw [input1631_def, output1631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node497_eq]
  try dsimp only
  rw [node1630_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1631 input496)).val
theorem input1632_def : input1632 = (.seq input1631 input496) := by
  unfold input1632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1631 output496)).val
theorem output1632_def : output1632 = (.seq output1631 output496) := by
  unfold output1632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1632_skip : Flapjack.WordAlloc.isSkip output1632 = false := by
  rw [output1632_def]
  conv => lhs; cbv
  try rfl
theorem node1632_eq : Flapjack.WordAlloc.removeDeadStructural input1632 value220 value1 value2 = (output1632, value566, value1) := by
  rw [input1632_def, output1632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node496_eq]
  try dsimp only
  rw [node1631_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1632 input493)).val
theorem input1633_def : input1633 = (.seq input1632 input493) := by
  unfold input1633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1632 output493)).val
theorem output1633_def : output1633 = (.seq output1632 output493) := by
  unfold output1633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1633_skip : Flapjack.WordAlloc.isSkip output1633 = false := by
  rw [output1633_def]
  conv => lhs; cbv
  try rfl
theorem node1633_eq : Flapjack.WordAlloc.removeDeadStructural input1633 value219 value1 value2 = (output1633, value566, value1) := by
  rw [input1633_def, output1633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node493_eq]
  try dsimp only
  rw [node1632_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1633 input492)).val
theorem input1634_def : input1634 = (.seq input1633 input492) := by
  unfold input1634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1633 output492)).val
theorem output1634_def : output1634 = (.seq output1633 output492) := by
  unfold output1634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1634_skip : Flapjack.WordAlloc.isSkip output1634 = false := by
  rw [output1634_def]
  conv => lhs; cbv
  try rfl
theorem node1634_eq : Flapjack.WordAlloc.removeDeadStructural input1634 value217 value1 value2 = (output1634, value566, value1) := by
  rw [input1634_def, output1634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node492_eq]
  try dsimp only
  rw [node1633_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1634 input489)).val
theorem input1635_def : input1635 = (.seq input1634 input489) := by
  unfold input1635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1634 output489)).val
theorem output1635_def : output1635 = (.seq output1634 output489) := by
  unfold output1635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1635_skip : Flapjack.WordAlloc.isSkip output1635 = false := by
  rw [output1635_def]
  conv => lhs; cbv
  try rfl
theorem node1635_eq : Flapjack.WordAlloc.removeDeadStructural input1635 value215 value1 value2 = (output1635, value566, value1) := by
  rw [input1635_def, output1635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node489_eq]
  try dsimp only
  rw [node1634_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1635 input486)).val
theorem input1636_def : input1636 = (.seq input1635 input486) := by
  unfold input1636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1635 output486)).val
theorem output1636_def : output1636 = (.seq output1635 output486) := by
  unfold output1636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1636_skip : Flapjack.WordAlloc.isSkip output1636 = false := by
  rw [output1636_def]
  conv => lhs; cbv
  try rfl
theorem node1636_eq : Flapjack.WordAlloc.removeDeadStructural input1636 value214 value1 value2 = (output1636, value566, value1) := by
  rw [input1636_def, output1636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node486_eq]
  try dsimp only
  rw [node1635_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1636 input485)).val
theorem input1637_def : input1637 = (.seq input1636 input485) := by
  unfold input1637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1636 output485)).val
theorem output1637_def : output1637 = (.seq output1636 output485) := by
  unfold output1637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1637_skip : Flapjack.WordAlloc.isSkip output1637 = false := by
  rw [output1637_def]
  conv => lhs; cbv
  try rfl
theorem node1637_eq : Flapjack.WordAlloc.removeDeadStructural input1637 value213 value1 value2 = (output1637, value566, value1) := by
  rw [input1637_def, output1637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node485_eq]
  try dsimp only
  rw [node1636_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1637 input484)).val
theorem input1638_def : input1638 = (.seq input1637 input484) := by
  unfold input1638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1637 output484)).val
theorem output1638_def : output1638 = (.seq output1637 output484) := by
  unfold output1638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1638_skip : Flapjack.WordAlloc.isSkip output1638 = false := by
  rw [output1638_def]
  conv => lhs; cbv
  try rfl
theorem node1638_eq : Flapjack.WordAlloc.removeDeadStructural input1638 value212 value1 value2 = (output1638, value566, value1) := by
  rw [input1638_def, output1638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node484_eq]
  try dsimp only
  rw [node1637_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1638 input483)).val
theorem input1639_def : input1639 = (.seq input1638 input483) := by
  unfold input1639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1638 output483)).val
theorem output1639_def : output1639 = (.seq output1638 output483) := by
  unfold output1639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1639_skip : Flapjack.WordAlloc.isSkip output1639 = false := by
  rw [output1639_def]
  conv => lhs; cbv
  try rfl
theorem node1639_eq : Flapjack.WordAlloc.removeDeadStructural input1639 value209 value1 value2 = (output1639, value566, value1) := by
  rw [input1639_def, output1639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node483_eq]
  try dsimp only
  rw [node1638_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1639 input478)).val
theorem input1640_def : input1640 = (.seq input1639 input478) := by
  unfold input1640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1639 output478)).val
theorem output1640_def : output1640 = (.seq output1639 output478) := by
  unfold output1640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1640_skip : Flapjack.WordAlloc.isSkip output1640 = false := by
  rw [output1640_def]
  conv => lhs; cbv
  try rfl
theorem node1640_eq : Flapjack.WordAlloc.removeDeadStructural input1640 value209 value1 value2 = (output1640, value566, value1) := by
  rw [input1640_def, output1640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node478_eq]
  try dsimp only
  rw [node1639_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1640 input477)).val
theorem input1641_def : input1641 = (.seq input1640 input477) := by
  unfold input1641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1640 output477)).val
theorem output1641_def : output1641 = (.seq output1640 output477) := by
  unfold output1641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1641_skip : Flapjack.WordAlloc.isSkip output1641 = false := by
  rw [output1641_def]
  conv => lhs; cbv
  try rfl
theorem node1641_eq : Flapjack.WordAlloc.removeDeadStructural input1641 value207 value1 value2 = (output1641, value566, value1) := by
  rw [input1641_def, output1641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node477_eq]
  try dsimp only
  rw [node1640_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1641 input474)).val
theorem input1642_def : input1642 = (.seq input1641 input474) := by
  unfold input1642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1641 output474)).val
theorem output1642_def : output1642 = (.seq output1641 output474) := by
  unfold output1642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1642_skip : Flapjack.WordAlloc.isSkip output1642 = false := by
  rw [output1642_def]
  conv => lhs; cbv
  try rfl
theorem node1642_eq : Flapjack.WordAlloc.removeDeadStructural input1642 value206 value1 value2 = (output1642, value566, value1) := by
  rw [input1642_def, output1642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node474_eq]
  try dsimp only
  rw [node1641_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1642 input473)).val
theorem input1643_def : input1643 = (.seq input1642 input473) := by
  unfold input1643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1642 output473)).val
theorem output1643_def : output1643 = (.seq output1642 output473) := by
  unfold output1643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1643_skip : Flapjack.WordAlloc.isSkip output1643 = false := by
  rw [output1643_def]
  conv => lhs; cbv
  try rfl
theorem node1643_eq : Flapjack.WordAlloc.removeDeadStructural input1643 value205 value1 value2 = (output1643, value566, value1) := by
  rw [input1643_def, output1643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node473_eq]
  try dsimp only
  rw [node1642_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1643 input472)).val
theorem input1644_def : input1644 = (.seq input1643 input472) := by
  unfold input1644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1643 output472)).val
theorem output1644_def : output1644 = (.seq output1643 output472) := by
  unfold output1644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1644_skip : Flapjack.WordAlloc.isSkip output1644 = false := by
  rw [output1644_def]
  conv => lhs; cbv
  try rfl
theorem node1644_eq : Flapjack.WordAlloc.removeDeadStructural input1644 value203 value1 value2 = (output1644, value566, value1) := by
  rw [input1644_def, output1644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node472_eq]
  try dsimp only
  rw [node1643_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1644 input469)).val
theorem input1645_def : input1645 = (.seq input1644 input469) := by
  unfold input1645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1644 output469)).val
theorem output1645_def : output1645 = (.seq output1644 output469) := by
  unfold output1645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1645_skip : Flapjack.WordAlloc.isSkip output1645 = false := by
  rw [output1645_def]
  conv => lhs; cbv
  try rfl
theorem node1645_eq : Flapjack.WordAlloc.removeDeadStructural input1645 value201 value1 value2 = (output1645, value566, value1) := by
  rw [input1645_def, output1645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node469_eq]
  try dsimp only
  rw [node1644_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1645 input466)).val
theorem input1646_def : input1646 = (.seq input1645 input466) := by
  unfold input1646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1645 output466)).val
theorem output1646_def : output1646 = (.seq output1645 output466) := by
  unfold output1646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1646_skip : Flapjack.WordAlloc.isSkip output1646 = false := by
  rw [output1646_def]
  conv => lhs; cbv
  try rfl
theorem node1646_eq : Flapjack.WordAlloc.removeDeadStructural input1646 value200 value1 value2 = (output1646, value566, value1) := by
  rw [input1646_def, output1646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node466_eq]
  try dsimp only
  rw [node1645_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1646 input465)).val
theorem input1647_def : input1647 = (.seq input1646 input465) := by
  unfold input1647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1646 output465)).val
theorem output1647_def : output1647 = (.seq output1646 output465) := by
  unfold output1647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1647_skip : Flapjack.WordAlloc.isSkip output1647 = false := by
  rw [output1647_def]
  conv => lhs; cbv
  try rfl
theorem node1647_eq : Flapjack.WordAlloc.removeDeadStructural input1647 value199 value1 value2 = (output1647, value566, value1) := by
  rw [input1647_def, output1647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node465_eq]
  try dsimp only
  rw [node1646_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1647 input464)).val
theorem input1648_def : input1648 = (.seq input1647 input464) := by
  unfold input1648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1647 output464)).val
theorem output1648_def : output1648 = (.seq output1647 output464) := by
  unfold output1648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1648_skip : Flapjack.WordAlloc.isSkip output1648 = false := by
  rw [output1648_def]
  conv => lhs; cbv
  try rfl
theorem node1648_eq : Flapjack.WordAlloc.removeDeadStructural input1648 value197 value1 value2 = (output1648, value566, value1) := by
  rw [input1648_def, output1648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node464_eq]
  try dsimp only
  rw [node1647_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1648 input461)).val
theorem input1649_def : input1649 = (.seq input1648 input461) := by
  unfold input1649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1648 output461)).val
theorem output1649_def : output1649 = (.seq output1648 output461) := by
  unfold output1649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1649_skip : Flapjack.WordAlloc.isSkip output1649 = false := by
  rw [output1649_def]
  conv => lhs; cbv
  try rfl
theorem node1649_eq : Flapjack.WordAlloc.removeDeadStructural input1649 value195 value1 value2 = (output1649, value566, value1) := by
  rw [input1649_def, output1649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node461_eq]
  try dsimp only
  rw [node1648_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1649 input458)).val
theorem input1650_def : input1650 = (.seq input1649 input458) := by
  unfold input1650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1649 output458)).val
theorem output1650_def : output1650 = (.seq output1649 output458) := by
  unfold output1650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1650_skip : Flapjack.WordAlloc.isSkip output1650 = false := by
  rw [output1650_def]
  conv => lhs; cbv
  try rfl
theorem node1650_eq : Flapjack.WordAlloc.removeDeadStructural input1650 value194 value1 value2 = (output1650, value566, value1) := by
  rw [input1650_def, output1650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node458_eq]
  try dsimp only
  rw [node1649_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1650 input457)).val
theorem input1651_def : input1651 = (.seq input1650 input457) := by
  unfold input1651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1650 output457)).val
theorem output1651_def : output1651 = (.seq output1650 output457) := by
  unfold output1651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1651_skip : Flapjack.WordAlloc.isSkip output1651 = false := by
  rw [output1651_def]
  conv => lhs; cbv
  try rfl
theorem node1651_eq : Flapjack.WordAlloc.removeDeadStructural input1651 value190 value1 value2 = (output1651, value566, value1) := by
  rw [input1651_def, output1651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node457_eq]
  try dsimp only
  rw [node1650_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1651 input456)).val
theorem input1652_def : input1652 = (.seq input1651 input456) := by
  unfold input1652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1651 output456)).val
theorem output1652_def : output1652 = (.seq output1651 output456) := by
  unfold output1652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1652_skip : Flapjack.WordAlloc.isSkip output1652 = false := by
  rw [output1652_def]
  conv => lhs; cbv
  try rfl
theorem node1652_eq : Flapjack.WordAlloc.removeDeadStructural input1652 value193 value1 value2 = (output1652, value566, value1) := by
  rw [input1652_def, output1652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node456_eq]
  try dsimp only
  rw [node1651_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1652 input455)).val
theorem input1653_def : input1653 = (.seq input1652 input455) := by
  unfold input1653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1652 output455)).val
theorem output1653_def : output1653 = (.seq output1652 output455) := by
  unfold output1653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1653_skip : Flapjack.WordAlloc.isSkip output1653 = false := by
  rw [output1653_def]
  conv => lhs; cbv
  try rfl
theorem node1653_eq : Flapjack.WordAlloc.removeDeadStructural input1653 value164 value1 value2 = (output1653, value566, value1) := by
  rw [input1653_def, output1653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node455_eq]
  try dsimp only
  rw [node1652_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1653 input354)).val
theorem input1654_def : input1654 = (.seq input1653 input354) := by
  unfold input1654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1653 output354)).val
theorem output1654_def : output1654 = (.seq output1653 output354) := by
  unfold output1654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1654_skip : Flapjack.WordAlloc.isSkip output1654 = false := by
  rw [output1654_def]
  conv => lhs; cbv
  try rfl
theorem node1654_eq : Flapjack.WordAlloc.removeDeadStructural input1654 value164 value1 value2 = (output1654, value566, value1) := by
  rw [input1654_def, output1654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node354_eq]
  try dsimp only
  rw [node1653_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1654 input353)).val
theorem input1655_def : input1655 = (.seq input1654 input353) := by
  unfold input1655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1654 output353)).val
theorem output1655_def : output1655 = (.seq output1654 output353) := by
  unfold output1655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1655_skip : Flapjack.WordAlloc.isSkip output1655 = false := by
  rw [output1655_def]
  conv => lhs; cbv
  try rfl
theorem node1655_eq : Flapjack.WordAlloc.removeDeadStructural input1655 value161 value1 value2 = (output1655, value566, value1) := by
  rw [input1655_def, output1655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node353_eq]
  try dsimp only
  rw [node1654_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1655 input352)).val
theorem input1656_def : input1656 = (.seq input1655 input352) := by
  unfold input1656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1655 output352)).val
theorem output1656_def : output1656 = (.seq output1655 output352) := by
  unfold output1656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1656_skip : Flapjack.WordAlloc.isSkip output1656 = false := by
  rw [output1656_def]
  conv => lhs; cbv
  try rfl
theorem node1656_eq : Flapjack.WordAlloc.removeDeadStructural input1656 value163 value1 value2 = (output1656, value566, value1) := by
  rw [input1656_def, output1656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node352_eq]
  try dsimp only
  rw [node1655_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1656 input351)).val
theorem input1657_def : input1657 = (.seq input1656 input351) := by
  unfold input1657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1656 output351)).val
theorem output1657_def : output1657 = (.seq output1656 output351) := by
  unfold output1657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1657_skip : Flapjack.WordAlloc.isSkip output1657 = false := by
  rw [output1657_def]
  conv => lhs; cbv
  try rfl
theorem node1657_eq : Flapjack.WordAlloc.removeDeadStructural input1657 value110 value1 value2 = (output1657, value566, value1) := by
  rw [input1657_def, output1657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node351_eq]
  try dsimp only
  rw [node1656_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1657 input206)).val
theorem input1658_def : input1658 = (.seq input1657 input206) := by
  unfold input1658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1657 output206)).val
theorem output1658_def : output1658 = (.seq output1657 output206) := by
  unfold output1658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1658_skip : Flapjack.WordAlloc.isSkip output1658 = false := by
  rw [output1658_def]
  conv => lhs; cbv
  try rfl
theorem node1658_eq : Flapjack.WordAlloc.removeDeadStructural input1658 value110 value1 value2 = (output1658, value566, value1) := by
  rw [input1658_def, output1658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node206_eq]
  try dsimp only
  rw [node1657_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1658 input205)).val
theorem input1659_def : input1659 = (.seq input1658 input205) := by
  unfold input1659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1658 output205)).val
theorem output1659_def : output1659 = (.seq output1658 output205) := by
  unfold output1659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1659_skip : Flapjack.WordAlloc.isSkip output1659 = false := by
  rw [output1659_def]
  conv => lhs; cbv
  try rfl
theorem node1659_eq : Flapjack.WordAlloc.removeDeadStructural input1659 value109 value1 value2 = (output1659, value566, value1) := by
  rw [input1659_def, output1659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node205_eq]
  try dsimp only
  rw [node1658_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1659 input204)).val
theorem input1660_def : input1660 = (.seq input1659 input204) := by
  unfold input1660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1659 output204)).val
theorem output1660_def : output1660 = (.seq output1659 output204) := by
  unfold output1660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1660_skip : Flapjack.WordAlloc.isSkip output1660 = false := by
  rw [output1660_def]
  conv => lhs; cbv
  try rfl
theorem node1660_eq : Flapjack.WordAlloc.removeDeadStructural input1660 value108 value1 value2 = (output1660, value566, value1) := by
  rw [input1660_def, output1660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node204_eq]
  try dsimp only
  rw [node1659_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1660 input203)).val
theorem input1661_def : input1661 = (.seq input1660 input203) := by
  unfold input1661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1660 output203)).val
theorem output1661_def : output1661 = (.seq output1660 output203) := by
  unfold output1661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1661_skip : Flapjack.WordAlloc.isSkip output1661 = false := by
  rw [output1661_def]
  conv => lhs; cbv
  try rfl
theorem node1661_eq : Flapjack.WordAlloc.removeDeadStructural input1661 value79 value1 value2 = (output1661, value566, value1) := by
  rw [input1661_def, output1661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node203_eq]
  try dsimp only
  rw [node1660_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1661 input110)).val
theorem input1662_def : input1662 = (.seq input1661 input110) := by
  unfold input1662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1661 output110)).val
theorem output1662_def : output1662 = (.seq output1661 output110) := by
  unfold output1662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1662_skip : Flapjack.WordAlloc.isSkip output1662 = false := by
  rw [output1662_def]
  conv => lhs; cbv
  try rfl
theorem node1662_eq : Flapjack.WordAlloc.removeDeadStructural input1662 value79 value1 value2 = (output1662, value566, value1) := by
  rw [input1662_def, output1662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node110_eq]
  try dsimp only
  rw [node1661_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1662 input109)).val
theorem input1663_def : input1663 = (.seq input1662 input109) := by
  unfold input1663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1662 output109)).val
theorem output1663_def : output1663 = (.seq output1662 output109) := by
  unfold output1663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1663_skip : Flapjack.WordAlloc.isSkip output1663 = false := by
  rw [output1663_def]
  conv => lhs; cbv
  try rfl
theorem node1663_eq : Flapjack.WordAlloc.removeDeadStructural input1663 value78 value1 value2 = (output1663, value566, value1) := by
  rw [input1663_def, output1663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node109_eq]
  try dsimp only
  rw [node1662_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1663 input108)).val
theorem input1664_def : input1664 = (.seq input1663 input108) := by
  unfold input1664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1663 output108)).val
theorem output1664_def : output1664 = (.seq output1663 output108) := by
  unfold output1664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1664_skip : Flapjack.WordAlloc.isSkip output1664 = false := by
  rw [output1664_def]
  conv => lhs; cbv
  try rfl
theorem node1664_eq : Flapjack.WordAlloc.removeDeadStructural input1664 value77 value1 value2 = (output1664, value566, value1) := by
  rw [input1664_def, output1664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node108_eq]
  try dsimp only
  rw [node1663_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1664 input107)).val
theorem input1665_def : input1665 = (.seq input1664 input107) := by
  unfold input1665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1664)).val
theorem output1665_def : output1665 = (output1664) := by
  unfold output1665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1665_skip : Flapjack.WordAlloc.isSkip output1665 = false := by
  rw [output1665_def]
  conv => lhs; cbv
  try rfl
theorem node1665_eq : Flapjack.WordAlloc.removeDeadStructural input1665 value77 value1 value2 = (output1665, value566, value1) := by
  rw [input1665_def, output1665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node107_eq]
  try dsimp only
  rw [node1664_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1665 input106)).val
theorem input1666_def : input1666 = (.seq input1665 input106) := by
  unfold input1666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1665 output106)).val
theorem output1666_def : output1666 = (.seq output1665 output106) := by
  unfold output1666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1666_skip : Flapjack.WordAlloc.isSkip output1666 = false := by
  rw [output1666_def]
  conv => lhs; cbv
  try rfl
theorem node1666_eq : Flapjack.WordAlloc.removeDeadStructural input1666 value73 value1 value2 = (output1666, value566, value1) := by
  rw [input1666_def, output1666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node106_eq]
  try dsimp only
  rw [node1665_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1666 input99)).val
theorem input1667_def : input1667 = (.seq input1666 input99) := by
  unfold input1667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1666 output99)).val
theorem output1667_def : output1667 = (.seq output1666 output99) := by
  unfold output1667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1667_skip : Flapjack.WordAlloc.isSkip output1667 = false := by
  rw [output1667_def]
  conv => lhs; cbv
  try rfl
theorem node1667_eq : Flapjack.WordAlloc.removeDeadStructural input1667 value73 value1 value2 = (output1667, value566, value1) := by
  rw [input1667_def, output1667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node99_eq]
  try dsimp only
  rw [node1666_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1667 input98)).val
theorem input1668_def : input1668 = (.seq input1667 input98) := by
  unfold input1668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1667 output98)).val
theorem output1668_def : output1668 = (.seq output1667 output98) := by
  unfold output1668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1668_skip : Flapjack.WordAlloc.isSkip output1668 = false := by
  rw [output1668_def]
  conv => lhs; cbv
  try rfl
theorem node1668_eq : Flapjack.WordAlloc.removeDeadStructural input1668 value71 value1 value2 = (output1668, value566, value1) := by
  rw [input1668_def, output1668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node98_eq]
  try dsimp only
  rw [node1667_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1668 input95)).val
theorem input1669_def : input1669 = (.seq input1668 input95) := by
  unfold input1669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1668 output95)).val
theorem output1669_def : output1669 = (.seq output1668 output95) := by
  unfold output1669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1669_skip : Flapjack.WordAlloc.isSkip output1669 = false := by
  rw [output1669_def]
  conv => lhs; cbv
  try rfl
theorem node1669_eq : Flapjack.WordAlloc.removeDeadStructural input1669 value70 value1 value2 = (output1669, value566, value1) := by
  rw [input1669_def, output1669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node95_eq]
  try dsimp only
  rw [node1668_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1669 input94)).val
theorem input1670_def : input1670 = (.seq input1669 input94) := by
  unfold input1670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1669 output94)).val
theorem output1670_def : output1670 = (.seq output1669 output94) := by
  unfold output1670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1670_skip : Flapjack.WordAlloc.isSkip output1670 = false := by
  rw [output1670_def]
  conv => lhs; cbv
  try rfl
theorem node1670_eq : Flapjack.WordAlloc.removeDeadStructural input1670 value69 value1 value2 = (output1670, value566, value1) := by
  rw [input1670_def, output1670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node94_eq]
  try dsimp only
  rw [node1669_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1670 input93)).val
theorem input1671_def : input1671 = (.seq input1670 input93) := by
  unfold input1671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1670 output93)).val
theorem output1671_def : output1671 = (.seq output1670 output93) := by
  unfold output1671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1671_skip : Flapjack.WordAlloc.isSkip output1671 = false := by
  rw [output1671_def]
  conv => lhs; cbv
  try rfl
theorem node1671_eq : Flapjack.WordAlloc.removeDeadStructural input1671 value68 value1 value2 = (output1671, value566, value1) := by
  rw [input1671_def, output1671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node93_eq]
  try dsimp only
  rw [node1670_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1671 input92)).val
theorem input1672_def : input1672 = (.seq input1671 input92) := by
  unfold input1672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1671 output92)).val
theorem output1672_def : output1672 = (.seq output1671 output92) := by
  unfold output1672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1672_skip : Flapjack.WordAlloc.isSkip output1672 = false := by
  rw [output1672_def]
  conv => lhs; cbv
  try rfl
theorem node1672_eq : Flapjack.WordAlloc.removeDeadStructural input1672 value67 value1 value2 = (output1672, value566, value1) := by
  rw [input1672_def, output1672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node92_eq]
  try dsimp only
  rw [node1671_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1672 input91)).val
theorem input1673_def : input1673 = (.seq input1672 input91) := by
  unfold input1673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1672 output91)).val
theorem output1673_def : output1673 = (.seq output1672 output91) := by
  unfold output1673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1673_skip : Flapjack.WordAlloc.isSkip output1673 = false := by
  rw [output1673_def]
  conv => lhs; cbv
  try rfl
theorem node1673_eq : Flapjack.WordAlloc.removeDeadStructural input1673 value66 value1 value2 = (output1673, value566, value1) := by
  rw [input1673_def, output1673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node91_eq]
  try dsimp only
  rw [node1672_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1673 input90)).val
theorem input1674_def : input1674 = (.seq input1673 input90) := by
  unfold input1674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1673 output90)).val
theorem output1674_def : output1674 = (.seq output1673 output90) := by
  unfold output1674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1674_skip : Flapjack.WordAlloc.isSkip output1674 = false := by
  rw [output1674_def]
  conv => lhs; cbv
  try rfl
theorem node1674_eq : Flapjack.WordAlloc.removeDeadStructural input1674 value64 value1 value2 = (output1674, value566, value1) := by
  rw [input1674_def, output1674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node90_eq]
  try dsimp only
  rw [node1673_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1674 input87)).val
theorem input1675_def : input1675 = (.seq input1674 input87) := by
  unfold input1675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1674 output87)).val
theorem output1675_def : output1675 = (.seq output1674 output87) := by
  unfold output1675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1675_skip : Flapjack.WordAlloc.isSkip output1675 = false := by
  rw [output1675_def]
  conv => lhs; cbv
  try rfl
theorem node1675_eq : Flapjack.WordAlloc.removeDeadStructural input1675 value63 value1 value2 = (output1675, value566, value1) := by
  rw [input1675_def, output1675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node87_eq]
  try dsimp only
  rw [node1674_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1675 input86)).val
theorem input1676_def : input1676 = (.seq input1675 input86) := by
  unfold input1676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1675 output86)).val
theorem output1676_def : output1676 = (.seq output1675 output86) := by
  unfold output1676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1676_skip : Flapjack.WordAlloc.isSkip output1676 = false := by
  rw [output1676_def]
  conv => lhs; cbv
  try rfl
theorem node1676_eq : Flapjack.WordAlloc.removeDeadStructural input1676 value61 value1 value2 = (output1676, value566, value1) := by
  rw [input1676_def, output1676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node86_eq]
  try dsimp only
  rw [node1675_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1676 input83)).val
theorem input1677_def : input1677 = (.seq input1676 input83) := by
  unfold input1677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1676 output83)).val
theorem output1677_def : output1677 = (.seq output1676 output83) := by
  unfold output1677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1677_skip : Flapjack.WordAlloc.isSkip output1677 = false := by
  rw [output1677_def]
  conv => lhs; cbv
  try rfl
theorem node1677_eq : Flapjack.WordAlloc.removeDeadStructural input1677 value60 value1 value2 = (output1677, value566, value1) := by
  rw [input1677_def, output1677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node83_eq]
  try dsimp only
  rw [node1676_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1677 input82)).val
theorem input1678_def : input1678 = (.seq input1677 input82) := by
  unfold input1678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1677 output82)).val
theorem output1678_def : output1678 = (.seq output1677 output82) := by
  unfold output1678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1678_skip : Flapjack.WordAlloc.isSkip output1678 = false := by
  rw [output1678_def]
  conv => lhs; cbv
  try rfl
theorem node1678_eq : Flapjack.WordAlloc.removeDeadStructural input1678 value58 value1 value2 = (output1678, value566, value1) := by
  rw [input1678_def, output1678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node82_eq]
  try dsimp only
  rw [node1677_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1678 input79)).val
theorem input1679_def : input1679 = (.seq input1678 input79) := by
  unfold input1679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1678 output79)).val
theorem output1679_def : output1679 = (.seq output1678 output79) := by
  unfold output1679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1679_skip : Flapjack.WordAlloc.isSkip output1679 = false := by
  rw [output1679_def]
  conv => lhs; cbv
  try rfl
theorem node1679_eq : Flapjack.WordAlloc.removeDeadStructural input1679 value57 value1 value2 = (output1679, value566, value1) := by
  rw [input1679_def, output1679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node79_eq]
  try dsimp only
  rw [node1678_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1679 input78)).val
theorem input1680_def : input1680 = (.seq input1679 input78) := by
  unfold input1680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1679 output78)).val
theorem output1680_def : output1680 = (.seq output1679 output78) := by
  unfold output1680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1680_skip : Flapjack.WordAlloc.isSkip output1680 = false := by
  rw [output1680_def]
  conv => lhs; cbv
  try rfl
theorem node1680_eq : Flapjack.WordAlloc.removeDeadStructural input1680 value55 value1 value2 = (output1680, value566, value1) := by
  rw [input1680_def, output1680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node78_eq]
  try dsimp only
  rw [node1679_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1680 input75)).val
theorem input1681_def : input1681 = (.seq input1680 input75) := by
  unfold input1681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1680 output75)).val
theorem output1681_def : output1681 = (.seq output1680 output75) := by
  unfold output1681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1681_skip : Flapjack.WordAlloc.isSkip output1681 = false := by
  rw [output1681_def]
  conv => lhs; cbv
  try rfl
theorem node1681_eq : Flapjack.WordAlloc.removeDeadStructural input1681 value54 value1 value2 = (output1681, value566, value1) := by
  rw [input1681_def, output1681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node75_eq]
  try dsimp only
  rw [node1680_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1681 input74)).val
theorem input1682_def : input1682 = (.seq input1681 input74) := by
  unfold input1682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1681 output74)).val
theorem output1682_def : output1682 = (.seq output1681 output74) := by
  unfold output1682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1682_skip : Flapjack.WordAlloc.isSkip output1682 = false := by
  rw [output1682_def]
  conv => lhs; cbv
  try rfl
theorem node1682_eq : Flapjack.WordAlloc.removeDeadStructural input1682 value52 value1 value2 = (output1682, value566, value1) := by
  rw [input1682_def, output1682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node74_eq]
  try dsimp only
  rw [node1681_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1682 input71)).val
theorem input1683_def : input1683 = (.seq input1682 input71) := by
  unfold input1683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1682)).val
theorem output1683_def : output1683 = (output1682) := by
  unfold output1683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1683_skip : Flapjack.WordAlloc.isSkip output1683 = false := by
  rw [output1683_def]
  conv => lhs; cbv
  try rfl
theorem node1683_eq : Flapjack.WordAlloc.removeDeadStructural input1683 value52 value1 value2 = (output1683, value566, value1) := by
  rw [input1683_def, output1683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node71_eq]
  try dsimp only
  rw [node1682_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1683 input70)).val
theorem input1684_def : input1684 = (.seq input1683 input70) := by
  unfold input1684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1683 output70)).val
theorem output1684_def : output1684 = (.seq output1683 output70) := by
  unfold output1684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1684_skip : Flapjack.WordAlloc.isSkip output1684 = false := by
  rw [output1684_def]
  conv => lhs; cbv
  try rfl
theorem node1684_eq : Flapjack.WordAlloc.removeDeadStructural input1684 value48 value1 value2 = (output1684, value566, value1) := by
  rw [input1684_def, output1684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node70_eq]
  try dsimp only
  rw [node1683_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1684 input63)).val
theorem input1685_def : input1685 = (.seq input1684 input63) := by
  unfold input1685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1684 output63)).val
theorem output1685_def : output1685 = (.seq output1684 output63) := by
  unfold output1685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1685_skip : Flapjack.WordAlloc.isSkip output1685 = false := by
  rw [output1685_def]
  conv => lhs; cbv
  try rfl
theorem node1685_eq : Flapjack.WordAlloc.removeDeadStructural input1685 value48 value1 value2 = (output1685, value566, value1) := by
  rw [input1685_def, output1685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node63_eq]
  try dsimp only
  rw [node1684_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1685 input62)).val
theorem input1686_def : input1686 = (.seq input1685 input62) := by
  unfold input1686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1685 output62)).val
theorem output1686_def : output1686 = (.seq output1685 output62) := by
  unfold output1686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1686_skip : Flapjack.WordAlloc.isSkip output1686 = false := by
  rw [output1686_def]
  conv => lhs; cbv
  try rfl
theorem node1686_eq : Flapjack.WordAlloc.removeDeadStructural input1686 value46 value1 value2 = (output1686, value566, value1) := by
  rw [input1686_def, output1686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node62_eq]
  try dsimp only
  rw [node1685_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1686 input59)).val
theorem input1687_def : input1687 = (.seq input1686 input59) := by
  unfold input1687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1686 output59)).val
theorem output1687_def : output1687 = (.seq output1686 output59) := by
  unfold output1687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1687_skip : Flapjack.WordAlloc.isSkip output1687 = false := by
  rw [output1687_def]
  conv => lhs; cbv
  try rfl
theorem node1687_eq : Flapjack.WordAlloc.removeDeadStructural input1687 value45 value1 value2 = (output1687, value566, value1) := by
  rw [input1687_def, output1687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node59_eq]
  try dsimp only
  rw [node1686_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1687 input58)).val
theorem input1688_def : input1688 = (.seq input1687 input58) := by
  unfold input1688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1687 output58)).val
theorem output1688_def : output1688 = (.seq output1687 output58) := by
  unfold output1688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1688_skip : Flapjack.WordAlloc.isSkip output1688 = false := by
  rw [output1688_def]
  conv => lhs; cbv
  try rfl
theorem node1688_eq : Flapjack.WordAlloc.removeDeadStructural input1688 value44 value1 value2 = (output1688, value566, value1) := by
  rw [input1688_def, output1688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node58_eq]
  try dsimp only
  rw [node1687_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1688 input57)).val
theorem input1689_def : input1689 = (.seq input1688 input57) := by
  unfold input1689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1688 output57)).val
theorem output1689_def : output1689 = (.seq output1688 output57) := by
  unfold output1689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1689_skip : Flapjack.WordAlloc.isSkip output1689 = false := by
  rw [output1689_def]
  conv => lhs; cbv
  try rfl
theorem node1689_eq : Flapjack.WordAlloc.removeDeadStructural input1689 value43 value1 value2 = (output1689, value566, value1) := by
  rw [input1689_def, output1689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node57_eq]
  try dsimp only
  rw [node1688_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1689 input56)).val
theorem input1690_def : input1690 = (.seq input1689 input56) := by
  unfold input1690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1689 output56)).val
theorem output1690_def : output1690 = (.seq output1689 output56) := by
  unfold output1690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1690_skip : Flapjack.WordAlloc.isSkip output1690 = false := by
  rw [output1690_def]
  conv => lhs; cbv
  try rfl
theorem node1690_eq : Flapjack.WordAlloc.removeDeadStructural input1690 value42 value1 value2 = (output1690, value566, value1) := by
  rw [input1690_def, output1690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node56_eq]
  try dsimp only
  rw [node1689_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1690 input55)).val
theorem input1691_def : input1691 = (.seq input1690 input55) := by
  unfold input1691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1690 output55)).val
theorem output1691_def : output1691 = (.seq output1690 output55) := by
  unfold output1691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1691_skip : Flapjack.WordAlloc.isSkip output1691 = false := by
  rw [output1691_def]
  conv => lhs; cbv
  try rfl
theorem node1691_eq : Flapjack.WordAlloc.removeDeadStructural input1691 value41 value1 value2 = (output1691, value566, value1) := by
  rw [input1691_def, output1691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node55_eq]
  try dsimp only
  rw [node1690_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1691 input54)).val
theorem input1692_def : input1692 = (.seq input1691 input54) := by
  unfold input1692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1691 output54)).val
theorem output1692_def : output1692 = (.seq output1691 output54) := by
  unfold output1692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1692_skip : Flapjack.WordAlloc.isSkip output1692 = false := by
  rw [output1692_def]
  conv => lhs; cbv
  try rfl
theorem node1692_eq : Flapjack.WordAlloc.removeDeadStructural input1692 value39 value1 value2 = (output1692, value566, value1) := by
  rw [input1692_def, output1692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node54_eq]
  try dsimp only
  rw [node1691_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1692 input51)).val
theorem input1693_def : input1693 = (.seq input1692 input51) := by
  unfold input1693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1692 output51)).val
theorem output1693_def : output1693 = (.seq output1692 output51) := by
  unfold output1693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1693_skip : Flapjack.WordAlloc.isSkip output1693 = false := by
  rw [output1693_def]
  conv => lhs; cbv
  try rfl
theorem node1693_eq : Flapjack.WordAlloc.removeDeadStructural input1693 value38 value1 value2 = (output1693, value566, value1) := by
  rw [input1693_def, output1693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node51_eq]
  try dsimp only
  rw [node1692_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1693 input50)).val
theorem input1694_def : input1694 = (.seq input1693 input50) := by
  unfold input1694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1693 output50)).val
theorem output1694_def : output1694 = (.seq output1693 output50) := by
  unfold output1694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1694_skip : Flapjack.WordAlloc.isSkip output1694 = false := by
  rw [output1694_def]
  conv => lhs; cbv
  try rfl
theorem node1694_eq : Flapjack.WordAlloc.removeDeadStructural input1694 value36 value1 value2 = (output1694, value566, value1) := by
  rw [input1694_def, output1694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node50_eq]
  try dsimp only
  rw [node1693_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1694 input47)).val
theorem input1695_def : input1695 = (.seq input1694 input47) := by
  unfold input1695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1694 output47)).val
theorem output1695_def : output1695 = (.seq output1694 output47) := by
  unfold output1695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1695_skip : Flapjack.WordAlloc.isSkip output1695 = false := by
  rw [output1695_def]
  conv => lhs; cbv
  try rfl
theorem node1695_eq : Flapjack.WordAlloc.removeDeadStructural input1695 value35 value1 value2 = (output1695, value566, value1) := by
  rw [input1695_def, output1695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node47_eq]
  try dsimp only
  rw [node1694_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1695 input46)).val
theorem input1696_def : input1696 = (.seq input1695 input46) := by
  unfold input1696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1695 output46)).val
theorem output1696_def : output1696 = (.seq output1695 output46) := by
  unfold output1696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1696_skip : Flapjack.WordAlloc.isSkip output1696 = false := by
  rw [output1696_def]
  conv => lhs; cbv
  try rfl
theorem node1696_eq : Flapjack.WordAlloc.removeDeadStructural input1696 value33 value1 value2 = (output1696, value566, value1) := by
  rw [input1696_def, output1696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node46_eq]
  try dsimp only
  rw [node1695_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1696 input43)).val
theorem input1697_def : input1697 = (.seq input1696 input43) := by
  unfold input1697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1696 output43)).val
theorem output1697_def : output1697 = (.seq output1696 output43) := by
  unfold output1697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1697_skip : Flapjack.WordAlloc.isSkip output1697 = false := by
  rw [output1697_def]
  conv => lhs; cbv
  try rfl
theorem node1697_eq : Flapjack.WordAlloc.removeDeadStructural input1697 value32 value1 value2 = (output1697, value566, value1) := by
  rw [input1697_def, output1697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node43_eq]
  try dsimp only
  rw [node1696_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1697 input42)).val
theorem input1698_def : input1698 = (.seq input1697 input42) := by
  unfold input1698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1697 output42)).val
theorem output1698_def : output1698 = (.seq output1697 output42) := by
  unfold output1698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1698_skip : Flapjack.WordAlloc.isSkip output1698 = false := by
  rw [output1698_def]
  conv => lhs; cbv
  try rfl
theorem node1698_eq : Flapjack.WordAlloc.removeDeadStructural input1698 value30 value1 value2 = (output1698, value566, value1) := by
  rw [input1698_def, output1698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node42_eq]
  try dsimp only
  rw [node1697_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1698 input39)).val
theorem input1699_def : input1699 = (.seq input1698 input39) := by
  unfold input1699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1698 output39)).val
theorem output1699_def : output1699 = (.seq output1698 output39) := by
  unfold output1699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1699_skip : Flapjack.WordAlloc.isSkip output1699 = false := by
  rw [output1699_def]
  conv => lhs; cbv
  try rfl
theorem node1699_eq : Flapjack.WordAlloc.removeDeadStructural input1699 value29 value1 value2 = (output1699, value566, value1) := by
  rw [input1699_def, output1699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node39_eq]
  try dsimp only
  rw [node1698_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1699 input38)).val
theorem input1700_def : input1700 = (.seq input1699 input38) := by
  unfold input1700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1699 output38)).val
theorem output1700_def : output1700 = (.seq output1699 output38) := by
  unfold output1700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1700_skip : Flapjack.WordAlloc.isSkip output1700 = false := by
  rw [output1700_def]
  conv => lhs; cbv
  try rfl
theorem node1700_eq : Flapjack.WordAlloc.removeDeadStructural input1700 value27 value1 value2 = (output1700, value566, value1) := by
  rw [input1700_def, output1700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node38_eq]
  try dsimp only
  rw [node1699_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1700 input35)).val
theorem input1701_def : input1701 = (.seq input1700 input35) := by
  unfold input1701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1700)).val
theorem output1701_def : output1701 = (output1700) := by
  unfold output1701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1701_skip : Flapjack.WordAlloc.isSkip output1701 = false := by
  rw [output1701_def]
  conv => lhs; cbv
  try rfl
theorem node1701_eq : Flapjack.WordAlloc.removeDeadStructural input1701 value27 value1 value2 = (output1701, value566, value1) := by
  rw [input1701_def, output1701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node35_eq]
  try dsimp only
  rw [node1700_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1701 input34)).val
theorem input1702_def : input1702 = (.seq input1701 input34) := by
  unfold input1702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1701 output34)).val
theorem output1702_def : output1702 = (.seq output1701 output34) := by
  unfold output1702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1702_skip : Flapjack.WordAlloc.isSkip output1702 = false := by
  rw [output1702_def]
  conv => lhs; cbv
  try rfl
theorem node1702_eq : Flapjack.WordAlloc.removeDeadStructural input1702 value23 value1 value2 = (output1702, value566, value1) := by
  rw [input1702_def, output1702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node34_eq]
  try dsimp only
  rw [node1701_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1702 input27)).val
theorem input1703_def : input1703 = (.seq input1702 input27) := by
  unfold input1703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1702 output27)).val
theorem output1703_def : output1703 = (.seq output1702 output27) := by
  unfold output1703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1703_skip : Flapjack.WordAlloc.isSkip output1703 = false := by
  rw [output1703_def]
  conv => lhs; cbv
  try rfl
theorem node1703_eq : Flapjack.WordAlloc.removeDeadStructural input1703 value23 value1 value2 = (output1703, value566, value1) := by
  rw [input1703_def, output1703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node27_eq]
  try dsimp only
  rw [node1702_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1703 input26)).val
theorem input1704_def : input1704 = (.seq input1703 input26) := by
  unfold input1704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1703 output26)).val
theorem output1704_def : output1704 = (.seq output1703 output26) := by
  unfold output1704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1704_skip : Flapjack.WordAlloc.isSkip output1704 = false := by
  rw [output1704_def]
  conv => lhs; cbv
  try rfl
theorem node1704_eq : Flapjack.WordAlloc.removeDeadStructural input1704 value21 value1 value2 = (output1704, value566, value1) := by
  rw [input1704_def, output1704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node26_eq]
  try dsimp only
  rw [node1703_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1704 input23)).val
theorem input1705_def : input1705 = (.seq input1704 input23) := by
  unfold input1705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1704 output23)).val
theorem output1705_def : output1705 = (.seq output1704 output23) := by
  unfold output1705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1705_skip : Flapjack.WordAlloc.isSkip output1705 = false := by
  rw [output1705_def]
  conv => lhs; cbv
  try rfl
theorem node1705_eq : Flapjack.WordAlloc.removeDeadStructural input1705 value20 value1 value2 = (output1705, value566, value1) := by
  rw [input1705_def, output1705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node23_eq]
  try dsimp only
  rw [node1704_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1705 input22)).val
theorem input1706_def : input1706 = (.seq input1705 input22) := by
  unfold input1706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1705 output22)).val
theorem output1706_def : output1706 = (.seq output1705 output22) := by
  unfold output1706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1706_skip : Flapjack.WordAlloc.isSkip output1706 = false := by
  rw [output1706_def]
  conv => lhs; cbv
  try rfl
theorem node1706_eq : Flapjack.WordAlloc.removeDeadStructural input1706 value19 value1 value2 = (output1706, value566, value1) := by
  rw [input1706_def, output1706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node22_eq]
  try dsimp only
  rw [node1705_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1706 input21)).val
theorem input1707_def : input1707 = (.seq input1706 input21) := by
  unfold input1707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1706 output21)).val
theorem output1707_def : output1707 = (.seq output1706 output21) := by
  unfold output1707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1707_skip : Flapjack.WordAlloc.isSkip output1707 = false := by
  rw [output1707_def]
  conv => lhs; cbv
  try rfl
theorem node1707_eq : Flapjack.WordAlloc.removeDeadStructural input1707 value18 value1 value2 = (output1707, value566, value1) := by
  rw [input1707_def, output1707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node21_eq]
  try dsimp only
  rw [node1706_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1707 input20)).val
theorem input1708_def : input1708 = (.seq input1707 input20) := by
  unfold input1708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1707 output20)).val
theorem output1708_def : output1708 = (.seq output1707 output20) := by
  unfold output1708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1708_skip : Flapjack.WordAlloc.isSkip output1708 = false := by
  rw [output1708_def]
  conv => lhs; cbv
  try rfl
theorem node1708_eq : Flapjack.WordAlloc.removeDeadStructural input1708 value17 value1 value2 = (output1708, value566, value1) := by
  rw [input1708_def, output1708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node20_eq]
  try dsimp only
  rw [node1707_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1708 input19)).val
theorem input1709_def : input1709 = (.seq input1708 input19) := by
  unfold input1709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1708 output19)).val
theorem output1709_def : output1709 = (.seq output1708 output19) := by
  unfold output1709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1709_skip : Flapjack.WordAlloc.isSkip output1709 = false := by
  rw [output1709_def]
  conv => lhs; cbv
  try rfl
theorem node1709_eq : Flapjack.WordAlloc.removeDeadStructural input1709 value16 value1 value2 = (output1709, value566, value1) := by
  rw [input1709_def, output1709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node19_eq]
  try dsimp only
  rw [node1708_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1709 input18)).val
theorem input1710_def : input1710 = (.seq input1709 input18) := by
  unfold input1710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1709 output18)).val
theorem output1710_def : output1710 = (.seq output1709 output18) := by
  unfold output1710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1710_skip : Flapjack.WordAlloc.isSkip output1710 = false := by
  rw [output1710_def]
  conv => lhs; cbv
  try rfl
theorem node1710_eq : Flapjack.WordAlloc.removeDeadStructural input1710 value14 value1 value2 = (output1710, value566, value1) := by
  rw [input1710_def, output1710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node18_eq]
  try dsimp only
  rw [node1709_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1710 input15)).val
theorem input1711_def : input1711 = (.seq input1710 input15) := by
  unfold input1711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1710 output15)).val
theorem output1711_def : output1711 = (.seq output1710 output15) := by
  unfold output1711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1711_skip : Flapjack.WordAlloc.isSkip output1711 = false := by
  rw [output1711_def]
  conv => lhs; cbv
  try rfl
theorem node1711_eq : Flapjack.WordAlloc.removeDeadStructural input1711 value13 value1 value2 = (output1711, value566, value1) := by
  rw [input1711_def, output1711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node15_eq]
  try dsimp only
  rw [node1710_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1711 input14)).val
theorem input1712_def : input1712 = (.seq input1711 input14) := by
  unfold input1712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1711 output14)).val
theorem output1712_def : output1712 = (.seq output1711 output14) := by
  unfold output1712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1712_skip : Flapjack.WordAlloc.isSkip output1712 = false := by
  rw [output1712_def]
  conv => lhs; cbv
  try rfl
theorem node1712_eq : Flapjack.WordAlloc.removeDeadStructural input1712 value11 value1 value2 = (output1712, value566, value1) := by
  rw [input1712_def, output1712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node14_eq]
  try dsimp only
  rw [node1711_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1712 input11)).val
theorem input1713_def : input1713 = (.seq input1712 input11) := by
  unfold input1713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1712 output11)).val
theorem output1713_def : output1713 = (.seq output1712 output11) := by
  unfold output1713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1713_skip : Flapjack.WordAlloc.isSkip output1713 = false := by
  rw [output1713_def]
  conv => lhs; cbv
  try rfl
theorem node1713_eq : Flapjack.WordAlloc.removeDeadStructural input1713 value10 value1 value2 = (output1713, value566, value1) := by
  rw [input1713_def, output1713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11_eq]
  try dsimp only
  rw [node1712_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1713 input10)).val
theorem input1714_def : input1714 = (.seq input1713 input10) := by
  unfold input1714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1713 output10)).val
theorem output1714_def : output1714 = (.seq output1713 output10) := by
  unfold output1714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1714_skip : Flapjack.WordAlloc.isSkip output1714 = false := by
  rw [output1714_def]
  conv => lhs; cbv
  try rfl
theorem node1714_eq : Flapjack.WordAlloc.removeDeadStructural input1714 value8 value1 value2 = (output1714, value566, value1) := by
  rw [input1714_def, output1714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10_eq]
  try dsimp only
  rw [node1713_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1714 input7)).val
theorem input1715_def : input1715 = (.seq input1714 input7) := by
  unfold input1715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1714 output7)).val
theorem output1715_def : output1715 = (.seq output1714 output7) := by
  unfold output1715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1715_skip : Flapjack.WordAlloc.isSkip output1715 = false := by
  rw [output1715_def]
  conv => lhs; cbv
  try rfl
theorem node1715_eq : Flapjack.WordAlloc.removeDeadStructural input1715 value7 value1 value2 = (output1715, value566, value1) := by
  rw [input1715_def, output1715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7_eq]
  try dsimp only
  rw [node1714_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1715 input6)).val
theorem input1716_def : input1716 = (.seq input1715 input6) := by
  unfold input1716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1715 output6)).val
theorem output1716_def : output1716 = (.seq output1715 output6) := by
  unfold output1716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1716_skip : Flapjack.WordAlloc.isSkip output1716 = false := by
  rw [output1716_def]
  conv => lhs; cbv
  try rfl
theorem node1716_eq : Flapjack.WordAlloc.removeDeadStructural input1716 value5 value1 value2 = (output1716, value566, value1) := by
  rw [input1716_def, output1716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6_eq]
  try dsimp only
  rw [node1715_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1716 input3)).val
theorem input1717_def : input1717 = (.seq input1716 input3) := by
  unfold input1717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1716 output3)).val
theorem output1717_def : output1717 = (.seq output1716 output3) := by
  unfold output1717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1717_skip : Flapjack.WordAlloc.isSkip output1717 = false := by
  rw [output1717_def]
  conv => lhs; cbv
  try rfl
theorem node1717_eq : Flapjack.WordAlloc.removeDeadStructural input1717 value4 value1 value2 = (output1717, value566, value1) := by
  rw [input1717_def, output1717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3_eq]
  try dsimp only
  rw [node1716_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1717 input2)).val
theorem input1718_def : input1718 = (.seq input1717 input2) := by
  unfold input1718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1717 output2)).val
theorem output1718_def : output1718 = (.seq output1717 output2) := by
  unfold output1718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1718_skip : Flapjack.WordAlloc.isSkip output1718 = false := by
  rw [output1718_def]
  conv => lhs; cbv
  try rfl
theorem node1718_eq : Flapjack.WordAlloc.removeDeadStructural input1718 value0 value1 value2 = (output1718, value566, value1) := by
  rw [input1718_def, output1718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2_eq]
  try dsimp only
  rw [node1717_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value567 : Flapjack.NumSet :=
Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln

@[irreducible, cbv_opaque] def input1719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(65, 0), (69, 2), (73, 4)])).val
theorem input1719_def : input1719 = (Flapjack.WordLangProgHOL.move 1 [(65, 0), (69, 2), (73, 4)]) := by
  unfold input1719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(65, 0), (69, 2), (73, 4)])).val
theorem output1719_def : output1719 = (Flapjack.WordLangProgHOL.move 1 [(65, 0), (69, 2), (73, 4)]) := by
  unfold output1719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1719_skip : Flapjack.WordAlloc.isSkip output1719 = false := by
  rw [output1719_def]
  conv => lhs; cbv
  try rfl
theorem node1719_eq : Flapjack.WordAlloc.removeDeadStructural input1719 value566 value1 value2 = (output1719, value567, value1) := by
  rw [input1719_def, output1719_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1719 input1718)).val
theorem input1720_def : input1720 = (.seq input1719 input1718) := by
  unfold input1720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1719 output1718)).val
theorem output1720_def : output1720 = (.seq output1719 output1718) := by
  unfold output1720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1720_skip : Flapjack.WordAlloc.isSkip output1720 = false := by
  rw [output1720_def]
  conv => lhs; cbv
  try rfl
theorem node1720_eq : Flapjack.WordAlloc.removeDeadStructural input1720 value0 value1 value2 = (output1720, value567, value1) := by
  rw [input1720_def, output1720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1718_eq]
  try dsimp only
  rw [node1719_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node1720_eq
end InitECandidate.Proofs.DeadStages347
