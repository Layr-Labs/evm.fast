import InitECandidate.Proofs.DeadStages783.Chunk009
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages783
@[irreducible, cbv_opaque] def input2560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2559 input196)).val
theorem input2560_def : input2560 = (.seq input2559 input196) := by
  unfold input2560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2559 output196)).val
theorem output2560_def : output2560 = (.seq output2559 output196) := by
  unfold output2560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2560_skip : Flapjack.WordAlloc.isSkip output2560 = false := by
  rw [output2560_def]
  conv => lhs; cbv
  try rfl
theorem node2560_eq : Flapjack.WordAlloc.removeDeadStructural input2560 value157 value1 value2 = (output2560, value1162, value1) := by
  rw [input2560_def, output2560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node196_eq]
  try dsimp only
  rw [node2559_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2560 input191)).val
theorem input2561_def : input2561 = (.seq input2560 input191) := by
  unfold input2561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2560 output191)).val
theorem output2561_def : output2561 = (.seq output2560 output191) := by
  unfold output2561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2561_skip : Flapjack.WordAlloc.isSkip output2561 = false := by
  rw [output2561_def]
  conv => lhs; cbv
  try rfl
theorem node2561_eq : Flapjack.WordAlloc.removeDeadStructural input2561 value157 value1 value2 = (output2561, value1162, value1) := by
  rw [input2561_def, output2561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node191_eq]
  try dsimp only
  rw [node2560_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2561 input190)).val
theorem input2562_def : input2562 = (.seq input2561 input190) := by
  unfold input2562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2561 output190)).val
theorem output2562_def : output2562 = (.seq output2561 output190) := by
  unfold output2562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2562_skip : Flapjack.WordAlloc.isSkip output2562 = false := by
  rw [output2562_def]
  conv => lhs; cbv
  try rfl
theorem node2562_eq : Flapjack.WordAlloc.removeDeadStructural input2562 value156 value1 value2 = (output2562, value1162, value1) := by
  rw [input2562_def, output2562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node190_eq]
  try dsimp only
  rw [node2561_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2562 input189)).val
theorem input2563_def : input2563 = (.seq input2562 input189) := by
  unfold input2563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2562 output189)).val
theorem output2563_def : output2563 = (.seq output2562 output189) := by
  unfold output2563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2563_skip : Flapjack.WordAlloc.isSkip output2563 = false := by
  rw [output2563_def]
  conv => lhs; cbv
  try rfl
theorem node2563_eq : Flapjack.WordAlloc.removeDeadStructural input2563 value155 value1 value2 = (output2563, value1162, value1) := by
  rw [input2563_def, output2563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node189_eq]
  try dsimp only
  rw [node2562_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2563 input188)).val
theorem input2564_def : input2564 = (.seq input2563 input188) := by
  unfold input2564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2563 output188)).val
theorem output2564_def : output2564 = (.seq output2563 output188) := by
  unfold output2564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2564_skip : Flapjack.WordAlloc.isSkip output2564 = false := by
  rw [output2564_def]
  conv => lhs; cbv
  try rfl
theorem node2564_eq : Flapjack.WordAlloc.removeDeadStructural input2564 value154 value1 value2 = (output2564, value1162, value1) := by
  rw [input2564_def, output2564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node188_eq]
  try dsimp only
  rw [node2563_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2564 input187)).val
theorem input2565_def : input2565 = (.seq input2564 input187) := by
  unfold input2565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2564 output187)).val
theorem output2565_def : output2565 = (.seq output2564 output187) := by
  unfold output2565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2565_skip : Flapjack.WordAlloc.isSkip output2565 = false := by
  rw [output2565_def]
  conv => lhs; cbv
  try rfl
theorem node2565_eq : Flapjack.WordAlloc.removeDeadStructural input2565 value153 value1 value2 = (output2565, value1162, value1) := by
  rw [input2565_def, output2565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node187_eq]
  try dsimp only
  rw [node2564_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2565 input186)).val
theorem input2566_def : input2566 = (.seq input2565 input186) := by
  unfold input2566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2565 output186)).val
theorem output2566_def : output2566 = (.seq output2565 output186) := by
  unfold output2566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2566_skip : Flapjack.WordAlloc.isSkip output2566 = false := by
  rw [output2566_def]
  conv => lhs; cbv
  try rfl
theorem node2566_eq : Flapjack.WordAlloc.removeDeadStructural input2566 value152 value1 value2 = (output2566, value1162, value1) := by
  rw [input2566_def, output2566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node186_eq]
  try dsimp only
  rw [node2565_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2566 input185)).val
theorem input2567_def : input2567 = (.seq input2566 input185) := by
  unfold input2567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2566 output185)).val
theorem output2567_def : output2567 = (.seq output2566 output185) := by
  unfold output2567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2567_skip : Flapjack.WordAlloc.isSkip output2567 = false := by
  rw [output2567_def]
  conv => lhs; cbv
  try rfl
theorem node2567_eq : Flapjack.WordAlloc.removeDeadStructural input2567 value151 value1 value2 = (output2567, value1162, value1) := by
  rw [input2567_def, output2567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node185_eq]
  try dsimp only
  rw [node2566_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2567 input184)).val
theorem input2568_def : input2568 = (.seq input2567 input184) := by
  unfold input2568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2567 output184)).val
theorem output2568_def : output2568 = (.seq output2567 output184) := by
  unfold output2568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2568_skip : Flapjack.WordAlloc.isSkip output2568 = false := by
  rw [output2568_def]
  conv => lhs; cbv
  try rfl
theorem node2568_eq : Flapjack.WordAlloc.removeDeadStructural input2568 value150 value1 value2 = (output2568, value1162, value1) := by
  rw [input2568_def, output2568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node184_eq]
  try dsimp only
  rw [node2567_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2568 input183)).val
theorem input2569_def : input2569 = (.seq input2568 input183) := by
  unfold input2569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2568 output183)).val
theorem output2569_def : output2569 = (.seq output2568 output183) := by
  unfold output2569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2569_skip : Flapjack.WordAlloc.isSkip output2569 = false := by
  rw [output2569_def]
  conv => lhs; cbv
  try rfl
theorem node2569_eq : Flapjack.WordAlloc.removeDeadStructural input2569 value149 value1 value2 = (output2569, value1162, value1) := by
  rw [input2569_def, output2569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node183_eq]
  try dsimp only
  rw [node2568_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2569 input182)).val
theorem input2570_def : input2570 = (.seq input2569 input182) := by
  unfold input2570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2569 output182)).val
theorem output2570_def : output2570 = (.seq output2569 output182) := by
  unfold output2570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2570_skip : Flapjack.WordAlloc.isSkip output2570 = false := by
  rw [output2570_def]
  conv => lhs; cbv
  try rfl
theorem node2570_eq : Flapjack.WordAlloc.removeDeadStructural input2570 value148 value1 value2 = (output2570, value1162, value1) := by
  rw [input2570_def, output2570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node182_eq]
  try dsimp only
  rw [node2569_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2570 input181)).val
theorem input2571_def : input2571 = (.seq input2570 input181) := by
  unfold input2571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2570 output181)).val
theorem output2571_def : output2571 = (.seq output2570 output181) := by
  unfold output2571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2571_skip : Flapjack.WordAlloc.isSkip output2571 = false := by
  rw [output2571_def]
  conv => lhs; cbv
  try rfl
theorem node2571_eq : Flapjack.WordAlloc.removeDeadStructural input2571 value147 value1 value2 = (output2571, value1162, value1) := by
  rw [input2571_def, output2571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node181_eq]
  try dsimp only
  rw [node2570_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2571 input180)).val
theorem input2572_def : input2572 = (.seq input2571 input180) := by
  unfold input2572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2571 output180)).val
theorem output2572_def : output2572 = (.seq output2571 output180) := by
  unfold output2572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2572_skip : Flapjack.WordAlloc.isSkip output2572 = false := by
  rw [output2572_def]
  conv => lhs; cbv
  try rfl
theorem node2572_eq : Flapjack.WordAlloc.removeDeadStructural input2572 value146 value1 value2 = (output2572, value1162, value1) := by
  rw [input2572_def, output2572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node180_eq]
  try dsimp only
  rw [node2571_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2572 input179)).val
theorem input2573_def : input2573 = (.seq input2572 input179) := by
  unfold input2573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2572 output179)).val
theorem output2573_def : output2573 = (.seq output2572 output179) := by
  unfold output2573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2573_skip : Flapjack.WordAlloc.isSkip output2573 = false := by
  rw [output2573_def]
  conv => lhs; cbv
  try rfl
theorem node2573_eq : Flapjack.WordAlloc.removeDeadStructural input2573 value145 value1 value2 = (output2573, value1162, value1) := by
  rw [input2573_def, output2573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node179_eq]
  try dsimp only
  rw [node2572_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2573 input178)).val
theorem input2574_def : input2574 = (.seq input2573 input178) := by
  unfold input2574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2573 output178)).val
theorem output2574_def : output2574 = (.seq output2573 output178) := by
  unfold output2574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2574_skip : Flapjack.WordAlloc.isSkip output2574 = false := by
  rw [output2574_def]
  conv => lhs; cbv
  try rfl
theorem node2574_eq : Flapjack.WordAlloc.removeDeadStructural input2574 value142 value1 value2 = (output2574, value1162, value1) := by
  rw [input2574_def, output2574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node178_eq]
  try dsimp only
  rw [node2573_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2574 input173)).val
theorem input2575_def : input2575 = (.seq input2574 input173) := by
  unfold input2575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2574 output173)).val
theorem output2575_def : output2575 = (.seq output2574 output173) := by
  unfold output2575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2575_skip : Flapjack.WordAlloc.isSkip output2575 = false := by
  rw [output2575_def]
  conv => lhs; cbv
  try rfl
theorem node2575_eq : Flapjack.WordAlloc.removeDeadStructural input2575 value142 value1 value2 = (output2575, value1162, value1) := by
  rw [input2575_def, output2575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node173_eq]
  try dsimp only
  rw [node2574_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2575 input172)).val
theorem input2576_def : input2576 = (.seq input2575 input172) := by
  unfold input2576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2575 output172)).val
theorem output2576_def : output2576 = (.seq output2575 output172) := by
  unfold output2576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2576_skip : Flapjack.WordAlloc.isSkip output2576 = false := by
  rw [output2576_def]
  conv => lhs; cbv
  try rfl
