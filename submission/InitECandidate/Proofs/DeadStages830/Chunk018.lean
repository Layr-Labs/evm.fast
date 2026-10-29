import InitECandidate.Proofs.DeadStages830.Chunk017
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages830
@[irreducible, cbv_opaque] def input4608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4607 input300)).val
theorem input4608_def : input4608 = (.seq input4607 input300) := by
  unfold input4608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4607 output300)).val
theorem output4608_def : output4608 = (.seq output4607 output300) := by
  unfold output4608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4608_skip : Flapjack.WordAlloc.isSkip output4608 = false := by
  rw [output4608_def]
  conv => lhs; cbv
  try rfl
theorem node4608_eq : Flapjack.WordAlloc.removeDeadStructural input4608 value5 value1 value2 = (output4608, value1810, value1) := by
  rw [input4608_def, output4608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node300_eq]
  try dsimp only
  rw [node4607_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4608 input297)).val
theorem input4609_def : input4609 = (.seq input4608 input297) := by
  unfold input4609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4608 output297)).val
theorem output4609_def : output4609 = (.seq output4608 output297) := by
  unfold output4609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4609_skip : Flapjack.WordAlloc.isSkip output4609 = false := by
  rw [output4609_def]
  conv => lhs; cbv
  try rfl
theorem node4609_eq : Flapjack.WordAlloc.removeDeadStructural input4609 value148 value1 value2 = (output4609, value1810, value1) := by
  rw [input4609_def, output4609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node297_eq]
  try dsimp only
  rw [node4608_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4609 input288)).val
theorem input4610_def : input4610 = (.seq input4609 input288) := by
  unfold input4610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4609)).val
theorem output4610_def : output4610 = (output4609) := by
  unfold output4610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4610_skip : Flapjack.WordAlloc.isSkip output4610 = false := by
  rw [output4610_def]
  conv => lhs; cbv
  try rfl
theorem node4610_eq : Flapjack.WordAlloc.removeDeadStructural input4610 value148 value1 value2 = (output4610, value1810, value1) := by
  rw [input4610_def, output4610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node288_eq]
  try dsimp only
  rw [node4609_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4610 input287)).val
theorem input4611_def : input4611 = (.seq input4610 input287) := by
  unfold input4611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4610 output287)).val
theorem output4611_def : output4611 = (.seq output4610 output287) := by
  unfold output4611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4611_skip : Flapjack.WordAlloc.isSkip output4611 = false := by
  rw [output4611_def]
  conv => lhs; cbv
  try rfl
theorem node4611_eq : Flapjack.WordAlloc.removeDeadStructural input4611 value147 value1 value2 = (output4611, value1810, value1) := by
  rw [input4611_def, output4611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node287_eq]
  try dsimp only
  rw [node4610_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4611 input286)).val
theorem input4612_def : input4612 = (.seq input4611 input286) := by
  unfold input4612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4611 output286)).val
theorem output4612_def : output4612 = (.seq output4611 output286) := by
  unfold output4612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4612_skip : Flapjack.WordAlloc.isSkip output4612 = false := by
  rw [output4612_def]
  conv => lhs; cbv
  try rfl
theorem node4612_eq : Flapjack.WordAlloc.removeDeadStructural input4612 value5 value1 value2 = (output4612, value1810, value1) := by
  rw [input4612_def, output4612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node286_eq]
  try dsimp only
  rw [node4611_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4612 input283)).val
theorem input4613_def : input4613 = (.seq input4612 input283) := by
  unfold input4613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4612 output283)).val
theorem output4613_def : output4613 = (.seq output4612 output283) := by
  unfold output4613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4613_skip : Flapjack.WordAlloc.isSkip output4613 = false := by
  rw [output4613_def]
  conv => lhs; cbv
  try rfl
theorem node4613_eq : Flapjack.WordAlloc.removeDeadStructural input4613 value141 value1 value2 = (output4613, value1810, value1) := by
  rw [input4613_def, output4613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node283_eq]
  try dsimp only
  rw [node4612_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4613 input274)).val
theorem input4614_def : input4614 = (.seq input4613 input274) := by
  unfold input4614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4613)).val
theorem output4614_def : output4614 = (output4613) := by
  unfold output4614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4614_skip : Flapjack.WordAlloc.isSkip output4614 = false := by
  rw [output4614_def]
  conv => lhs; cbv
  try rfl
theorem node4614_eq : Flapjack.WordAlloc.removeDeadStructural input4614 value141 value1 value2 = (output4614, value1810, value1) := by
  rw [input4614_def, output4614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node274_eq]
  try dsimp only
  rw [node4613_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4614 input273)).val
theorem input4615_def : input4615 = (.seq input4614 input273) := by
  unfold input4615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4614 output273)).val
theorem output4615_def : output4615 = (.seq output4614 output273) := by
  unfold output4615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4615_skip : Flapjack.WordAlloc.isSkip output4615 = false := by
  rw [output4615_def]
  conv => lhs; cbv
  try rfl
theorem node4615_eq : Flapjack.WordAlloc.removeDeadStructural input4615 value140 value1 value2 = (output4615, value1810, value1) := by
  rw [input4615_def, output4615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node273_eq]
  try dsimp only
  rw [node4614_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4615 input272)).val
theorem input4616_def : input4616 = (.seq input4615 input272) := by
  unfold input4616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4615 output272)).val
theorem output4616_def : output4616 = (.seq output4615 output272) := by
  unfold output4616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4616_skip : Flapjack.WordAlloc.isSkip output4616 = false := by
  rw [output4616_def]
  conv => lhs; cbv
  try rfl
theorem node4616_eq : Flapjack.WordAlloc.removeDeadStructural input4616 value5 value1 value2 = (output4616, value1810, value1) := by
  rw [input4616_def, output4616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node272_eq]
  try dsimp only
  rw [node4615_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4616 input269)).val
theorem input4617_def : input4617 = (.seq input4616 input269) := by
  unfold input4617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4616 output269)).val
theorem output4617_def : output4617 = (.seq output4616 output269) := by
  unfold output4617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4617_skip : Flapjack.WordAlloc.isSkip output4617 = false := by
  rw [output4617_def]
  conv => lhs; cbv
  try rfl
theorem node4617_eq : Flapjack.WordAlloc.removeDeadStructural input4617 value134 value1 value2 = (output4617, value1810, value1) := by
  rw [input4617_def, output4617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node269_eq]
  try dsimp only
  rw [node4616_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4617 input260)).val
theorem input4618_def : input4618 = (.seq input4617 input260) := by
  unfold input4618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4617)).val
theorem output4618_def : output4618 = (output4617) := by
  unfold output4618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4618_skip : Flapjack.WordAlloc.isSkip output4618 = false := by
  rw [output4618_def]
  conv => lhs; cbv
  try rfl
