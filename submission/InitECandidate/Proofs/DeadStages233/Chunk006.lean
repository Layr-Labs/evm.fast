import InitECandidate.Proofs.DeadStages233.Chunk005
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages233
@[irreducible, cbv_opaque] def input1536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1535 input698)).val
theorem input1536_def : input1536 = (.seq input1535 input698) := by
  unfold input1536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1535 output698)).val
theorem output1536_def : output1536 = (.seq output1535 output698) := by
  unfold output1536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1536_skip : Flapjack.WordAlloc.isSkip output1536 = false := by
  rw [output1536_def]
  conv => lhs; cbv
  try rfl
theorem node1536_eq : Flapjack.WordAlloc.removeDeadStructural input1536 value291 value1 value2 = (output1536, value667, value1) := by
  rw [input1536_def, output1536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node698_eq]
  try dsimp only
  rw [node1535_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1536 input695)).val
theorem input1537_def : input1537 = (.seq input1536 input695) := by
  unfold input1537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1536 output695)).val
theorem output1537_def : output1537 = (.seq output1536 output695) := by
  unfold output1537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1537_skip : Flapjack.WordAlloc.isSkip output1537 = false := by
  rw [output1537_def]
  conv => lhs; cbv
  try rfl
theorem node1537_eq : Flapjack.WordAlloc.removeDeadStructural input1537 value289 value1 value2 = (output1537, value667, value1) := by
  rw [input1537_def, output1537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node695_eq]
  try dsimp only
  rw [node1536_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1537 input692)).val
theorem input1538_def : input1538 = (.seq input1537 input692) := by
  unfold input1538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1537 output692)).val
theorem output1538_def : output1538 = (.seq output1537 output692) := by
  unfold output1538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1538_skip : Flapjack.WordAlloc.isSkip output1538 = false := by
  rw [output1538_def]
  conv => lhs; cbv
  try rfl
theorem node1538_eq : Flapjack.WordAlloc.removeDeadStructural input1538 value287 value1 value2 = (output1538, value667, value1) := by
  rw [input1538_def, output1538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node692_eq]
  try dsimp only
  rw [node1537_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1538 input689)).val
theorem input1539_def : input1539 = (.seq input1538 input689) := by
  unfold input1539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1538 output689)).val
theorem output1539_def : output1539 = (.seq output1538 output689) := by
  unfold output1539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1539_skip : Flapjack.WordAlloc.isSkip output1539 = false := by
  rw [output1539_def]
  conv => lhs; cbv
  try rfl
theorem node1539_eq : Flapjack.WordAlloc.removeDeadStructural input1539 value285 value1 value2 = (output1539, value667, value1) := by
  rw [input1539_def, output1539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node689_eq]
  try dsimp only
  rw [node1538_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1539 input686)).val
theorem input1540_def : input1540 = (.seq input1539 input686) := by
  unfold input1540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1539 output686)).val
theorem output1540_def : output1540 = (.seq output1539 output686) := by
  unfold output1540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1540_skip : Flapjack.WordAlloc.isSkip output1540 = false := by
  rw [output1540_def]
  conv => lhs; cbv
  try rfl
theorem node1540_eq : Flapjack.WordAlloc.removeDeadStructural input1540 value283 value1 value2 = (output1540, value667, value1) := by
  rw [input1540_def, output1540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node686_eq]
  try dsimp only
  rw [node1539_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1540 input683)).val
theorem input1541_def : input1541 = (.seq input1540 input683) := by
  unfold input1541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1540 output683)).val
theorem output1541_def : output1541 = (.seq output1540 output683) := by
  unfold output1541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1541_skip : Flapjack.WordAlloc.isSkip output1541 = false := by
  rw [output1541_def]
  conv => lhs; cbv
  try rfl
theorem node1541_eq : Flapjack.WordAlloc.removeDeadStructural input1541 value281 value1 value2 = (output1541, value667, value1) := by
  rw [input1541_def, output1541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node683_eq]
  try dsimp only
  rw [node1540_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1541 input680)).val
theorem input1542_def : input1542 = (.seq input1541 input680) := by
  unfold input1542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1541 output680)).val
theorem output1542_def : output1542 = (.seq output1541 output680) := by
  unfold output1542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1542_skip : Flapjack.WordAlloc.isSkip output1542 = false := by
  rw [output1542_def]
  conv => lhs; cbv
  try rfl
theorem node1542_eq : Flapjack.WordAlloc.removeDeadStructural input1542 value279 value1 value2 = (output1542, value667, value1) := by
  rw [input1542_def, output1542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node680_eq]
  try dsimp only
  rw [node1541_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1542 input677)).val
theorem input1543_def : input1543 = (.seq input1542 input677) := by
  unfold input1543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1542 output677)).val
theorem output1543_def : output1543 = (.seq output1542 output677) := by
  unfold output1543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1543_skip : Flapjack.WordAlloc.isSkip output1543 = false := by
  rw [output1543_def]
  conv => lhs; cbv
  try rfl
theorem node1543_eq : Flapjack.WordAlloc.removeDeadStructural input1543 value277 value1 value2 = (output1543, value667, value1) := by
  rw [input1543_def, output1543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node677_eq]
  try dsimp only
  rw [node1542_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1543 input674)).val
theorem input1544_def : input1544 = (.seq input1543 input674) := by
  unfold input1544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1543 output674)).val
theorem output1544_def : output1544 = (.seq output1543 output674) := by
  unfold output1544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1544_skip : Flapjack.WordAlloc.isSkip output1544 = false := by
  rw [output1544_def]
  conv => lhs; cbv
  try rfl
theorem node1544_eq : Flapjack.WordAlloc.removeDeadStructural input1544 value274 value1 value2 = (output1544, value667, value1) := by
  rw [input1544_def, output1544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node674_eq]
  try dsimp only
  rw [node1543_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1544 input669)).val
theorem input1545_def : input1545 = (.seq input1544 input669) := by
  unfold input1545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1544 output669)).val
theorem output1545_def : output1545 = (.seq output1544 output669) := by
  unfold output1545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1545_skip : Flapjack.WordAlloc.isSkip output1545 = false := by
  rw [output1545_def]
  conv => lhs; cbv
  try rfl
theorem node1545_eq : Flapjack.WordAlloc.removeDeadStructural input1545 value274 value1 value2 = (output1545, value667, value1) := by
  rw [input1545_def, output1545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node669_eq]
  try dsimp only
  rw [node1544_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1545 input668)).val
theorem input1546_def : input1546 = (.seq input1545 input668) := by
  unfold input1546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1545 output668)).val
theorem output1546_def : output1546 = (.seq output1545 output668) := by
  unfold output1546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1546_skip : Flapjack.WordAlloc.isSkip output1546 = false := by
  rw [output1546_def]
  conv => lhs; cbv
  try rfl
theorem node1546_eq : Flapjack.WordAlloc.removeDeadStructural input1546 value272 value1 value2 = (output1546, value667, value1) := by
  rw [input1546_def, output1546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node668_eq]
  try dsimp only
  rw [node1545_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1546 input665)).val
theorem input1547_def : input1547 = (.seq input1546 input665) := by
  unfold input1547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1546 output665)).val
theorem output1547_def : output1547 = (.seq output1546 output665) := by
  unfold output1547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1547_skip : Flapjack.WordAlloc.isSkip output1547 = false := by
  rw [output1547_def]
  conv => lhs; cbv
  try rfl
theorem node1547_eq : Flapjack.WordAlloc.removeDeadStructural input1547 value270 value1 value2 = (output1547, value667, value1) := by
  rw [input1547_def, output1547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node665_eq]
  try dsimp only
  rw [node1546_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1547 input662)).val
theorem input1548_def : input1548 = (.seq input1547 input662) := by
  unfold input1548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1547 output662)).val
