import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadStages664.Parallel.Data.Chunk005
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages664.Parallel
@[irreducible, cbv_opaque] def input1536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1535 input272)).val
theorem input1536_def : input1536 = (.seq input1535 input272) := by
  unfold input1536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1535 output272)).val
theorem output1536_def : output1536 = (.seq output1535 output272) := by
  unfold output1536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1536_skip : Flapjack.WordAlloc.isSkip output1536 = false := by
  rw [output1536_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1536 input269)).val
theorem input1537_def : input1537 = (.seq input1536 input269) := by
  unfold input1537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1536 output269)).val
theorem output1537_def : output1537 = (.seq output1536 output269) := by
  unfold output1537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1537_skip : Flapjack.WordAlloc.isSkip output1537 = false := by
  rw [output1537_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1537 input260)).val
theorem input1538_def : input1538 = (.seq input1537 input260) := by
  unfold input1538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1537)).val
theorem output1538_def : output1538 = (output1537) := by
  unfold output1538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1538_skip : Flapjack.WordAlloc.isSkip output1538 = false := by
  rw [output1538_def]
  exact output1537_skip


@[irreducible, cbv_opaque] def input1539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1538 input259)).val
theorem input1539_def : input1539 = (.seq input1538 input259) := by
  unfold input1539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1538 output259)).val
theorem output1539_def : output1539 = (.seq output1538 output259) := by
  unfold output1539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1539_skip : Flapjack.WordAlloc.isSkip output1539 = false := by
  rw [output1539_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1539 input258)).val
theorem input1540_def : input1540 = (.seq input1539 input258) := by
  unfold input1540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1539 output258)).val
theorem output1540_def : output1540 = (.seq output1539 output258) := by
  unfold output1540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1540_skip : Flapjack.WordAlloc.isSkip output1540 = false := by
  rw [output1540_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1540 input255)).val
theorem input1541_def : input1541 = (.seq input1540 input255) := by
  unfold input1541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1540 output255)).val
theorem output1541_def : output1541 = (.seq output1540 output255) := by
  unfold output1541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1541_skip : Flapjack.WordAlloc.isSkip output1541 = false := by
  rw [output1541_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1541 input246)).val
theorem input1542_def : input1542 = (.seq input1541 input246) := by
  unfold input1542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1541)).val
theorem output1542_def : output1542 = (output1541) := by
  unfold output1542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1542_skip : Flapjack.WordAlloc.isSkip output1542 = false := by
  rw [output1542_def]
  exact output1541_skip


@[irreducible, cbv_opaque] def input1543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1542 input245)).val
theorem input1543_def : input1543 = (.seq input1542 input245) := by
  unfold input1543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1542 output245)).val
theorem output1543_def : output1543 = (.seq output1542 output245) := by
  unfold output1543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1543_skip : Flapjack.WordAlloc.isSkip output1543 = false := by
  rw [output1543_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1543 input244)).val
theorem input1544_def : input1544 = (.seq input1543 input244) := by
  unfold input1544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1543 output244)).val
theorem output1544_def : output1544 = (.seq output1543 output244) := by
  unfold output1544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1544_skip : Flapjack.WordAlloc.isSkip output1544 = false := by
  rw [output1544_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1544 input241)).val
theorem input1545_def : input1545 = (.seq input1544 input241) := by
  unfold input1545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1544 output241)).val
theorem output1545_def : output1545 = (.seq output1544 output241) := by
  unfold output1545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1545_skip : Flapjack.WordAlloc.isSkip output1545 = false := by
  rw [output1545_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1545 input232)).val
theorem input1546_def : input1546 = (.seq input1545 input232) := by
  unfold input1546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1545)).val
theorem output1546_def : output1546 = (output1545) := by
  unfold output1546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1546_skip : Flapjack.WordAlloc.isSkip output1546 = false := by
  rw [output1546_def]
  exact output1545_skip


@[irreducible, cbv_opaque] def input1547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1546 input231)).val
theorem input1547_def : input1547 = (.seq input1546 input231) := by
  unfold input1547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1546 output231)).val