theorem node2576_eq : Flapjack.WordAlloc.removeDeadStructural input2576 value141 value1 value2 = (output2576, value1162, value1) := by
  rw [input2576_def, output2576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node172_eq]
  try dsimp only
  rw [node2575_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2576 input171)).val
theorem input2577_def : input2577 = (.seq input2576 input171) := by
  unfold input2577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2576 output171)).val
theorem output2577_def : output2577 = (.seq output2576 output171) := by
  unfold output2577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2577_skip : Flapjack.WordAlloc.isSkip output2577 = false := by
  rw [output2577_def]
  conv => lhs; cbv
  try rfl
theorem node2577_eq : Flapjack.WordAlloc.removeDeadStructural input2577 value140 value1 value2 = (output2577, value1162, value1) := by
  rw [input2577_def, output2577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node171_eq]
  try dsimp only
  rw [node2576_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2577 input170)).val
theorem input2578_def : input2578 = (.seq input2577 input170) := by
  unfold input2578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2577 output170)).val
theorem output2578_def : output2578 = (.seq output2577 output170) := by
  unfold output2578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2578_skip : Flapjack.WordAlloc.isSkip output2578 = false := by
  rw [output2578_def]
  conv => lhs; cbv
  try rfl
theorem node2578_eq : Flapjack.WordAlloc.removeDeadStructural input2578 value139 value1 value2 = (output2578, value1162, value1) := by
  rw [input2578_def, output2578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node170_eq]
  try dsimp only
  rw [node2577_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2578 input169)).val
theorem input2579_def : input2579 = (.seq input2578 input169) := by
  unfold input2579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2578 output169)).val
theorem output2579_def : output2579 = (.seq output2578 output169) := by
  unfold output2579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2579_skip : Flapjack.WordAlloc.isSkip output2579 = false := by
  rw [output2579_def]
  conv => lhs; cbv
  try rfl
theorem node2579_eq : Flapjack.WordAlloc.removeDeadStructural input2579 value138 value1 value2 = (output2579, value1162, value1) := by
  rw [input2579_def, output2579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node169_eq]
  try dsimp only
  rw [node2578_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2579 input168)).val
theorem input2580_def : input2580 = (.seq input2579 input168) := by
  unfold input2580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2579 output168)).val
theorem output2580_def : output2580 = (.seq output2579 output168) := by
  unfold output2580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2580_skip : Flapjack.WordAlloc.isSkip output2580 = false := by
  rw [output2580_def]
  conv => lhs; cbv
  try rfl
theorem node2580_eq : Flapjack.WordAlloc.removeDeadStructural input2580 value137 value1 value2 = (output2580, value1162, value1) := by
  rw [input2580_def, output2580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node168_eq]
  try dsimp only
  rw [node2579_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2580 input167)).val
theorem input2581_def : input2581 = (.seq input2580 input167) := by
  unfold input2581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2580 output167)).val
theorem output2581_def : output2581 = (.seq output2580 output167) := by
  unfold output2581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2581_skip : Flapjack.WordAlloc.isSkip output2581 = false := by
  rw [output2581_def]
  conv => lhs; cbv
  try rfl
theorem node2581_eq : Flapjack.WordAlloc.removeDeadStructural input2581 value136 value1 value2 = (output2581, value1162, value1) := by
  rw [input2581_def, output2581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node167_eq]
  try dsimp only
  rw [node2580_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2581 input166)).val
theorem input2582_def : input2582 = (.seq input2581 input166) := by
  unfold input2582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2581 output166)).val
theorem output2582_def : output2582 = (.seq output2581 output166) := by
  unfold output2582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2582_skip : Flapjack.WordAlloc.isSkip output2582 = false := by
  rw [output2582_def]
  conv => lhs; cbv
  try rfl
theorem node2582_eq : Flapjack.WordAlloc.removeDeadStructural input2582 value135 value1 value2 = (output2582, value1162, value1) := by
  rw [input2582_def, output2582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node166_eq]
  try dsimp only
  rw [node2581_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2582 input165)).val
theorem input2583_def : input2583 = (.seq input2582 input165) := by
  unfold input2583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2582 output165)).val
theorem output2583_def : output2583 = (.seq output2582 output165) := by
  unfold output2583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2583_skip : Flapjack.WordAlloc.isSkip output2583 = false := by
  rw [output2583_def]
  conv => lhs; cbv
  try rfl
theorem node2583_eq : Flapjack.WordAlloc.removeDeadStructural input2583 value134 value1 value2 = (output2583, value1162, value1) := by
  rw [input2583_def, output2583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node165_eq]
  try dsimp only
  rw [node2582_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2583 input164)).val
theorem input2584_def : input2584 = (.seq input2583 input164) := by
  unfold input2584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2583 output164)).val
theorem output2584_def : output2584 = (.seq output2583 output164) := by
  unfold output2584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2584_skip : Flapjack.WordAlloc.isSkip output2584 = false := by
  rw [output2584_def]
  conv => lhs; cbv
  try rfl
theorem node2584_eq : Flapjack.WordAlloc.removeDeadStructural input2584 value133 value1 value2 = (output2584, value1162, value1) := by
  rw [input2584_def, output2584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node164_eq]
  try dsimp only
  rw [node2583_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2584 input163)).val
theorem input2585_def : input2585 = (.seq input2584 input163) := by
  unfold input2585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2584 output163)).val
theorem output2585_def : output2585 = (.seq output2584 output163) := by
  unfold output2585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2585_skip : Flapjack.WordAlloc.isSkip output2585 = false := by
  rw [output2585_def]
  conv => lhs; cbv
  try rfl
theorem node2585_eq : Flapjack.WordAlloc.removeDeadStructural input2585 value132 value1 value2 = (output2585, value1162, value1) := by
  rw [input2585_def, output2585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node163_eq]
  try dsimp only
  rw [node2584_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2585 input162)).val
theorem input2586_def : input2586 = (.seq input2585 input162) := by
  unfold input2586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2585 output162)).val
theorem output2586_def : output2586 = (.seq output2585 output162) := by
  unfold output2586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2586_skip : Flapjack.WordAlloc.isSkip output2586 = false := by
  rw [output2586_def]
  conv => lhs; cbv
  try rfl
theorem node2586_eq : Flapjack.WordAlloc.removeDeadStructural input2586 value131 value1 value2 = (output2586, value1162, value1) := by
  rw [input2586_def, output2586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node162_eq]
  try dsimp only
  rw [node2585_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2586 input161)).val
theorem input2587_def : input2587 = (.seq input2586 input161) := by
  unfold input2587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2586 output161)).val
theorem output2587_def : output2587 = (.seq output2586 output161) := by
  unfold output2587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2587_skip : Flapjack.WordAlloc.isSkip output2587 = false := by
  rw [output2587_def]
  conv => lhs; cbv
  try rfl
theorem node2587_eq : Flapjack.WordAlloc.removeDeadStructural input2587 value130 value1 value2 = (output2587, value1162, value1) := by
  rw [input2587_def, output2587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node161_eq]
  try dsimp only
  rw [node2586_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2587 input160)).val
theorem input2588_def : input2588 = (.seq input2587 input160) := by
  unfold input2588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2587 output160)).val
theorem output2588_def : output2588 = (.seq output2587 output160) := by
  unfold output2588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2588_skip : Flapjack.WordAlloc.isSkip output2588 = false := by
  rw [output2588_def]
  conv => lhs; cbv
  try rfl
theorem node2588_eq : Flapjack.WordAlloc.removeDeadStructural input2588 value127 value1 value2 = (output2588, value1162, value1) := by
  rw [input2588_def, output2588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node160_eq]
  try dsimp only
  rw [node2587_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2588 input155)).val
theorem input2589_def : input2589 = (.seq input2588 input155) := by
  unfold input2589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2588 output155)).val
theorem output2589_def : output2589 = (.seq output2588 output155) := by
  unfold output2589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2589_skip : Flapjack.WordAlloc.isSkip output2589 = false := by
  rw [output2589_def]
  conv => lhs; cbv
  try rfl
theorem node2589_eq : Flapjack.WordAlloc.removeDeadStructural input2589 value127 value1 value2 = (output2589, value1162, value1) := by
  rw [input2589_def, output2589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node155_eq]
  try dsimp only
  rw [node2588_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2589 input154)).val
theorem input2590_def : input2590 = (.seq input2589 input154) := by
  unfold input2590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2589 output154)).val
theorem output2590_def : output2590 = (.seq output2589 output154) := by
  unfold output2590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2590_skip : Flapjack.WordAlloc.isSkip output2590 = false := by
  rw [output2590_def]
  conv => lhs; cbv
  try rfl
theorem node2590_eq : Flapjack.WordAlloc.removeDeadStructural input2590 value126 value1 value2 = (output2590, value1162, value1) := by
  rw [input2590_def, output2590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node154_eq]
  try dsimp only
  rw [node2589_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2590 input153)).val
theorem input2591_def : input2591 = (.seq input2590 input153) := by
  unfold input2591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2590 output153)).val
theorem output2591_def : output2591 = (.seq output2590 output153) := by
  unfold output2591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2591_skip : Flapjack.WordAlloc.isSkip output2591 = false := by
  rw [output2591_def]
  conv => lhs; cbv
  try rfl
theorem node2591_eq : Flapjack.WordAlloc.removeDeadStructural input2591 value125 value1 value2 = (output2591, value1162, value1) := by
  rw [input2591_def, output2591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node153_eq]
  try dsimp only
  rw [node2590_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2591 input152)).val
theorem input2592_def : input2592 = (.seq input2591 input152) := by
  unfold input2592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2591 output152)).val
theorem output2592_def : output2592 = (.seq output2591 output152) := by
  unfold output2592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2592_skip : Flapjack.WordAlloc.isSkip output2592 = false := by
  rw [output2592_def]
  conv => lhs; cbv
  try rfl
theorem node2592_eq : Flapjack.WordAlloc.removeDeadStructural input2592 value124 value1 value2 = (output2592, value1162, value1) := by
  rw [input2592_def, output2592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node152_eq]
  try dsimp only
  rw [node2591_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2592 input151)).val
theorem input2593_def : input2593 = (.seq input2592 input151) := by
  unfold input2593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2592 output151)).val