theorem node4618_eq : Flapjack.WordAlloc.removeDeadStructural input4618 value134 value1 value2 = (output4618, value1810, value1) := by
  rw [input4618_def, output4618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node260_eq]
  try dsimp only
  rw [node4617_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4618 input259)).val
theorem input4619_def : input4619 = (.seq input4618 input259) := by
  unfold input4619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4618 output259)).val
theorem output4619_def : output4619 = (.seq output4618 output259) := by
  unfold output4619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4619_skip : Flapjack.WordAlloc.isSkip output4619 = false := by
  rw [output4619_def]
  conv => lhs; cbv
  try rfl
theorem node4619_eq : Flapjack.WordAlloc.removeDeadStructural input4619 value133 value1 value2 = (output4619, value1810, value1) := by
  rw [input4619_def, output4619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node259_eq]
  try dsimp only
  rw [node4618_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4619 input258)).val
theorem input4620_def : input4620 = (.seq input4619 input258) := by
  unfold input4620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4619 output258)).val
theorem output4620_def : output4620 = (.seq output4619 output258) := by
  unfold output4620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4620_skip : Flapjack.WordAlloc.isSkip output4620 = false := by
  rw [output4620_def]
  conv => lhs; cbv
  try rfl
theorem node4620_eq : Flapjack.WordAlloc.removeDeadStructural input4620 value5 value1 value2 = (output4620, value1810, value1) := by
  rw [input4620_def, output4620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node258_eq]
  try dsimp only
  rw [node4619_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4620 input255)).val
theorem input4621_def : input4621 = (.seq input4620 input255) := by
  unfold input4621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4620 output255)).val
theorem output4621_def : output4621 = (.seq output4620 output255) := by
  unfold output4621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4621_skip : Flapjack.WordAlloc.isSkip output4621 = false := by
  rw [output4621_def]
  conv => lhs; cbv
  try rfl
theorem node4621_eq : Flapjack.WordAlloc.removeDeadStructural input4621 value127 value1 value2 = (output4621, value1810, value1) := by
  rw [input4621_def, output4621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node255_eq]
  try dsimp only
  rw [node4620_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4621 input246)).val
theorem input4622_def : input4622 = (.seq input4621 input246) := by
  unfold input4622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4621)).val
theorem output4622_def : output4622 = (output4621) := by
  unfold output4622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4622_skip : Flapjack.WordAlloc.isSkip output4622 = false := by
  rw [output4622_def]
  conv => lhs; cbv
  try rfl
theorem node4622_eq : Flapjack.WordAlloc.removeDeadStructural input4622 value127 value1 value2 = (output4622, value1810, value1) := by
  rw [input4622_def, output4622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node246_eq]
  try dsimp only
  rw [node4621_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4622 input245)).val
theorem input4623_def : input4623 = (.seq input4622 input245) := by
  unfold input4623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4622 output245)).val
theorem output4623_def : output4623 = (.seq output4622 output245) := by
  unfold output4623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4623_skip : Flapjack.WordAlloc.isSkip output4623 = false := by
  rw [output4623_def]
  conv => lhs; cbv
  try rfl
theorem node4623_eq : Flapjack.WordAlloc.removeDeadStructural input4623 value126 value1 value2 = (output4623, value1810, value1) := by
  rw [input4623_def, output4623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node245_eq]
  try dsimp only
  rw [node4622_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4623 input244)).val
theorem input4624_def : input4624 = (.seq input4623 input244) := by
  unfold input4624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4623 output244)).val
theorem output4624_def : output4624 = (.seq output4623 output244) := by
  unfold output4624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4624_skip : Flapjack.WordAlloc.isSkip output4624 = false := by
  rw [output4624_def]
  conv => lhs; cbv
  try rfl
theorem node4624_eq : Flapjack.WordAlloc.removeDeadStructural input4624 value5 value1 value2 = (output4624, value1810, value1) := by
  rw [input4624_def, output4624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node244_eq]
  try dsimp only
  rw [node4623_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4624 input241)).val
theorem input4625_def : input4625 = (.seq input4624 input241) := by
  unfold input4625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4624 output241)).val
theorem output4625_def : output4625 = (.seq output4624 output241) := by
  unfold output4625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4625_skip : Flapjack.WordAlloc.isSkip output4625 = false := by
  rw [output4625_def]
  conv => lhs; cbv
  try rfl
theorem node4625_eq : Flapjack.WordAlloc.removeDeadStructural input4625 value120 value1 value2 = (output4625, value1810, value1) := by
  rw [input4625_def, output4625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node241_eq]
  try dsimp only
  rw [node4624_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4625 input232)).val
theorem input4626_def : input4626 = (.seq input4625 input232) := by
  unfold input4626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4625)).val
theorem output4626_def : output4626 = (output4625) := by
  unfold output4626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4626_skip : Flapjack.WordAlloc.isSkip output4626 = false := by
  rw [output4626_def]
  conv => lhs; cbv
  try rfl
theorem node4626_eq : Flapjack.WordAlloc.removeDeadStructural input4626 value120 value1 value2 = (output4626, value1810, value1) := by
  rw [input4626_def, output4626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node232_eq]
  try dsimp only
  rw [node4625_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4626 input231)).val
theorem input4627_def : input4627 = (.seq input4626 input231) := by
  unfold input4627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4626 output231)).val
theorem output4627_def : output4627 = (.seq output4626 output231) := by
  unfold output4627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4627_skip : Flapjack.WordAlloc.isSkip output4627 = false := by
  rw [output4627_def]
  conv => lhs; cbv
  try rfl
theorem node4627_eq : Flapjack.WordAlloc.removeDeadStructural input4627 value119 value1 value2 = (output4627, value1810, value1) := by
  rw [input4627_def, output4627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node231_eq]
  try dsimp only
  rw [node4626_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4627 input230)).val
theorem input4628_def : input4628 = (.seq input4627 input230) := by
  unfold input4628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4627 output230)).val
theorem output4628_def : output4628 = (.seq output4627 output230) := by
  unfold output4628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4628_skip : Flapjack.WordAlloc.isSkip output4628 = false := by
  rw [output4628_def]
  conv => lhs; cbv
  try rfl
theorem node4628_eq : Flapjack.WordAlloc.removeDeadStructural input4628 value5 value1 value2 = (output4628, value1810, value1) := by
  rw [input4628_def, output4628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node230_eq]
  try dsimp only
  rw [node4627_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4628 input227)).val
theorem input4629_def : input4629 = (.seq input4628 input227) := by
  unfold input4629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4628 output227)).val
theorem output4629_def : output4629 = (.seq output4628 output227) := by
  unfold output4629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4629_skip : Flapjack.WordAlloc.isSkip output4629 = false := by
  rw [output4629_def]
  conv => lhs; cbv
  try rfl
theorem node4629_eq : Flapjack.WordAlloc.removeDeadStructural input4629 value113 value1 value2 = (output4629, value1810, value1) := by
  rw [input4629_def, output4629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node227_eq]
  try dsimp only
  rw [node4628_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4629 input218)).val