theorem output1547_def : output1547 = (.seq output1546 output231) := by
  unfold output1547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1547_skip : Flapjack.WordAlloc.isSkip output1547 = false := by
  rw [output1547_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1547 input230)).val
theorem input1548_def : input1548 = (.seq input1547 input230) := by
  unfold input1548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1547 output230)).val
theorem output1548_def : output1548 = (.seq output1547 output230) := by
  unfold output1548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1548_skip : Flapjack.WordAlloc.isSkip output1548 = false := by
  rw [output1548_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1548 input227)).val
theorem input1549_def : input1549 = (.seq input1548 input227) := by
  unfold input1549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1548 output227)).val
theorem output1549_def : output1549 = (.seq output1548 output227) := by
  unfold output1549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1549_skip : Flapjack.WordAlloc.isSkip output1549 = false := by
  rw [output1549_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1549 input218)).val
theorem input1550_def : input1550 = (.seq input1549 input218) := by
  unfold input1550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1549)).val
theorem output1550_def : output1550 = (output1549) := by
  unfold output1550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1550_skip : Flapjack.WordAlloc.isSkip output1550 = false := by
  rw [output1550_def]
  exact output1549_skip


@[irreducible, cbv_opaque] def input1551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1550 input217)).val
theorem input1551_def : input1551 = (.seq input1550 input217) := by
  unfold input1551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1550 output217)).val
theorem output1551_def : output1551 = (.seq output1550 output217) := by
  unfold output1551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1551_skip : Flapjack.WordAlloc.isSkip output1551 = false := by
  rw [output1551_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1551 input216)).val
theorem input1552_def : input1552 = (.seq input1551 input216) := by
  unfold input1552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1551 output216)).val
theorem output1552_def : output1552 = (.seq output1551 output216) := by
  unfold output1552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1552_skip : Flapjack.WordAlloc.isSkip output1552 = false := by
  rw [output1552_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1552 input213)).val
theorem input1553_def : input1553 = (.seq input1552 input213) := by
  unfold input1553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1552 output213)).val
theorem output1553_def : output1553 = (.seq output1552 output213) := by
  unfold output1553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1553_skip : Flapjack.WordAlloc.isSkip output1553 = false := by
  rw [output1553_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1553 input204)).val
theorem input1554_def : input1554 = (.seq input1553 input204) := by
  unfold input1554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1553)).val
theorem output1554_def : output1554 = (output1553) := by
  unfold output1554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1554_skip : Flapjack.WordAlloc.isSkip output1554 = false := by
  rw [output1554_def]
  exact output1553_skip


@[irreducible, cbv_opaque] def input1555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1554 input203)).val
theorem input1555_def : input1555 = (.seq input1554 input203) := by
  unfold input1555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1554 output203)).val
theorem output1555_def : output1555 = (.seq output1554 output203) := by
  unfold output1555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1555_skip : Flapjack.WordAlloc.isSkip output1555 = false := by
  rw [output1555_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1555 input202)).val
theorem input1556_def : input1556 = (.seq input1555 input202) := by
  unfold input1556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1555 output202)).val
theorem output1556_def : output1556 = (.seq output1555 output202) := by
  unfold output1556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1556_skip : Flapjack.WordAlloc.isSkip output1556 = false := by
  rw [output1556_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1556 input199)).val
theorem input1557_def : input1557 = (.seq input1556 input199) := by
  unfold input1557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1556 output199)).val
theorem output1557_def : output1557 = (.seq output1556 output199) := by
  unfold output1557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1557_skip : Flapjack.WordAlloc.isSkip output1557 = false := by
  rw [output1557_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1557 input190)).val
theorem input1558_def : input1558 = (.seq input1557 input190) := by
  unfold input1558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1557)).val
theorem output1558_def : output1558 = (output1557) := by
  unfold output1558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1558_skip : Flapjack.WordAlloc.isSkip output1558 = false := by
  rw [output1558_def]
  exact output1557_skip