theorem output1548_def : output1548 = (.seq output1547 output662) := by
  unfold output1548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1548_skip : Flapjack.WordAlloc.isSkip output1548 = false := by
  rw [output1548_def]
  conv => lhs; cbv
  try rfl
theorem node1548_eq : Flapjack.WordAlloc.removeDeadStructural input1548 value268 value1 value2 = (output1548, value667, value1) := by
  rw [input1548_def, output1548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node662_eq]
  try dsimp only
  rw [node1547_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1548 input659)).val
theorem input1549_def : input1549 = (.seq input1548 input659) := by
  unfold input1549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1548 output659)).val
theorem output1549_def : output1549 = (.seq output1548 output659) := by
  unfold output1549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1549_skip : Flapjack.WordAlloc.isSkip output1549 = false := by
  rw [output1549_def]
  conv => lhs; cbv
  try rfl
theorem node1549_eq : Flapjack.WordAlloc.removeDeadStructural input1549 value266 value1 value2 = (output1549, value667, value1) := by
  rw [input1549_def, output1549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node659_eq]
  try dsimp only
  rw [node1548_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1549 input656)).val
theorem input1550_def : input1550 = (.seq input1549 input656) := by
  unfold input1550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1549 output656)).val
theorem output1550_def : output1550 = (.seq output1549 output656) := by
  unfold output1550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1550_skip : Flapjack.WordAlloc.isSkip output1550 = false := by
  rw [output1550_def]
  conv => lhs; cbv
  try rfl
theorem node1550_eq : Flapjack.WordAlloc.removeDeadStructural input1550 value264 value1 value2 = (output1550, value667, value1) := by
  rw [input1550_def, output1550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node656_eq]
  try dsimp only
  rw [node1549_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1550 input653)).val
theorem input1551_def : input1551 = (.seq input1550 input653) := by
  unfold input1551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1550 output653)).val
theorem output1551_def : output1551 = (.seq output1550 output653) := by
  unfold output1551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1551_skip : Flapjack.WordAlloc.isSkip output1551 = false := by
  rw [output1551_def]
  conv => lhs; cbv
  try rfl
theorem node1551_eq : Flapjack.WordAlloc.removeDeadStructural input1551 value262 value1 value2 = (output1551, value667, value1) := by
  rw [input1551_def, output1551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node653_eq]
  try dsimp only
  rw [node1550_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1551 input650)).val
theorem input1552_def : input1552 = (.seq input1551 input650) := by
  unfold input1552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1551 output650)).val
theorem output1552_def : output1552 = (.seq output1551 output650) := by
  unfold output1552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1552_skip : Flapjack.WordAlloc.isSkip output1552 = false := by
  rw [output1552_def]
  conv => lhs; cbv
  try rfl
theorem node1552_eq : Flapjack.WordAlloc.removeDeadStructural input1552 value260 value1 value2 = (output1552, value667, value1) := by
  rw [input1552_def, output1552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node650_eq]
  try dsimp only
  rw [node1551_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1552 input647)).val
theorem input1553_def : input1553 = (.seq input1552 input647) := by
  unfold input1553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1552 output647)).val
theorem output1553_def : output1553 = (.seq output1552 output647) := by
  unfold output1553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1553_skip : Flapjack.WordAlloc.isSkip output1553 = false := by
  rw [output1553_def]
  conv => lhs; cbv
  try rfl
theorem node1553_eq : Flapjack.WordAlloc.removeDeadStructural input1553 value258 value1 value2 = (output1553, value667, value1) := by
  rw [input1553_def, output1553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node647_eq]
  try dsimp only
  rw [node1552_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1553 input644)).val
theorem input1554_def : input1554 = (.seq input1553 input644) := by
  unfold input1554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1553 output644)).val
theorem output1554_def : output1554 = (.seq output1553 output644) := by
  unfold output1554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1554_skip : Flapjack.WordAlloc.isSkip output1554 = false := by
  rw [output1554_def]
  conv => lhs; cbv
  try rfl
theorem node1554_eq : Flapjack.WordAlloc.removeDeadStructural input1554 value256 value1 value2 = (output1554, value667, value1) := by
  rw [input1554_def, output1554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node644_eq]
  try dsimp only
  rw [node1553_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1554 input641)).val
theorem input1555_def : input1555 = (.seq input1554 input641) := by
  unfold input1555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1554 output641)).val
theorem output1555_def : output1555 = (.seq output1554 output641) := by
  unfold output1555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1555_skip : Flapjack.WordAlloc.isSkip output1555 = false := by
  rw [output1555_def]
  conv => lhs; cbv
  try rfl
theorem node1555_eq : Flapjack.WordAlloc.removeDeadStructural input1555 value253 value1 value2 = (output1555, value667, value1) := by
  rw [input1555_def, output1555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node641_eq]
  try dsimp only
  rw [node1554_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1555 input636)).val
theorem input1556_def : input1556 = (.seq input1555 input636) := by
  unfold input1556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1555 output636)).val
theorem output1556_def : output1556 = (.seq output1555 output636) := by
  unfold output1556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1556_skip : Flapjack.WordAlloc.isSkip output1556 = false := by
  rw [output1556_def]
  conv => lhs; cbv
  try rfl
theorem node1556_eq : Flapjack.WordAlloc.removeDeadStructural input1556 value253 value1 value2 = (output1556, value667, value1) := by
  rw [input1556_def, output1556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node636_eq]
  try dsimp only
  rw [node1555_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1556 input635)).val
theorem input1557_def : input1557 = (.seq input1556 input635) := by
  unfold input1557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1556 output635)).val
theorem output1557_def : output1557 = (.seq output1556 output635) := by
  unfold output1557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1557_skip : Flapjack.WordAlloc.isSkip output1557 = false := by
  rw [output1557_def]
  conv => lhs; cbv
  try rfl
theorem node1557_eq : Flapjack.WordAlloc.removeDeadStructural input1557 value251 value1 value2 = (output1557, value667, value1) := by
  rw [input1557_def, output1557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node635_eq]
  try dsimp only
  rw [node1556_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1557 input632)).val
theorem input1558_def : input1558 = (.seq input1557 input632) := by
  unfold input1558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1557 output632)).val
theorem output1558_def : output1558 = (.seq output1557 output632) := by
  unfold output1558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1558_skip : Flapjack.WordAlloc.isSkip output1558 = false := by
  rw [output1558_def]
  conv => lhs; cbv
  try rfl
theorem node1558_eq : Flapjack.WordAlloc.removeDeadStructural input1558 value249 value1 value2 = (output1558, value667, value1) := by
  rw [input1558_def, output1558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node632_eq]
  try dsimp only
  rw [node1557_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1558 input629)).val
theorem input1559_def : input1559 = (.seq input1558 input629) := by
  unfold input1559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1558 output629)).val
theorem output1559_def : output1559 = (.seq output1558 output629) := by
  unfold output1559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1559_skip : Flapjack.WordAlloc.isSkip output1559 = false := by
  rw [output1559_def]
  conv => lhs; cbv
  try rfl
theorem node1559_eq : Flapjack.WordAlloc.removeDeadStructural input1559 value247 value1 value2 = (output1559, value667, value1) := by
  rw [input1559_def, output1559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node629_eq]
  try dsimp only
  rw [node1558_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1559 input626)).val
theorem input1560_def : input1560 = (.seq input1559 input626) := by
  unfold input1560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1559 output626)).val
theorem output1560_def : output1560 = (.seq output1559 output626) := by
  unfold output1560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1560_skip : Flapjack.WordAlloc.isSkip output1560 = false := by
  rw [output1560_def]
  conv => lhs; cbv
  try rfl
theorem node1560_eq : Flapjack.WordAlloc.removeDeadStructural input1560 value245 value1 value2 = (output1560, value667, value1) := by
  rw [input1560_def, output1560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node626_eq]
  try dsimp only
  rw [node1559_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1560 input623)).val