theorem input4630_def : input4630 = (.seq input4629 input218) := by
  unfold input4630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4629)).val
theorem output4630_def : output4630 = (output4629) := by
  unfold output4630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4630_skip : Flapjack.WordAlloc.isSkip output4630 = false := by
  rw [output4630_def]
  conv => lhs; cbv
  try rfl
theorem node4630_eq : Flapjack.WordAlloc.removeDeadStructural input4630 value113 value1 value2 = (output4630, value1810, value1) := by
  rw [input4630_def, output4630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node218_eq]
  try dsimp only
  rw [node4629_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4630 input217)).val
theorem input4631_def : input4631 = (.seq input4630 input217) := by
  unfold input4631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4630 output217)).val
theorem output4631_def : output4631 = (.seq output4630 output217) := by
  unfold output4631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4631_skip : Flapjack.WordAlloc.isSkip output4631 = false := by
  rw [output4631_def]
  conv => lhs; cbv
  try rfl
theorem node4631_eq : Flapjack.WordAlloc.removeDeadStructural input4631 value112 value1 value2 = (output4631, value1810, value1) := by
  rw [input4631_def, output4631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node217_eq]
  try dsimp only
  rw [node4630_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4631 input216)).val
theorem input4632_def : input4632 = (.seq input4631 input216) := by
  unfold input4632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4631 output216)).val
theorem output4632_def : output4632 = (.seq output4631 output216) := by
  unfold output4632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4632_skip : Flapjack.WordAlloc.isSkip output4632 = false := by
  rw [output4632_def]
  conv => lhs; cbv
  try rfl
theorem node4632_eq : Flapjack.WordAlloc.removeDeadStructural input4632 value5 value1 value2 = (output4632, value1810, value1) := by
  rw [input4632_def, output4632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node216_eq]
  try dsimp only
  rw [node4631_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4632 input213)).val
theorem input4633_def : input4633 = (.seq input4632 input213) := by
  unfold input4633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4632 output213)).val
theorem output4633_def : output4633 = (.seq output4632 output213) := by
  unfold output4633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4633_skip : Flapjack.WordAlloc.isSkip output4633 = false := by
  rw [output4633_def]
  conv => lhs; cbv
  try rfl
theorem node4633_eq : Flapjack.WordAlloc.removeDeadStructural input4633 value106 value1 value2 = (output4633, value1810, value1) := by
  rw [input4633_def, output4633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node213_eq]
  try dsimp only
  rw [node4632_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4633 input204)).val
theorem input4634_def : input4634 = (.seq input4633 input204) := by
  unfold input4634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4633)).val
theorem output4634_def : output4634 = (output4633) := by
  unfold output4634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4634_skip : Flapjack.WordAlloc.isSkip output4634 = false := by
  rw [output4634_def]
  conv => lhs; cbv
  try rfl
theorem node4634_eq : Flapjack.WordAlloc.removeDeadStructural input4634 value106 value1 value2 = (output4634, value1810, value1) := by
  rw [input4634_def, output4634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node204_eq]
  try dsimp only
  rw [node4633_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4634 input203)).val
theorem input4635_def : input4635 = (.seq input4634 input203) := by
  unfold input4635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4634 output203)).val
theorem output4635_def : output4635 = (.seq output4634 output203) := by
  unfold output4635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4635_skip : Flapjack.WordAlloc.isSkip output4635 = false := by
  rw [output4635_def]
  conv => lhs; cbv
  try rfl
theorem node4635_eq : Flapjack.WordAlloc.removeDeadStructural input4635 value105 value1 value2 = (output4635, value1810, value1) := by
  rw [input4635_def, output4635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node203_eq]
  try dsimp only
  rw [node4634_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4635 input202)).val
theorem input4636_def : input4636 = (.seq input4635 input202) := by
  unfold input4636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4635 output202)).val
theorem output4636_def : output4636 = (.seq output4635 output202) := by
  unfold output4636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4636_skip : Flapjack.WordAlloc.isSkip output4636 = false := by
  rw [output4636_def]
  conv => lhs; cbv
  try rfl
theorem node4636_eq : Flapjack.WordAlloc.removeDeadStructural input4636 value5 value1 value2 = (output4636, value1810, value1) := by
  rw [input4636_def, output4636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node202_eq]
  try dsimp only
  rw [node4635_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4636 input199)).val
theorem input4637_def : input4637 = (.seq input4636 input199) := by
  unfold input4637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4636 output199)).val
theorem output4637_def : output4637 = (.seq output4636 output199) := by
  unfold output4637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4637_skip : Flapjack.WordAlloc.isSkip output4637 = false := by
  rw [output4637_def]
  conv => lhs; cbv
  try rfl
theorem node4637_eq : Flapjack.WordAlloc.removeDeadStructural input4637 value99 value1 value2 = (output4637, value1810, value1) := by
  rw [input4637_def, output4637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node199_eq]
  try dsimp only
  rw [node4636_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4637 input190)).val
theorem input4638_def : input4638 = (.seq input4637 input190) := by
  unfold input4638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4637)).val
theorem output4638_def : output4638 = (output4637) := by
  unfold output4638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4638_skip : Flapjack.WordAlloc.isSkip output4638 = false := by
  rw [output4638_def]
  conv => lhs; cbv
  try rfl
theorem node4638_eq : Flapjack.WordAlloc.removeDeadStructural input4638 value99 value1 value2 = (output4638, value1810, value1) := by
  rw [input4638_def, output4638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node190_eq]
  try dsimp only
  rw [node4637_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4638 input189)).val
theorem input4639_def : input4639 = (.seq input4638 input189) := by
  unfold input4639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4638 output189)).val
theorem output4639_def : output4639 = (.seq output4638 output189) := by
  unfold output4639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4639_skip : Flapjack.WordAlloc.isSkip output4639 = false := by
  rw [output4639_def]
  conv => lhs; cbv
  try rfl
theorem node4639_eq : Flapjack.WordAlloc.removeDeadStructural input4639 value98 value1 value2 = (output4639, value1810, value1) := by
  rw [input4639_def, output4639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node189_eq]
  try dsimp only
  rw [node4638_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4639 input188)).val
theorem input4640_def : input4640 = (.seq input4639 input188) := by
  unfold input4640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4639 output188)).val
theorem output4640_def : output4640 = (.seq output4639 output188) := by
  unfold output4640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4640_skip : Flapjack.WordAlloc.isSkip output4640 = false := by
  rw [output4640_def]
  conv => lhs; cbv
  try rfl
theorem node4640_eq : Flapjack.WordAlloc.removeDeadStructural input4640 value5 value1 value2 = (output4640, value1810, value1) := by
  rw [input4640_def, output4640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node188_eq]
  try dsimp only
  rw [node4639_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4640 input185)).val
theorem input4641_def : input4641 = (.seq input4640 input185) := by
  unfold input4641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4640 output185)).val