theorem output2593_def : output2593 = (.seq output2592 output151) := by
  unfold output2593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2593_skip : Flapjack.WordAlloc.isSkip output2593 = false := by
  rw [output2593_def]
  conv => lhs; cbv
  try rfl
theorem node2593_eq : Flapjack.WordAlloc.removeDeadStructural input2593 value123 value1 value2 = (output2593, value1162, value1) := by
  rw [input2593_def, output2593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node151_eq]
  try dsimp only
  rw [node2592_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2593 input150)).val
theorem input2594_def : input2594 = (.seq input2593 input150) := by
  unfold input2594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2593 output150)).val
theorem output2594_def : output2594 = (.seq output2593 output150) := by
  unfold output2594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2594_skip : Flapjack.WordAlloc.isSkip output2594 = false := by
  rw [output2594_def]
  conv => lhs; cbv
  try rfl
theorem node2594_eq : Flapjack.WordAlloc.removeDeadStructural input2594 value122 value1 value2 = (output2594, value1162, value1) := by
  rw [input2594_def, output2594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node150_eq]
  try dsimp only
  rw [node2593_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2594 input149)).val
theorem input2595_def : input2595 = (.seq input2594 input149) := by
  unfold input2595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2594 output149)).val
theorem output2595_def : output2595 = (.seq output2594 output149) := by
  unfold output2595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2595_skip : Flapjack.WordAlloc.isSkip output2595 = false := by
  rw [output2595_def]
  conv => lhs; cbv
  try rfl
theorem node2595_eq : Flapjack.WordAlloc.removeDeadStructural input2595 value121 value1 value2 = (output2595, value1162, value1) := by
  rw [input2595_def, output2595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node149_eq]
  try dsimp only
  rw [node2594_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2595 input148)).val
theorem input2596_def : input2596 = (.seq input2595 input148) := by
  unfold input2596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2595 output148)).val
theorem output2596_def : output2596 = (.seq output2595 output148) := by
  unfold output2596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2596_skip : Flapjack.WordAlloc.isSkip output2596 = false := by
  rw [output2596_def]
  conv => lhs; cbv
  try rfl
theorem node2596_eq : Flapjack.WordAlloc.removeDeadStructural input2596 value120 value1 value2 = (output2596, value1162, value1) := by
  rw [input2596_def, output2596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node148_eq]
  try dsimp only
  rw [node2595_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2596 input147)).val
theorem input2597_def : input2597 = (.seq input2596 input147) := by
  unfold input2597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2596 output147)).val
theorem output2597_def : output2597 = (.seq output2596 output147) := by
  unfold output2597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2597_skip : Flapjack.WordAlloc.isSkip output2597 = false := by
  rw [output2597_def]
  conv => lhs; cbv
  try rfl
theorem node2597_eq : Flapjack.WordAlloc.removeDeadStructural input2597 value119 value1 value2 = (output2597, value1162, value1) := by
  rw [input2597_def, output2597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node147_eq]
  try dsimp only
  rw [node2596_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2597 input146)).val
theorem input2598_def : input2598 = (.seq input2597 input146) := by
  unfold input2598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2597 output146)).val
theorem output2598_def : output2598 = (.seq output2597 output146) := by
  unfold output2598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2598_skip : Flapjack.WordAlloc.isSkip output2598 = false := by
  rw [output2598_def]
  conv => lhs; cbv
  try rfl
theorem node2598_eq : Flapjack.WordAlloc.removeDeadStructural input2598 value118 value1 value2 = (output2598, value1162, value1) := by
  rw [input2598_def, output2598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node146_eq]
  try dsimp only
  rw [node2597_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2598 input145)).val
theorem input2599_def : input2599 = (.seq input2598 input145) := by
  unfold input2599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2598 output145)).val
theorem output2599_def : output2599 = (.seq output2598 output145) := by
  unfold output2599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2599_skip : Flapjack.WordAlloc.isSkip output2599 = false := by
  rw [output2599_def]
  conv => lhs; cbv
  try rfl
theorem node2599_eq : Flapjack.WordAlloc.removeDeadStructural input2599 value117 value1 value2 = (output2599, value1162, value1) := by
  rw [input2599_def, output2599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node145_eq]
  try dsimp only
  rw [node2598_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2599 input144)).val
theorem input2600_def : input2600 = (.seq input2599 input144) := by
  unfold input2600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2599 output144)).val
theorem output2600_def : output2600 = (.seq output2599 output144) := by
  unfold output2600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2600_skip : Flapjack.WordAlloc.isSkip output2600 = false := by
  rw [output2600_def]
  conv => lhs; cbv
  try rfl
theorem node2600_eq : Flapjack.WordAlloc.removeDeadStructural input2600 value116 value1 value2 = (output2600, value1162, value1) := by
  rw [input2600_def, output2600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node144_eq]
  try dsimp only
  rw [node2599_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2600 input143)).val
theorem input2601_def : input2601 = (.seq input2600 input143) := by
  unfold input2601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2600 output143)).val
theorem output2601_def : output2601 = (.seq output2600 output143) := by
  unfold output2601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2601_skip : Flapjack.WordAlloc.isSkip output2601 = false := by
  rw [output2601_def]
  conv => lhs; cbv
  try rfl
theorem node2601_eq : Flapjack.WordAlloc.removeDeadStructural input2601 value115 value1 value2 = (output2601, value1162, value1) := by
  rw [input2601_def, output2601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node143_eq]
  try dsimp only
  rw [node2600_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2601 input142)).val
theorem input2602_def : input2602 = (.seq input2601 input142) := by
  unfold input2602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2601 output142)).val
theorem output2602_def : output2602 = (.seq output2601 output142) := by
  unfold output2602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2602_skip : Flapjack.WordAlloc.isSkip output2602 = false := by
  rw [output2602_def]
  conv => lhs; cbv
  try rfl
theorem node2602_eq : Flapjack.WordAlloc.removeDeadStructural input2602 value112 value1 value2 = (output2602, value1162, value1) := by
  rw [input2602_def, output2602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node142_eq]
  try dsimp only
  rw [node2601_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2602 input137)).val
theorem input2603_def : input2603 = (.seq input2602 input137) := by
  unfold input2603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2602 output137)).val
theorem output2603_def : output2603 = (.seq output2602 output137) := by
  unfold output2603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2603_skip : Flapjack.WordAlloc.isSkip output2603 = false := by
  rw [output2603_def]
  conv => lhs; cbv
  try rfl
theorem node2603_eq : Flapjack.WordAlloc.removeDeadStructural input2603 value112 value1 value2 = (output2603, value1162, value1) := by
  rw [input2603_def, output2603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node137_eq]
  try dsimp only
  rw [node2602_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2603 input136)).val
theorem input2604_def : input2604 = (.seq input2603 input136) := by
  unfold input2604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2603 output136)).val
theorem output2604_def : output2604 = (.seq output2603 output136) := by
  unfold output2604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2604_skip : Flapjack.WordAlloc.isSkip output2604 = false := by
  rw [output2604_def]
  conv => lhs; cbv
  try rfl
theorem node2604_eq : Flapjack.WordAlloc.removeDeadStructural input2604 value111 value1 value2 = (output2604, value1162, value1) := by
  rw [input2604_def, output2604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node136_eq]
  try dsimp only
  rw [node2603_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2604 input135)).val
theorem input2605_def : input2605 = (.seq input2604 input135) := by
  unfold input2605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2604 output135)).val
theorem output2605_def : output2605 = (.seq output2604 output135) := by
  unfold output2605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2605_skip : Flapjack.WordAlloc.isSkip output2605 = false := by
  rw [output2605_def]
  conv => lhs; cbv
  try rfl
theorem node2605_eq : Flapjack.WordAlloc.removeDeadStructural input2605 value110 value1 value2 = (output2605, value1162, value1) := by
  rw [input2605_def, output2605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node135_eq]
  try dsimp only
  rw [node2604_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2605 input134)).val
theorem input2606_def : input2606 = (.seq input2605 input134) := by
  unfold input2606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2605 output134)).val
theorem output2606_def : output2606 = (.seq output2605 output134) := by
  unfold output2606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2606_skip : Flapjack.WordAlloc.isSkip output2606 = false := by
  rw [output2606_def]
  conv => lhs; cbv
  try rfl
theorem node2606_eq : Flapjack.WordAlloc.removeDeadStructural input2606 value109 value1 value2 = (output2606, value1162, value1) := by
  rw [input2606_def, output2606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node134_eq]
  try dsimp only
  rw [node2605_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2606 input133)).val
theorem input2607_def : input2607 = (.seq input2606 input133) := by
  unfold input2607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2606 output133)).val
theorem output2607_def : output2607 = (.seq output2606 output133) := by
  unfold output2607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2607_skip : Flapjack.WordAlloc.isSkip output2607 = false := by
  rw [output2607_def]
  conv => lhs; cbv
  try rfl
theorem node2607_eq : Flapjack.WordAlloc.removeDeadStructural input2607 value108 value1 value2 = (output2607, value1162, value1) := by
  rw [input2607_def, output2607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node133_eq]
  try dsimp only
  rw [node2606_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2607 input132)).val
theorem input2608_def : input2608 = (.seq input2607 input132) := by
  unfold input2608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2607 output132)).val
theorem output2608_def : output2608 = (.seq output2607 output132) := by
  unfold output2608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2608_skip : Flapjack.WordAlloc.isSkip output2608 = false := by
  rw [output2608_def]
  conv => lhs; cbv
  try rfl
theorem node2608_eq : Flapjack.WordAlloc.removeDeadStructural input2608 value107 value1 value2 = (output2608, value1162, value1) := by
  rw [input2608_def, output2608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node132_eq]
  try dsimp only
  rw [node2607_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2608 input131)).val
theorem input2609_def : input2609 = (.seq input2608 input131) := by
  unfold input2609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2608 output131)).val
theorem output2609_def : output2609 = (.seq output2608 output131) := by
  unfold output2609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2609_skip : Flapjack.WordAlloc.isSkip output2609 = false := by
  rw [output2609_def]
  conv => lhs; cbv
  try rfl
theorem node2609_eq : Flapjack.WordAlloc.removeDeadStructural input2609 value106 value1 value2 = (output2609, value1162, value1) := by
  rw [input2609_def, output2609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node131_eq]
  try dsimp only
  rw [node2608_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2609 input130)).val