theorem input1561_def : input1561 = (.seq input1560 input623) := by
  unfold input1561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1560 output623)).val
theorem output1561_def : output1561 = (.seq output1560 output623) := by
  unfold output1561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1561_skip : Flapjack.WordAlloc.isSkip output1561 = false := by
  rw [output1561_def]
  conv => lhs; cbv
  try rfl
theorem node1561_eq : Flapjack.WordAlloc.removeDeadStructural input1561 value243 value1 value2 = (output1561, value667, value1) := by
  rw [input1561_def, output1561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node623_eq]
  try dsimp only
  rw [node1560_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1561 input620)).val
theorem input1562_def : input1562 = (.seq input1561 input620) := by
  unfold input1562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1561 output620)).val
theorem output1562_def : output1562 = (.seq output1561 output620) := by
  unfold output1562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1562_skip : Flapjack.WordAlloc.isSkip output1562 = false := by
  rw [output1562_def]
  conv => lhs; cbv
  try rfl
theorem node1562_eq : Flapjack.WordAlloc.removeDeadStructural input1562 value241 value1 value2 = (output1562, value667, value1) := by
  rw [input1562_def, output1562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node620_eq]
  try dsimp only
  rw [node1561_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1562 input617)).val
theorem input1563_def : input1563 = (.seq input1562 input617) := by
  unfold input1563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1562 output617)).val
theorem output1563_def : output1563 = (.seq output1562 output617) := by
  unfold output1563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1563_skip : Flapjack.WordAlloc.isSkip output1563 = false := by
  rw [output1563_def]
  conv => lhs; cbv
  try rfl
theorem node1563_eq : Flapjack.WordAlloc.removeDeadStructural input1563 value239 value1 value2 = (output1563, value667, value1) := by
  rw [input1563_def, output1563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node617_eq]
  try dsimp only
  rw [node1562_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1563 input614)).val
theorem input1564_def : input1564 = (.seq input1563 input614) := by
  unfold input1564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1563 output614)).val
theorem output1564_def : output1564 = (.seq output1563 output614) := by
  unfold output1564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1564_skip : Flapjack.WordAlloc.isSkip output1564 = false := by
  rw [output1564_def]
  conv => lhs; cbv
  try rfl
theorem node1564_eq : Flapjack.WordAlloc.removeDeadStructural input1564 value237 value1 value2 = (output1564, value667, value1) := by
  rw [input1564_def, output1564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node614_eq]
  try dsimp only
  rw [node1563_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1564 input611)).val
theorem input1565_def : input1565 = (.seq input1564 input611) := by
  unfold input1565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1564 output611)).val
theorem output1565_def : output1565 = (.seq output1564 output611) := by
  unfold output1565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1565_skip : Flapjack.WordAlloc.isSkip output1565 = false := by
  rw [output1565_def]
  conv => lhs; cbv
  try rfl
theorem node1565_eq : Flapjack.WordAlloc.removeDeadStructural input1565 value235 value1 value2 = (output1565, value667, value1) := by
  rw [input1565_def, output1565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node611_eq]
  try dsimp only
  rw [node1564_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1565 input608)).val
theorem input1566_def : input1566 = (.seq input1565 input608) := by
  unfold input1566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1565 output608)).val
theorem output1566_def : output1566 = (.seq output1565 output608) := by
  unfold output1566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1566_skip : Flapjack.WordAlloc.isSkip output1566 = false := by
  rw [output1566_def]
  conv => lhs; cbv
  try rfl
theorem node1566_eq : Flapjack.WordAlloc.removeDeadStructural input1566 value232 value1 value2 = (output1566, value667, value1) := by
  rw [input1566_def, output1566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node608_eq]
  try dsimp only
  rw [node1565_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1566 input603)).val
theorem input1567_def : input1567 = (.seq input1566 input603) := by
  unfold input1567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1566 output603)).val
theorem output1567_def : output1567 = (.seq output1566 output603) := by
  unfold output1567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1567_skip : Flapjack.WordAlloc.isSkip output1567 = false := by
  rw [output1567_def]
  conv => lhs; cbv
  try rfl
theorem node1567_eq : Flapjack.WordAlloc.removeDeadStructural input1567 value232 value1 value2 = (output1567, value667, value1) := by
  rw [input1567_def, output1567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node603_eq]
  try dsimp only
  rw [node1566_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1567 input602)).val
theorem input1568_def : input1568 = (.seq input1567 input602) := by
  unfold input1568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1567 output602)).val
theorem output1568_def : output1568 = (.seq output1567 output602) := by
  unfold output1568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1568_skip : Flapjack.WordAlloc.isSkip output1568 = false := by
  rw [output1568_def]
  conv => lhs; cbv
  try rfl
theorem node1568_eq : Flapjack.WordAlloc.removeDeadStructural input1568 value230 value1 value2 = (output1568, value667, value1) := by
  rw [input1568_def, output1568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node602_eq]
  try dsimp only
  rw [node1567_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1568 input599)).val
theorem input1569_def : input1569 = (.seq input1568 input599) := by
  unfold input1569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1568 output599)).val
theorem output1569_def : output1569 = (.seq output1568 output599) := by
  unfold output1569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1569_skip : Flapjack.WordAlloc.isSkip output1569 = false := by
  rw [output1569_def]
  conv => lhs; cbv
  try rfl
theorem node1569_eq : Flapjack.WordAlloc.removeDeadStructural input1569 value228 value1 value2 = (output1569, value667, value1) := by
  rw [input1569_def, output1569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node599_eq]
  try dsimp only
  rw [node1568_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1569 input596)).val
theorem input1570_def : input1570 = (.seq input1569 input596) := by
  unfold input1570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1569 output596)).val
theorem output1570_def : output1570 = (.seq output1569 output596) := by
  unfold output1570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1570_skip : Flapjack.WordAlloc.isSkip output1570 = false := by
  rw [output1570_def]
  conv => lhs; cbv
  try rfl
theorem node1570_eq : Flapjack.WordAlloc.removeDeadStructural input1570 value226 value1 value2 = (output1570, value667, value1) := by
  rw [input1570_def, output1570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node596_eq]
  try dsimp only
  rw [node1569_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1570 input593)).val
theorem input1571_def : input1571 = (.seq input1570 input593) := by
  unfold input1571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1570 output593)).val
theorem output1571_def : output1571 = (.seq output1570 output593) := by
  unfold output1571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1571_skip : Flapjack.WordAlloc.isSkip output1571 = false := by
  rw [output1571_def]
  conv => lhs; cbv
  try rfl
theorem node1571_eq : Flapjack.WordAlloc.removeDeadStructural input1571 value224 value1 value2 = (output1571, value667, value1) := by
  rw [input1571_def, output1571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node593_eq]
  try dsimp only
  rw [node1570_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1571 input590)).val
theorem input1572_def : input1572 = (.seq input1571 input590) := by
  unfold input1572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1571 output590)).val
theorem output1572_def : output1572 = (.seq output1571 output590) := by
  unfold output1572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1572_skip : Flapjack.WordAlloc.isSkip output1572 = false := by
  rw [output1572_def]
  conv => lhs; cbv
  try rfl
theorem node1572_eq : Flapjack.WordAlloc.removeDeadStructural input1572 value222 value1 value2 = (output1572, value667, value1) := by
  rw [input1572_def, output1572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node590_eq]
  try dsimp only
  rw [node1571_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1572 input587)).val
theorem input1573_def : input1573 = (.seq input1572 input587) := by
  unfold input1573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1572 output587)).val
theorem output1573_def : output1573 = (.seq output1572 output587) := by
  unfold output1573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1573_skip : Flapjack.WordAlloc.isSkip output1573 = false := by
  rw [output1573_def]
  conv => lhs; cbv
  try rfl