theorem output4641_def : output4641 = (.seq output4640 output185) := by
  unfold output4641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4641_skip : Flapjack.WordAlloc.isSkip output4641 = false := by
  rw [output4641_def]
  conv => lhs; cbv
  try rfl
theorem node4641_eq : Flapjack.WordAlloc.removeDeadStructural input4641 value92 value1 value2 = (output4641, value1810, value1) := by
  rw [input4641_def, output4641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node185_eq]
  try dsimp only
  rw [node4640_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4641 input176)).val
theorem input4642_def : input4642 = (.seq input4641 input176) := by
  unfold input4642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4641)).val
theorem output4642_def : output4642 = (output4641) := by
  unfold output4642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4642_skip : Flapjack.WordAlloc.isSkip output4642 = false := by
  rw [output4642_def]
  conv => lhs; cbv
  try rfl
theorem node4642_eq : Flapjack.WordAlloc.removeDeadStructural input4642 value92 value1 value2 = (output4642, value1810, value1) := by
  rw [input4642_def, output4642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node176_eq]
  try dsimp only
  rw [node4641_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4642 input175)).val
theorem input4643_def : input4643 = (.seq input4642 input175) := by
  unfold input4643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4642 output175)).val
theorem output4643_def : output4643 = (.seq output4642 output175) := by
  unfold output4643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4643_skip : Flapjack.WordAlloc.isSkip output4643 = false := by
  rw [output4643_def]
  conv => lhs; cbv
  try rfl
theorem node4643_eq : Flapjack.WordAlloc.removeDeadStructural input4643 value91 value1 value2 = (output4643, value1810, value1) := by
  rw [input4643_def, output4643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node175_eq]
  try dsimp only
  rw [node4642_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4643 input174)).val
theorem input4644_def : input4644 = (.seq input4643 input174) := by
  unfold input4644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4643 output174)).val
theorem output4644_def : output4644 = (.seq output4643 output174) := by
  unfold output4644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4644_skip : Flapjack.WordAlloc.isSkip output4644 = false := by
  rw [output4644_def]
  conv => lhs; cbv
  try rfl
theorem node4644_eq : Flapjack.WordAlloc.removeDeadStructural input4644 value5 value1 value2 = (output4644, value1810, value1) := by
  rw [input4644_def, output4644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node174_eq]
  try dsimp only
  rw [node4643_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4644 input171)).val
theorem input4645_def : input4645 = (.seq input4644 input171) := by
  unfold input4645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4644 output171)).val
theorem output4645_def : output4645 = (.seq output4644 output171) := by
  unfold output4645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4645_skip : Flapjack.WordAlloc.isSkip output4645 = false := by
  rw [output4645_def]
  conv => lhs; cbv
  try rfl
theorem node4645_eq : Flapjack.WordAlloc.removeDeadStructural input4645 value85 value1 value2 = (output4645, value1810, value1) := by
  rw [input4645_def, output4645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node171_eq]
  try dsimp only
  rw [node4644_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4645 input162)).val
theorem input4646_def : input4646 = (.seq input4645 input162) := by
  unfold input4646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4645)).val
theorem output4646_def : output4646 = (output4645) := by
  unfold output4646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4646_skip : Flapjack.WordAlloc.isSkip output4646 = false := by
  rw [output4646_def]
  conv => lhs; cbv
  try rfl
theorem node4646_eq : Flapjack.WordAlloc.removeDeadStructural input4646 value85 value1 value2 = (output4646, value1810, value1) := by
  rw [input4646_def, output4646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node162_eq]
  try dsimp only
  rw [node4645_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4646 input161)).val
theorem input4647_def : input4647 = (.seq input4646 input161) := by
  unfold input4647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4646 output161)).val
theorem output4647_def : output4647 = (.seq output4646 output161) := by
  unfold output4647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4647_skip : Flapjack.WordAlloc.isSkip output4647 = false := by
  rw [output4647_def]
  conv => lhs; cbv
  try rfl
theorem node4647_eq : Flapjack.WordAlloc.removeDeadStructural input4647 value84 value1 value2 = (output4647, value1810, value1) := by
  rw [input4647_def, output4647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node161_eq]
  try dsimp only
  rw [node4646_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4647 input160)).val
theorem input4648_def : input4648 = (.seq input4647 input160) := by
  unfold input4648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4647 output160)).val
theorem output4648_def : output4648 = (.seq output4647 output160) := by
  unfold output4648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4648_skip : Flapjack.WordAlloc.isSkip output4648 = false := by
  rw [output4648_def]
  conv => lhs; cbv
  try rfl
theorem node4648_eq : Flapjack.WordAlloc.removeDeadStructural input4648 value5 value1 value2 = (output4648, value1810, value1) := by
  rw [input4648_def, output4648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node160_eq]
  try dsimp only
  rw [node4647_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4648 input157)).val
theorem input4649_def : input4649 = (.seq input4648 input157) := by
  unfold input4649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4648 output157)).val
theorem output4649_def : output4649 = (.seq output4648 output157) := by
  unfold output4649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4649_skip : Flapjack.WordAlloc.isSkip output4649 = false := by
  rw [output4649_def]
  conv => lhs; cbv
  try rfl
theorem node4649_eq : Flapjack.WordAlloc.removeDeadStructural input4649 value78 value1 value2 = (output4649, value1810, value1) := by
  rw [input4649_def, output4649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node157_eq]
  try dsimp only
  rw [node4648_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4649 input148)).val
theorem input4650_def : input4650 = (.seq input4649 input148) := by
  unfold input4650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4649)).val
theorem output4650_def : output4650 = (output4649) := by
  unfold output4650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4650_skip : Flapjack.WordAlloc.isSkip output4650 = false := by
  rw [output4650_def]
  conv => lhs; cbv
  try rfl
theorem node4650_eq : Flapjack.WordAlloc.removeDeadStructural input4650 value78 value1 value2 = (output4650, value1810, value1) := by
  rw [input4650_def, output4650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node148_eq]
  try dsimp only
  rw [node4649_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4650 input147)).val
theorem input4651_def : input4651 = (.seq input4650 input147) := by
  unfold input4651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4650 output147)).val
theorem output4651_def : output4651 = (.seq output4650 output147) := by
  unfold output4651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4651_skip : Flapjack.WordAlloc.isSkip output4651 = false := by
  rw [output4651_def]
  conv => lhs; cbv
  try rfl
theorem node4651_eq : Flapjack.WordAlloc.removeDeadStructural input4651 value77 value1 value2 = (output4651, value1810, value1) := by
  rw [input4651_def, output4651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node147_eq]
  try dsimp only
  rw [node4650_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4651 input146)).val
theorem input4652_def : input4652 = (.seq input4651 input146) := by
  unfold input4652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4651 output146)).val
theorem output4652_def : output4652 = (.seq output4651 output146) := by
  unfold output4652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4652_skip : Flapjack.WordAlloc.isSkip output4652 = false := by
  rw [output4652_def]
  conv => lhs; cbv
  try rfl