@[irreducible, cbv_opaque] def input1559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1558 input189)).val
theorem input1559_def : input1559 = (.seq input1558 input189) := by
  unfold input1559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1558 output189)).val
theorem output1559_def : output1559 = (.seq output1558 output189) := by
  unfold output1559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1559_skip : Flapjack.WordAlloc.isSkip output1559 = false := by
  rw [output1559_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1559 input188)).val
theorem input1560_def : input1560 = (.seq input1559 input188) := by
  unfold input1560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1559 output188)).val
theorem output1560_def : output1560 = (.seq output1559 output188) := by
  unfold output1560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1560_skip : Flapjack.WordAlloc.isSkip output1560 = false := by
  rw [output1560_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1560 input185)).val
theorem input1561_def : input1561 = (.seq input1560 input185) := by
  unfold input1561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1560 output185)).val
theorem output1561_def : output1561 = (.seq output1560 output185) := by
  unfold output1561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1561_skip : Flapjack.WordAlloc.isSkip output1561 = false := by
  rw [output1561_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1561 input176)).val
theorem input1562_def : input1562 = (.seq input1561 input176) := by
  unfold input1562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1561)).val
theorem output1562_def : output1562 = (output1561) := by
  unfold output1562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1562_skip : Flapjack.WordAlloc.isSkip output1562 = false := by
  rw [output1562_def]
  exact output1561_skip


@[irreducible, cbv_opaque] def input1563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1562 input175)).val
theorem input1563_def : input1563 = (.seq input1562 input175) := by
  unfold input1563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1562 output175)).val
theorem output1563_def : output1563 = (.seq output1562 output175) := by
  unfold output1563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1563_skip : Flapjack.WordAlloc.isSkip output1563 = false := by
  rw [output1563_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1563 input174)).val
theorem input1564_def : input1564 = (.seq input1563 input174) := by
  unfold input1564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1563 output174)).val
theorem output1564_def : output1564 = (.seq output1563 output174) := by
  unfold output1564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1564_skip : Flapjack.WordAlloc.isSkip output1564 = false := by
  rw [output1564_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1564 input171)).val
theorem input1565_def : input1565 = (.seq input1564 input171) := by
  unfold input1565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1564 output171)).val
theorem output1565_def : output1565 = (.seq output1564 output171) := by
  unfold output1565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1565_skip : Flapjack.WordAlloc.isSkip output1565 = false := by
  rw [output1565_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1565 input162)).val
theorem input1566_def : input1566 = (.seq input1565 input162) := by
  unfold input1566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1565)).val
theorem output1566_def : output1566 = (output1565) := by
  unfold output1566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1566_skip : Flapjack.WordAlloc.isSkip output1566 = false := by
  rw [output1566_def]
  exact output1565_skip


@[irreducible, cbv_opaque] def input1567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1566 input161)).val
theorem input1567_def : input1567 = (.seq input1566 input161) := by
  unfold input1567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1566 output161)).val
theorem output1567_def : output1567 = (.seq output1566 output161) := by
  unfold output1567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1567_skip : Flapjack.WordAlloc.isSkip output1567 = false := by
  rw [output1567_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1567 input160)).val
theorem input1568_def : input1568 = (.seq input1567 input160) := by
  unfold input1568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1567 output160)).val
theorem output1568_def : output1568 = (.seq output1567 output160) := by
  unfold output1568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1568_skip : Flapjack.WordAlloc.isSkip output1568 = false := by
  rw [output1568_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1568 input157)).val
theorem input1569_def : input1569 = (.seq input1568 input157) := by
  unfold input1569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1568 output157)).val
theorem output1569_def : output1569 = (.seq output1568 output157) := by
  unfold output1569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1569_skip : Flapjack.WordAlloc.isSkip output1569 = false := by
  rw [output1569_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1569 input148)).val
theorem input1570_def : input1570 = (.seq input1569 input148) := by
  unfold input1570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1569)).val
theorem output1570_def : output1570 = (output1569) := by
  unfold output1570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1570_skip : Flapjack.WordAlloc.isSkip output1570 = false := by
  rw [output1570_def]
  exact output1569_skip