theorem node1573_eq : Flapjack.WordAlloc.removeDeadStructural input1573 value220 value1 value2 = (output1573, value667, value1) := by
  rw [input1573_def, output1573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node587_eq]
  try dsimp only
  rw [node1572_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1573 input584)).val
theorem input1574_def : input1574 = (.seq input1573 input584) := by
  unfold input1574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1573 output584)).val
theorem output1574_def : output1574 = (.seq output1573 output584) := by
  unfold output1574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1574_skip : Flapjack.WordAlloc.isSkip output1574 = false := by
  rw [output1574_def]
  conv => lhs; cbv
  try rfl
theorem node1574_eq : Flapjack.WordAlloc.removeDeadStructural input1574 value218 value1 value2 = (output1574, value667, value1) := by
  rw [input1574_def, output1574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node584_eq]
  try dsimp only
  rw [node1573_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1574 input581)).val
theorem input1575_def : input1575 = (.seq input1574 input581) := by
  unfold input1575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1574 output581)).val
theorem output1575_def : output1575 = (.seq output1574 output581) := by
  unfold output1575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1575_skip : Flapjack.WordAlloc.isSkip output1575 = false := by
  rw [output1575_def]
  conv => lhs; cbv
  try rfl
theorem node1575_eq : Flapjack.WordAlloc.removeDeadStructural input1575 value216 value1 value2 = (output1575, value667, value1) := by
  rw [input1575_def, output1575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node581_eq]
  try dsimp only
  rw [node1574_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1575 input578)).val
theorem input1576_def : input1576 = (.seq input1575 input578) := by
  unfold input1576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1575 output578)).val
theorem output1576_def : output1576 = (.seq output1575 output578) := by
  unfold output1576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1576_skip : Flapjack.WordAlloc.isSkip output1576 = false := by
  rw [output1576_def]
  conv => lhs; cbv
  try rfl
theorem node1576_eq : Flapjack.WordAlloc.removeDeadStructural input1576 value214 value1 value2 = (output1576, value667, value1) := by
  rw [input1576_def, output1576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node578_eq]
  try dsimp only
  rw [node1575_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1576 input575)).val
theorem input1577_def : input1577 = (.seq input1576 input575) := by
  unfold input1577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1576 output575)).val
theorem output1577_def : output1577 = (.seq output1576 output575) := by
  unfold output1577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1577_skip : Flapjack.WordAlloc.isSkip output1577 = false := by
  rw [output1577_def]
  conv => lhs; cbv
  try rfl
theorem node1577_eq : Flapjack.WordAlloc.removeDeadStructural input1577 value211 value1 value2 = (output1577, value667, value1) := by
  rw [input1577_def, output1577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node575_eq]
  try dsimp only
  rw [node1576_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1577 input570)).val
theorem input1578_def : input1578 = (.seq input1577 input570) := by
  unfold input1578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1577 output570)).val
theorem output1578_def : output1578 = (.seq output1577 output570) := by
  unfold output1578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1578_skip : Flapjack.WordAlloc.isSkip output1578 = false := by
  rw [output1578_def]
  conv => lhs; cbv
  try rfl
theorem node1578_eq : Flapjack.WordAlloc.removeDeadStructural input1578 value211 value1 value2 = (output1578, value667, value1) := by
  rw [input1578_def, output1578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node570_eq]
  try dsimp only
  rw [node1577_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1578 input569)).val
theorem input1579_def : input1579 = (.seq input1578 input569) := by
  unfold input1579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1578 output569)).val
theorem output1579_def : output1579 = (.seq output1578 output569) := by
  unfold output1579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1579_skip : Flapjack.WordAlloc.isSkip output1579 = false := by
  rw [output1579_def]
  conv => lhs; cbv
  try rfl
theorem node1579_eq : Flapjack.WordAlloc.removeDeadStructural input1579 value209 value1 value2 = (output1579, value667, value1) := by
  rw [input1579_def, output1579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node569_eq]
  try dsimp only
  rw [node1578_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1579 input566)).val
theorem input1580_def : input1580 = (.seq input1579 input566) := by
  unfold input1580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1579 output566)).val
theorem output1580_def : output1580 = (.seq output1579 output566) := by
  unfold output1580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1580_skip : Flapjack.WordAlloc.isSkip output1580 = false := by
  rw [output1580_def]
  conv => lhs; cbv
  try rfl
theorem node1580_eq : Flapjack.WordAlloc.removeDeadStructural input1580 value207 value1 value2 = (output1580, value667, value1) := by
  rw [input1580_def, output1580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node566_eq]
  try dsimp only
  rw [node1579_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1580 input563)).val
theorem input1581_def : input1581 = (.seq input1580 input563) := by
  unfold input1581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1580 output563)).val
theorem output1581_def : output1581 = (.seq output1580 output563) := by
  unfold output1581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1581_skip : Flapjack.WordAlloc.isSkip output1581 = false := by
  rw [output1581_def]
  conv => lhs; cbv
  try rfl
theorem node1581_eq : Flapjack.WordAlloc.removeDeadStructural input1581 value205 value1 value2 = (output1581, value667, value1) := by
  rw [input1581_def, output1581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node563_eq]
  try dsimp only
  rw [node1580_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1581 input560)).val
theorem input1582_def : input1582 = (.seq input1581 input560) := by
  unfold input1582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1581 output560)).val
theorem output1582_def : output1582 = (.seq output1581 output560) := by
  unfold output1582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1582_skip : Flapjack.WordAlloc.isSkip output1582 = false := by
  rw [output1582_def]
  conv => lhs; cbv
  try rfl
theorem node1582_eq : Flapjack.WordAlloc.removeDeadStructural input1582 value203 value1 value2 = (output1582, value667, value1) := by
  rw [input1582_def, output1582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node560_eq]
  try dsimp only
  rw [node1581_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1582 input557)).val
theorem input1583_def : input1583 = (.seq input1582 input557) := by
  unfold input1583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1582 output557)).val
theorem output1583_def : output1583 = (.seq output1582 output557) := by
  unfold output1583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1583_skip : Flapjack.WordAlloc.isSkip output1583 = false := by
  rw [output1583_def]
  conv => lhs; cbv
  try rfl
theorem node1583_eq : Flapjack.WordAlloc.removeDeadStructural input1583 value201 value1 value2 = (output1583, value667, value1) := by
  rw [input1583_def, output1583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node557_eq]
  try dsimp only
  rw [node1582_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1583 input554)).val
theorem input1584_def : input1584 = (.seq input1583 input554) := by
  unfold input1584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1583 output554)).val
theorem output1584_def : output1584 = (.seq output1583 output554) := by
  unfold output1584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1584_skip : Flapjack.WordAlloc.isSkip output1584 = false := by
  rw [output1584_def]
  conv => lhs; cbv
  try rfl
theorem node1584_eq : Flapjack.WordAlloc.removeDeadStructural input1584 value199 value1 value2 = (output1584, value667, value1) := by
  rw [input1584_def, output1584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node554_eq]
  try dsimp only
  rw [node1583_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1584 input551)).val
theorem input1585_def : input1585 = (.seq input1584 input551) := by
  unfold input1585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1584 output551)).val
theorem output1585_def : output1585 = (.seq output1584 output551) := by
  unfold output1585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1585_skip : Flapjack.WordAlloc.isSkip output1585 = false := by
  rw [output1585_def]
  conv => lhs; cbv
  try rfl
theorem node1585_eq : Flapjack.WordAlloc.removeDeadStructural input1585 value197 value1 value2 = (output1585, value667, value1) := by
  rw [input1585_def, output1585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node551_eq]
  try dsimp only
  rw [node1584_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1585 input548)).val
theorem input1586_def : input1586 = (.seq input1585 input548) := by
  unfold input1586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1585 output548)).val