theorem node4652_eq : Flapjack.WordAlloc.removeDeadStructural input4652 value5 value1 value2 = (output4652, value1810, value1) := by
  rw [input4652_def, output4652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node146_eq]
  try dsimp only
  rw [node4651_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4652 input143)).val
theorem input4653_def : input4653 = (.seq input4652 input143) := by
  unfold input4653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4652 output143)).val
theorem output4653_def : output4653 = (.seq output4652 output143) := by
  unfold output4653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4653_skip : Flapjack.WordAlloc.isSkip output4653 = false := by
  rw [output4653_def]
  conv => lhs; cbv
  try rfl
theorem node4653_eq : Flapjack.WordAlloc.removeDeadStructural input4653 value71 value1 value2 = (output4653, value1810, value1) := by
  rw [input4653_def, output4653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node143_eq]
  try dsimp only
  rw [node4652_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4653 input134)).val
theorem input4654_def : input4654 = (.seq input4653 input134) := by
  unfold input4654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4653)).val
theorem output4654_def : output4654 = (output4653) := by
  unfold output4654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4654_skip : Flapjack.WordAlloc.isSkip output4654 = false := by
  rw [output4654_def]
  conv => lhs; cbv
  try rfl
theorem node4654_eq : Flapjack.WordAlloc.removeDeadStructural input4654 value71 value1 value2 = (output4654, value1810, value1) := by
  rw [input4654_def, output4654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node134_eq]
  try dsimp only
  rw [node4653_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4654 input133)).val
theorem input4655_def : input4655 = (.seq input4654 input133) := by
  unfold input4655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4654 output133)).val
theorem output4655_def : output4655 = (.seq output4654 output133) := by
  unfold output4655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4655_skip : Flapjack.WordAlloc.isSkip output4655 = false := by
  rw [output4655_def]
  conv => lhs; cbv
  try rfl
theorem node4655_eq : Flapjack.WordAlloc.removeDeadStructural input4655 value70 value1 value2 = (output4655, value1810, value1) := by
  rw [input4655_def, output4655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node133_eq]
  try dsimp only
  rw [node4654_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4655 input132)).val
theorem input4656_def : input4656 = (.seq input4655 input132) := by
  unfold input4656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4655 output132)).val
theorem output4656_def : output4656 = (.seq output4655 output132) := by
  unfold output4656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4656_skip : Flapjack.WordAlloc.isSkip output4656 = false := by
  rw [output4656_def]
  conv => lhs; cbv
  try rfl
theorem node4656_eq : Flapjack.WordAlloc.removeDeadStructural input4656 value5 value1 value2 = (output4656, value1810, value1) := by
  rw [input4656_def, output4656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node132_eq]
  try dsimp only
  rw [node4655_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4656 input129)).val
theorem input4657_def : input4657 = (.seq input4656 input129) := by
  unfold input4657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4656 output129)).val
theorem output4657_def : output4657 = (.seq output4656 output129) := by
  unfold output4657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4657_skip : Flapjack.WordAlloc.isSkip output4657 = false := by
  rw [output4657_def]
  conv => lhs; cbv
  try rfl
theorem node4657_eq : Flapjack.WordAlloc.removeDeadStructural input4657 value64 value1 value2 = (output4657, value1810, value1) := by
  rw [input4657_def, output4657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node129_eq]
  try dsimp only
  rw [node4656_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4657 input120)).val
theorem input4658_def : input4658 = (.seq input4657 input120) := by
  unfold input4658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4657)).val
theorem output4658_def : output4658 = (output4657) := by
  unfold output4658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4658_skip : Flapjack.WordAlloc.isSkip output4658 = false := by
  rw [output4658_def]
  conv => lhs; cbv
  try rfl
theorem node4658_eq : Flapjack.WordAlloc.removeDeadStructural input4658 value64 value1 value2 = (output4658, value1810, value1) := by
  rw [input4658_def, output4658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node120_eq]
  try dsimp only
  rw [node4657_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4658 input119)).val
theorem input4659_def : input4659 = (.seq input4658 input119) := by
  unfold input4659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4658 output119)).val
theorem output4659_def : output4659 = (.seq output4658 output119) := by
  unfold output4659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4659_skip : Flapjack.WordAlloc.isSkip output4659 = false := by
  rw [output4659_def]
  conv => lhs; cbv
  try rfl
theorem node4659_eq : Flapjack.WordAlloc.removeDeadStructural input4659 value63 value1 value2 = (output4659, value1810, value1) := by
  rw [input4659_def, output4659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node119_eq]
  try dsimp only
  rw [node4658_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4659 input118)).val
theorem input4660_def : input4660 = (.seq input4659 input118) := by
  unfold input4660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4659 output118)).val
theorem output4660_def : output4660 = (.seq output4659 output118) := by
  unfold output4660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4660_skip : Flapjack.WordAlloc.isSkip output4660 = false := by
  rw [output4660_def]
  conv => lhs; cbv
  try rfl
theorem node4660_eq : Flapjack.WordAlloc.removeDeadStructural input4660 value5 value1 value2 = (output4660, value1810, value1) := by
  rw [input4660_def, output4660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node118_eq]
  try dsimp only
  rw [node4659_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4660 input115)).val
theorem input4661_def : input4661 = (.seq input4660 input115) := by
  unfold input4661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4660 output115)).val
theorem output4661_def : output4661 = (.seq output4660 output115) := by
  unfold output4661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4661_skip : Flapjack.WordAlloc.isSkip output4661 = false := by
  rw [output4661_def]
  conv => lhs; cbv
  try rfl
theorem node4661_eq : Flapjack.WordAlloc.removeDeadStructural input4661 value57 value1 value2 = (output4661, value1810, value1) := by
  rw [input4661_def, output4661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node115_eq]
  try dsimp only
  rw [node4660_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4661 input106)).val
theorem input4662_def : input4662 = (.seq input4661 input106) := by
  unfold input4662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4661)).val
theorem output4662_def : output4662 = (output4661) := by
  unfold output4662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4662_skip : Flapjack.WordAlloc.isSkip output4662 = false := by
  rw [output4662_def]
  conv => lhs; cbv
  try rfl
theorem node4662_eq : Flapjack.WordAlloc.removeDeadStructural input4662 value57 value1 value2 = (output4662, value1810, value1) := by
  rw [input4662_def, output4662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node106_eq]
  try dsimp only
  rw [node4661_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4662 input105)).val
theorem input4663_def : input4663 = (.seq input4662 input105) := by
  unfold input4663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4662 output105)).val
theorem output4663_def : output4663 = (.seq output4662 output105) := by
  unfold output4663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4663_skip : Flapjack.WordAlloc.isSkip output4663 = false := by
  rw [output4663_def]
  conv => lhs; cbv
  try rfl