theorem input2610_def : input2610 = (.seq input2609 input130) := by
  unfold input2610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2609 output130)).val
theorem output2610_def : output2610 = (.seq output2609 output130) := by
  unfold output2610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2610_skip : Flapjack.WordAlloc.isSkip output2610 = false := by
  rw [output2610_def]
  conv => lhs; cbv
  try rfl
theorem node2610_eq : Flapjack.WordAlloc.removeDeadStructural input2610 value105 value1 value2 = (output2610, value1162, value1) := by
  rw [input2610_def, output2610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node130_eq]
  try dsimp only
  rw [node2609_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2610 input129)).val
theorem input2611_def : input2611 = (.seq input2610 input129) := by
  unfold input2611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2610 output129)).val
theorem output2611_def : output2611 = (.seq output2610 output129) := by
  unfold output2611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2611_skip : Flapjack.WordAlloc.isSkip output2611 = false := by
  rw [output2611_def]
  conv => lhs; cbv
  try rfl
theorem node2611_eq : Flapjack.WordAlloc.removeDeadStructural input2611 value104 value1 value2 = (output2611, value1162, value1) := by
  rw [input2611_def, output2611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node129_eq]
  try dsimp only
  rw [node2610_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2611 input128)).val
theorem input2612_def : input2612 = (.seq input2611 input128) := by
  unfold input2612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2611 output128)).val
theorem output2612_def : output2612 = (.seq output2611 output128) := by
  unfold output2612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2612_skip : Flapjack.WordAlloc.isSkip output2612 = false := by
  rw [output2612_def]
  conv => lhs; cbv
  try rfl
theorem node2612_eq : Flapjack.WordAlloc.removeDeadStructural input2612 value103 value1 value2 = (output2612, value1162, value1) := by
  rw [input2612_def, output2612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node128_eq]
  try dsimp only
  rw [node2611_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2612 input127)).val
theorem input2613_def : input2613 = (.seq input2612 input127) := by
  unfold input2613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2612 output127)).val
theorem output2613_def : output2613 = (.seq output2612 output127) := by
  unfold output2613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2613_skip : Flapjack.WordAlloc.isSkip output2613 = false := by
  rw [output2613_def]
  conv => lhs; cbv
  try rfl
theorem node2613_eq : Flapjack.WordAlloc.removeDeadStructural input2613 value102 value1 value2 = (output2613, value1162, value1) := by
  rw [input2613_def, output2613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node127_eq]
  try dsimp only
  rw [node2612_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2613 input126)).val
theorem input2614_def : input2614 = (.seq input2613 input126) := by
  unfold input2614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2613 output126)).val
theorem output2614_def : output2614 = (.seq output2613 output126) := by
  unfold output2614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2614_skip : Flapjack.WordAlloc.isSkip output2614 = false := by
  rw [output2614_def]
  conv => lhs; cbv
  try rfl
theorem node2614_eq : Flapjack.WordAlloc.removeDeadStructural input2614 value101 value1 value2 = (output2614, value1162, value1) := by
  rw [input2614_def, output2614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node126_eq]
  try dsimp only
  rw [node2613_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2614 input125)).val
theorem input2615_def : input2615 = (.seq input2614 input125) := by
  unfold input2615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2614 output125)).val
theorem output2615_def : output2615 = (.seq output2614 output125) := by
  unfold output2615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2615_skip : Flapjack.WordAlloc.isSkip output2615 = false := by
  rw [output2615_def]
  conv => lhs; cbv
  try rfl
theorem node2615_eq : Flapjack.WordAlloc.removeDeadStructural input2615 value100 value1 value2 = (output2615, value1162, value1) := by
  rw [input2615_def, output2615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node125_eq]
  try dsimp only
  rw [node2614_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2615 input124)).val
theorem input2616_def : input2616 = (.seq input2615 input124) := by
  unfold input2616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2615 output124)).val
theorem output2616_def : output2616 = (.seq output2615 output124) := by
  unfold output2616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2616_skip : Flapjack.WordAlloc.isSkip output2616 = false := by
  rw [output2616_def]
  conv => lhs; cbv
  try rfl
theorem node2616_eq : Flapjack.WordAlloc.removeDeadStructural input2616 value97 value1 value2 = (output2616, value1162, value1) := by
  rw [input2616_def, output2616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node124_eq]
  try dsimp only
  rw [node2615_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2616 input119)).val
theorem input2617_def : input2617 = (.seq input2616 input119) := by
  unfold input2617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2616 output119)).val
theorem output2617_def : output2617 = (.seq output2616 output119) := by
  unfold output2617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2617_skip : Flapjack.WordAlloc.isSkip output2617 = false := by
  rw [output2617_def]
  conv => lhs; cbv
  try rfl
theorem node2617_eq : Flapjack.WordAlloc.removeDeadStructural input2617 value97 value1 value2 = (output2617, value1162, value1) := by
  rw [input2617_def, output2617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node119_eq]
  try dsimp only
  rw [node2616_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2617 input118)).val
theorem input2618_def : input2618 = (.seq input2617 input118) := by
  unfold input2618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2617 output118)).val
theorem output2618_def : output2618 = (.seq output2617 output118) := by
  unfold output2618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2618_skip : Flapjack.WordAlloc.isSkip output2618 = false := by
  rw [output2618_def]
  conv => lhs; cbv
  try rfl
theorem node2618_eq : Flapjack.WordAlloc.removeDeadStructural input2618 value96 value1 value2 = (output2618, value1162, value1) := by
  rw [input2618_def, output2618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node118_eq]
  try dsimp only
  rw [node2617_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2618 input117)).val
theorem input2619_def : input2619 = (.seq input2618 input117) := by
  unfold input2619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2618 output117)).val
theorem output2619_def : output2619 = (.seq output2618 output117) := by
  unfold output2619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2619_skip : Flapjack.WordAlloc.isSkip output2619 = false := by
  rw [output2619_def]
  conv => lhs; cbv
  try rfl
theorem node2619_eq : Flapjack.WordAlloc.removeDeadStructural input2619 value95 value1 value2 = (output2619, value1162, value1) := by
  rw [input2619_def, output2619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node117_eq]
  try dsimp only
  rw [node2618_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2619 input116)).val
theorem input2620_def : input2620 = (.seq input2619 input116) := by
  unfold input2620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2619 output116)).val
theorem output2620_def : output2620 = (.seq output2619 output116) := by
  unfold output2620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2620_skip : Flapjack.WordAlloc.isSkip output2620 = false := by
  rw [output2620_def]
  conv => lhs; cbv
  try rfl
theorem node2620_eq : Flapjack.WordAlloc.removeDeadStructural input2620 value94 value1 value2 = (output2620, value1162, value1) := by
  rw [input2620_def, output2620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node116_eq]
  try dsimp only
  rw [node2619_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2620 input115)).val
theorem input2621_def : input2621 = (.seq input2620 input115) := by
  unfold input2621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2620 output115)).val
theorem output2621_def : output2621 = (.seq output2620 output115) := by
  unfold output2621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2621_skip : Flapjack.WordAlloc.isSkip output2621 = false := by
  rw [output2621_def]
  conv => lhs; cbv
  try rfl
theorem node2621_eq : Flapjack.WordAlloc.removeDeadStructural input2621 value93 value1 value2 = (output2621, value1162, value1) := by
  rw [input2621_def, output2621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node115_eq]
  try dsimp only
  rw [node2620_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2621 input114)).val
theorem input2622_def : input2622 = (.seq input2621 input114) := by
  unfold input2622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2621 output114)).val
theorem output2622_def : output2622 = (.seq output2621 output114) := by
  unfold output2622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2622_skip : Flapjack.WordAlloc.isSkip output2622 = false := by
  rw [output2622_def]
  conv => lhs; cbv
  try rfl
theorem node2622_eq : Flapjack.WordAlloc.removeDeadStructural input2622 value92 value1 value2 = (output2622, value1162, value1) := by
  rw [input2622_def, output2622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node114_eq]
  try dsimp only
  rw [node2621_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2622 input113)).val
theorem input2623_def : input2623 = (.seq input2622 input113) := by
  unfold input2623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2622 output113)).val
theorem output2623_def : output2623 = (.seq output2622 output113) := by
  unfold output2623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2623_skip : Flapjack.WordAlloc.isSkip output2623 = false := by
  rw [output2623_def]
  conv => lhs; cbv
  try rfl
theorem node2623_eq : Flapjack.WordAlloc.removeDeadStructural input2623 value91 value1 value2 = (output2623, value1162, value1) := by
  rw [input2623_def, output2623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node113_eq]
  try dsimp only
  rw [node2622_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2623 input112)).val
theorem input2624_def : input2624 = (.seq input2623 input112) := by
  unfold input2624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2623 output112)).val
theorem output2624_def : output2624 = (.seq output2623 output112) := by
  unfold output2624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2624_skip : Flapjack.WordAlloc.isSkip output2624 = false := by
  rw [output2624_def]
  conv => lhs; cbv
  try rfl
theorem node2624_eq : Flapjack.WordAlloc.removeDeadStructural input2624 value90 value1 value2 = (output2624, value1162, value1) := by
  rw [input2624_def, output2624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node112_eq]
  try dsimp only
  rw [node2623_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2624 input111)).val
theorem input2625_def : input2625 = (.seq input2624 input111) := by
  unfold input2625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2624 output111)).val
theorem output2625_def : output2625 = (.seq output2624 output111) := by
  unfold output2625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2625_skip : Flapjack.WordAlloc.isSkip output2625 = false := by
  rw [output2625_def]
  conv => lhs; cbv
  try rfl
theorem node2625_eq : Flapjack.WordAlloc.removeDeadStructural input2625 value89 value1 value2 = (output2625, value1162, value1) := by
  rw [input2625_def, output2625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node111_eq]
  try dsimp only
  rw [node2624_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2625 input110)).val
theorem input2626_def : input2626 = (.seq input2625 input110) := by
  unfold input2626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2625 output110)).val
theorem output2626_def : output2626 = (.seq output2625 output110) := by
  unfold output2626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2626_skip : Flapjack.WordAlloc.isSkip output2626 = false := by
  rw [output2626_def]
  conv => lhs; cbv
  try rfl