theorem output1586_def : output1586 = (.seq output1585 output548) := by
  unfold output1586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1586_skip : Flapjack.WordAlloc.isSkip output1586 = false := by
  rw [output1586_def]
  conv => lhs; cbv
  try rfl
theorem node1586_eq : Flapjack.WordAlloc.removeDeadStructural input1586 value195 value1 value2 = (output1586, value667, value1) := by
  rw [input1586_def, output1586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node548_eq]
  try dsimp only
  rw [node1585_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1586 input545)).val
theorem input1587_def : input1587 = (.seq input1586 input545) := by
  unfold input1587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1586 output545)).val
theorem output1587_def : output1587 = (.seq output1586 output545) := by
  unfold output1587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1587_skip : Flapjack.WordAlloc.isSkip output1587 = false := by
  rw [output1587_def]
  conv => lhs; cbv
  try rfl
theorem node1587_eq : Flapjack.WordAlloc.removeDeadStructural input1587 value193 value1 value2 = (output1587, value667, value1) := by
  rw [input1587_def, output1587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node545_eq]
  try dsimp only
  rw [node1586_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1587 input542)).val
theorem input1588_def : input1588 = (.seq input1587 input542) := by
  unfold input1588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1587 output542)).val
theorem output1588_def : output1588 = (.seq output1587 output542) := by
  unfold output1588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1588_skip : Flapjack.WordAlloc.isSkip output1588 = false := by
  rw [output1588_def]
  conv => lhs; cbv
  try rfl
theorem node1588_eq : Flapjack.WordAlloc.removeDeadStructural input1588 value190 value1 value2 = (output1588, value667, value1) := by
  rw [input1588_def, output1588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node542_eq]
  try dsimp only
  rw [node1587_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1588 input537)).val
theorem input1589_def : input1589 = (.seq input1588 input537) := by
  unfold input1589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1588 output537)).val
theorem output1589_def : output1589 = (.seq output1588 output537) := by
  unfold output1589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1589_skip : Flapjack.WordAlloc.isSkip output1589 = false := by
  rw [output1589_def]
  conv => lhs; cbv
  try rfl
theorem node1589_eq : Flapjack.WordAlloc.removeDeadStructural input1589 value190 value1 value2 = (output1589, value667, value1) := by
  rw [input1589_def, output1589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node537_eq]
  try dsimp only
  rw [node1588_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1589 input536)).val
theorem input1590_def : input1590 = (.seq input1589 input536) := by
  unfold input1590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1589 output536)).val
theorem output1590_def : output1590 = (.seq output1589 output536) := by
  unfold output1590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1590_skip : Flapjack.WordAlloc.isSkip output1590 = false := by
  rw [output1590_def]
  conv => lhs; cbv
  try rfl
theorem node1590_eq : Flapjack.WordAlloc.removeDeadStructural input1590 value188 value1 value2 = (output1590, value667, value1) := by
  rw [input1590_def, output1590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node536_eq]
  try dsimp only
  rw [node1589_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1590 input533)).val
theorem input1591_def : input1591 = (.seq input1590 input533) := by
  unfold input1591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1590 output533)).val
theorem output1591_def : output1591 = (.seq output1590 output533) := by
  unfold output1591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1591_skip : Flapjack.WordAlloc.isSkip output1591 = false := by
  rw [output1591_def]
  conv => lhs; cbv
  try rfl
theorem node1591_eq : Flapjack.WordAlloc.removeDeadStructural input1591 value186 value1 value2 = (output1591, value667, value1) := by
  rw [input1591_def, output1591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node533_eq]
  try dsimp only
  rw [node1590_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1591 input530)).val
theorem input1592_def : input1592 = (.seq input1591 input530) := by
  unfold input1592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1591 output530)).val
theorem output1592_def : output1592 = (.seq output1591 output530) := by
  unfold output1592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1592_skip : Flapjack.WordAlloc.isSkip output1592 = false := by
  rw [output1592_def]
  conv => lhs; cbv
  try rfl
theorem node1592_eq : Flapjack.WordAlloc.removeDeadStructural input1592 value184 value1 value2 = (output1592, value667, value1) := by
  rw [input1592_def, output1592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node530_eq]
  try dsimp only
  rw [node1591_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1592 input527)).val
theorem input1593_def : input1593 = (.seq input1592 input527) := by
  unfold input1593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1592 output527)).val
theorem output1593_def : output1593 = (.seq output1592 output527) := by
  unfold output1593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1593_skip : Flapjack.WordAlloc.isSkip output1593 = false := by
  rw [output1593_def]
  conv => lhs; cbv
  try rfl
theorem node1593_eq : Flapjack.WordAlloc.removeDeadStructural input1593 value182 value1 value2 = (output1593, value667, value1) := by
  rw [input1593_def, output1593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node527_eq]
  try dsimp only
  rw [node1592_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1593 input524)).val
theorem input1594_def : input1594 = (.seq input1593 input524) := by
  unfold input1594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1593 output524)).val
theorem output1594_def : output1594 = (.seq output1593 output524) := by
  unfold output1594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1594_skip : Flapjack.WordAlloc.isSkip output1594 = false := by
  rw [output1594_def]
  conv => lhs; cbv
  try rfl
theorem node1594_eq : Flapjack.WordAlloc.removeDeadStructural input1594 value180 value1 value2 = (output1594, value667, value1) := by
  rw [input1594_def, output1594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node524_eq]
  try dsimp only
  rw [node1593_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1594 input521)).val
theorem input1595_def : input1595 = (.seq input1594 input521) := by
  unfold input1595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1594 output521)).val
theorem output1595_def : output1595 = (.seq output1594 output521) := by
  unfold output1595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1595_skip : Flapjack.WordAlloc.isSkip output1595 = false := by
  rw [output1595_def]
  conv => lhs; cbv
  try rfl
theorem node1595_eq : Flapjack.WordAlloc.removeDeadStructural input1595 value178 value1 value2 = (output1595, value667, value1) := by
  rw [input1595_def, output1595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node521_eq]
  try dsimp only
  rw [node1594_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1595 input518)).val
theorem input1596_def : input1596 = (.seq input1595 input518) := by
  unfold input1596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1595 output518)).val
theorem output1596_def : output1596 = (.seq output1595 output518) := by
  unfold output1596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1596_skip : Flapjack.WordAlloc.isSkip output1596 = false := by
  rw [output1596_def]
  conv => lhs; cbv
  try rfl
theorem node1596_eq : Flapjack.WordAlloc.removeDeadStructural input1596 value176 value1 value2 = (output1596, value667, value1) := by
  rw [input1596_def, output1596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node518_eq]
  try dsimp only
  rw [node1595_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1596 input515)).val
theorem input1597_def : input1597 = (.seq input1596 input515) := by
  unfold input1597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1596 output515)).val
theorem output1597_def : output1597 = (.seq output1596 output515) := by
  unfold output1597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1597_skip : Flapjack.WordAlloc.isSkip output1597 = false := by
  rw [output1597_def]
  conv => lhs; cbv
  try rfl
theorem node1597_eq : Flapjack.WordAlloc.removeDeadStructural input1597 value174 value1 value2 = (output1597, value667, value1) := by
  rw [input1597_def, output1597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node515_eq]
  try dsimp only
  rw [node1596_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1597 input512)).val
theorem input1598_def : input1598 = (.seq input1597 input512) := by
  unfold input1598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1597 output512)).val
theorem output1598_def : output1598 = (.seq output1597 output512) := by
  unfold output1598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1598_skip : Flapjack.WordAlloc.isSkip output1598 = false := by
  rw [output1598_def]
  conv => lhs; cbv
  try rfl
theorem node1598_eq : Flapjack.WordAlloc.removeDeadStructural input1598 value172 value1 value2 = (output1598, value667, value1) := by
  rw [input1598_def, output1598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node512_eq]
  try dsimp only
  rw [node1597_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1598 input509)).val