@[irreducible, cbv_opaque] def input1571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1570 input147)).val
theorem input1571_def : input1571 = (.seq input1570 input147) := by
  unfold input1571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1570 output147)).val
theorem output1571_def : output1571 = (.seq output1570 output147) := by
  unfold output1571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1571_skip : Flapjack.WordAlloc.isSkip output1571 = false := by
  rw [output1571_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1571 input146)).val
theorem input1572_def : input1572 = (.seq input1571 input146) := by
  unfold input1572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1571 output146)).val
theorem output1572_def : output1572 = (.seq output1571 output146) := by
  unfold output1572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1572_skip : Flapjack.WordAlloc.isSkip output1572 = false := by
  rw [output1572_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1572 input143)).val
theorem input1573_def : input1573 = (.seq input1572 input143) := by
  unfold input1573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1572 output143)).val
theorem output1573_def : output1573 = (.seq output1572 output143) := by
  unfold output1573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1573_skip : Flapjack.WordAlloc.isSkip output1573 = false := by
  rw [output1573_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1573 input134)).val
theorem input1574_def : input1574 = (.seq input1573 input134) := by
  unfold input1574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1573)).val
theorem output1574_def : output1574 = (output1573) := by
  unfold output1574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1574_skip : Flapjack.WordAlloc.isSkip output1574 = false := by
  rw [output1574_def]
  exact output1573_skip


@[irreducible, cbv_opaque] def input1575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1574 input133)).val
theorem input1575_def : input1575 = (.seq input1574 input133) := by
  unfold input1575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1574 output133)).val
theorem output1575_def : output1575 = (.seq output1574 output133) := by
  unfold output1575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1575_skip : Flapjack.WordAlloc.isSkip output1575 = false := by
  rw [output1575_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1575 input132)).val
theorem input1576_def : input1576 = (.seq input1575 input132) := by
  unfold input1576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1575 output132)).val
theorem output1576_def : output1576 = (.seq output1575 output132) := by
  unfold output1576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1576_skip : Flapjack.WordAlloc.isSkip output1576 = false := by
  rw [output1576_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1576 input129)).val
theorem input1577_def : input1577 = (.seq input1576 input129) := by
  unfold input1577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1576 output129)).val
theorem output1577_def : output1577 = (.seq output1576 output129) := by
  unfold output1577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1577_skip : Flapjack.WordAlloc.isSkip output1577 = false := by
  rw [output1577_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1577 input120)).val
theorem input1578_def : input1578 = (.seq input1577 input120) := by
  unfold input1578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1577)).val
theorem output1578_def : output1578 = (output1577) := by
  unfold output1578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1578_skip : Flapjack.WordAlloc.isSkip output1578 = false := by
  rw [output1578_def]
  exact output1577_skip


@[irreducible, cbv_opaque] def input1579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1578 input119)).val
theorem input1579_def : input1579 = (.seq input1578 input119) := by
  unfold input1579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1578 output119)).val
theorem output1579_def : output1579 = (.seq output1578 output119) := by
  unfold output1579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1579_skip : Flapjack.WordAlloc.isSkip output1579 = false := by
  rw [output1579_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1579 input118)).val
theorem input1580_def : input1580 = (.seq input1579 input118) := by
  unfold input1580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1579 output118)).val
theorem output1580_def : output1580 = (.seq output1579 output118) := by
  unfold output1580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1580_skip : Flapjack.WordAlloc.isSkip output1580 = false := by
  rw [output1580_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1580 input115)).val
theorem input1581_def : input1581 = (.seq input1580 input115) := by
  unfold input1581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1580 output115)).val
theorem output1581_def : output1581 = (.seq output1580 output115) := by
  unfold output1581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1581_skip : Flapjack.WordAlloc.isSkip output1581 = false := by
  rw [output1581_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1581 input106)).val
theorem input1582_def : input1582 = (.seq input1581 input106) := by
  unfold input1582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1581)).val
theorem output1582_def : output1582 = (output1581) := by
  unfold output1582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1582_skip : Flapjack.WordAlloc.isSkip output1582 = false := by
  rw [output1582_def]
  exact output1581_skip