theorem node4663_eq : Flapjack.WordAlloc.removeDeadStructural input4663 value56 value1 value2 = (output4663, value1810, value1) := by
  rw [input4663_def, output4663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node105_eq]
  try dsimp only
  rw [node4662_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4663 input104)).val
theorem input4664_def : input4664 = (.seq input4663 input104) := by
  unfold input4664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4663 output104)).val
theorem output4664_def : output4664 = (.seq output4663 output104) := by
  unfold output4664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4664_skip : Flapjack.WordAlloc.isSkip output4664 = false := by
  rw [output4664_def]
  conv => lhs; cbv
  try rfl
theorem node4664_eq : Flapjack.WordAlloc.removeDeadStructural input4664 value5 value1 value2 = (output4664, value1810, value1) := by
  rw [input4664_def, output4664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node104_eq]
  try dsimp only
  rw [node4663_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4664 input101)).val
theorem input4665_def : input4665 = (.seq input4664 input101) := by
  unfold input4665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4664 output101)).val
theorem output4665_def : output4665 = (.seq output4664 output101) := by
  unfold output4665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4665_skip : Flapjack.WordAlloc.isSkip output4665 = false := by
  rw [output4665_def]
  conv => lhs; cbv
  try rfl
theorem node4665_eq : Flapjack.WordAlloc.removeDeadStructural input4665 value50 value1 value2 = (output4665, value1810, value1) := by
  rw [input4665_def, output4665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node101_eq]
  try dsimp only
  rw [node4664_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4665 input92)).val
theorem input4666_def : input4666 = (.seq input4665 input92) := by
  unfold input4666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4665)).val
theorem output4666_def : output4666 = (output4665) := by
  unfold output4666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4666_skip : Flapjack.WordAlloc.isSkip output4666 = false := by
  rw [output4666_def]
  conv => lhs; cbv
  try rfl
theorem node4666_eq : Flapjack.WordAlloc.removeDeadStructural input4666 value50 value1 value2 = (output4666, value1810, value1) := by
  rw [input4666_def, output4666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node92_eq]
  try dsimp only
  rw [node4665_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4666 input91)).val
theorem input4667_def : input4667 = (.seq input4666 input91) := by
  unfold input4667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4666 output91)).val
theorem output4667_def : output4667 = (.seq output4666 output91) := by
  unfold output4667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4667_skip : Flapjack.WordAlloc.isSkip output4667 = false := by
  rw [output4667_def]
  conv => lhs; cbv
  try rfl
theorem node4667_eq : Flapjack.WordAlloc.removeDeadStructural input4667 value49 value1 value2 = (output4667, value1810, value1) := by
  rw [input4667_def, output4667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node91_eq]
  try dsimp only
  rw [node4666_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4667 input90)).val
theorem input4668_def : input4668 = (.seq input4667 input90) := by
  unfold input4668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4667 output90)).val
theorem output4668_def : output4668 = (.seq output4667 output90) := by
  unfold output4668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4668_skip : Flapjack.WordAlloc.isSkip output4668 = false := by
  rw [output4668_def]
  conv => lhs; cbv
  try rfl
theorem node4668_eq : Flapjack.WordAlloc.removeDeadStructural input4668 value5 value1 value2 = (output4668, value1810, value1) := by
  rw [input4668_def, output4668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node90_eq]
  try dsimp only
  rw [node4667_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4668 input87)).val
theorem input4669_def : input4669 = (.seq input4668 input87) := by
  unfold input4669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4668 output87)).val
theorem output4669_def : output4669 = (.seq output4668 output87) := by
  unfold output4669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4669_skip : Flapjack.WordAlloc.isSkip output4669 = false := by
  rw [output4669_def]
  conv => lhs; cbv
  try rfl
theorem node4669_eq : Flapjack.WordAlloc.removeDeadStructural input4669 value43 value1 value2 = (output4669, value1810, value1) := by
  rw [input4669_def, output4669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node87_eq]
  try dsimp only
  rw [node4668_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4669 input78)).val
theorem input4670_def : input4670 = (.seq input4669 input78) := by
  unfold input4670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4669)).val
theorem output4670_def : output4670 = (output4669) := by
  unfold output4670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4670_skip : Flapjack.WordAlloc.isSkip output4670 = false := by
  rw [output4670_def]
  conv => lhs; cbv
  try rfl
theorem node4670_eq : Flapjack.WordAlloc.removeDeadStructural input4670 value43 value1 value2 = (output4670, value1810, value1) := by
  rw [input4670_def, output4670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node78_eq]
  try dsimp only
  rw [node4669_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4670 input77)).val
theorem input4671_def : input4671 = (.seq input4670 input77) := by
  unfold input4671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4670 output77)).val
theorem output4671_def : output4671 = (.seq output4670 output77) := by
  unfold output4671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4671_skip : Flapjack.WordAlloc.isSkip output4671 = false := by
  rw [output4671_def]
  conv => lhs; cbv
  try rfl
theorem node4671_eq : Flapjack.WordAlloc.removeDeadStructural input4671 value42 value1 value2 = (output4671, value1810, value1) := by
  rw [input4671_def, output4671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node77_eq]
  try dsimp only
  rw [node4670_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4671 input76)).val
theorem input4672_def : input4672 = (.seq input4671 input76) := by
  unfold input4672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4671 output76)).val
theorem output4672_def : output4672 = (.seq output4671 output76) := by
  unfold output4672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4672_skip : Flapjack.WordAlloc.isSkip output4672 = false := by
  rw [output4672_def]
  conv => lhs; cbv
  try rfl
theorem node4672_eq : Flapjack.WordAlloc.removeDeadStructural input4672 value5 value1 value2 = (output4672, value1810, value1) := by
  rw [input4672_def, output4672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node76_eq]
  try dsimp only
  rw [node4671_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4672 input73)).val
theorem input4673_def : input4673 = (.seq input4672 input73) := by
  unfold input4673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4672 output73)).val
theorem output4673_def : output4673 = (.seq output4672 output73) := by
  unfold output4673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4673_skip : Flapjack.WordAlloc.isSkip output4673 = false := by
  rw [output4673_def]
  conv => lhs; cbv
  try rfl
theorem node4673_eq : Flapjack.WordAlloc.removeDeadStructural input4673 value36 value1 value2 = (output4673, value1810, value1) := by
  rw [input4673_def, output4673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node73_eq]
  try dsimp only
  rw [node4672_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4673 input64)).val
theorem input4674_def : input4674 = (.seq input4673 input64) := by
  unfold input4674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4673)).val
theorem output4674_def : output4674 = (output4673) := by
  unfold output4674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4674_skip : Flapjack.WordAlloc.isSkip output4674 = false := by
  rw [output4674_def]
  conv => lhs; cbv
  try rfl
theorem node4674_eq : Flapjack.WordAlloc.removeDeadStructural input4674 value36 value1 value2 = (output4674, value1810, value1) := by
  rw [input4674_def, output4674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node64_eq]
  try dsimp only
  rw [node4673_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4674 input63)).val