theorem input1599_def : input1599 = (.seq input1598 input509) := by
  unfold input1599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1598 output509)).val
theorem output1599_def : output1599 = (.seq output1598 output509) := by
  unfold output1599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1599_skip : Flapjack.WordAlloc.isSkip output1599 = false := by
  rw [output1599_def]
  conv => lhs; cbv
  try rfl
theorem node1599_eq : Flapjack.WordAlloc.removeDeadStructural input1599 value169 value1 value2 = (output1599, value667, value1) := by
  rw [input1599_def, output1599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node509_eq]
  try dsimp only
  rw [node1598_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1599 input504)).val
theorem input1600_def : input1600 = (.seq input1599 input504) := by
  unfold input1600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1599 output504)).val
theorem output1600_def : output1600 = (.seq output1599 output504) := by
  unfold output1600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1600_skip : Flapjack.WordAlloc.isSkip output1600 = false := by
  rw [output1600_def]
  conv => lhs; cbv
  try rfl
theorem node1600_eq : Flapjack.WordAlloc.removeDeadStructural input1600 value169 value1 value2 = (output1600, value667, value1) := by
  rw [input1600_def, output1600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node504_eq]
  try dsimp only
  rw [node1599_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1600 input503)).val
theorem input1601_def : input1601 = (.seq input1600 input503) := by
  unfold input1601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1600 output503)).val
theorem output1601_def : output1601 = (.seq output1600 output503) := by
  unfold output1601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1601_skip : Flapjack.WordAlloc.isSkip output1601 = false := by
  rw [output1601_def]
  conv => lhs; cbv
  try rfl
theorem node1601_eq : Flapjack.WordAlloc.removeDeadStructural input1601 value167 value1 value2 = (output1601, value667, value1) := by
  rw [input1601_def, output1601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node503_eq]
  try dsimp only
  rw [node1600_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1601 input500)).val
theorem input1602_def : input1602 = (.seq input1601 input500) := by
  unfold input1602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1601 output500)).val
theorem output1602_def : output1602 = (.seq output1601 output500) := by
  unfold output1602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1602_skip : Flapjack.WordAlloc.isSkip output1602 = false := by
  rw [output1602_def]
  conv => lhs; cbv
  try rfl
theorem node1602_eq : Flapjack.WordAlloc.removeDeadStructural input1602 value165 value1 value2 = (output1602, value667, value1) := by
  rw [input1602_def, output1602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node500_eq]
  try dsimp only
  rw [node1601_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1602 input497)).val
theorem input1603_def : input1603 = (.seq input1602 input497) := by
  unfold input1603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1602 output497)).val
theorem output1603_def : output1603 = (.seq output1602 output497) := by
  unfold output1603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1603_skip : Flapjack.WordAlloc.isSkip output1603 = false := by
  rw [output1603_def]
  conv => lhs; cbv
  try rfl
theorem node1603_eq : Flapjack.WordAlloc.removeDeadStructural input1603 value163 value1 value2 = (output1603, value667, value1) := by
  rw [input1603_def, output1603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node497_eq]
  try dsimp only
  rw [node1602_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1603 input494)).val
theorem input1604_def : input1604 = (.seq input1603 input494) := by
  unfold input1604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1603 output494)).val
theorem output1604_def : output1604 = (.seq output1603 output494) := by
  unfold output1604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1604_skip : Flapjack.WordAlloc.isSkip output1604 = false := by
  rw [output1604_def]
  conv => lhs; cbv
  try rfl
theorem node1604_eq : Flapjack.WordAlloc.removeDeadStructural input1604 value161 value1 value2 = (output1604, value667, value1) := by
  rw [input1604_def, output1604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node494_eq]
  try dsimp only
  rw [node1603_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1604 input491)).val
theorem input1605_def : input1605 = (.seq input1604 input491) := by
  unfold input1605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1604 output491)).val
theorem output1605_def : output1605 = (.seq output1604 output491) := by
  unfold output1605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1605_skip : Flapjack.WordAlloc.isSkip output1605 = false := by
  rw [output1605_def]
  conv => lhs; cbv
  try rfl
theorem node1605_eq : Flapjack.WordAlloc.removeDeadStructural input1605 value159 value1 value2 = (output1605, value667, value1) := by
  rw [input1605_def, output1605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node491_eq]
  try dsimp only
  rw [node1604_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1605 input488)).val
theorem input1606_def : input1606 = (.seq input1605 input488) := by
  unfold input1606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1605 output488)).val
theorem output1606_def : output1606 = (.seq output1605 output488) := by
  unfold output1606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1606_skip : Flapjack.WordAlloc.isSkip output1606 = false := by
  rw [output1606_def]
  conv => lhs; cbv
  try rfl
theorem node1606_eq : Flapjack.WordAlloc.removeDeadStructural input1606 value157 value1 value2 = (output1606, value667, value1) := by
  rw [input1606_def, output1606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node488_eq]
  try dsimp only
  rw [node1605_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1606 input485)).val
theorem input1607_def : input1607 = (.seq input1606 input485) := by
  unfold input1607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1606 output485)).val
theorem output1607_def : output1607 = (.seq output1606 output485) := by
  unfold output1607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1607_skip : Flapjack.WordAlloc.isSkip output1607 = false := by
  rw [output1607_def]
  conv => lhs; cbv
  try rfl
theorem node1607_eq : Flapjack.WordAlloc.removeDeadStructural input1607 value155 value1 value2 = (output1607, value667, value1) := by
  rw [input1607_def, output1607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node485_eq]
  try dsimp only
  rw [node1606_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1607 input482)).val
theorem input1608_def : input1608 = (.seq input1607 input482) := by
  unfold input1608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1607 output482)).val
theorem output1608_def : output1608 = (.seq output1607 output482) := by
  unfold output1608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1608_skip : Flapjack.WordAlloc.isSkip output1608 = false := by
  rw [output1608_def]
  conv => lhs; cbv
  try rfl
theorem node1608_eq : Flapjack.WordAlloc.removeDeadStructural input1608 value153 value1 value2 = (output1608, value667, value1) := by
  rw [input1608_def, output1608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node482_eq]
  try dsimp only
  rw [node1607_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1608 input479)).val
theorem input1609_def : input1609 = (.seq input1608 input479) := by
  unfold input1609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1608 output479)).val
theorem output1609_def : output1609 = (.seq output1608 output479) := by
  unfold output1609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1609_skip : Flapjack.WordAlloc.isSkip output1609 = false := by
  rw [output1609_def]
  conv => lhs; cbv
  try rfl
theorem node1609_eq : Flapjack.WordAlloc.removeDeadStructural input1609 value151 value1 value2 = (output1609, value667, value1) := by
  rw [input1609_def, output1609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node479_eq]
  try dsimp only
  rw [node1608_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1609 input476)).val
theorem input1610_def : input1610 = (.seq input1609 input476) := by
  unfold input1610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1609 output476)).val
theorem output1610_def : output1610 = (.seq output1609 output476) := by
  unfold output1610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1610_skip : Flapjack.WordAlloc.isSkip output1610 = false := by
  rw [output1610_def]
  conv => lhs; cbv
  try rfl
theorem node1610_eq : Flapjack.WordAlloc.removeDeadStructural input1610 value148 value1 value2 = (output1610, value667, value1) := by
  rw [input1610_def, output1610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node476_eq]
  try dsimp only
  rw [node1609_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1610 input471)).val
theorem input1611_def : input1611 = (.seq input1610 input471) := by
  unfold input1611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1610 output471)).val
theorem output1611_def : output1611 = (.seq output1610 output471) := by
  unfold output1611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1611_skip : Flapjack.WordAlloc.isSkip output1611 = false := by
  rw [output1611_def]
  conv => lhs; cbv
  try rfl