@[irreducible, cbv_opaque] def input1583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1582 input105)).val
theorem input1583_def : input1583 = (.seq input1582 input105) := by
  unfold input1583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1582 output105)).val
theorem output1583_def : output1583 = (.seq output1582 output105) := by
  unfold output1583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1583_skip : Flapjack.WordAlloc.isSkip output1583 = false := by
  rw [output1583_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1583 input104)).val
theorem input1584_def : input1584 = (.seq input1583 input104) := by
  unfold input1584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1583 output104)).val
theorem output1584_def : output1584 = (.seq output1583 output104) := by
  unfold output1584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1584_skip : Flapjack.WordAlloc.isSkip output1584 = false := by
  rw [output1584_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1584 input101)).val
theorem input1585_def : input1585 = (.seq input1584 input101) := by
  unfold input1585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1584 output101)).val
theorem output1585_def : output1585 = (.seq output1584 output101) := by
  unfold output1585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1585_skip : Flapjack.WordAlloc.isSkip output1585 = false := by
  rw [output1585_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1585 input92)).val
theorem input1586_def : input1586 = (.seq input1585 input92) := by
  unfold input1586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1585)).val
theorem output1586_def : output1586 = (output1585) := by
  unfold output1586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1586_skip : Flapjack.WordAlloc.isSkip output1586 = false := by
  rw [output1586_def]
  exact output1585_skip


@[irreducible, cbv_opaque] def input1587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1586 input91)).val
theorem input1587_def : input1587 = (.seq input1586 input91) := by
  unfold input1587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1586 output91)).val
theorem output1587_def : output1587 = (.seq output1586 output91) := by
  unfold output1587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1587_skip : Flapjack.WordAlloc.isSkip output1587 = false := by
  rw [output1587_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1587 input90)).val
theorem input1588_def : input1588 = (.seq input1587 input90) := by
  unfold input1588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1587 output90)).val
theorem output1588_def : output1588 = (.seq output1587 output90) := by
  unfold output1588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1588_skip : Flapjack.WordAlloc.isSkip output1588 = false := by
  rw [output1588_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1588 input87)).val
theorem input1589_def : input1589 = (.seq input1588 input87) := by
  unfold input1589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1588 output87)).val
theorem output1589_def : output1589 = (.seq output1588 output87) := by
  unfold output1589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1589_skip : Flapjack.WordAlloc.isSkip output1589 = false := by
  rw [output1589_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1589 input78)).val
theorem input1590_def : input1590 = (.seq input1589 input78) := by
  unfold input1590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1589)).val
theorem output1590_def : output1590 = (output1589) := by
  unfold output1590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1590_skip : Flapjack.WordAlloc.isSkip output1590 = false := by
  rw [output1590_def]
  exact output1589_skip


@[irreducible, cbv_opaque] def input1591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1590 input77)).val
theorem input1591_def : input1591 = (.seq input1590 input77) := by
  unfold input1591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1590 output77)).val
theorem output1591_def : output1591 = (.seq output1590 output77) := by
  unfold output1591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1591_skip : Flapjack.WordAlloc.isSkip output1591 = false := by
  rw [output1591_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1591 input76)).val
theorem input1592_def : input1592 = (.seq input1591 input76) := by
  unfold input1592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1591 output76)).val
theorem output1592_def : output1592 = (.seq output1591 output76) := by
  unfold output1592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1592_skip : Flapjack.WordAlloc.isSkip output1592 = false := by
  rw [output1592_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1592 input73)).val
theorem input1593_def : input1593 = (.seq input1592 input73) := by
  unfold input1593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1592 output73)).val
theorem output1593_def : output1593 = (.seq output1592 output73) := by
  unfold output1593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1593_skip : Flapjack.WordAlloc.isSkip output1593 = false := by
  rw [output1593_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1593 input64)).val
theorem input1594_def : input1594 = (.seq input1593 input64) := by
  unfold input1594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1593)).val