theorem node2626_eq : Flapjack.WordAlloc.removeDeadStructural input2626 value88 value1 value2 = (output2626, value1162, value1) := by
  rw [input2626_def, output2626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node110_eq]
  try dsimp only
  rw [node2625_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2626 input109)).val
theorem input2627_def : input2627 = (.seq input2626 input109) := by
  unfold input2627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2626 output109)).val
theorem output2627_def : output2627 = (.seq output2626 output109) := by
  unfold output2627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2627_skip : Flapjack.WordAlloc.isSkip output2627 = false := by
  rw [output2627_def]
  conv => lhs; cbv
  try rfl
theorem node2627_eq : Flapjack.WordAlloc.removeDeadStructural input2627 value87 value1 value2 = (output2627, value1162, value1) := by
  rw [input2627_def, output2627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node109_eq]
  try dsimp only
  rw [node2626_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2627 input108)).val
theorem input2628_def : input2628 = (.seq input2627 input108) := by
  unfold input2628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2627 output108)).val
theorem output2628_def : output2628 = (.seq output2627 output108) := by
  unfold output2628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2628_skip : Flapjack.WordAlloc.isSkip output2628 = false := by
  rw [output2628_def]
  conv => lhs; cbv
  try rfl
theorem node2628_eq : Flapjack.WordAlloc.removeDeadStructural input2628 value86 value1 value2 = (output2628, value1162, value1) := by
  rw [input2628_def, output2628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node108_eq]
  try dsimp only
  rw [node2627_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2628 input107)).val
theorem input2629_def : input2629 = (.seq input2628 input107) := by
  unfold input2629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2628 output107)).val
theorem output2629_def : output2629 = (.seq output2628 output107) := by
  unfold output2629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2629_skip : Flapjack.WordAlloc.isSkip output2629 = false := by
  rw [output2629_def]
  conv => lhs; cbv
  try rfl
theorem node2629_eq : Flapjack.WordAlloc.removeDeadStructural input2629 value85 value1 value2 = (output2629, value1162, value1) := by
  rw [input2629_def, output2629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node107_eq]
  try dsimp only
  rw [node2628_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2629 input106)).val
theorem input2630_def : input2630 = (.seq input2629 input106) := by
  unfold input2630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2629 output106)).val
theorem output2630_def : output2630 = (.seq output2629 output106) := by
  unfold output2630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2630_skip : Flapjack.WordAlloc.isSkip output2630 = false := by
  rw [output2630_def]
  conv => lhs; cbv
  try rfl
theorem node2630_eq : Flapjack.WordAlloc.removeDeadStructural input2630 value82 value1 value2 = (output2630, value1162, value1) := by
  rw [input2630_def, output2630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node106_eq]
  try dsimp only
  rw [node2629_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2630 input101)).val
theorem input2631_def : input2631 = (.seq input2630 input101) := by
  unfold input2631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2630 output101)).val
theorem output2631_def : output2631 = (.seq output2630 output101) := by
  unfold output2631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2631_skip : Flapjack.WordAlloc.isSkip output2631 = false := by
  rw [output2631_def]
  conv => lhs; cbv
  try rfl
theorem node2631_eq : Flapjack.WordAlloc.removeDeadStructural input2631 value82 value1 value2 = (output2631, value1162, value1) := by
  rw [input2631_def, output2631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node101_eq]
  try dsimp only
  rw [node2630_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2631 input100)).val
theorem input2632_def : input2632 = (.seq input2631 input100) := by
  unfold input2632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2631 output100)).val
theorem output2632_def : output2632 = (.seq output2631 output100) := by
  unfold output2632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2632_skip : Flapjack.WordAlloc.isSkip output2632 = false := by
  rw [output2632_def]
  conv => lhs; cbv
  try rfl
theorem node2632_eq : Flapjack.WordAlloc.removeDeadStructural input2632 value81 value1 value2 = (output2632, value1162, value1) := by
  rw [input2632_def, output2632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node100_eq]
  try dsimp only
  rw [node2631_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2632 input99)).val
theorem input2633_def : input2633 = (.seq input2632 input99) := by
  unfold input2633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2632 output99)).val
theorem output2633_def : output2633 = (.seq output2632 output99) := by
  unfold output2633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2633_skip : Flapjack.WordAlloc.isSkip output2633 = false := by
  rw [output2633_def]
  conv => lhs; cbv
  try rfl
theorem node2633_eq : Flapjack.WordAlloc.removeDeadStructural input2633 value80 value1 value2 = (output2633, value1162, value1) := by
  rw [input2633_def, output2633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node99_eq]
  try dsimp only
  rw [node2632_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2633 input98)).val
theorem input2634_def : input2634 = (.seq input2633 input98) := by
  unfold input2634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2633 output98)).val
theorem output2634_def : output2634 = (.seq output2633 output98) := by
  unfold output2634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2634_skip : Flapjack.WordAlloc.isSkip output2634 = false := by
  rw [output2634_def]
  conv => lhs; cbv
  try rfl
theorem node2634_eq : Flapjack.WordAlloc.removeDeadStructural input2634 value79 value1 value2 = (output2634, value1162, value1) := by
  rw [input2634_def, output2634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node98_eq]
  try dsimp only
  rw [node2633_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2634 input97)).val
theorem input2635_def : input2635 = (.seq input2634 input97) := by
  unfold input2635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2634 output97)).val
theorem output2635_def : output2635 = (.seq output2634 output97) := by
  unfold output2635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2635_skip : Flapjack.WordAlloc.isSkip output2635 = false := by
  rw [output2635_def]
  conv => lhs; cbv
  try rfl
theorem node2635_eq : Flapjack.WordAlloc.removeDeadStructural input2635 value78 value1 value2 = (output2635, value1162, value1) := by
  rw [input2635_def, output2635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node97_eq]
  try dsimp only
  rw [node2634_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2635 input96)).val
theorem input2636_def : input2636 = (.seq input2635 input96) := by
  unfold input2636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2635 output96)).val
theorem output2636_def : output2636 = (.seq output2635 output96) := by
  unfold output2636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2636_skip : Flapjack.WordAlloc.isSkip output2636 = false := by
  rw [output2636_def]
  conv => lhs; cbv
  try rfl
theorem node2636_eq : Flapjack.WordAlloc.removeDeadStructural input2636 value77 value1 value2 = (output2636, value1162, value1) := by
  rw [input2636_def, output2636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node96_eq]
  try dsimp only
  rw [node2635_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2636 input95)).val
theorem input2637_def : input2637 = (.seq input2636 input95) := by
  unfold input2637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2636 output95)).val
theorem output2637_def : output2637 = (.seq output2636 output95) := by
  unfold output2637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2637_skip : Flapjack.WordAlloc.isSkip output2637 = false := by
  rw [output2637_def]
  conv => lhs; cbv
  try rfl
theorem node2637_eq : Flapjack.WordAlloc.removeDeadStructural input2637 value76 value1 value2 = (output2637, value1162, value1) := by
  rw [input2637_def, output2637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node95_eq]
  try dsimp only
  rw [node2636_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2637 input94)).val
theorem input2638_def : input2638 = (.seq input2637 input94) := by
  unfold input2638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2637 output94)).val
theorem output2638_def : output2638 = (.seq output2637 output94) := by
  unfold output2638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2638_skip : Flapjack.WordAlloc.isSkip output2638 = false := by
  rw [output2638_def]
  conv => lhs; cbv
  try rfl
theorem node2638_eq : Flapjack.WordAlloc.removeDeadStructural input2638 value75 value1 value2 = (output2638, value1162, value1) := by
  rw [input2638_def, output2638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node94_eq]
  try dsimp only
  rw [node2637_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2638 input93)).val
theorem input2639_def : input2639 = (.seq input2638 input93) := by
  unfold input2639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2638 output93)).val
theorem output2639_def : output2639 = (.seq output2638 output93) := by
  unfold output2639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2639_skip : Flapjack.WordAlloc.isSkip output2639 = false := by
  rw [output2639_def]
  conv => lhs; cbv
  try rfl
theorem node2639_eq : Flapjack.WordAlloc.removeDeadStructural input2639 value74 value1 value2 = (output2639, value1162, value1) := by
  rw [input2639_def, output2639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node93_eq]
  try dsimp only
  rw [node2638_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2639 input92)).val
theorem input2640_def : input2640 = (.seq input2639 input92) := by
  unfold input2640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2639 output92)).val
theorem output2640_def : output2640 = (.seq output2639 output92) := by
  unfold output2640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2640_skip : Flapjack.WordAlloc.isSkip output2640 = false := by
  rw [output2640_def]
  conv => lhs; cbv
  try rfl
theorem node2640_eq : Flapjack.WordAlloc.removeDeadStructural input2640 value72 value1 value2 = (output2640, value1162, value1) := by
  rw [input2640_def, output2640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node92_eq]
  try dsimp only
  rw [node2639_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2640 input89)).val
theorem input2641_def : input2641 = (.seq input2640 input89) := by
  unfold input2641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2640 output89)).val
theorem output2641_def : output2641 = (.seq output2640 output89) := by
  unfold output2641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2641_skip : Flapjack.WordAlloc.isSkip output2641 = false := by
  rw [output2641_def]
  conv => lhs; cbv
  try rfl
theorem node2641_eq : Flapjack.WordAlloc.removeDeadStructural input2641 value71 value1 value2 = (output2641, value1162, value1) := by
  rw [input2641_def, output2641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node89_eq]
  try dsimp only
  rw [node2640_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2641 input88)).val
theorem input2642_def : input2642 = (.seq input2641 input88) := by
  unfold input2642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2641 output88)).val
theorem output2642_def : output2642 = (.seq output2641 output88) := by
  unfold output2642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2642_skip : Flapjack.WordAlloc.isSkip output2642 = false := by
  rw [output2642_def]
  conv => lhs; cbv
  try rfl
theorem node2642_eq : Flapjack.WordAlloc.removeDeadStructural input2642 value69 value1 value2 = (output2642, value1162, value1) := by
  rw [input2642_def, output2642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node88_eq]
  try dsimp only
  rw [node2641_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2642 input85)).val
theorem input2643_def : input2643 = (.seq input2642 input85) := by
  unfold input2643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2642 output85)).val
theorem output2643_def : output2643 = (.seq output2642 output85) := by
  unfold output2643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2643_skip : Flapjack.WordAlloc.isSkip output2643 = false := by
  rw [output2643_def]
  conv => lhs; cbv
  try rfl