theorem node1611_eq : Flapjack.WordAlloc.removeDeadStructural input1611 value148 value1 value2 = (output1611, value667, value1) := by
  rw [input1611_def, output1611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node471_eq]
  try dsimp only
  rw [node1610_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1611 input470)).val
theorem input1612_def : input1612 = (.seq input1611 input470) := by
  unfold input1612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1611 output470)).val
theorem output1612_def : output1612 = (.seq output1611 output470) := by
  unfold output1612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1612_skip : Flapjack.WordAlloc.isSkip output1612 = false := by
  rw [output1612_def]
  conv => lhs; cbv
  try rfl
theorem node1612_eq : Flapjack.WordAlloc.removeDeadStructural input1612 value146 value1 value2 = (output1612, value667, value1) := by
  rw [input1612_def, output1612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node470_eq]
  try dsimp only
  rw [node1611_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1612 input467)).val
theorem input1613_def : input1613 = (.seq input1612 input467) := by
  unfold input1613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1612 output467)).val
theorem output1613_def : output1613 = (.seq output1612 output467) := by
  unfold output1613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1613_skip : Flapjack.WordAlloc.isSkip output1613 = false := by
  rw [output1613_def]
  conv => lhs; cbv
  try rfl
theorem node1613_eq : Flapjack.WordAlloc.removeDeadStructural input1613 value144 value1 value2 = (output1613, value667, value1) := by
  rw [input1613_def, output1613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node467_eq]
  try dsimp only
  rw [node1612_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1613 input464)).val
theorem input1614_def : input1614 = (.seq input1613 input464) := by
  unfold input1614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1613 output464)).val
theorem output1614_def : output1614 = (.seq output1613 output464) := by
  unfold output1614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1614_skip : Flapjack.WordAlloc.isSkip output1614 = false := by
  rw [output1614_def]
  conv => lhs; cbv
  try rfl
theorem node1614_eq : Flapjack.WordAlloc.removeDeadStructural input1614 value142 value1 value2 = (output1614, value667, value1) := by
  rw [input1614_def, output1614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node464_eq]
  try dsimp only
  rw [node1613_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1614 input461)).val
theorem input1615_def : input1615 = (.seq input1614 input461) := by
  unfold input1615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1614 output461)).val
theorem output1615_def : output1615 = (.seq output1614 output461) := by
  unfold output1615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1615_skip : Flapjack.WordAlloc.isSkip output1615 = false := by
  rw [output1615_def]
  conv => lhs; cbv
  try rfl
theorem node1615_eq : Flapjack.WordAlloc.removeDeadStructural input1615 value140 value1 value2 = (output1615, value667, value1) := by
  rw [input1615_def, output1615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node461_eq]
  try dsimp only
  rw [node1614_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1615 input458)).val
theorem input1616_def : input1616 = (.seq input1615 input458) := by
  unfold input1616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1615 output458)).val
theorem output1616_def : output1616 = (.seq output1615 output458) := by
  unfold output1616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1616_skip : Flapjack.WordAlloc.isSkip output1616 = false := by
  rw [output1616_def]
  conv => lhs; cbv
  try rfl
theorem node1616_eq : Flapjack.WordAlloc.removeDeadStructural input1616 value138 value1 value2 = (output1616, value667, value1) := by
  rw [input1616_def, output1616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node458_eq]
  try dsimp only
  rw [node1615_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1616 input455)).val
theorem input1617_def : input1617 = (.seq input1616 input455) := by
  unfold input1617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1616 output455)).val
theorem output1617_def : output1617 = (.seq output1616 output455) := by
  unfold output1617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1617_skip : Flapjack.WordAlloc.isSkip output1617 = false := by
  rw [output1617_def]
  conv => lhs; cbv
  try rfl
theorem node1617_eq : Flapjack.WordAlloc.removeDeadStructural input1617 value136 value1 value2 = (output1617, value667, value1) := by
  rw [input1617_def, output1617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node455_eq]
  try dsimp only
  rw [node1616_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1617 input452)).val
theorem input1618_def : input1618 = (.seq input1617 input452) := by
  unfold input1618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1617 output452)).val
theorem output1618_def : output1618 = (.seq output1617 output452) := by
  unfold output1618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1618_skip : Flapjack.WordAlloc.isSkip output1618 = false := by
  rw [output1618_def]
  conv => lhs; cbv
  try rfl
theorem node1618_eq : Flapjack.WordAlloc.removeDeadStructural input1618 value134 value1 value2 = (output1618, value667, value1) := by
  rw [input1618_def, output1618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node452_eq]
  try dsimp only
  rw [node1617_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1618 input449)).val
theorem input1619_def : input1619 = (.seq input1618 input449) := by
  unfold input1619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1618 output449)).val
theorem output1619_def : output1619 = (.seq output1618 output449) := by
  unfold output1619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1619_skip : Flapjack.WordAlloc.isSkip output1619 = false := by
  rw [output1619_def]
  conv => lhs; cbv
  try rfl
theorem node1619_eq : Flapjack.WordAlloc.removeDeadStructural input1619 value132 value1 value2 = (output1619, value667, value1) := by
  rw [input1619_def, output1619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node449_eq]
  try dsimp only
  rw [node1618_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1619 input446)).val
theorem input1620_def : input1620 = (.seq input1619 input446) := by
  unfold input1620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1619 output446)).val
theorem output1620_def : output1620 = (.seq output1619 output446) := by
  unfold output1620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1620_skip : Flapjack.WordAlloc.isSkip output1620 = false := by
  rw [output1620_def]
  conv => lhs; cbv
  try rfl
theorem node1620_eq : Flapjack.WordAlloc.removeDeadStructural input1620 value130 value1 value2 = (output1620, value667, value1) := by
  rw [input1620_def, output1620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node446_eq]
  try dsimp only
  rw [node1619_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1620 input443)).val
theorem input1621_def : input1621 = (.seq input1620 input443) := by
  unfold input1621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1620 output443)).val
theorem output1621_def : output1621 = (.seq output1620 output443) := by
  unfold output1621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1621_skip : Flapjack.WordAlloc.isSkip output1621 = false := by
  rw [output1621_def]
  conv => lhs; cbv
  try rfl
theorem node1621_eq : Flapjack.WordAlloc.removeDeadStructural input1621 value127 value1 value2 = (output1621, value667, value1) := by
  rw [input1621_def, output1621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node443_eq]
  try dsimp only
  rw [node1620_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1621 input438)).val
theorem input1622_def : input1622 = (.seq input1621 input438) := by
  unfold input1622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1621 output438)).val
theorem output1622_def : output1622 = (.seq output1621 output438) := by
  unfold output1622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1622_skip : Flapjack.WordAlloc.isSkip output1622 = false := by
  rw [output1622_def]
  conv => lhs; cbv
  try rfl
theorem node1622_eq : Flapjack.WordAlloc.removeDeadStructural input1622 value127 value1 value2 = (output1622, value667, value1) := by
  rw [input1622_def, output1622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node438_eq]
  try dsimp only
  rw [node1621_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1622 input437)).val
theorem input1623_def : input1623 = (.seq input1622 input437) := by
  unfold input1623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1622 output437)).val
theorem output1623_def : output1623 = (.seq output1622 output437) := by
  unfold output1623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1623_skip : Flapjack.WordAlloc.isSkip output1623 = false := by
  rw [output1623_def]
  conv => lhs; cbv
  try rfl
theorem node1623_eq : Flapjack.WordAlloc.removeDeadStructural input1623 value126 value1 value2 = (output1623, value667, value1) := by
  rw [input1623_def, output1623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node437_eq]
  try dsimp only
  rw [node1622_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1623 input436)).val
theorem input1624_def : input1624 = (.seq input1623 input436) := by
  unfold input1624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1623 output436)).val