theorem output1594_def : output1594 = (output1593) := by
  unfold output1594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1594_skip : Flapjack.WordAlloc.isSkip output1594 = false := by
  rw [output1594_def]
  exact output1593_skip


@[irreducible, cbv_opaque] def input1595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1594 input63)).val
theorem input1595_def : input1595 = (.seq input1594 input63) := by
  unfold input1595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1594 output63)).val
theorem output1595_def : output1595 = (.seq output1594 output63) := by
  unfold output1595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1595_skip : Flapjack.WordAlloc.isSkip output1595 = false := by
  rw [output1595_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1595 input62)).val
theorem input1596_def : input1596 = (.seq input1595 input62) := by
  unfold input1596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1595 output62)).val
theorem output1596_def : output1596 = (.seq output1595 output62) := by
  unfold output1596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1596_skip : Flapjack.WordAlloc.isSkip output1596 = false := by
  rw [output1596_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1596 input59)).val
theorem input1597_def : input1597 = (.seq input1596 input59) := by
  unfold input1597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1596 output59)).val
theorem output1597_def : output1597 = (.seq output1596 output59) := by
  unfold output1597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1597_skip : Flapjack.WordAlloc.isSkip output1597 = false := by
  rw [output1597_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1597 input50)).val
theorem input1598_def : input1598 = (.seq input1597 input50) := by
  unfold input1598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1597)).val
theorem output1598_def : output1598 = (output1597) := by
  unfold output1598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1598_skip : Flapjack.WordAlloc.isSkip output1598 = false := by
  rw [output1598_def]
  exact output1597_skip


@[irreducible, cbv_opaque] def input1599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1598 input49)).val
theorem input1599_def : input1599 = (.seq input1598 input49) := by
  unfold input1599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1598 output49)).val
theorem output1599_def : output1599 = (.seq output1598 output49) := by
  unfold output1599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1599_skip : Flapjack.WordAlloc.isSkip output1599 = false := by
  rw [output1599_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1599 input48)).val
theorem input1600_def : input1600 = (.seq input1599 input48) := by
  unfold input1600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1599 output48)).val
theorem output1600_def : output1600 = (.seq output1599 output48) := by
  unfold output1600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1600_skip : Flapjack.WordAlloc.isSkip output1600 = false := by
  rw [output1600_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1600 input45)).val
theorem input1601_def : input1601 = (.seq input1600 input45) := by
  unfold input1601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1600 output45)).val
theorem output1601_def : output1601 = (.seq output1600 output45) := by
  unfold output1601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1601_skip : Flapjack.WordAlloc.isSkip output1601 = false := by
  rw [output1601_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1601 input36)).val
theorem input1602_def : input1602 = (.seq input1601 input36) := by
  unfold input1602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1601)).val
theorem output1602_def : output1602 = (output1601) := by
  unfold output1602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1602_skip : Flapjack.WordAlloc.isSkip output1602 = false := by
  rw [output1602_def]
  exact output1601_skip


@[irreducible, cbv_opaque] def input1603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1602 input35)).val
theorem input1603_def : input1603 = (.seq input1602 input35) := by
  unfold input1603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1602 output35)).val
theorem output1603_def : output1603 = (.seq output1602 output35) := by
  unfold output1603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1603_skip : Flapjack.WordAlloc.isSkip output1603 = false := by
  rw [output1603_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1603 input34)).val
theorem input1604_def : input1604 = (.seq input1603 input34) := by
  unfold input1604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1603 output34)).val
theorem output1604_def : output1604 = (.seq output1603 output34) := by
  unfold output1604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1604_skip : Flapjack.WordAlloc.isSkip output1604 = false := by
  rw [output1604_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1604 input31)).val
theorem input1605_def : input1605 = (.seq input1604 input31) := by
  unfold input1605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1604 output31)).val
theorem output1605_def : output1605 = (.seq output1604 output31) := by
  unfold output1605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1605_skip : Flapjack.WordAlloc.isSkip output1605 = false := by
  rw [output1605_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1605 input22)).val