theorem input4675_def : input4675 = (.seq input4674 input63) := by
  unfold input4675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4674 output63)).val
theorem output4675_def : output4675 = (.seq output4674 output63) := by
  unfold output4675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4675_skip : Flapjack.WordAlloc.isSkip output4675 = false := by
  rw [output4675_def]
  conv => lhs; cbv
  try rfl
theorem node4675_eq : Flapjack.WordAlloc.removeDeadStructural input4675 value35 value1 value2 = (output4675, value1810, value1) := by
  rw [input4675_def, output4675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node63_eq]
  try dsimp only
  rw [node4674_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4675 input62)).val
theorem input4676_def : input4676 = (.seq input4675 input62) := by
  unfold input4676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4675 output62)).val
theorem output4676_def : output4676 = (.seq output4675 output62) := by
  unfold output4676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4676_skip : Flapjack.WordAlloc.isSkip output4676 = false := by
  rw [output4676_def]
  conv => lhs; cbv
  try rfl
theorem node4676_eq : Flapjack.WordAlloc.removeDeadStructural input4676 value5 value1 value2 = (output4676, value1810, value1) := by
  rw [input4676_def, output4676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node62_eq]
  try dsimp only
  rw [node4675_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4676 input59)).val
theorem input4677_def : input4677 = (.seq input4676 input59) := by
  unfold input4677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4676 output59)).val
theorem output4677_def : output4677 = (.seq output4676 output59) := by
  unfold output4677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4677_skip : Flapjack.WordAlloc.isSkip output4677 = false := by
  rw [output4677_def]
  conv => lhs; cbv
  try rfl
theorem node4677_eq : Flapjack.WordAlloc.removeDeadStructural input4677 value29 value1 value2 = (output4677, value1810, value1) := by
  rw [input4677_def, output4677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node59_eq]
  try dsimp only
  rw [node4676_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4677 input50)).val
theorem input4678_def : input4678 = (.seq input4677 input50) := by
  unfold input4678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4677)).val
theorem output4678_def : output4678 = (output4677) := by
  unfold output4678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4678_skip : Flapjack.WordAlloc.isSkip output4678 = false := by
  rw [output4678_def]
  conv => lhs; cbv
  try rfl
theorem node4678_eq : Flapjack.WordAlloc.removeDeadStructural input4678 value29 value1 value2 = (output4678, value1810, value1) := by
  rw [input4678_def, output4678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node50_eq]
  try dsimp only
  rw [node4677_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4678 input49)).val
theorem input4679_def : input4679 = (.seq input4678 input49) := by
  unfold input4679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4678 output49)).val
theorem output4679_def : output4679 = (.seq output4678 output49) := by
  unfold output4679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4679_skip : Flapjack.WordAlloc.isSkip output4679 = false := by
  rw [output4679_def]
  conv => lhs; cbv
  try rfl
theorem node4679_eq : Flapjack.WordAlloc.removeDeadStructural input4679 value28 value1 value2 = (output4679, value1810, value1) := by
  rw [input4679_def, output4679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node49_eq]
  try dsimp only
  rw [node4678_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4679 input48)).val
theorem input4680_def : input4680 = (.seq input4679 input48) := by
  unfold input4680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4679 output48)).val
theorem output4680_def : output4680 = (.seq output4679 output48) := by
  unfold output4680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4680_skip : Flapjack.WordAlloc.isSkip output4680 = false := by
  rw [output4680_def]
  conv => lhs; cbv
  try rfl
theorem node4680_eq : Flapjack.WordAlloc.removeDeadStructural input4680 value5 value1 value2 = (output4680, value1810, value1) := by
  rw [input4680_def, output4680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node48_eq]
  try dsimp only
  rw [node4679_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4680 input45)).val
theorem input4681_def : input4681 = (.seq input4680 input45) := by
  unfold input4681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4680 output45)).val
theorem output4681_def : output4681 = (.seq output4680 output45) := by
  unfold output4681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4681_skip : Flapjack.WordAlloc.isSkip output4681 = false := by
  rw [output4681_def]
  conv => lhs; cbv
  try rfl
theorem node4681_eq : Flapjack.WordAlloc.removeDeadStructural input4681 value22 value1 value2 = (output4681, value1810, value1) := by
  rw [input4681_def, output4681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node45_eq]
  try dsimp only
  rw [node4680_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4681 input36)).val
theorem input4682_def : input4682 = (.seq input4681 input36) := by
  unfold input4682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4681)).val
theorem output4682_def : output4682 = (output4681) := by
  unfold output4682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4682_skip : Flapjack.WordAlloc.isSkip output4682 = false := by
  rw [output4682_def]
  conv => lhs; cbv
  try rfl
theorem node4682_eq : Flapjack.WordAlloc.removeDeadStructural input4682 value22 value1 value2 = (output4682, value1810, value1) := by
  rw [input4682_def, output4682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node36_eq]
  try dsimp only
  rw [node4681_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4682 input35)).val
theorem input4683_def : input4683 = (.seq input4682 input35) := by
  unfold input4683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4682 output35)).val
theorem output4683_def : output4683 = (.seq output4682 output35) := by
  unfold output4683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4683_skip : Flapjack.WordAlloc.isSkip output4683 = false := by
  rw [output4683_def]
  conv => lhs; cbv
  try rfl
theorem node4683_eq : Flapjack.WordAlloc.removeDeadStructural input4683 value21 value1 value2 = (output4683, value1810, value1) := by
  rw [input4683_def, output4683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node35_eq]
  try dsimp only
  rw [node4682_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4683 input34)).val
theorem input4684_def : input4684 = (.seq input4683 input34) := by
  unfold input4684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4683 output34)).val
theorem output4684_def : output4684 = (.seq output4683 output34) := by
  unfold output4684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4684_skip : Flapjack.WordAlloc.isSkip output4684 = false := by
  rw [output4684_def]
  conv => lhs; cbv
  try rfl
theorem node4684_eq : Flapjack.WordAlloc.removeDeadStructural input4684 value5 value1 value2 = (output4684, value1810, value1) := by
  rw [input4684_def, output4684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node34_eq]
  try dsimp only
  rw [node4683_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4684 input31)).val
theorem input4685_def : input4685 = (.seq input4684 input31) := by
  unfold input4685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4684 output31)).val
theorem output4685_def : output4685 = (.seq output4684 output31) := by
  unfold output4685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4685_skip : Flapjack.WordAlloc.isSkip output4685 = false := by
  rw [output4685_def]
  conv => lhs; cbv
  try rfl
theorem node4685_eq : Flapjack.WordAlloc.removeDeadStructural input4685 value15 value1 value2 = (output4685, value1810, value1) := by
  rw [input4685_def, output4685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node31_eq]
  try dsimp only
  rw [node4684_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4685 input22)).val
theorem input4686_def : input4686 = (.seq input4685 input22) := by
  unfold input4686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4685)).val