theorem node2643_eq : Flapjack.WordAlloc.removeDeadStructural input2643 value68 value1 value2 = (output2643, value1162, value1) := by
  rw [input2643_def, output2643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node85_eq]
  try dsimp only
  rw [node2642_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2643 input84)).val
theorem input2644_def : input2644 = (.seq input2643 input84) := by
  unfold input2644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2643 output84)).val
theorem output2644_def : output2644 = (.seq output2643 output84) := by
  unfold output2644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2644_skip : Flapjack.WordAlloc.isSkip output2644 = false := by
  rw [output2644_def]
  conv => lhs; cbv
  try rfl
theorem node2644_eq : Flapjack.WordAlloc.removeDeadStructural input2644 value66 value1 value2 = (output2644, value1162, value1) := by
  rw [input2644_def, output2644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node84_eq]
  try dsimp only
  rw [node2643_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2644 input81)).val
theorem input2645_def : input2645 = (.seq input2644 input81) := by
  unfold input2645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2644 output81)).val
theorem output2645_def : output2645 = (.seq output2644 output81) := by
  unfold output2645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2645_skip : Flapjack.WordAlloc.isSkip output2645 = false := by
  rw [output2645_def]
  conv => lhs; cbv
  try rfl
theorem node2645_eq : Flapjack.WordAlloc.removeDeadStructural input2645 value65 value1 value2 = (output2645, value1162, value1) := by
  rw [input2645_def, output2645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node81_eq]
  try dsimp only
  rw [node2644_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2645 input80)).val
theorem input2646_def : input2646 = (.seq input2645 input80) := by
  unfold input2646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2645 output80)).val
theorem output2646_def : output2646 = (.seq output2645 output80) := by
  unfold output2646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2646_skip : Flapjack.WordAlloc.isSkip output2646 = false := by
  rw [output2646_def]
  conv => lhs; cbv
  try rfl
theorem node2646_eq : Flapjack.WordAlloc.removeDeadStructural input2646 value63 value1 value2 = (output2646, value1162, value1) := by
  rw [input2646_def, output2646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node80_eq]
  try dsimp only
  rw [node2645_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2646 input77)).val
theorem input2647_def : input2647 = (.seq input2646 input77) := by
  unfold input2647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2646 output77)).val
theorem output2647_def : output2647 = (.seq output2646 output77) := by
  unfold output2647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2647_skip : Flapjack.WordAlloc.isSkip output2647 = false := by
  rw [output2647_def]
  conv => lhs; cbv
  try rfl
theorem node2647_eq : Flapjack.WordAlloc.removeDeadStructural input2647 value62 value1 value2 = (output2647, value1162, value1) := by
  rw [input2647_def, output2647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node77_eq]
  try dsimp only
  rw [node2646_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2647 input76)).val
theorem input2648_def : input2648 = (.seq input2647 input76) := by
  unfold input2648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2647 output76)).val
theorem output2648_def : output2648 = (.seq output2647 output76) := by
  unfold output2648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2648_skip : Flapjack.WordAlloc.isSkip output2648 = false := by
  rw [output2648_def]
  conv => lhs; cbv
  try rfl
theorem node2648_eq : Flapjack.WordAlloc.removeDeadStructural input2648 value60 value1 value2 = (output2648, value1162, value1) := by
  rw [input2648_def, output2648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node76_eq]
  try dsimp only
  rw [node2647_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2648 input73)).val
theorem input2649_def : input2649 = (.seq input2648 input73) := by
  unfold input2649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2648 output73)).val
theorem output2649_def : output2649 = (.seq output2648 output73) := by
  unfold output2649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2649_skip : Flapjack.WordAlloc.isSkip output2649 = false := by
  rw [output2649_def]
  conv => lhs; cbv
  try rfl
theorem node2649_eq : Flapjack.WordAlloc.removeDeadStructural input2649 value59 value1 value2 = (output2649, value1162, value1) := by
  rw [input2649_def, output2649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node73_eq]
  try dsimp only
  rw [node2648_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2649 input72)).val
theorem input2650_def : input2650 = (.seq input2649 input72) := by
  unfold input2650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2649 output72)).val
theorem output2650_def : output2650 = (.seq output2649 output72) := by
  unfold output2650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2650_skip : Flapjack.WordAlloc.isSkip output2650 = false := by
  rw [output2650_def]
  conv => lhs; cbv
  try rfl
theorem node2650_eq : Flapjack.WordAlloc.removeDeadStructural input2650 value57 value1 value2 = (output2650, value1162, value1) := by
  rw [input2650_def, output2650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node72_eq]
  try dsimp only
  rw [node2649_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2650 input69)).val
theorem input2651_def : input2651 = (.seq input2650 input69) := by
  unfold input2651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2650 output69)).val
theorem output2651_def : output2651 = (.seq output2650 output69) := by
  unfold output2651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2651_skip : Flapjack.WordAlloc.isSkip output2651 = false := by
  rw [output2651_def]
  conv => lhs; cbv
  try rfl
theorem node2651_eq : Flapjack.WordAlloc.removeDeadStructural input2651 value55 value1 value2 = (output2651, value1162, value1) := by
  rw [input2651_def, output2651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node69_eq]
  try dsimp only
  rw [node2650_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2651 input66)).val
theorem input2652_def : input2652 = (.seq input2651 input66) := by
  unfold input2652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2651 output66)).val
theorem output2652_def : output2652 = (.seq output2651 output66) := by
  unfold output2652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2652_skip : Flapjack.WordAlloc.isSkip output2652 = false := by
  rw [output2652_def]
  conv => lhs; cbv
  try rfl
theorem node2652_eq : Flapjack.WordAlloc.removeDeadStructural input2652 value54 value1 value2 = (output2652, value1162, value1) := by
  rw [input2652_def, output2652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node66_eq]
  try dsimp only
  rw [node2651_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2652 input65)).val
theorem input2653_def : input2653 = (.seq input2652 input65) := by
  unfold input2653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2652 output65)).val
theorem output2653_def : output2653 = (.seq output2652 output65) := by
  unfold output2653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2653_skip : Flapjack.WordAlloc.isSkip output2653 = false := by
  rw [output2653_def]
  conv => lhs; cbv
  try rfl
theorem node2653_eq : Flapjack.WordAlloc.removeDeadStructural input2653 value53 value1 value2 = (output2653, value1162, value1) := by
  rw [input2653_def, output2653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node65_eq]
  try dsimp only
  rw [node2652_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2653 input64)).val
theorem input2654_def : input2654 = (.seq input2653 input64) := by
  unfold input2654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2653 output64)).val
theorem output2654_def : output2654 = (.seq output2653 output64) := by
  unfold output2654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2654_skip : Flapjack.WordAlloc.isSkip output2654 = false := by
  rw [output2654_def]
  conv => lhs; cbv
  try rfl
theorem node2654_eq : Flapjack.WordAlloc.removeDeadStructural input2654 value52 value1 value2 = (output2654, value1162, value1) := by
  rw [input2654_def, output2654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node64_eq]
  try dsimp only
  rw [node2653_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2654 input63)).val
theorem input2655_def : input2655 = (.seq input2654 input63) := by
  unfold input2655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2654 output63)).val
theorem output2655_def : output2655 = (.seq output2654 output63) := by
  unfold output2655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2655_skip : Flapjack.WordAlloc.isSkip output2655 = false := by
  rw [output2655_def]
  conv => lhs; cbv
  try rfl
theorem node2655_eq : Flapjack.WordAlloc.removeDeadStructural input2655 value51 value1 value2 = (output2655, value1162, value1) := by
  rw [input2655_def, output2655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node63_eq]
  try dsimp only
  rw [node2654_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2655 input62)).val
theorem input2656_def : input2656 = (.seq input2655 input62) := by
  unfold input2656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2655 output62)).val
theorem output2656_def : output2656 = (.seq output2655 output62) := by
  unfold output2656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2656_skip : Flapjack.WordAlloc.isSkip output2656 = false := by
  rw [output2656_def]
  conv => lhs; cbv
  try rfl
theorem node2656_eq : Flapjack.WordAlloc.removeDeadStructural input2656 value50 value1 value2 = (output2656, value1162, value1) := by
  rw [input2656_def, output2656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node62_eq]
  try dsimp only
  rw [node2655_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2656 input61)).val
theorem input2657_def : input2657 = (.seq input2656 input61) := by
  unfold input2657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2656 output61)).val
theorem output2657_def : output2657 = (.seq output2656 output61) := by
  unfold output2657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2657_skip : Flapjack.WordAlloc.isSkip output2657 = false := by
  rw [output2657_def]
  conv => lhs; cbv
  try rfl
theorem node2657_eq : Flapjack.WordAlloc.removeDeadStructural input2657 value49 value1 value2 = (output2657, value1162, value1) := by
  rw [input2657_def, output2657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node61_eq]
  try dsimp only
  rw [node2656_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2657 input60)).val
theorem input2658_def : input2658 = (.seq input2657 input60) := by
  unfold input2658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2657 output60)).val
theorem output2658_def : output2658 = (.seq output2657 output60) := by
  unfold output2658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2658_skip : Flapjack.WordAlloc.isSkip output2658 = false := by
  rw [output2658_def]
  conv => lhs; cbv
  try rfl
theorem node2658_eq : Flapjack.WordAlloc.removeDeadStructural input2658 value48 value1 value2 = (output2658, value1162, value1) := by
  rw [input2658_def, output2658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node60_eq]
  try dsimp only
  rw [node2657_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2658 input59)).val
theorem input2659_def : input2659 = (.seq input2658 input59) := by
  unfold input2659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2658 output59)).val
theorem output2659_def : output2659 = (.seq output2658 output59) := by
  unfold output2659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2659_skip : Flapjack.WordAlloc.isSkip output2659 = false := by
  rw [output2659_def]
  conv => lhs; cbv
  try rfl
theorem node2659_eq : Flapjack.WordAlloc.removeDeadStructural input2659 value46 value1 value2 = (output2659, value1162, value1) := by
  rw [input2659_def, output2659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node59_eq]
  try dsimp only
  rw [node2658_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2659 input56)).val
theorem input2660_def : input2660 = (.seq input2659 input56) := by
  unfold input2660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2659 output56)).val