theorem input1606_def : input1606 = (.seq input1605 input22) := by
  unfold input1606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1605)).val
theorem output1606_def : output1606 = (output1605) := by
  unfold output1606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1606_skip : Flapjack.WordAlloc.isSkip output1606 = false := by
  rw [output1606_def]
  exact output1605_skip


@[irreducible, cbv_opaque] def input1607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1606 input21)).val
theorem input1607_def : input1607 = (.seq input1606 input21) := by
  unfold input1607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1606 output21)).val
theorem output1607_def : output1607 = (.seq output1606 output21) := by
  unfold output1607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1607_skip : Flapjack.WordAlloc.isSkip output1607 = false := by
  rw [output1607_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1607 input20)).val
theorem input1608_def : input1608 = (.seq input1607 input20) := by
  unfold input1608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1607 output20)).val
theorem output1608_def : output1608 = (.seq output1607 output20) := by
  unfold output1608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1608_skip : Flapjack.WordAlloc.isSkip output1608 = false := by
  rw [output1608_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1608 input17)).val
theorem input1609_def : input1609 = (.seq input1608 input17) := by
  unfold input1609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1608 output17)).val
theorem output1609_def : output1609 = (.seq output1608 output17) := by
  unfold output1609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1609_skip : Flapjack.WordAlloc.isSkip output1609 = false := by
  rw [output1609_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1609 input8)).val
theorem input1610_def : input1610 = (.seq input1609 input8) := by
  unfold input1610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1609)).val
theorem output1610_def : output1610 = (output1609) := by
  unfold output1610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1610_skip : Flapjack.WordAlloc.isSkip output1610 = false := by
  rw [output1610_def]
  exact output1609_skip


@[irreducible, cbv_opaque] def input1611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1610 input7)).val
theorem input1611_def : input1611 = (.seq input1610 input7) := by
  unfold input1611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1610 output7)).val
theorem output1611_def : output1611 = (.seq output1610 output7) := by
  unfold output1611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1611_skip : Flapjack.WordAlloc.isSkip output1611 = false := by
  rw [output1611_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1611 input6)).val
theorem input1612_def : input1612 = (.seq input1611 input6) := by
  unfold input1612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1611 output6)).val
theorem output1612_def : output1612 = (.seq output1611 output6) := by
  unfold output1612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1612_skip : Flapjack.WordAlloc.isSkip output1612 = false := by
  rw [output1612_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1612 input3)).val
theorem input1613_def : input1613 = (.seq input1612 input3) := by
  unfold input1613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1612 output3)).val
theorem output1613_def : output1613 = (.seq output1612 output3) := by
  unfold output1613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1613_skip : Flapjack.WordAlloc.isSkip output1613 = false := by
  rw [output1613_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1613 input2)).val
theorem input1614_def : input1614 = (.seq input1613 input2) := by
  unfold input1614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1613 output2)).val
theorem output1614_def : output1614 = (.seq output1613 output2) := by
  unfold output1614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1614_skip : Flapjack.WordAlloc.isSkip output1614 = false := by
  rw [output1614_def]
  kernel_rfl


def value625 : Flapjack.NumSet :=
Flapjack.Spt.ls PUnit.unit

@[irreducible, cbv_opaque] def input1615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(49, 0)])).val
theorem input1615_def : input1615 = (Flapjack.WordLangProgHOL.move 1 [(49, 0)]) := by
  unfold input1615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(49, 0)])).val
theorem output1615_def : output1615 = (Flapjack.WordLangProgHOL.move 1 [(49, 0)]) := by
  unfold output1615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1615_skip : Flapjack.WordAlloc.isSkip output1615 = false := by
  rw [output1615_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1615 input1614)).val
theorem input1616_def : input1616 = (.seq input1615 input1614) := by
  unfold input1616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1615 output1614)).val
theorem output1616_def : output1616 = (.seq output1615 output1614) := by
  unfold output1616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1616_skip : Flapjack.WordAlloc.isSkip output1616 = false := by
  rw [output1616_def]
  kernel_rfl



end InitECandidate.Proofs.DeadStages664.Parallel