theorem output1624_def : output1624 = (.seq output1623 output436) := by
  unfold output1624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1624_skip : Flapjack.WordAlloc.isSkip output1624 = false := by
  rw [output1624_def]
  conv => lhs; cbv
  try rfl
theorem node1624_eq : Flapjack.WordAlloc.removeDeadStructural input1624 value126 value1 value2 = (output1624, value667, value1) := by
  rw [input1624_def, output1624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node436_eq]
  try dsimp only
  rw [node1623_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1624 input435)).val
theorem input1625_def : input1625 = (.seq input1624 input435) := by
  unfold input1625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1624 output435)).val
theorem output1625_def : output1625 = (.seq output1624 output435) := by
  unfold output1625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1625_skip : Flapjack.WordAlloc.isSkip output1625 = false := by
  rw [output1625_def]
  conv => lhs; cbv
  try rfl
theorem node1625_eq : Flapjack.WordAlloc.removeDeadStructural input1625 value9 value1 value2 = (output1625, value667, value1) := by
  rw [input1625_def, output1625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node435_eq]
  try dsimp only
  rw [node1624_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1625 input11)).val
theorem input1626_def : input1626 = (.seq input1625 input11) := by
  unfold input1626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1625 output11)).val
theorem output1626_def : output1626 = (.seq output1625 output11) := by
  unfold output1626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1626_skip : Flapjack.WordAlloc.isSkip output1626 = false := by
  rw [output1626_def]
  conv => lhs; cbv
  try rfl
theorem node1626_eq : Flapjack.WordAlloc.removeDeadStructural input1626 value9 value1 value2 = (output1626, value667, value1) := by
  rw [input1626_def, output1626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11_eq]
  try dsimp only
  rw [node1625_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1626 input10)).val
theorem input1627_def : input1627 = (.seq input1626 input10) := by
  unfold input1627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1626 output10)).val
theorem output1627_def : output1627 = (.seq output1626 output10) := by
  unfold output1627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1627_skip : Flapjack.WordAlloc.isSkip output1627 = false := by
  rw [output1627_def]
  conv => lhs; cbv
  try rfl
theorem node1627_eq : Flapjack.WordAlloc.removeDeadStructural input1627 value8 value1 value2 = (output1627, value667, value1) := by
  rw [input1627_def, output1627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10_eq]
  try dsimp only
  rw [node1626_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1627 input9)).val
theorem input1628_def : input1628 = (.seq input1627 input9) := by
  unfold input1628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1627 output9)).val
theorem output1628_def : output1628 = (.seq output1627 output9) := by
  unfold output1628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1628_skip : Flapjack.WordAlloc.isSkip output1628 = false := by
  rw [output1628_def]
  conv => lhs; cbv
  try rfl
theorem node1628_eq : Flapjack.WordAlloc.removeDeadStructural input1628 value5 value1 value2 = (output1628, value667, value1) := by
  rw [input1628_def, output1628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9_eq]
  try dsimp only
  rw [node1627_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1628 input4)).val
theorem input1629_def : input1629 = (.seq input1628 input4) := by
  unfold input1629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1628 output4)).val
theorem output1629_def : output1629 = (.seq output1628 output4) := by
  unfold output1629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1629_skip : Flapjack.WordAlloc.isSkip output1629 = false := by
  rw [output1629_def]
  conv => lhs; cbv
  try rfl
theorem node1629_eq : Flapjack.WordAlloc.removeDeadStructural input1629 value5 value1 value2 = (output1629, value667, value1) := by
  rw [input1629_def, output1629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4_eq]
  try dsimp only
  rw [node1628_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1629 input3)).val
theorem input1630_def : input1630 = (.seq input1629 input3) := by
  unfold input1630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1629 output3)).val
theorem output1630_def : output1630 = (.seq output1629 output3) := by
  unfold output1630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1630_skip : Flapjack.WordAlloc.isSkip output1630 = false := by
  rw [output1630_def]
  conv => lhs; cbv
  try rfl
theorem node1630_eq : Flapjack.WordAlloc.removeDeadStructural input1630 value4 value1 value2 = (output1630, value667, value1) := by
  rw [input1630_def, output1630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3_eq]
  try dsimp only
  rw [node1629_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1630 input2)).val
theorem input1631_def : input1631 = (.seq input1630 input2) := by
  unfold input1631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1630 output2)).val
theorem output1631_def : output1631 = (.seq output1630 output2) := by
  unfold output1631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1631_skip : Flapjack.WordAlloc.isSkip output1631 = false := by
  rw [output1631_def]
  conv => lhs; cbv
  try rfl
theorem node1631_eq : Flapjack.WordAlloc.removeDeadStructural input1631 value0 value1 value2 = (output1631, value667, value1) := by
  rw [input1631_def, output1631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2_eq]
  try dsimp only
  rw [node1630_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value668 : Flapjack.NumSet :=
Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln

@[irreducible, cbv_opaque] def input1632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1
  [(113, 0), (117, 2), (121, 4), (125, 6), (129, 8), (133, 10), (137, 12), (141, 14), (145, 16), (149, 18), (153, 20),
    (157, 22), (161, 24), (165, 26), (169, 28), (173, 30), (177, 32), (181, 34), (185, 36), (189, 38), (193, 40),
    (197, 42), (201, 44), (205, 46), (209, 48), (213, 50)])).val
theorem input1632_def : input1632 = (Flapjack.WordLangProgHOL.move 1
  [(113, 0), (117, 2), (121, 4), (125, 6), (129, 8), (133, 10), (137, 12), (141, 14), (145, 16), (149, 18), (153, 20),
    (157, 22), (161, 24), (165, 26), (169, 28), (173, 30), (177, 32), (181, 34), (185, 36), (189, 38), (193, 40),
    (197, 42), (201, 44), (205, 46), (209, 48), (213, 50)]) := by
  unfold input1632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1
  [(113, 0), (117, 2), (121, 4), (125, 6), (129, 8), (133, 10), (137, 12), (141, 14), (145, 16), (149, 18), (153, 20),
    (157, 22), (161, 24), (165, 26), (169, 28), (173, 30), (177, 32), (181, 34), (185, 36), (189, 38), (193, 40),
    (197, 42), (201, 44), (205, 46), (209, 48), (213, 50)])).val
theorem output1632_def : output1632 = (Flapjack.WordLangProgHOL.move 1
  [(113, 0), (117, 2), (121, 4), (125, 6), (129, 8), (133, 10), (137, 12), (141, 14), (145, 16), (149, 18), (153, 20),
    (157, 22), (161, 24), (165, 26), (169, 28), (173, 30), (177, 32), (181, 34), (185, 36), (189, 38), (193, 40),
    (197, 42), (201, 44), (205, 46), (209, 48), (213, 50)]) := by
  unfold output1632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1632_skip : Flapjack.WordAlloc.isSkip output1632 = false := by
  rw [output1632_def]
  conv => lhs; cbv
  try rfl
theorem node1632_eq : Flapjack.WordAlloc.removeDeadStructural input1632 value667 value1 value2 = (output1632, value668, value1) := by
  rw [input1632_def, output1632_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1632 input1631)).val
theorem input1633_def : input1633 = (.seq input1632 input1631) := by
  unfold input1633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1632 output1631)).val
theorem output1633_def : output1633 = (.seq output1632 output1631) := by
  unfold output1633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1633_skip : Flapjack.WordAlloc.isSkip output1633 = false := by
  rw [output1633_def]
  conv => lhs; cbv
  try rfl
theorem node1633_eq : Flapjack.WordAlloc.removeDeadStructural input1633 value0 value1 value2 = (output1633, value668, value1) := by
  rw [input1633_def, output1633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1631_eq]
  try dsimp only
  rw [node1632_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node1633_eq
end InitECandidate.Proofs.DeadStages233