theorem output2660_def : output2660 = (.seq output2659 output56) := by
  unfold output2660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2660_skip : Flapjack.WordAlloc.isSkip output2660 = false := by
  rw [output2660_def]
  conv => lhs; cbv
  try rfl
theorem node2660_eq : Flapjack.WordAlloc.removeDeadStructural input2660 value45 value1 value2 = (output2660, value1162, value1) := by
  rw [input2660_def, output2660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node56_eq]
  try dsimp only
  rw [node2659_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2660 input55)).val
theorem input2661_def : input2661 = (.seq input2660 input55) := by
  unfold input2661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2660 output55)).val
theorem output2661_def : output2661 = (.seq output2660 output55) := by
  unfold output2661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2661_skip : Flapjack.WordAlloc.isSkip output2661 = false := by
  rw [output2661_def]
  conv => lhs; cbv
  try rfl
theorem node2661_eq : Flapjack.WordAlloc.removeDeadStructural input2661 value43 value1 value2 = (output2661, value1162, value1) := by
  rw [input2661_def, output2661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node55_eq]
  try dsimp only
  rw [node2660_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2661 input52)).val
theorem input2662_def : input2662 = (.seq input2661 input52) := by
  unfold input2662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2661 output52)).val
theorem output2662_def : output2662 = (.seq output2661 output52) := by
  unfold output2662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2662_skip : Flapjack.WordAlloc.isSkip output2662 = false := by
  rw [output2662_def]
  conv => lhs; cbv
  try rfl
theorem node2662_eq : Flapjack.WordAlloc.removeDeadStructural input2662 value42 value1 value2 = (output2662, value1162, value1) := by
  rw [input2662_def, output2662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node52_eq]
  try dsimp only
  rw [node2661_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2662 input51)).val
theorem input2663_def : input2663 = (.seq input2662 input51) := by
  unfold input2663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2662 output51)).val
theorem output2663_def : output2663 = (.seq output2662 output51) := by
  unfold output2663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2663_skip : Flapjack.WordAlloc.isSkip output2663 = false := by
  rw [output2663_def]
  conv => lhs; cbv
  try rfl
theorem node2663_eq : Flapjack.WordAlloc.removeDeadStructural input2663 value40 value1 value2 = (output2663, value1162, value1) := by
  rw [input2663_def, output2663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node51_eq]
  try dsimp only
  rw [node2662_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2663 input48)).val
theorem input2664_def : input2664 = (.seq input2663 input48) := by
  unfold input2664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2663 output48)).val
theorem output2664_def : output2664 = (.seq output2663 output48) := by
  unfold output2664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2664_skip : Flapjack.WordAlloc.isSkip output2664 = false := by
  rw [output2664_def]
  conv => lhs; cbv
  try rfl
theorem node2664_eq : Flapjack.WordAlloc.removeDeadStructural input2664 value39 value1 value2 = (output2664, value1162, value1) := by
  rw [input2664_def, output2664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node48_eq]
  try dsimp only
  rw [node2663_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2664 input47)).val
theorem input2665_def : input2665 = (.seq input2664 input47) := by
  unfold input2665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2664 output47)).val
theorem output2665_def : output2665 = (.seq output2664 output47) := by
  unfold output2665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2665_skip : Flapjack.WordAlloc.isSkip output2665 = false := by
  rw [output2665_def]
  conv => lhs; cbv
  try rfl
theorem node2665_eq : Flapjack.WordAlloc.removeDeadStructural input2665 value37 value1 value2 = (output2665, value1162, value1) := by
  rw [input2665_def, output2665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node47_eq]
  try dsimp only
  rw [node2664_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2665 input44)).val
theorem input2666_def : input2666 = (.seq input2665 input44) := by
  unfold input2666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2665 output44)).val
theorem output2666_def : output2666 = (.seq output2665 output44) := by
  unfold output2666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2666_skip : Flapjack.WordAlloc.isSkip output2666 = false := by
  rw [output2666_def]
  conv => lhs; cbv
  try rfl
theorem node2666_eq : Flapjack.WordAlloc.removeDeadStructural input2666 value36 value1 value2 = (output2666, value1162, value1) := by
  rw [input2666_def, output2666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node44_eq]
  try dsimp only
  rw [node2665_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2666 input43)).val
theorem input2667_def : input2667 = (.seq input2666 input43) := by
  unfold input2667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2666 output43)).val
theorem output2667_def : output2667 = (.seq output2666 output43) := by
  unfold output2667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2667_skip : Flapjack.WordAlloc.isSkip output2667 = false := by
  rw [output2667_def]
  conv => lhs; cbv
  try rfl
theorem node2667_eq : Flapjack.WordAlloc.removeDeadStructural input2667 value34 value1 value2 = (output2667, value1162, value1) := by
  rw [input2667_def, output2667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node43_eq]
  try dsimp only
  rw [node2666_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2667 input40)).val
theorem input2668_def : input2668 = (.seq input2667 input40) := by
  unfold input2668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2667 output40)).val
theorem output2668_def : output2668 = (.seq output2667 output40) := by
  unfold output2668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2668_skip : Flapjack.WordAlloc.isSkip output2668 = false := by
  rw [output2668_def]
  conv => lhs; cbv
  try rfl
theorem node2668_eq : Flapjack.WordAlloc.removeDeadStructural input2668 value33 value1 value2 = (output2668, value1162, value1) := by
  rw [input2668_def, output2668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node40_eq]
  try dsimp only
  rw [node2667_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2668 input39)).val
theorem input2669_def : input2669 = (.seq input2668 input39) := by
  unfold input2669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2668 output39)).val
theorem output2669_def : output2669 = (.seq output2668 output39) := by
  unfold output2669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2669_skip : Flapjack.WordAlloc.isSkip output2669 = false := by
  rw [output2669_def]
  conv => lhs; cbv
  try rfl
theorem node2669_eq : Flapjack.WordAlloc.removeDeadStructural input2669 value31 value1 value2 = (output2669, value1162, value1) := by
  rw [input2669_def, output2669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node39_eq]
  try dsimp only
  rw [node2668_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2669 input36)).val
theorem input2670_def : input2670 = (.seq input2669 input36) := by
  unfold input2670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2669 output36)).val
theorem output2670_def : output2670 = (.seq output2669 output36) := by
  unfold output2670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2670_skip : Flapjack.WordAlloc.isSkip output2670 = false := by
  rw [output2670_def]
  conv => lhs; cbv
  try rfl
theorem node2670_eq : Flapjack.WordAlloc.removeDeadStructural input2670 value29 value1 value2 = (output2670, value1162, value1) := by
  rw [input2670_def, output2670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node36_eq]
  try dsimp only
  rw [node2669_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2670 input33)).val
theorem input2671_def : input2671 = (.seq input2670 input33) := by
  unfold input2671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2670 output33)).val
theorem output2671_def : output2671 = (.seq output2670 output33) := by
  unfold output2671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2671_skip : Flapjack.WordAlloc.isSkip output2671 = false := by
  rw [output2671_def]
  conv => lhs; cbv
  try rfl
theorem node2671_eq : Flapjack.WordAlloc.removeDeadStructural input2671 value28 value1 value2 = (output2671, value1162, value1) := by
  rw [input2671_def, output2671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node33_eq]
  try dsimp only
  rw [node2670_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2671 input32)).val
theorem input2672_def : input2672 = (.seq input2671 input32) := by
  unfold input2672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2671 output32)).val
theorem output2672_def : output2672 = (.seq output2671 output32) := by
  unfold output2672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2672_skip : Flapjack.WordAlloc.isSkip output2672 = false := by
  rw [output2672_def]
  conv => lhs; cbv
  try rfl
theorem node2672_eq : Flapjack.WordAlloc.removeDeadStructural input2672 value27 value1 value2 = (output2672, value1162, value1) := by
  rw [input2672_def, output2672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node32_eq]
  try dsimp only
  rw [node2671_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2672 input31)).val
theorem input2673_def : input2673 = (.seq input2672 input31) := by
  unfold input2673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2672 output31)).val
theorem output2673_def : output2673 = (.seq output2672 output31) := by
  unfold output2673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2673_skip : Flapjack.WordAlloc.isSkip output2673 = false := by
  rw [output2673_def]
  conv => lhs; cbv
  try rfl
theorem node2673_eq : Flapjack.WordAlloc.removeDeadStructural input2673 value26 value1 value2 = (output2673, value1162, value1) := by
  rw [input2673_def, output2673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node31_eq]
  try dsimp only
  rw [node2672_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2673 input30)).val
theorem input2674_def : input2674 = (.seq input2673 input30) := by
  unfold input2674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2673 output30)).val
theorem output2674_def : output2674 = (.seq output2673 output30) := by
  unfold output2674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2674_skip : Flapjack.WordAlloc.isSkip output2674 = false := by
  rw [output2674_def]
  conv => lhs; cbv
  try rfl
theorem node2674_eq : Flapjack.WordAlloc.removeDeadStructural input2674 value25 value1 value2 = (output2674, value1162, value1) := by
  rw [input2674_def, output2674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node30_eq]
  try dsimp only
  rw [node2673_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2674 input29)).val
theorem input2675_def : input2675 = (.seq input2674 input29) := by
  unfold input2675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2674 output29)).val
theorem output2675_def : output2675 = (.seq output2674 output29) := by
  unfold output2675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2675_skip : Flapjack.WordAlloc.isSkip output2675 = false := by
  rw [output2675_def]
  conv => lhs; cbv
  try rfl
theorem node2675_eq : Flapjack.WordAlloc.removeDeadStructural input2675 value24 value1 value2 = (output2675, value1162, value1) := by
  rw [input2675_def, output2675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node29_eq]
  try dsimp only
  rw [node2674_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2675 input28)).val
theorem input2676_def : input2676 = (.seq input2675 input28) := by
  unfold input2676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2675 output28)).val
theorem output2676_def : output2676 = (.seq output2675 output28) := by
  unfold output2676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2676_skip : Flapjack.WordAlloc.isSkip output2676 = false := by
  rw [output2676_def]
  conv => lhs; cbv
  try rfl
theorem node2676_eq : Flapjack.WordAlloc.removeDeadStructural input2676 value23 value1 value2 = (output2676, value1162, value1) := by
  rw [input2676_def, output2676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node28_eq]
  try dsimp only
  rw [node2675_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2676 input27)).val