theorem output4686_def : output4686 = (output4685) := by
  unfold output4686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4686_skip : Flapjack.WordAlloc.isSkip output4686 = false := by
  rw [output4686_def]
  conv => lhs; cbv
  try rfl
theorem node4686_eq : Flapjack.WordAlloc.removeDeadStructural input4686 value15 value1 value2 = (output4686, value1810, value1) := by
  rw [input4686_def, output4686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node22_eq]
  try dsimp only
  rw [node4685_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4686 input21)).val
theorem input4687_def : input4687 = (.seq input4686 input21) := by
  unfold input4687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4686 output21)).val
theorem output4687_def : output4687 = (.seq output4686 output21) := by
  unfold output4687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4687_skip : Flapjack.WordAlloc.isSkip output4687 = false := by
  rw [output4687_def]
  conv => lhs; cbv
  try rfl
theorem node4687_eq : Flapjack.WordAlloc.removeDeadStructural input4687 value14 value1 value2 = (output4687, value1810, value1) := by
  rw [input4687_def, output4687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node21_eq]
  try dsimp only
  rw [node4686_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4687 input20)).val
theorem input4688_def : input4688 = (.seq input4687 input20) := by
  unfold input4688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4687 output20)).val
theorem output4688_def : output4688 = (.seq output4687 output20) := by
  unfold output4688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4688_skip : Flapjack.WordAlloc.isSkip output4688 = false := by
  rw [output4688_def]
  conv => lhs; cbv
  try rfl
theorem node4688_eq : Flapjack.WordAlloc.removeDeadStructural input4688 value5 value1 value2 = (output4688, value1810, value1) := by
  rw [input4688_def, output4688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node20_eq]
  try dsimp only
  rw [node4687_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4688 input17)).val
theorem input4689_def : input4689 = (.seq input4688 input17) := by
  unfold input4689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4688 output17)).val
theorem output4689_def : output4689 = (.seq output4688 output17) := by
  unfold output4689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4689_skip : Flapjack.WordAlloc.isSkip output4689 = false := by
  rw [output4689_def]
  conv => lhs; cbv
  try rfl
theorem node4689_eq : Flapjack.WordAlloc.removeDeadStructural input4689 value8 value1 value2 = (output4689, value1810, value1) := by
  rw [input4689_def, output4689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node17_eq]
  try dsimp only
  rw [node4688_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4689 input8)).val
theorem input4690_def : input4690 = (.seq input4689 input8) := by
  unfold input4690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4689)).val
theorem output4690_def : output4690 = (output4689) := by
  unfold output4690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4690_skip : Flapjack.WordAlloc.isSkip output4690 = false := by
  rw [output4690_def]
  conv => lhs; cbv
  try rfl
theorem node4690_eq : Flapjack.WordAlloc.removeDeadStructural input4690 value8 value1 value2 = (output4690, value1810, value1) := by
  rw [input4690_def, output4690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8_eq]
  try dsimp only
  rw [node4689_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4690 input7)).val
theorem input4691_def : input4691 = (.seq input4690 input7) := by
  unfold input4691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4690 output7)).val
theorem output4691_def : output4691 = (.seq output4690 output7) := by
  unfold output4691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4691_skip : Flapjack.WordAlloc.isSkip output4691 = false := by
  rw [output4691_def]
  conv => lhs; cbv
  try rfl
theorem node4691_eq : Flapjack.WordAlloc.removeDeadStructural input4691 value7 value1 value2 = (output4691, value1810, value1) := by
  rw [input4691_def, output4691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7_eq]
  try dsimp only
  rw [node4690_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4691 input6)).val
theorem input4692_def : input4692 = (.seq input4691 input6) := by
  unfold input4692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4691 output6)).val
theorem output4692_def : output4692 = (.seq output4691 output6) := by
  unfold output4692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4692_skip : Flapjack.WordAlloc.isSkip output4692 = false := by
  rw [output4692_def]
  conv => lhs; cbv
  try rfl
theorem node4692_eq : Flapjack.WordAlloc.removeDeadStructural input4692 value5 value1 value2 = (output4692, value1810, value1) := by
  rw [input4692_def, output4692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6_eq]
  try dsimp only
  rw [node4691_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4692 input3)).val
theorem input4693_def : input4693 = (.seq input4692 input3) := by
  unfold input4693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4692 output3)).val
theorem output4693_def : output4693 = (.seq output4692 output3) := by
  unfold output4693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4693_skip : Flapjack.WordAlloc.isSkip output4693 = false := by
  rw [output4693_def]
  conv => lhs; cbv
  try rfl
theorem node4693_eq : Flapjack.WordAlloc.removeDeadStructural input4693 value4 value1 value2 = (output4693, value1810, value1) := by
  rw [input4693_def, output4693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3_eq]
  try dsimp only
  rw [node4692_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4693 input2)).val
theorem input4694_def : input4694 = (.seq input4693 input2) := by
  unfold input4694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4693 output2)).val
theorem output4694_def : output4694 = (.seq output4693 output2) := by
  unfold output4694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4694_skip : Flapjack.WordAlloc.isSkip output4694 = false := by
  rw [output4694_def]
  conv => lhs; cbv
  try rfl
theorem node4694_eq : Flapjack.WordAlloc.removeDeadStructural input4694 value0 value1 value2 = (output4694, value1810, value1) := by
  rw [input4694_def, output4694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2_eq]
  try dsimp only
  rw [node4693_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1820 : Flapjack.NumSet :=
Flapjack.Spt.ls PUnit.unit

@[irreducible, cbv_opaque] def input4695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(13, 0)])).val
theorem input4695_def : input4695 = (Flapjack.WordLangProgHOL.move 1 [(13, 0)]) := by
  unfold input4695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(13, 0)])).val
theorem output4695_def : output4695 = (Flapjack.WordLangProgHOL.move 1 [(13, 0)]) := by
  unfold output4695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4695_skip : Flapjack.WordAlloc.isSkip output4695 = false := by
  rw [output4695_def]
  conv => lhs; cbv
  try rfl
theorem node4695_eq : Flapjack.WordAlloc.removeDeadStructural input4695 value1810 value1 value2 = (output4695, value1820, value1) := by
  rw [input4695_def, output4695_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4695 input4694)).val
theorem input4696_def : input4696 = (.seq input4695 input4694) := by
  unfold input4696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4695 output4694)).val
theorem output4696_def : output4696 = (.seq output4695 output4694) := by
  unfold output4696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4696_skip : Flapjack.WordAlloc.isSkip output4696 = false := by
  rw [output4696_def]
  conv => lhs; cbv
  try rfl
theorem node4696_eq : Flapjack.WordAlloc.removeDeadStructural input4696 value0 value1 value2 = (output4696, value1820, value1) := by
  rw [input4696_def, output4696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4694_eq]
  try dsimp only
  rw [node4695_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node4696_eq
end InitECandidate.Proofs.DeadStages830