theorem input2677_def : input2677 = (.seq input2676 input27) := by
  unfold input2677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2676 output27)).val
theorem output2677_def : output2677 = (.seq output2676 output27) := by
  unfold output2677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2677_skip : Flapjack.WordAlloc.isSkip output2677 = false := by
  rw [output2677_def]
  conv => lhs; cbv
  try rfl
theorem node2677_eq : Flapjack.WordAlloc.removeDeadStructural input2677 value22 value1 value2 = (output2677, value1162, value1) := by
  rw [input2677_def, output2677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node27_eq]
  try dsimp only
  rw [node2676_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2677 input26)).val
theorem input2678_def : input2678 = (.seq input2677 input26) := by
  unfold input2678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2677 output26)).val
theorem output2678_def : output2678 = (.seq output2677 output26) := by
  unfold output2678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2678_skip : Flapjack.WordAlloc.isSkip output2678 = false := by
  rw [output2678_def]
  conv => lhs; cbv
  try rfl
theorem node2678_eq : Flapjack.WordAlloc.removeDeadStructural input2678 value20 value1 value2 = (output2678, value1162, value1) := by
  rw [input2678_def, output2678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node26_eq]
  try dsimp only
  rw [node2677_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2678 input23)).val
theorem input2679_def : input2679 = (.seq input2678 input23) := by
  unfold input2679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2678 output23)).val
theorem output2679_def : output2679 = (.seq output2678 output23) := by
  unfold output2679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2679_skip : Flapjack.WordAlloc.isSkip output2679 = false := by
  rw [output2679_def]
  conv => lhs; cbv
  try rfl
theorem node2679_eq : Flapjack.WordAlloc.removeDeadStructural input2679 value19 value1 value2 = (output2679, value1162, value1) := by
  rw [input2679_def, output2679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node23_eq]
  try dsimp only
  rw [node2678_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2679 input22)).val
theorem input2680_def : input2680 = (.seq input2679 input22) := by
  unfold input2680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2679 output22)).val
theorem output2680_def : output2680 = (.seq output2679 output22) := by
  unfold output2680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2680_skip : Flapjack.WordAlloc.isSkip output2680 = false := by
  rw [output2680_def]
  conv => lhs; cbv
  try rfl
theorem node2680_eq : Flapjack.WordAlloc.removeDeadStructural input2680 value17 value1 value2 = (output2680, value1162, value1) := by
  rw [input2680_def, output2680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node22_eq]
  try dsimp only
  rw [node2679_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2680 input19)).val
theorem input2681_def : input2681 = (.seq input2680 input19) := by
  unfold input2681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2680 output19)).val
theorem output2681_def : output2681 = (.seq output2680 output19) := by
  unfold output2681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2681_skip : Flapjack.WordAlloc.isSkip output2681 = false := by
  rw [output2681_def]
  conv => lhs; cbv
  try rfl
theorem node2681_eq : Flapjack.WordAlloc.removeDeadStructural input2681 value16 value1 value2 = (output2681, value1162, value1) := by
  rw [input2681_def, output2681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node19_eq]
  try dsimp only
  rw [node2680_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2681 input18)).val
theorem input2682_def : input2682 = (.seq input2681 input18) := by
  unfold input2682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2681 output18)).val
theorem output2682_def : output2682 = (.seq output2681 output18) := by
  unfold output2682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2682_skip : Flapjack.WordAlloc.isSkip output2682 = false := by
  rw [output2682_def]
  conv => lhs; cbv
  try rfl
theorem node2682_eq : Flapjack.WordAlloc.removeDeadStructural input2682 value14 value1 value2 = (output2682, value1162, value1) := by
  rw [input2682_def, output2682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node18_eq]
  try dsimp only
  rw [node2681_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2682 input15)).val
theorem input2683_def : input2683 = (.seq input2682 input15) := by
  unfold input2683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2682 output15)).val
theorem output2683_def : output2683 = (.seq output2682 output15) := by
  unfold output2683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2683_skip : Flapjack.WordAlloc.isSkip output2683 = false := by
  rw [output2683_def]
  conv => lhs; cbv
  try rfl
theorem node2683_eq : Flapjack.WordAlloc.removeDeadStructural input2683 value13 value1 value2 = (output2683, value1162, value1) := by
  rw [input2683_def, output2683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node15_eq]
  try dsimp only
  rw [node2682_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2683 input14)).val
theorem input2684_def : input2684 = (.seq input2683 input14) := by
  unfold input2684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2683 output14)).val
theorem output2684_def : output2684 = (.seq output2683 output14) := by
  unfold output2684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2684_skip : Flapjack.WordAlloc.isSkip output2684 = false := by
  rw [output2684_def]
  conv => lhs; cbv
  try rfl
theorem node2684_eq : Flapjack.WordAlloc.removeDeadStructural input2684 value11 value1 value2 = (output2684, value1162, value1) := by
  rw [input2684_def, output2684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node14_eq]
  try dsimp only
  rw [node2683_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2684 input11)).val
theorem input2685_def : input2685 = (.seq input2684 input11) := by
  unfold input2685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2684 output11)).val
theorem output2685_def : output2685 = (.seq output2684 output11) := by
  unfold output2685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2685_skip : Flapjack.WordAlloc.isSkip output2685 = false := by
  rw [output2685_def]
  conv => lhs; cbv
  try rfl
theorem node2685_eq : Flapjack.WordAlloc.removeDeadStructural input2685 value10 value1 value2 = (output2685, value1162, value1) := by
  rw [input2685_def, output2685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11_eq]
  try dsimp only
  rw [node2684_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2685 input10)).val
theorem input2686_def : input2686 = (.seq input2685 input10) := by
  unfold input2686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2685 output10)).val
theorem output2686_def : output2686 = (.seq output2685 output10) := by
  unfold output2686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2686_skip : Flapjack.WordAlloc.isSkip output2686 = false := by
  rw [output2686_def]
  conv => lhs; cbv
  try rfl
theorem node2686_eq : Flapjack.WordAlloc.removeDeadStructural input2686 value8 value1 value2 = (output2686, value1162, value1) := by
  rw [input2686_def, output2686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10_eq]
  try dsimp only
  rw [node2685_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2686 input7)).val
theorem input2687_def : input2687 = (.seq input2686 input7) := by
  unfold input2687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2686 output7)).val
theorem output2687_def : output2687 = (.seq output2686 output7) := by
  unfold output2687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2687_skip : Flapjack.WordAlloc.isSkip output2687 = false := by
  rw [output2687_def]
  conv => lhs; cbv
  try rfl
theorem node2687_eq : Flapjack.WordAlloc.removeDeadStructural input2687 value7 value1 value2 = (output2687, value1162, value1) := by
  rw [input2687_def, output2687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7_eq]
  try dsimp only
  rw [node2686_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2687 input6)).val
theorem input2688_def : input2688 = (.seq input2687 input6) := by
  unfold input2688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2687 output6)).val
theorem output2688_def : output2688 = (.seq output2687 output6) := by
  unfold output2688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2688_skip : Flapjack.WordAlloc.isSkip output2688 = false := by
  rw [output2688_def]
  conv => lhs; cbv
  try rfl
theorem node2688_eq : Flapjack.WordAlloc.removeDeadStructural input2688 value5 value1 value2 = (output2688, value1162, value1) := by
  rw [input2688_def, output2688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6_eq]
  try dsimp only
  rw [node2687_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2688 input3)).val
theorem input2689_def : input2689 = (.seq input2688 input3) := by
  unfold input2689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2688 output3)).val
theorem output2689_def : output2689 = (.seq output2688 output3) := by
  unfold output2689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2689_skip : Flapjack.WordAlloc.isSkip output2689 = false := by
  rw [output2689_def]
  conv => lhs; cbv
  try rfl
theorem node2689_eq : Flapjack.WordAlloc.removeDeadStructural input2689 value4 value1 value2 = (output2689, value1162, value1) := by
  rw [input2689_def, output2689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3_eq]
  try dsimp only
  rw [node2688_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2689 input2)).val
theorem input2690_def : input2690 = (.seq input2689 input2) := by
  unfold input2690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2689 output2)).val
theorem output2690_def : output2690 = (.seq output2689 output2) := by
  unfold output2690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2690_skip : Flapjack.WordAlloc.isSkip output2690 = false := by
  rw [output2690_def]
  conv => lhs; cbv
  try rfl
theorem node2690_eq : Flapjack.WordAlloc.removeDeadStructural input2690 value0 value1 value2 = (output2690, value1162, value1) := by
  rw [input2690_def, output2690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2_eq]
  try dsimp only
  rw [node2689_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1163 : Flapjack.NumSet :=
Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  Flapjack.Spt.ln

@[irreducible, cbv_opaque] def input2691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(297, 0), (301, 2), (305, 4), (309, 6)])).val
theorem input2691_def : input2691 = (Flapjack.WordLangProgHOL.move 1 [(297, 0), (301, 2), (305, 4), (309, 6)]) := by
  unfold input2691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(297, 0), (301, 2), (305, 4), (309, 6)])).val
theorem output2691_def : output2691 = (Flapjack.WordLangProgHOL.move 1 [(297, 0), (301, 2), (305, 4), (309, 6)]) := by
  unfold output2691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2691_skip : Flapjack.WordAlloc.isSkip output2691 = false := by
  rw [output2691_def]
  conv => lhs; cbv
  try rfl
theorem node2691_eq : Flapjack.WordAlloc.removeDeadStructural input2691 value1162 value1 value2 = (output2691, value1163, value1) := by
  rw [input2691_def, output2691_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2691 input2690)).val
theorem input2692_def : input2692 = (.seq input2691 input2690) := by
  unfold input2692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2691 output2690)).val
theorem output2692_def : output2692 = (.seq output2691 output2690) := by
  unfold output2692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2692_skip : Flapjack.WordAlloc.isSkip output2692 = false := by
  rw [output2692_def]
  conv => lhs; cbv
  try rfl
theorem node2692_eq : Flapjack.WordAlloc.removeDeadStructural input2692 value0 value1 value2 = (output2692, value1163, value1) := by
  rw [input2692_def, output2692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2690_eq]
  try dsimp only
  rw [node2691_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node2692_eq
end InitECandidate.Proofs.DeadStages783
