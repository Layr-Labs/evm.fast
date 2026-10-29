import InitECandidate.Proofs.DeadStages597.Chunk014
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages597
@[irreducible, cbv_opaque] def input3840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3839 input3828)).val
theorem input3840_def : input3840 = (.seq input3839 input3828) := by
  unfold input3840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3839 output3828)).val
theorem output3840_def : output3840 = (.seq output3839 output3828) := by
  unfold output3840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3840_skip : Flapjack.WordAlloc.isSkip output3840 = false := by
  rw [output3840_def]
  conv => lhs; cbv
  try rfl
theorem node3840_eq : Flapjack.WordAlloc.removeDeadStructural input3840 value694 value1 value2 = (output3840, value698, value1) := by
  rw [input3840_def, output3840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3828_eq]
  try dsimp only
  rw [node3839_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3840 input3827)).val
theorem input3841_def : input3841 = (.seq input3840 input3827) := by
  unfold input3841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3840 output3827)).val
theorem output3841_def : output3841 = (.seq output3840 output3827) := by
  unfold output3841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3841_skip : Flapjack.WordAlloc.isSkip output3841 = false := by
  rw [output3841_def]
  conv => lhs; cbv
  try rfl
theorem node3841_eq : Flapjack.WordAlloc.removeDeadStructural input3841 value696 value1 value2 = (output3841, value698, value1) := by
  rw [input3841_def, output3841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3827_eq]
  try dsimp only
  rw [node3840_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3841 input3826)).val
theorem input3842_def : input3842 = (.seq input3841 input3826) := by
  unfold input3842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3841 output3826)).val
theorem output3842_def : output3842 = (.seq output3841 output3826) := by
  unfold output3842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3842_skip : Flapjack.WordAlloc.isSkip output3842 = false := by
  rw [output3842_def]
  conv => lhs; cbv
  try rfl
theorem node3842_eq : Flapjack.WordAlloc.removeDeadStructural input3842 value694 value1 value2 = (output3842, value698, value1) := by
  rw [input3842_def, output3842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3826_eq]
  try dsimp only
  rw [node3841_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3842 input3823)).val
theorem input3843_def : input3843 = (.seq input3842 input3823) := by
  unfold input3843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3842 output3823)).val
theorem output3843_def : output3843 = (.seq output3842 output3823) := by
  unfold output3843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3843_skip : Flapjack.WordAlloc.isSkip output3843 = false := by
  rw [output3843_def]
  conv => lhs; cbv
  try rfl
theorem node3843_eq : Flapjack.WordAlloc.removeDeadStructural input3843 value693 value1 value2 = (output3843, value698, value1) := by
  rw [input3843_def, output3843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3823_eq]
  try dsimp only
  rw [node3842_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(681, 609)])).val
theorem input3844_def : input3844 = (Flapjack.WordLangProgHOL.move 2 [(681, 609)]) := by
  unfold input3844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3844_def : output3844 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3844_skip : Flapjack.WordAlloc.isSkip output3844 = true := by
  rw [output3844_def]
  conv => lhs; cbv
  try rfl
theorem node3844_eq : Flapjack.WordAlloc.removeDeadStructural input3844 value693 value1 value2 = (output3844, value693, value1) := by
  rw [input3844_def, output3844_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(677, 617)])).val
theorem input3845_def : input3845 = (Flapjack.WordLangProgHOL.move 2 [(677, 617)]) := by
  unfold input3845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3845_def : output3845 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3845_skip : Flapjack.WordAlloc.isSkip output3845 = true := by
  rw [output3845_def]
  conv => lhs; cbv
  try rfl
theorem node3845_eq : Flapjack.WordAlloc.removeDeadStructural input3845 value693 value1 value2 = (output3845, value693, value1) := by
  rw [input3845_def, output3845_def]
  try (conv => lhs; cbv)
  try rfl

def value699 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(673, 613)])).val
theorem input3846_def : input3846 = (Flapjack.WordLangProgHOL.move 2 [(673, 613)]) := by
  unfold input3846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(673, 613)])).val
theorem output3846_def : output3846 = (Flapjack.WordLangProgHOL.move 2 [(673, 613)]) := by
  unfold output3846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3846_skip : Flapjack.WordAlloc.isSkip output3846 = false := by
  rw [output3846_def]
  conv => lhs; cbv
  try rfl
theorem node3846_eq : Flapjack.WordAlloc.removeDeadStructural input3846 value693 value1 value2 = (output3846, value699, value1) := by
  rw [input3846_def, output3846_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3847_def : input3847 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3847_def : output3847 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3847_skip : Flapjack.WordAlloc.isSkip output3847 = true := by
  rw [output3847_def]
  conv => lhs; cbv
  try rfl
theorem node3847_eq : Flapjack.WordAlloc.removeDeadStructural input3847 value699 value1 value2 = (output3847, value699, value1) := by
  rw [input3847_def, output3847_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3847 input3846)).val
theorem input3848_def : input3848 = (.seq input3847 input3846) := by
  unfold input3848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3846)).val
theorem output3848_def : output3848 = (output3846) := by
  unfold output3848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3848_skip : Flapjack.WordAlloc.isSkip output3848 = false := by
  rw [output3848_def]
  conv => lhs; cbv
  try rfl
theorem node3848_eq : Flapjack.WordAlloc.removeDeadStructural input3848 value693 value1 value2 = (output3848, value699, value1) := by
  rw [input3848_def, output3848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3846_eq]
  try dsimp only
  rw [node3847_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3848 input3845)).val
theorem input3849_def : input3849 = (.seq input3848 input3845) := by
  unfold input3849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3848)).val
theorem output3849_def : output3849 = (output3848) := by
  unfold output3849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3849_skip : Flapjack.WordAlloc.isSkip output3849 = false := by
  rw [output3849_def]
  conv => lhs; cbv
  try rfl
theorem node3849_eq : Flapjack.WordAlloc.removeDeadStructural input3849 value693 value1 value2 = (output3849, value699, value1) := by
  rw [input3849_def, output3849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3845_eq]
  try dsimp only
  rw [node3848_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3849 input3844)).val
theorem input3850_def : input3850 = (.seq input3849 input3844) := by
  unfold input3850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3849)).val
theorem output3850_def : output3850 = (output3849) := by
  unfold output3850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3850_skip : Flapjack.WordAlloc.isSkip output3850 = false := by
  rw [output3850_def]
  conv => lhs; cbv
  try rfl
theorem node3850_eq : Flapjack.WordAlloc.removeDeadStructural input3850 value693 value1 value2 = (output3850, value699, value1) := by
  rw [input3850_def, output3850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3844_eq]
  try dsimp only
  rw [node3849_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value700 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(669, 589), (665, 613), (661, 581)])).val
theorem input3851_def : input3851 = (Flapjack.WordLangProgHOL.move 2 [(669, 589), (665, 613), (661, 581)]) := by
  unfold input3851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(669, 589)])).val
theorem output3851_def : output3851 = (Flapjack.WordLangProgHOL.move 2 [(669, 589)]) := by
  unfold output3851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3851_skip : Flapjack.WordAlloc.isSkip output3851 = false := by
  rw [output3851_def]
  conv => lhs; cbv
  try rfl
theorem node3851_eq : Flapjack.WordAlloc.removeDeadStructural input3851 value699 value1 value2 = (output3851, value700, value1) := by
  rw [input3851_def, output3851_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3851 input3850)).val
theorem input3852_def : input3852 = (.seq input3851 input3850) := by
  unfold input3852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3851 output3850)).val
theorem output3852_def : output3852 = (.seq output3851 output3850) := by
  unfold output3852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3852_skip : Flapjack.WordAlloc.isSkip output3852 = false := by
  rw [output3852_def]
  conv => lhs; cbv
  try rfl
theorem node3852_eq : Flapjack.WordAlloc.removeDeadStructural input3852 value693 value1 value2 = (output3852, value700, value1) := by
  rw [input3852_def, output3852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3850_eq]
  try dsimp only
  rw [node3851_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3853_def : input3853 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3853_def : output3853 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3853_skip : Flapjack.WordAlloc.isSkip output3853 = true := by
  rw [output3853_def]
  conv => lhs; cbv
  try rfl
theorem node3853_eq : Flapjack.WordAlloc.removeDeadStructural input3853 value700 value1 value2 = (output3853, value700, value1) := by
  rw [input3853_def, output3853_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3853 input3852)).val
theorem input3854_def : input3854 = (.seq input3853 input3852) := by
  unfold input3854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3852)).val
theorem output3854_def : output3854 = (output3852) := by
  unfold output3854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3854_skip : Flapjack.WordAlloc.isSkip output3854 = false := by
  rw [output3854_def]
  conv => lhs; cbv
  try rfl
theorem node3854_eq : Flapjack.WordAlloc.removeDeadStructural input3854 value693 value1 value2 = (output3854, value700, value1) := by
  rw [input3854_def, output3854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3852_eq]
  try dsimp only
  rw [node3853_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value701 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 617

def value702 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 613 value701 input3843 input3854)).val
theorem input3855_def : input3855 = (.ite value15 613 value701 input3843 input3854) := by
  unfold input3855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 613 value701 output3843 output3854)).val
theorem output3855_def : output3855 = (.ite value15 613 value701 output3843 output3854) := by
  unfold output3855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3855_skip : Flapjack.WordAlloc.isSkip output3855 = false := by
  rw [output3855_def]
  conv => lhs; cbv
  try rfl
theorem node3855_eq : Flapjack.WordAlloc.removeDeadStructural input3855 value693 value1 value2 = (output3855, value702, value1) := by
  rw [input3855_def, output3855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node3843_eq]
  try dsimp only
  rw [node3854_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3855 input3814)).val
theorem input3856_def : input3856 = (.seq input3855 input3814) := by
  unfold input3856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3855 output3814)).val
theorem output3856_def : output3856 = (.seq output3855 output3814) := by
  unfold output3856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3856_skip : Flapjack.WordAlloc.isSkip output3856 = false := by
  rw [output3856_def]
  conv => lhs; cbv
  try rfl
theorem node3856_eq : Flapjack.WordAlloc.removeDeadStructural input3856 value693 value1 value2 = (output3856, value702, value1) := by
  rw [input3856_def, output3856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3814_eq]
  try dsimp only
  rw [node3855_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 617 7#64))).val
theorem input3857_def : input3857 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 617 7#64)) := by
  unfold input3857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 617 7#64))).val
theorem output3857_def : output3857 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 617 7#64)) := by
  unfold output3857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3857_skip : Flapjack.WordAlloc.isSkip output3857 = false := by
  rw [output3857_def]
  conv => lhs; cbv
  try rfl
theorem node3857_eq : Flapjack.WordAlloc.removeDeadStructural input3857 value702 value1 value2 = (output3857, value700, value1) := by
  rw [input3857_def, output3857_def]
  try (conv => lhs; cbv)
  try rfl

def value703 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(613, 593)])).val
theorem input3858_def : input3858 = (Flapjack.WordLangProgHOL.move 0 [(613, 593)]) := by
  unfold input3858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(613, 593)])).val
theorem output3858_def : output3858 = (Flapjack.WordLangProgHOL.move 0 [(613, 593)]) := by
  unfold output3858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3858_skip : Flapjack.WordAlloc.isSkip output3858 = false := by
  rw [output3858_def]
  conv => lhs; cbv
  try rfl
theorem node3858_eq : Flapjack.WordAlloc.removeDeadStructural input3858 value700 value1 value2 = (output3858, value703, value1) := by
  rw [input3858_def, output3858_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3859_def : input3859 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3859_def : output3859 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3859_skip : Flapjack.WordAlloc.isSkip output3859 = false := by
  rw [output3859_def]
  conv => lhs; cbv
  try rfl
theorem node3859_eq : Flapjack.WordAlloc.removeDeadStructural input3859 value703 value1 value2 = (output3859, value703, value1) := by
  rw [input3859_def, output3859_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 609 0#64))).val
theorem input3860_def : input3860 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 609 0#64)) := by
  unfold input3860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3860_def : output3860 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3860_skip : Flapjack.WordAlloc.isSkip output3860 = true := by
  rw [output3860_def]
  conv => lhs; cbv
  try rfl
theorem node3860_eq : Flapjack.WordAlloc.removeDeadStructural input3860 value703 value1 value2 = (output3860, value703, value1) := by
  rw [input3860_def, output3860_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3861_def : input3861 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3861_def : output3861 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3861_skip : Flapjack.WordAlloc.isSkip output3861 = false := by
  rw [output3861_def]
  conv => lhs; cbv
  try rfl
theorem node3861_eq : Flapjack.WordAlloc.removeDeadStructural input3861 value703 value1 value2 = (output3861, value703, value1) := by
  rw [input3861_def, output3861_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 605 0#64))).val
theorem input3862_def : input3862 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 605 0#64)) := by
  unfold input3862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3862_def : output3862 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3862_skip : Flapjack.WordAlloc.isSkip output3862 = true := by
  rw [output3862_def]
  conv => lhs; cbv
  try rfl
theorem node3862_eq : Flapjack.WordAlloc.removeDeadStructural input3862 value703 value1 value2 = (output3862, value703, value1) := by
  rw [input3862_def, output3862_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3862 input3861)).val
theorem input3863_def : input3863 = (.seq input3862 input3861) := by
  unfold input3863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3861)).val
theorem output3863_def : output3863 = (output3861) := by
  unfold output3863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3863_skip : Flapjack.WordAlloc.isSkip output3863 = false := by
  rw [output3863_def]
  conv => lhs; cbv
  try rfl
theorem node3863_eq : Flapjack.WordAlloc.removeDeadStructural input3863 value703 value1 value2 = (output3863, value703, value1) := by
  rw [input3863_def, output3863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3861_eq]
  try dsimp only
  rw [node3862_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3863 input3860)).val
theorem input3864_def : input3864 = (.seq input3863 input3860) := by
  unfold input3864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3863)).val
theorem output3864_def : output3864 = (output3863) := by
  unfold output3864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3864_skip : Flapjack.WordAlloc.isSkip output3864 = false := by
  rw [output3864_def]
  conv => lhs; cbv
  try rfl
theorem node3864_eq : Flapjack.WordAlloc.removeDeadStructural input3864 value703 value1 value2 = (output3864, value703, value1) := by
  rw [input3864_def, output3864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3860_eq]
  try dsimp only
  rw [node3863_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 0#64))).val
theorem input3865_def : input3865 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 0#64)) := by
  unfold input3865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3865_def : output3865 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3865_skip : Flapjack.WordAlloc.isSkip output3865 = true := by
  rw [output3865_def]
  conv => lhs; cbv
  try rfl
theorem node3865_eq : Flapjack.WordAlloc.removeDeadStructural input3865 value703 value1 value2 = (output3865, value703, value1) := by
  rw [input3865_def, output3865_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64))).val
theorem input3866_def : input3866 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64)) := by
  unfold input3866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3866_def : output3866 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3866_skip : Flapjack.WordAlloc.isSkip output3866 = true := by
  rw [output3866_def]
  conv => lhs; cbv
  try rfl
theorem node3866_eq : Flapjack.WordAlloc.removeDeadStructural input3866 value703 value1 value2 = (output3866, value703, value1) := by
  rw [input3866_def, output3866_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64))).val
theorem input3867_def : input3867 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64)) := by
  unfold input3867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64))).val
theorem output3867_def : output3867 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64)) := by
  unfold output3867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3867_skip : Flapjack.WordAlloc.isSkip output3867 = false := by
  rw [output3867_def]
  conv => lhs; cbv
  try rfl
theorem node3867_eq : Flapjack.WordAlloc.removeDeadStructural input3867 value703 value1 value2 = (output3867, value698, value1) := by
  rw [input3867_def, output3867_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3868_def : input3868 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3868_def : output3868 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3868_skip : Flapjack.WordAlloc.isSkip output3868 = true := by
  rw [output3868_def]
  conv => lhs; cbv
  try rfl
theorem node3868_eq : Flapjack.WordAlloc.removeDeadStructural input3868 value698 value1 value2 = (output3868, value698, value1) := by
  rw [input3868_def, output3868_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3868 input3867)).val
theorem input3869_def : input3869 = (.seq input3868 input3867) := by
  unfold input3869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3867)).val
theorem output3869_def : output3869 = (output3867) := by
  unfold output3869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3869_skip : Flapjack.WordAlloc.isSkip output3869 = false := by
  rw [output3869_def]
  conv => lhs; cbv
  try rfl
theorem node3869_eq : Flapjack.WordAlloc.removeDeadStructural input3869 value703 value1 value2 = (output3869, value698, value1) := by
  rw [input3869_def, output3869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3867_eq]
  try dsimp only
  rw [node3868_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3869 input3866)).val
theorem input3870_def : input3870 = (.seq input3869 input3866) := by
  unfold input3870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3869)).val
theorem output3870_def : output3870 = (output3869) := by
  unfold output3870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3870_skip : Flapjack.WordAlloc.isSkip output3870 = false := by
  rw [output3870_def]
  conv => lhs; cbv
  try rfl
theorem node3870_eq : Flapjack.WordAlloc.removeDeadStructural input3870 value703 value1 value2 = (output3870, value698, value1) := by
  rw [input3870_def, output3870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3866_eq]
  try dsimp only
  rw [node3869_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3870 input3865)).val
theorem input3871_def : input3871 = (.seq input3870 input3865) := by
  unfold input3871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3870)).val
theorem output3871_def : output3871 = (output3870) := by
  unfold output3871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3871_skip : Flapjack.WordAlloc.isSkip output3871 = false := by
  rw [output3871_def]
  conv => lhs; cbv
  try rfl
theorem node3871_eq : Flapjack.WordAlloc.removeDeadStructural input3871 value703 value1 value2 = (output3871, value698, value1) := by
  rw [input3871_def, output3871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3865_eq]
  try dsimp only
  rw [node3870_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value704 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(589, 557), (585, 573), (581, 577)])).val
theorem input3872_def : input3872 = (Flapjack.WordLangProgHOL.move 1 [(589, 557), (585, 573), (581, 577)]) := by
  unfold input3872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(589, 557)])).val
theorem output3872_def : output3872 = (Flapjack.WordLangProgHOL.move 1 [(589, 557)]) := by
  unfold output3872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3872_skip : Flapjack.WordAlloc.isSkip output3872 = false := by
  rw [output3872_def]
  conv => lhs; cbv
  try rfl
theorem node3872_eq : Flapjack.WordAlloc.removeDeadStructural input3872 value698 value1 value2 = (output3872, value704, value1) := by
  rw [input3872_def, output3872_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3872 input3871)).val
theorem input3873_def : input3873 = (.seq input3872 input3871) := by
  unfold input3873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3872 output3871)).val
theorem output3873_def : output3873 = (.seq output3872 output3871) := by
  unfold output3873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3873_skip : Flapjack.WordAlloc.isSkip output3873 = false := by
  rw [output3873_def]
  conv => lhs; cbv
  try rfl
theorem node3873_eq : Flapjack.WordAlloc.removeDeadStructural input3873 value703 value1 value2 = (output3873, value704, value1) := by
  rw [input3873_def, output3873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3871_eq]
  try dsimp only
  rw [node3872_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value705 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 557 [2])).val
theorem input3874_def : input3874 = (Flapjack.WordLangProgHOL.return 557 [2]) := by
  unfold input3874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 557 [2])).val
theorem output3874_def : output3874 = (Flapjack.WordLangProgHOL.return 557 [2]) := by
  unfold output3874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3874_skip : Flapjack.WordAlloc.isSkip output3874 = false := by
  rw [output3874_def]
  conv => lhs; cbv
  try rfl
theorem node3874_eq : Flapjack.WordAlloc.removeDeadStructural input3874 value704 value1 value2 = (output3874, value705, value1) := by
  rw [input3874_def, output3874_def]
  try (conv => lhs; cbv)
  try rfl

def value706 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 577)])).val
theorem input3875_def : input3875 = (Flapjack.WordLangProgHOL.move 0 [(2, 577)]) := by
  unfold input3875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 577)])).val
theorem output3875_def : output3875 = (Flapjack.WordLangProgHOL.move 0 [(2, 577)]) := by
  unfold output3875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3875_skip : Flapjack.WordAlloc.isSkip output3875 = false := by
  rw [output3875_def]
  conv => lhs; cbv
  try rfl
theorem node3875_eq : Flapjack.WordAlloc.removeDeadStructural input3875 value705 value1 value2 = (output3875, value706, value1) := by
  rw [input3875_def, output3875_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3875 input3874)).val
theorem input3876_def : input3876 = (.seq input3875 input3874) := by
  unfold input3876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3875 output3874)).val
theorem output3876_def : output3876 = (.seq output3875 output3874) := by
  unfold output3876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3876_skip : Flapjack.WordAlloc.isSkip output3876 = false := by
  rw [output3876_def]
  conv => lhs; cbv
  try rfl
theorem node3876_eq : Flapjack.WordAlloc.removeDeadStructural input3876 value704 value1 value2 = (output3876, value706, value1) := by
  rw [input3876_def, output3876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3874_eq]
  try dsimp only
  rw [node3875_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 0#64))).val
theorem input3877_def : input3877 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 0#64)) := by
  unfold input3877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 0#64))).val
theorem output3877_def : output3877 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 0#64)) := by
  unfold output3877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3877_skip : Flapjack.WordAlloc.isSkip output3877 = false := by
  rw [output3877_def]
  conv => lhs; cbv
  try rfl
theorem node3877_eq : Flapjack.WordAlloc.removeDeadStructural input3877 value706 value1 value2 = (output3877, value704, value1) := by
  rw [input3877_def, output3877_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3878_def : input3878 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3878_def : output3878 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3878_skip : Flapjack.WordAlloc.isSkip output3878 = false := by
  rw [output3878_def]
  conv => lhs; cbv
  try rfl
theorem node3878_eq : Flapjack.WordAlloc.removeDeadStructural input3878 value704 value1 value2 = (output3878, value704, value1) := by
  rw [input3878_def, output3878_def]
  try (conv => lhs; cbv)
  try rfl

def value707 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)))

@[irreducible, cbv_opaque] def input3879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(557, 551)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(561, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(569, 561)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 573 0#64)))),
      597, 14))
  (some 504) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(557, 551)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(565, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 565)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 569 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(573, 565)]))),
      597, 15)))).val
theorem input3879_def : input3879 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(557, 551)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(561, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(569, 561)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 573 0#64)))),
      597, 14))
  (some 504) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(557, 551)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(565, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 565)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 569 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(573, 565)]))),
      597, 15))) := by
  unfold input3879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(557, 551)], 597, 14))
  (some 504) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(557, 551)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(565, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 565)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 15)))).val
theorem output3879_def : output3879 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(557, 551)], 597, 14))
  (some 504) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(557, 551)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(565, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 565)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 15))) := by
  unfold output3879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3879_skip : Flapjack.WordAlloc.isSkip output3879 = false := by
  rw [output3879_def]
  conv => lhs; cbv
  try rfl
theorem node3879_eq : Flapjack.WordAlloc.removeDeadStructural input3879 value704 value1 value2 = (output3879, value707, value1) := by
  rw [input3879_def, output3879_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input3880_def : input3880 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input3880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3880_def : output3880 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3880_skip : Flapjack.WordAlloc.isSkip output3880 = true := by
  rw [output3880_def]
  conv => lhs; cbv
  try rfl
theorem node3880_eq : Flapjack.WordAlloc.removeDeadStructural input3880 value707 value1 value2 = (output3880, value707, value1) := by
  rw [input3880_def, output3880_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3880 input3879)).val
theorem input3881_def : input3881 = (.seq input3880 input3879) := by
  unfold input3881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3879)).val
theorem output3881_def : output3881 = (output3879) := by
  unfold output3881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3881_skip : Flapjack.WordAlloc.isSkip output3881 = false := by
  rw [output3881_def]
  conv => lhs; cbv
  try rfl
theorem node3881_eq : Flapjack.WordAlloc.removeDeadStructural input3881 value704 value1 value2 = (output3881, value707, value1) := by
  rw [input3881_def, output3881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3879_eq]
  try dsimp only
  rw [node3880_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value708 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(551, 509)])).val
theorem input3882_def : input3882 = (Flapjack.WordLangProgHOL.move 0 [(551, 509)]) := by
  unfold input3882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(551, 509)])).val
theorem output3882_def : output3882 = (Flapjack.WordLangProgHOL.move 0 [(551, 509)]) := by
  unfold output3882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3882_skip : Flapjack.WordAlloc.isSkip output3882 = false := by
  rw [output3882_def]
  conv => lhs; cbv
  try rfl
theorem node3882_eq : Flapjack.WordAlloc.removeDeadStructural input3882 value707 value1 value2 = (output3882, value708, value1) := by
  rw [input3882_def, output3882_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3882 input3881)).val
theorem input3883_def : input3883 = (.seq input3882 input3881) := by
  unfold input3883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3882 output3881)).val
theorem output3883_def : output3883 = (.seq output3882 output3881) := by
  unfold output3883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3883_skip : Flapjack.WordAlloc.isSkip output3883 = false := by
  rw [output3883_def]
  conv => lhs; cbv
  try rfl
theorem node3883_eq : Flapjack.WordAlloc.removeDeadStructural input3883 value704 value1 value2 = (output3883, value708, value1) := by
  rw [input3883_def, output3883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3881_eq]
  try dsimp only
  rw [node3882_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 545 1#64))).val
theorem input3884_def : input3884 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 545 1#64)) := by
  unfold input3884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3884_def : output3884 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3884_skip : Flapjack.WordAlloc.isSkip output3884 = true := by
  rw [output3884_def]
  conv => lhs; cbv
  try rfl
theorem node3884_eq : Flapjack.WordAlloc.removeDeadStructural input3884 value708 value1 value2 = (output3884, value708, value1) := by
  rw [input3884_def, output3884_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3885_def : input3885 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3885_def : output3885 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3885_skip : Flapjack.WordAlloc.isSkip output3885 = false := by
  rw [output3885_def]
  conv => lhs; cbv
  try rfl
theorem node3885_eq : Flapjack.WordAlloc.removeDeadStructural input3885 value708 value1 value2 = (output3885, value708, value1) := by
  rw [input3885_def, output3885_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 541 1#64))).val
theorem input3886_def : input3886 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 541 1#64)) := by
  unfold input3886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3886_def : output3886 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3886_skip : Flapjack.WordAlloc.isSkip output3886 = true := by
  rw [output3886_def]
  conv => lhs; cbv
  try rfl
theorem node3886_eq : Flapjack.WordAlloc.removeDeadStructural input3886 value708 value1 value2 = (output3886, value708, value1) := by
  rw [input3886_def, output3886_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3886 input3885)).val
theorem input3887_def : input3887 = (.seq input3886 input3885) := by
  unfold input3887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3885)).val
theorem output3887_def : output3887 = (output3885) := by
  unfold output3887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3887_skip : Flapjack.WordAlloc.isSkip output3887 = false := by
  rw [output3887_def]
  conv => lhs; cbv
  try rfl
theorem node3887_eq : Flapjack.WordAlloc.removeDeadStructural input3887 value708 value1 value2 = (output3887, value708, value1) := by
  rw [input3887_def, output3887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3885_eq]
  try dsimp only
  rw [node3886_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3887 input3884)).val
theorem input3888_def : input3888 = (.seq input3887 input3884) := by
  unfold input3888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3887)).val
theorem output3888_def : output3888 = (output3887) := by
  unfold output3888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3888_skip : Flapjack.WordAlloc.isSkip output3888 = false := by
  rw [output3888_def]
  conv => lhs; cbv
  try rfl
theorem node3888_eq : Flapjack.WordAlloc.removeDeadStructural input3888 value708 value1 value2 = (output3888, value708, value1) := by
  rw [input3888_def, output3888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3884_eq]
  try dsimp only
  rw [node3887_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3888 input3883)).val
theorem input3889_def : input3889 = (.seq input3888 input3883) := by
  unfold input3889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3888 output3883)).val
theorem output3889_def : output3889 = (.seq output3888 output3883) := by
  unfold output3889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3889_skip : Flapjack.WordAlloc.isSkip output3889 = false := by
  rw [output3889_def]
  conv => lhs; cbv
  try rfl
theorem node3889_eq : Flapjack.WordAlloc.removeDeadStructural input3889 value704 value1 value2 = (output3889, value708, value1) := by
  rw [input3889_def, output3889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3883_eq]
  try dsimp only
  rw [node3888_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3889 input3878)).val
theorem input3890_def : input3890 = (.seq input3889 input3878) := by
  unfold input3890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3889 output3878)).val
theorem output3890_def : output3890 = (.seq output3889 output3878) := by
  unfold output3890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3890_skip : Flapjack.WordAlloc.isSkip output3890 = false := by
  rw [output3890_def]
  conv => lhs; cbv
  try rfl
theorem node3890_eq : Flapjack.WordAlloc.removeDeadStructural input3890 value704 value1 value2 = (output3890, value708, value1) := by
  rw [input3890_def, output3890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3878_eq]
  try dsimp only
  rw [node3889_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3890 input3877)).val
theorem input3891_def : input3891 = (.seq input3890 input3877) := by
  unfold input3891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3890 output3877)).val
theorem output3891_def : output3891 = (.seq output3890 output3877) := by
  unfold output3891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3891_skip : Flapjack.WordAlloc.isSkip output3891 = false := by
  rw [output3891_def]
  conv => lhs; cbv
  try rfl
theorem node3891_eq : Flapjack.WordAlloc.removeDeadStructural input3891 value706 value1 value2 = (output3891, value708, value1) := by
  rw [input3891_def, output3891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3877_eq]
  try dsimp only
  rw [node3890_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3891 input3876)).val
theorem input3892_def : input3892 = (.seq input3891 input3876) := by
  unfold input3892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3891 output3876)).val
theorem output3892_def : output3892 = (.seq output3891 output3876) := by
  unfold output3892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3892_skip : Flapjack.WordAlloc.isSkip output3892 = false := by
  rw [output3892_def]
  conv => lhs; cbv
  try rfl
theorem node3892_eq : Flapjack.WordAlloc.removeDeadStructural input3892 value704 value1 value2 = (output3892, value708, value1) := by
  rw [input3892_def, output3892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3876_eq]
  try dsimp only
  rw [node3891_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3892 input3873)).val
theorem input3893_def : input3893 = (.seq input3892 input3873) := by
  unfold input3893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3892 output3873)).val
theorem output3893_def : output3893 = (.seq output3892 output3873) := by
  unfold output3893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3893_skip : Flapjack.WordAlloc.isSkip output3893 = false := by
  rw [output3893_def]
  conv => lhs; cbv
  try rfl
theorem node3893_eq : Flapjack.WordAlloc.removeDeadStructural input3893 value703 value1 value2 = (output3893, value708, value1) := by
  rw [input3893_def, output3893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3873_eq]
  try dsimp only
  rw [node3892_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(601, 529)])).val
theorem input3894_def : input3894 = (Flapjack.WordLangProgHOL.move 2 [(601, 529)]) := by
  unfold input3894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3894_def : output3894 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3894_skip : Flapjack.WordAlloc.isSkip output3894 = true := by
  rw [output3894_def]
  conv => lhs; cbv
  try rfl
theorem node3894_eq : Flapjack.WordAlloc.removeDeadStructural input3894 value703 value1 value2 = (output3894, value703, value1) := by
  rw [input3894_def, output3894_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(597, 537)])).val
theorem input3895_def : input3895 = (Flapjack.WordLangProgHOL.move 2 [(597, 537)]) := by
  unfold input3895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3895_def : output3895 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3895_skip : Flapjack.WordAlloc.isSkip output3895 = true := by
  rw [output3895_def]
  conv => lhs; cbv
  try rfl
theorem node3895_eq : Flapjack.WordAlloc.removeDeadStructural input3895 value703 value1 value2 = (output3895, value703, value1) := by
  rw [input3895_def, output3895_def]
  try (conv => lhs; cbv)
  try rfl

def value709 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(593, 533)])).val
theorem input3896_def : input3896 = (Flapjack.WordLangProgHOL.move 2 [(593, 533)]) := by
  unfold input3896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(593, 533)])).val
theorem output3896_def : output3896 = (Flapjack.WordLangProgHOL.move 2 [(593, 533)]) := by
  unfold output3896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3896_skip : Flapjack.WordAlloc.isSkip output3896 = false := by
  rw [output3896_def]
  conv => lhs; cbv
  try rfl
theorem node3896_eq : Flapjack.WordAlloc.removeDeadStructural input3896 value703 value1 value2 = (output3896, value709, value1) := by
  rw [input3896_def, output3896_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3897_def : input3897 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3897_def : output3897 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3897_skip : Flapjack.WordAlloc.isSkip output3897 = true := by
  rw [output3897_def]
  conv => lhs; cbv
  try rfl
theorem node3897_eq : Flapjack.WordAlloc.removeDeadStructural input3897 value709 value1 value2 = (output3897, value709, value1) := by
  rw [input3897_def, output3897_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3897 input3896)).val
theorem input3898_def : input3898 = (.seq input3897 input3896) := by
  unfold input3898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3896)).val
theorem output3898_def : output3898 = (output3896) := by
  unfold output3898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3898_skip : Flapjack.WordAlloc.isSkip output3898 = false := by
  rw [output3898_def]
  conv => lhs; cbv
  try rfl
theorem node3898_eq : Flapjack.WordAlloc.removeDeadStructural input3898 value703 value1 value2 = (output3898, value709, value1) := by
  rw [input3898_def, output3898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3896_eq]
  try dsimp only
  rw [node3897_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3898 input3895)).val
theorem input3899_def : input3899 = (.seq input3898 input3895) := by
  unfold input3899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3898)).val
theorem output3899_def : output3899 = (output3898) := by
  unfold output3899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3899_skip : Flapjack.WordAlloc.isSkip output3899 = false := by
  rw [output3899_def]
  conv => lhs; cbv
  try rfl
theorem node3899_eq : Flapjack.WordAlloc.removeDeadStructural input3899 value703 value1 value2 = (output3899, value709, value1) := by
  rw [input3899_def, output3899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3895_eq]
  try dsimp only
  rw [node3898_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3899 input3894)).val
theorem input3900_def : input3900 = (.seq input3899 input3894) := by
  unfold input3900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3899)).val
theorem output3900_def : output3900 = (output3899) := by
  unfold output3900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3900_skip : Flapjack.WordAlloc.isSkip output3900 = false := by
  rw [output3900_def]
  conv => lhs; cbv
  try rfl
theorem node3900_eq : Flapjack.WordAlloc.removeDeadStructural input3900 value703 value1 value2 = (output3900, value709, value1) := by
  rw [input3900_def, output3900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3894_eq]
  try dsimp only
  rw [node3899_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value710 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(589, 509), (585, 533), (581, 501)])).val
theorem input3901_def : input3901 = (Flapjack.WordLangProgHOL.move 2 [(589, 509), (585, 533), (581, 501)]) := by
  unfold input3901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(589, 509)])).val
theorem output3901_def : output3901 = (Flapjack.WordLangProgHOL.move 2 [(589, 509)]) := by
  unfold output3901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3901_skip : Flapjack.WordAlloc.isSkip output3901 = false := by
  rw [output3901_def]
  conv => lhs; cbv
  try rfl
theorem node3901_eq : Flapjack.WordAlloc.removeDeadStructural input3901 value709 value1 value2 = (output3901, value710, value1) := by
  rw [input3901_def, output3901_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3901 input3900)).val
theorem input3902_def : input3902 = (.seq input3901 input3900) := by
  unfold input3902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3901 output3900)).val
theorem output3902_def : output3902 = (.seq output3901 output3900) := by
  unfold output3902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3902_skip : Flapjack.WordAlloc.isSkip output3902 = false := by
  rw [output3902_def]
  conv => lhs; cbv
  try rfl
theorem node3902_eq : Flapjack.WordAlloc.removeDeadStructural input3902 value703 value1 value2 = (output3902, value710, value1) := by
  rw [input3902_def, output3902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3900_eq]
  try dsimp only
  rw [node3901_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3903_def : input3903 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3903_def : output3903 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3903_skip : Flapjack.WordAlloc.isSkip output3903 = true := by
  rw [output3903_def]
  conv => lhs; cbv
  try rfl
theorem node3903_eq : Flapjack.WordAlloc.removeDeadStructural input3903 value710 value1 value2 = (output3903, value710, value1) := by
  rw [input3903_def, output3903_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3903 input3902)).val
theorem input3904_def : input3904 = (.seq input3903 input3902) := by
  unfold input3904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3902)).val
theorem output3904_def : output3904 = (output3902) := by
  unfold output3904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3904_skip : Flapjack.WordAlloc.isSkip output3904 = false := by
  rw [output3904_def]
  conv => lhs; cbv
  try rfl
theorem node3904_eq : Flapjack.WordAlloc.removeDeadStructural input3904 value703 value1 value2 = (output3904, value710, value1) := by
  rw [input3904_def, output3904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3902_eq]
  try dsimp only
  rw [node3903_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value711 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 537

def value712 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 533 value711 input3893 input3904)).val
theorem input3905_def : input3905 = (.ite value15 533 value711 input3893 input3904) := by
  unfold input3905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 533 value711 output3893 output3904)).val
theorem output3905_def : output3905 = (.ite value15 533 value711 output3893 output3904) := by
  unfold output3905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3905_skip : Flapjack.WordAlloc.isSkip output3905 = false := by
  rw [output3905_def]
  conv => lhs; cbv
  try rfl
theorem node3905_eq : Flapjack.WordAlloc.removeDeadStructural input3905 value703 value1 value2 = (output3905, value712, value1) := by
  rw [input3905_def, output3905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node3893_eq]
  try dsimp only
  rw [node3904_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3905 input3864)).val
theorem input3906_def : input3906 = (.seq input3905 input3864) := by
  unfold input3906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3905 output3864)).val
theorem output3906_def : output3906 = (.seq output3905 output3864) := by
  unfold output3906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3906_skip : Flapjack.WordAlloc.isSkip output3906 = false := by
  rw [output3906_def]
  conv => lhs; cbv
  try rfl
theorem node3906_eq : Flapjack.WordAlloc.removeDeadStructural input3906 value703 value1 value2 = (output3906, value712, value1) := by
  rw [input3906_def, output3906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3864_eq]
  try dsimp only
  rw [node3905_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 6#64))).val
theorem input3907_def : input3907 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 6#64)) := by
  unfold input3907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 6#64))).val
theorem output3907_def : output3907 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 6#64)) := by
  unfold output3907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3907_skip : Flapjack.WordAlloc.isSkip output3907 = false := by
  rw [output3907_def]
  conv => lhs; cbv
  try rfl
theorem node3907_eq : Flapjack.WordAlloc.removeDeadStructural input3907 value712 value1 value2 = (output3907, value710, value1) := by
  rw [input3907_def, output3907_def]
  try (conv => lhs; cbv)
  try rfl

def value713 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(533, 513)])).val
theorem input3908_def : input3908 = (Flapjack.WordLangProgHOL.move 0 [(533, 513)]) := by
  unfold input3908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(533, 513)])).val
theorem output3908_def : output3908 = (Flapjack.WordLangProgHOL.move 0 [(533, 513)]) := by
  unfold output3908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3908_skip : Flapjack.WordAlloc.isSkip output3908 = false := by
  rw [output3908_def]
  conv => lhs; cbv
  try rfl
theorem node3908_eq : Flapjack.WordAlloc.removeDeadStructural input3908 value710 value1 value2 = (output3908, value713, value1) := by
  rw [input3908_def, output3908_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3909_def : input3909 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3909_def : output3909 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3909_skip : Flapjack.WordAlloc.isSkip output3909 = false := by
  rw [output3909_def]
  conv => lhs; cbv
  try rfl
theorem node3909_eq : Flapjack.WordAlloc.removeDeadStructural input3909 value713 value1 value2 = (output3909, value713, value1) := by
  rw [input3909_def, output3909_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 529 0#64))).val
theorem input3910_def : input3910 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 529 0#64)) := by
  unfold input3910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3910_def : output3910 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3910_skip : Flapjack.WordAlloc.isSkip output3910 = true := by
  rw [output3910_def]
  conv => lhs; cbv
  try rfl
theorem node3910_eq : Flapjack.WordAlloc.removeDeadStructural input3910 value713 value1 value2 = (output3910, value713, value1) := by
  rw [input3910_def, output3910_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3911_def : input3911 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3911_def : output3911 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3911_skip : Flapjack.WordAlloc.isSkip output3911 = false := by
  rw [output3911_def]
  conv => lhs; cbv
  try rfl
theorem node3911_eq : Flapjack.WordAlloc.removeDeadStructural input3911 value713 value1 value2 = (output3911, value713, value1) := by
  rw [input3911_def, output3911_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 525 0#64))).val
theorem input3912_def : input3912 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 525 0#64)) := by
  unfold input3912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3912_def : output3912 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3912_skip : Flapjack.WordAlloc.isSkip output3912 = true := by
  rw [output3912_def]
  conv => lhs; cbv
  try rfl
theorem node3912_eq : Flapjack.WordAlloc.removeDeadStructural input3912 value713 value1 value2 = (output3912, value713, value1) := by
  rw [input3912_def, output3912_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3912 input3911)).val
theorem input3913_def : input3913 = (.seq input3912 input3911) := by
  unfold input3913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3911)).val
theorem output3913_def : output3913 = (output3911) := by
  unfold output3913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3913_skip : Flapjack.WordAlloc.isSkip output3913 = false := by
  rw [output3913_def]
  conv => lhs; cbv
  try rfl
theorem node3913_eq : Flapjack.WordAlloc.removeDeadStructural input3913 value713 value1 value2 = (output3913, value713, value1) := by
  rw [input3913_def, output3913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3911_eq]
  try dsimp only
  rw [node3912_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3913 input3910)).val
theorem input3914_def : input3914 = (.seq input3913 input3910) := by
  unfold input3914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3913)).val
theorem output3914_def : output3914 = (output3913) := by
  unfold output3914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3914_skip : Flapjack.WordAlloc.isSkip output3914 = false := by
  rw [output3914_def]
  conv => lhs; cbv
  try rfl
theorem node3914_eq : Flapjack.WordAlloc.removeDeadStructural input3914 value713 value1 value2 = (output3914, value713, value1) := by
  rw [input3914_def, output3914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3910_eq]
  try dsimp only
  rw [node3913_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 521 0#64))).val
theorem input3915_def : input3915 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 521 0#64)) := by
  unfold input3915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3915_def : output3915 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3915_skip : Flapjack.WordAlloc.isSkip output3915 = true := by
  rw [output3915_def]
  conv => lhs; cbv
  try rfl
theorem node3915_eq : Flapjack.WordAlloc.removeDeadStructural input3915 value713 value1 value2 = (output3915, value713, value1) := by
  rw [input3915_def, output3915_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 0#64))).val
theorem input3916_def : input3916 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 0#64)) := by
  unfold input3916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3916_def : output3916 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3916_skip : Flapjack.WordAlloc.isSkip output3916 = true := by
  rw [output3916_def]
  conv => lhs; cbv
  try rfl
theorem node3916_eq : Flapjack.WordAlloc.removeDeadStructural input3916 value713 value1 value2 = (output3916, value713, value1) := by
  rw [input3916_def, output3916_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 513 0#64))).val
theorem input3917_def : input3917 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 513 0#64)) := by
  unfold input3917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 513 0#64))).val
theorem output3917_def : output3917 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 513 0#64)) := by
  unfold output3917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3917_skip : Flapjack.WordAlloc.isSkip output3917 = false := by
  rw [output3917_def]
  conv => lhs; cbv
  try rfl
theorem node3917_eq : Flapjack.WordAlloc.removeDeadStructural input3917 value713 value1 value2 = (output3917, value708, value1) := by
  rw [input3917_def, output3917_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3918_def : input3918 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3918_def : output3918 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3918_skip : Flapjack.WordAlloc.isSkip output3918 = true := by
  rw [output3918_def]
  conv => lhs; cbv
  try rfl
theorem node3918_eq : Flapjack.WordAlloc.removeDeadStructural input3918 value708 value1 value2 = (output3918, value708, value1) := by
  rw [input3918_def, output3918_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3918 input3917)).val
theorem input3919_def : input3919 = (.seq input3918 input3917) := by
  unfold input3919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3917)).val
theorem output3919_def : output3919 = (output3917) := by
  unfold output3919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3919_skip : Flapjack.WordAlloc.isSkip output3919 = false := by
  rw [output3919_def]
  conv => lhs; cbv
  try rfl
theorem node3919_eq : Flapjack.WordAlloc.removeDeadStructural input3919 value713 value1 value2 = (output3919, value708, value1) := by
  rw [input3919_def, output3919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3917_eq]
  try dsimp only
  rw [node3918_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3919 input3916)).val
theorem input3920_def : input3920 = (.seq input3919 input3916) := by
  unfold input3920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3919)).val
theorem output3920_def : output3920 = (output3919) := by
  unfold output3920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3920_skip : Flapjack.WordAlloc.isSkip output3920 = false := by
  rw [output3920_def]
  conv => lhs; cbv
  try rfl
theorem node3920_eq : Flapjack.WordAlloc.removeDeadStructural input3920 value713 value1 value2 = (output3920, value708, value1) := by
  rw [input3920_def, output3920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3916_eq]
  try dsimp only
  rw [node3919_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3920 input3915)).val
theorem input3921_def : input3921 = (.seq input3920 input3915) := by
  unfold input3921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3920)).val
theorem output3921_def : output3921 = (output3920) := by
  unfold output3921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3921_skip : Flapjack.WordAlloc.isSkip output3921 = false := by
  rw [output3921_def]
  conv => lhs; cbv
  try rfl
theorem node3921_eq : Flapjack.WordAlloc.removeDeadStructural input3921 value713 value1 value2 = (output3921, value708, value1) := by
  rw [input3921_def, output3921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3915_eq]
  try dsimp only
  rw [node3920_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value714 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(509, 477), (505, 493), (501, 497)])).val
theorem input3922_def : input3922 = (Flapjack.WordLangProgHOL.move 1 [(509, 477), (505, 493), (501, 497)]) := by
  unfold input3922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(509, 477)])).val
theorem output3922_def : output3922 = (Flapjack.WordLangProgHOL.move 1 [(509, 477)]) := by
  unfold output3922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3922_skip : Flapjack.WordAlloc.isSkip output3922 = false := by
  rw [output3922_def]
  conv => lhs; cbv
  try rfl
theorem node3922_eq : Flapjack.WordAlloc.removeDeadStructural input3922 value708 value1 value2 = (output3922, value714, value1) := by
  rw [input3922_def, output3922_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3922 input3921)).val
theorem input3923_def : input3923 = (.seq input3922 input3921) := by
  unfold input3923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3922 output3921)).val
theorem output3923_def : output3923 = (.seq output3922 output3921) := by
  unfold output3923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3923_skip : Flapjack.WordAlloc.isSkip output3923 = false := by
  rw [output3923_def]
  conv => lhs; cbv
  try rfl
theorem node3923_eq : Flapjack.WordAlloc.removeDeadStructural input3923 value713 value1 value2 = (output3923, value714, value1) := by
  rw [input3923_def, output3923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3921_eq]
  try dsimp only
  rw [node3922_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value715 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 477 [2])).val
theorem input3924_def : input3924 = (Flapjack.WordLangProgHOL.return 477 [2]) := by
  unfold input3924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 477 [2])).val
theorem output3924_def : output3924 = (Flapjack.WordLangProgHOL.return 477 [2]) := by
  unfold output3924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3924_skip : Flapjack.WordAlloc.isSkip output3924 = false := by
  rw [output3924_def]
  conv => lhs; cbv
  try rfl
theorem node3924_eq : Flapjack.WordAlloc.removeDeadStructural input3924 value714 value1 value2 = (output3924, value715, value1) := by
  rw [input3924_def, output3924_def]
  try (conv => lhs; cbv)
  try rfl

def value716 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 497)])).val
theorem input3925_def : input3925 = (Flapjack.WordLangProgHOL.move 0 [(2, 497)]) := by
  unfold input3925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 497)])).val
theorem output3925_def : output3925 = (Flapjack.WordLangProgHOL.move 0 [(2, 497)]) := by
  unfold output3925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3925_skip : Flapjack.WordAlloc.isSkip output3925 = false := by
  rw [output3925_def]
  conv => lhs; cbv
  try rfl
theorem node3925_eq : Flapjack.WordAlloc.removeDeadStructural input3925 value715 value1 value2 = (output3925, value716, value1) := by
  rw [input3925_def, output3925_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3925 input3924)).val
theorem input3926_def : input3926 = (.seq input3925 input3924) := by
  unfold input3926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3925 output3924)).val
theorem output3926_def : output3926 = (.seq output3925 output3924) := by
  unfold output3926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3926_skip : Flapjack.WordAlloc.isSkip output3926 = false := by
  rw [output3926_def]
  conv => lhs; cbv
  try rfl
theorem node3926_eq : Flapjack.WordAlloc.removeDeadStructural input3926 value714 value1 value2 = (output3926, value716, value1) := by
  rw [input3926_def, output3926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3924_eq]
  try dsimp only
  rw [node3925_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 0#64))).val
theorem input3927_def : input3927 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 0#64)) := by
  unfold input3927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 0#64))).val
theorem output3927_def : output3927 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 0#64)) := by
  unfold output3927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3927_skip : Flapjack.WordAlloc.isSkip output3927 = false := by
  rw [output3927_def]
  conv => lhs; cbv
  try rfl
theorem node3927_eq : Flapjack.WordAlloc.removeDeadStructural input3927 value716 value1 value2 = (output3927, value714, value1) := by
  rw [input3927_def, output3927_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3928_def : input3928 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3928_def : output3928 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3928_skip : Flapjack.WordAlloc.isSkip output3928 = false := by
  rw [output3928_def]
  conv => lhs; cbv
  try rfl
theorem node3928_eq : Flapjack.WordAlloc.removeDeadStructural input3928 value714 value1 value2 = (output3928, value714, value1) := by
  rw [input3928_def, output3928_def]
  try (conv => lhs; cbv)
  try rfl

def value717 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)))

@[irreducible, cbv_opaque] def input3929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(477, 471)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(481, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(489, 481)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 493 0#64)))),
      597, 12))
  (some 503) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(477, 471)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(485, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 485)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 489 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(493, 485)]))),
      597, 13)))).val
theorem input3929_def : input3929 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(477, 471)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(481, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(489, 481)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 493 0#64)))),
      597, 12))
  (some 503) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(477, 471)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(485, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 485)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 489 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(493, 485)]))),
      597, 13))) := by
  unfold input3929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(477, 471)], 597, 12))
  (some 503) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(477, 471)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(485, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 485)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 13)))).val
theorem output3929_def : output3929 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(477, 471)], 597, 12))
  (some 503) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(477, 471)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(485, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 485)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 13))) := by
  unfold output3929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3929_skip : Flapjack.WordAlloc.isSkip output3929 = false := by
  rw [output3929_def]
  conv => lhs; cbv
  try rfl
theorem node3929_eq : Flapjack.WordAlloc.removeDeadStructural input3929 value714 value1 value2 = (output3929, value717, value1) := by
  rw [input3929_def, output3929_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input3930_def : input3930 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input3930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3930_def : output3930 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3930_skip : Flapjack.WordAlloc.isSkip output3930 = true := by
  rw [output3930_def]
  conv => lhs; cbv
  try rfl
theorem node3930_eq : Flapjack.WordAlloc.removeDeadStructural input3930 value717 value1 value2 = (output3930, value717, value1) := by
  rw [input3930_def, output3930_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3930 input3929)).val
theorem input3931_def : input3931 = (.seq input3930 input3929) := by
  unfold input3931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3929)).val
theorem output3931_def : output3931 = (output3929) := by
  unfold output3931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3931_skip : Flapjack.WordAlloc.isSkip output3931 = false := by
  rw [output3931_def]
  conv => lhs; cbv
  try rfl
theorem node3931_eq : Flapjack.WordAlloc.removeDeadStructural input3931 value714 value1 value2 = (output3931, value717, value1) := by
  rw [input3931_def, output3931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3929_eq]
  try dsimp only
  rw [node3930_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value718 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(471, 429)])).val
theorem input3932_def : input3932 = (Flapjack.WordLangProgHOL.move 0 [(471, 429)]) := by
  unfold input3932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(471, 429)])).val
theorem output3932_def : output3932 = (Flapjack.WordLangProgHOL.move 0 [(471, 429)]) := by
  unfold output3932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3932_skip : Flapjack.WordAlloc.isSkip output3932 = false := by
  rw [output3932_def]
  conv => lhs; cbv
  try rfl
theorem node3932_eq : Flapjack.WordAlloc.removeDeadStructural input3932 value717 value1 value2 = (output3932, value718, value1) := by
  rw [input3932_def, output3932_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3932 input3931)).val
theorem input3933_def : input3933 = (.seq input3932 input3931) := by
  unfold input3933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3932 output3931)).val
theorem output3933_def : output3933 = (.seq output3932 output3931) := by
  unfold output3933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3933_skip : Flapjack.WordAlloc.isSkip output3933 = false := by
  rw [output3933_def]
  conv => lhs; cbv
  try rfl
theorem node3933_eq : Flapjack.WordAlloc.removeDeadStructural input3933 value714 value1 value2 = (output3933, value718, value1) := by
  rw [input3933_def, output3933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3931_eq]
  try dsimp only
  rw [node3932_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 465 1#64))).val
theorem input3934_def : input3934 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 465 1#64)) := by
  unfold input3934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3934_def : output3934 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3934_skip : Flapjack.WordAlloc.isSkip output3934 = true := by
  rw [output3934_def]
  conv => lhs; cbv
  try rfl
theorem node3934_eq : Flapjack.WordAlloc.removeDeadStructural input3934 value718 value1 value2 = (output3934, value718, value1) := by
  rw [input3934_def, output3934_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3935_def : input3935 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3935_def : output3935 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3935_skip : Flapjack.WordAlloc.isSkip output3935 = false := by
  rw [output3935_def]
  conv => lhs; cbv
  try rfl
theorem node3935_eq : Flapjack.WordAlloc.removeDeadStructural input3935 value718 value1 value2 = (output3935, value718, value1) := by
  rw [input3935_def, output3935_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 461 1#64))).val
theorem input3936_def : input3936 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 461 1#64)) := by
  unfold input3936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3936_def : output3936 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3936_skip : Flapjack.WordAlloc.isSkip output3936 = true := by
  rw [output3936_def]
  conv => lhs; cbv
  try rfl
theorem node3936_eq : Flapjack.WordAlloc.removeDeadStructural input3936 value718 value1 value2 = (output3936, value718, value1) := by
  rw [input3936_def, output3936_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3936 input3935)).val
theorem input3937_def : input3937 = (.seq input3936 input3935) := by
  unfold input3937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3935)).val
theorem output3937_def : output3937 = (output3935) := by
  unfold output3937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3937_skip : Flapjack.WordAlloc.isSkip output3937 = false := by
  rw [output3937_def]
  conv => lhs; cbv
  try rfl
theorem node3937_eq : Flapjack.WordAlloc.removeDeadStructural input3937 value718 value1 value2 = (output3937, value718, value1) := by
  rw [input3937_def, output3937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3935_eq]
  try dsimp only
  rw [node3936_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3937 input3934)).val
theorem input3938_def : input3938 = (.seq input3937 input3934) := by
  unfold input3938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3937)).val
theorem output3938_def : output3938 = (output3937) := by
  unfold output3938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3938_skip : Flapjack.WordAlloc.isSkip output3938 = false := by
  rw [output3938_def]
  conv => lhs; cbv
  try rfl
theorem node3938_eq : Flapjack.WordAlloc.removeDeadStructural input3938 value718 value1 value2 = (output3938, value718, value1) := by
  rw [input3938_def, output3938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3934_eq]
  try dsimp only
  rw [node3937_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3938 input3933)).val
theorem input3939_def : input3939 = (.seq input3938 input3933) := by
  unfold input3939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3938 output3933)).val
theorem output3939_def : output3939 = (.seq output3938 output3933) := by
  unfold output3939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3939_skip : Flapjack.WordAlloc.isSkip output3939 = false := by
  rw [output3939_def]
  conv => lhs; cbv
  try rfl
theorem node3939_eq : Flapjack.WordAlloc.removeDeadStructural input3939 value714 value1 value2 = (output3939, value718, value1) := by
  rw [input3939_def, output3939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3933_eq]
  try dsimp only
  rw [node3938_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3939 input3928)).val
theorem input3940_def : input3940 = (.seq input3939 input3928) := by
  unfold input3940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3939 output3928)).val
theorem output3940_def : output3940 = (.seq output3939 output3928) := by
  unfold output3940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3940_skip : Flapjack.WordAlloc.isSkip output3940 = false := by
  rw [output3940_def]
  conv => lhs; cbv
  try rfl
theorem node3940_eq : Flapjack.WordAlloc.removeDeadStructural input3940 value714 value1 value2 = (output3940, value718, value1) := by
  rw [input3940_def, output3940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3928_eq]
  try dsimp only
  rw [node3939_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3940 input3927)).val
theorem input3941_def : input3941 = (.seq input3940 input3927) := by
  unfold input3941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3940 output3927)).val
theorem output3941_def : output3941 = (.seq output3940 output3927) := by
  unfold output3941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3941_skip : Flapjack.WordAlloc.isSkip output3941 = false := by
  rw [output3941_def]
  conv => lhs; cbv
  try rfl
theorem node3941_eq : Flapjack.WordAlloc.removeDeadStructural input3941 value716 value1 value2 = (output3941, value718, value1) := by
  rw [input3941_def, output3941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3927_eq]
  try dsimp only
  rw [node3940_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3941 input3926)).val
theorem input3942_def : input3942 = (.seq input3941 input3926) := by
  unfold input3942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3941 output3926)).val
theorem output3942_def : output3942 = (.seq output3941 output3926) := by
  unfold output3942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3942_skip : Flapjack.WordAlloc.isSkip output3942 = false := by
  rw [output3942_def]
  conv => lhs; cbv
  try rfl
theorem node3942_eq : Flapjack.WordAlloc.removeDeadStructural input3942 value714 value1 value2 = (output3942, value718, value1) := by
  rw [input3942_def, output3942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3926_eq]
  try dsimp only
  rw [node3941_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3942 input3923)).val
theorem input3943_def : input3943 = (.seq input3942 input3923) := by
  unfold input3943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3942 output3923)).val
theorem output3943_def : output3943 = (.seq output3942 output3923) := by
  unfold output3943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3943_skip : Flapjack.WordAlloc.isSkip output3943 = false := by
  rw [output3943_def]
  conv => lhs; cbv
  try rfl
theorem node3943_eq : Flapjack.WordAlloc.removeDeadStructural input3943 value713 value1 value2 = (output3943, value718, value1) := by
  rw [input3943_def, output3943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3923_eq]
  try dsimp only
  rw [node3942_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(521, 449)])).val
theorem input3944_def : input3944 = (Flapjack.WordLangProgHOL.move 2 [(521, 449)]) := by
  unfold input3944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3944_def : output3944 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3944_skip : Flapjack.WordAlloc.isSkip output3944 = true := by
  rw [output3944_def]
  conv => lhs; cbv
  try rfl
theorem node3944_eq : Flapjack.WordAlloc.removeDeadStructural input3944 value713 value1 value2 = (output3944, value713, value1) := by
  rw [input3944_def, output3944_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(517, 457)])).val
theorem input3945_def : input3945 = (Flapjack.WordLangProgHOL.move 2 [(517, 457)]) := by
  unfold input3945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3945_def : output3945 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3945_skip : Flapjack.WordAlloc.isSkip output3945 = true := by
  rw [output3945_def]
  conv => lhs; cbv
  try rfl
theorem node3945_eq : Flapjack.WordAlloc.removeDeadStructural input3945 value713 value1 value2 = (output3945, value713, value1) := by
  rw [input3945_def, output3945_def]
  try (conv => lhs; cbv)
  try rfl

def value719 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(513, 453)])).val
theorem input3946_def : input3946 = (Flapjack.WordLangProgHOL.move 2 [(513, 453)]) := by
  unfold input3946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(513, 453)])).val
theorem output3946_def : output3946 = (Flapjack.WordLangProgHOL.move 2 [(513, 453)]) := by
  unfold output3946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3946_skip : Flapjack.WordAlloc.isSkip output3946 = false := by
  rw [output3946_def]
  conv => lhs; cbv
  try rfl
theorem node3946_eq : Flapjack.WordAlloc.removeDeadStructural input3946 value713 value1 value2 = (output3946, value719, value1) := by
  rw [input3946_def, output3946_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3947_def : input3947 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3947_def : output3947 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3947_skip : Flapjack.WordAlloc.isSkip output3947 = true := by
  rw [output3947_def]
  conv => lhs; cbv
  try rfl
theorem node3947_eq : Flapjack.WordAlloc.removeDeadStructural input3947 value719 value1 value2 = (output3947, value719, value1) := by
  rw [input3947_def, output3947_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3947 input3946)).val
theorem input3948_def : input3948 = (.seq input3947 input3946) := by
  unfold input3948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3946)).val
theorem output3948_def : output3948 = (output3946) := by
  unfold output3948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3948_skip : Flapjack.WordAlloc.isSkip output3948 = false := by
  rw [output3948_def]
  conv => lhs; cbv
  try rfl
theorem node3948_eq : Flapjack.WordAlloc.removeDeadStructural input3948 value713 value1 value2 = (output3948, value719, value1) := by
  rw [input3948_def, output3948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3946_eq]
  try dsimp only
  rw [node3947_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3948 input3945)).val
theorem input3949_def : input3949 = (.seq input3948 input3945) := by
  unfold input3949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3948)).val
theorem output3949_def : output3949 = (output3948) := by
  unfold output3949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3949_skip : Flapjack.WordAlloc.isSkip output3949 = false := by
  rw [output3949_def]
  conv => lhs; cbv
  try rfl
theorem node3949_eq : Flapjack.WordAlloc.removeDeadStructural input3949 value713 value1 value2 = (output3949, value719, value1) := by
  rw [input3949_def, output3949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3945_eq]
  try dsimp only
  rw [node3948_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3949 input3944)).val
theorem input3950_def : input3950 = (.seq input3949 input3944) := by
  unfold input3950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3949)).val
theorem output3950_def : output3950 = (output3949) := by
  unfold output3950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3950_skip : Flapjack.WordAlloc.isSkip output3950 = false := by
  rw [output3950_def]
  conv => lhs; cbv
  try rfl
theorem node3950_eq : Flapjack.WordAlloc.removeDeadStructural input3950 value713 value1 value2 = (output3950, value719, value1) := by
  rw [input3950_def, output3950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3944_eq]
  try dsimp only
  rw [node3949_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value720 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(509, 429), (505, 453), (501, 421)])).val
theorem input3951_def : input3951 = (Flapjack.WordLangProgHOL.move 2 [(509, 429), (505, 453), (501, 421)]) := by
  unfold input3951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(509, 429)])).val
theorem output3951_def : output3951 = (Flapjack.WordLangProgHOL.move 2 [(509, 429)]) := by
  unfold output3951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3951_skip : Flapjack.WordAlloc.isSkip output3951 = false := by
  rw [output3951_def]
  conv => lhs; cbv
  try rfl
theorem node3951_eq : Flapjack.WordAlloc.removeDeadStructural input3951 value719 value1 value2 = (output3951, value720, value1) := by
  rw [input3951_def, output3951_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3951 input3950)).val
theorem input3952_def : input3952 = (.seq input3951 input3950) := by
  unfold input3952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3951 output3950)).val
theorem output3952_def : output3952 = (.seq output3951 output3950) := by
  unfold output3952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3952_skip : Flapjack.WordAlloc.isSkip output3952 = false := by
  rw [output3952_def]
  conv => lhs; cbv
  try rfl
theorem node3952_eq : Flapjack.WordAlloc.removeDeadStructural input3952 value713 value1 value2 = (output3952, value720, value1) := by
  rw [input3952_def, output3952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3950_eq]
  try dsimp only
  rw [node3951_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3953_def : input3953 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3953_def : output3953 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3953_skip : Flapjack.WordAlloc.isSkip output3953 = true := by
  rw [output3953_def]
  conv => lhs; cbv
  try rfl
theorem node3953_eq : Flapjack.WordAlloc.removeDeadStructural input3953 value720 value1 value2 = (output3953, value720, value1) := by
  rw [input3953_def, output3953_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3953 input3952)).val
theorem input3954_def : input3954 = (.seq input3953 input3952) := by
  unfold input3954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3952)).val
theorem output3954_def : output3954 = (output3952) := by
  unfold output3954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3954_skip : Flapjack.WordAlloc.isSkip output3954 = false := by
  rw [output3954_def]
  conv => lhs; cbv
  try rfl
theorem node3954_eq : Flapjack.WordAlloc.removeDeadStructural input3954 value713 value1 value2 = (output3954, value720, value1) := by
  rw [input3954_def, output3954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3952_eq]
  try dsimp only
  rw [node3953_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value721 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 457

def value722 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 453 value721 input3943 input3954)).val
theorem input3955_def : input3955 = (.ite value15 453 value721 input3943 input3954) := by
  unfold input3955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 453 value721 output3943 output3954)).val
theorem output3955_def : output3955 = (.ite value15 453 value721 output3943 output3954) := by
  unfold output3955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3955_skip : Flapjack.WordAlloc.isSkip output3955 = false := by
  rw [output3955_def]
  conv => lhs; cbv
  try rfl
theorem node3955_eq : Flapjack.WordAlloc.removeDeadStructural input3955 value713 value1 value2 = (output3955, value722, value1) := by
  rw [input3955_def, output3955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node3943_eq]
  try dsimp only
  rw [node3954_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3955 input3914)).val
theorem input3956_def : input3956 = (.seq input3955 input3914) := by
  unfold input3956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3955 output3914)).val
theorem output3956_def : output3956 = (.seq output3955 output3914) := by
  unfold output3956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3956_skip : Flapjack.WordAlloc.isSkip output3956 = false := by
  rw [output3956_def]
  conv => lhs; cbv
  try rfl
theorem node3956_eq : Flapjack.WordAlloc.removeDeadStructural input3956 value713 value1 value2 = (output3956, value722, value1) := by
  rw [input3956_def, output3956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3914_eq]
  try dsimp only
  rw [node3955_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 457 5#64))).val
theorem input3957_def : input3957 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 457 5#64)) := by
  unfold input3957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 457 5#64))).val
theorem output3957_def : output3957 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 457 5#64)) := by
  unfold output3957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3957_skip : Flapjack.WordAlloc.isSkip output3957 = false := by
  rw [output3957_def]
  conv => lhs; cbv
  try rfl
theorem node3957_eq : Flapjack.WordAlloc.removeDeadStructural input3957 value722 value1 value2 = (output3957, value720, value1) := by
  rw [input3957_def, output3957_def]
  try (conv => lhs; cbv)
  try rfl

def value723 : Flapjack.NumSet :=
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
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(453, 433)])).val
theorem input3958_def : input3958 = (Flapjack.WordLangProgHOL.move 0 [(453, 433)]) := by
  unfold input3958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(453, 433)])).val
theorem output3958_def : output3958 = (Flapjack.WordLangProgHOL.move 0 [(453, 433)]) := by
  unfold output3958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3958_skip : Flapjack.WordAlloc.isSkip output3958 = false := by
  rw [output3958_def]
  conv => lhs; cbv
  try rfl
theorem node3958_eq : Flapjack.WordAlloc.removeDeadStructural input3958 value720 value1 value2 = (output3958, value723, value1) := by
  rw [input3958_def, output3958_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3959_def : input3959 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3959_def : output3959 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3959_skip : Flapjack.WordAlloc.isSkip output3959 = false := by
  rw [output3959_def]
  conv => lhs; cbv
  try rfl
theorem node3959_eq : Flapjack.WordAlloc.removeDeadStructural input3959 value723 value1 value2 = (output3959, value723, value1) := by
  rw [input3959_def, output3959_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 0#64))).val
theorem input3960_def : input3960 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 0#64)) := by
  unfold input3960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3960_def : output3960 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3960_skip : Flapjack.WordAlloc.isSkip output3960 = true := by
  rw [output3960_def]
  conv => lhs; cbv
  try rfl
theorem node3960_eq : Flapjack.WordAlloc.removeDeadStructural input3960 value723 value1 value2 = (output3960, value723, value1) := by
  rw [input3960_def, output3960_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3961_def : input3961 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3961_def : output3961 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3961_skip : Flapjack.WordAlloc.isSkip output3961 = false := by
  rw [output3961_def]
  conv => lhs; cbv
  try rfl
theorem node3961_eq : Flapjack.WordAlloc.removeDeadStructural input3961 value723 value1 value2 = (output3961, value723, value1) := by
  rw [input3961_def, output3961_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 445 0#64))).val
theorem input3962_def : input3962 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 445 0#64)) := by
  unfold input3962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3962_def : output3962 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3962_skip : Flapjack.WordAlloc.isSkip output3962 = true := by
  rw [output3962_def]
  conv => lhs; cbv
  try rfl
theorem node3962_eq : Flapjack.WordAlloc.removeDeadStructural input3962 value723 value1 value2 = (output3962, value723, value1) := by
  rw [input3962_def, output3962_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3962 input3961)).val
theorem input3963_def : input3963 = (.seq input3962 input3961) := by
  unfold input3963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3961)).val
theorem output3963_def : output3963 = (output3961) := by
  unfold output3963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3963_skip : Flapjack.WordAlloc.isSkip output3963 = false := by
  rw [output3963_def]
  conv => lhs; cbv
  try rfl
theorem node3963_eq : Flapjack.WordAlloc.removeDeadStructural input3963 value723 value1 value2 = (output3963, value723, value1) := by
  rw [input3963_def, output3963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3961_eq]
  try dsimp only
  rw [node3962_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3963 input3960)).val
theorem input3964_def : input3964 = (.seq input3963 input3960) := by
  unfold input3964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3963)).val
theorem output3964_def : output3964 = (output3963) := by
  unfold output3964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3964_skip : Flapjack.WordAlloc.isSkip output3964 = false := by
  rw [output3964_def]
  conv => lhs; cbv
  try rfl
theorem node3964_eq : Flapjack.WordAlloc.removeDeadStructural input3964 value723 value1 value2 = (output3964, value723, value1) := by
  rw [input3964_def, output3964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3960_eq]
  try dsimp only
  rw [node3963_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 0#64))).val
theorem input3965_def : input3965 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 0#64)) := by
  unfold input3965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3965_def : output3965 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3965_skip : Flapjack.WordAlloc.isSkip output3965 = true := by
  rw [output3965_def]
  conv => lhs; cbv
  try rfl
theorem node3965_eq : Flapjack.WordAlloc.removeDeadStructural input3965 value723 value1 value2 = (output3965, value723, value1) := by
  rw [input3965_def, output3965_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 437 0#64))).val
theorem input3966_def : input3966 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 437 0#64)) := by
  unfold input3966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3966_def : output3966 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3966_skip : Flapjack.WordAlloc.isSkip output3966 = true := by
  rw [output3966_def]
  conv => lhs; cbv
  try rfl
theorem node3966_eq : Flapjack.WordAlloc.removeDeadStructural input3966 value723 value1 value2 = (output3966, value723, value1) := by
  rw [input3966_def, output3966_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 433 0#64))).val
theorem input3967_def : input3967 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 433 0#64)) := by
  unfold input3967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 433 0#64))).val
theorem output3967_def : output3967 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 433 0#64)) := by
  unfold output3967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3967_skip : Flapjack.WordAlloc.isSkip output3967 = false := by
  rw [output3967_def]
  conv => lhs; cbv
  try rfl
theorem node3967_eq : Flapjack.WordAlloc.removeDeadStructural input3967 value723 value1 value2 = (output3967, value718, value1) := by
  rw [input3967_def, output3967_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3968_def : input3968 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3968_def : output3968 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3968_skip : Flapjack.WordAlloc.isSkip output3968 = true := by
  rw [output3968_def]
  conv => lhs; cbv
  try rfl
theorem node3968_eq : Flapjack.WordAlloc.removeDeadStructural input3968 value718 value1 value2 = (output3968, value718, value1) := by
  rw [input3968_def, output3968_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3968 input3967)).val
theorem input3969_def : input3969 = (.seq input3968 input3967) := by
  unfold input3969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3967)).val
theorem output3969_def : output3969 = (output3967) := by
  unfold output3969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3969_skip : Flapjack.WordAlloc.isSkip output3969 = false := by
  rw [output3969_def]
  conv => lhs; cbv
  try rfl
theorem node3969_eq : Flapjack.WordAlloc.removeDeadStructural input3969 value723 value1 value2 = (output3969, value718, value1) := by
  rw [input3969_def, output3969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3967_eq]
  try dsimp only
  rw [node3968_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3969 input3966)).val
theorem input3970_def : input3970 = (.seq input3969 input3966) := by
  unfold input3970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3969)).val
theorem output3970_def : output3970 = (output3969) := by
  unfold output3970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3970_skip : Flapjack.WordAlloc.isSkip output3970 = false := by
  rw [output3970_def]
  conv => lhs; cbv
  try rfl
theorem node3970_eq : Flapjack.WordAlloc.removeDeadStructural input3970 value723 value1 value2 = (output3970, value718, value1) := by
  rw [input3970_def, output3970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3966_eq]
  try dsimp only
  rw [node3969_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3970 input3965)).val
theorem input3971_def : input3971 = (.seq input3970 input3965) := by
  unfold input3971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3970)).val
theorem output3971_def : output3971 = (output3970) := by
  unfold output3971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3971_skip : Flapjack.WordAlloc.isSkip output3971 = false := by
  rw [output3971_def]
  conv => lhs; cbv
  try rfl
theorem node3971_eq : Flapjack.WordAlloc.removeDeadStructural input3971 value723 value1 value2 = (output3971, value718, value1) := by
  rw [input3971_def, output3971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3965_eq]
  try dsimp only
  rw [node3970_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value724 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(429, 397), (425, 413), (421, 417)])).val
theorem input3972_def : input3972 = (Flapjack.WordLangProgHOL.move 1 [(429, 397), (425, 413), (421, 417)]) := by
  unfold input3972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(429, 397)])).val
theorem output3972_def : output3972 = (Flapjack.WordLangProgHOL.move 1 [(429, 397)]) := by
  unfold output3972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3972_skip : Flapjack.WordAlloc.isSkip output3972 = false := by
  rw [output3972_def]
  conv => lhs; cbv
  try rfl
theorem node3972_eq : Flapjack.WordAlloc.removeDeadStructural input3972 value718 value1 value2 = (output3972, value724, value1) := by
  rw [input3972_def, output3972_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3972 input3971)).val
theorem input3973_def : input3973 = (.seq input3972 input3971) := by
  unfold input3973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3972 output3971)).val
theorem output3973_def : output3973 = (.seq output3972 output3971) := by
  unfold output3973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3973_skip : Flapjack.WordAlloc.isSkip output3973 = false := by
  rw [output3973_def]
  conv => lhs; cbv
  try rfl
theorem node3973_eq : Flapjack.WordAlloc.removeDeadStructural input3973 value723 value1 value2 = (output3973, value724, value1) := by
  rw [input3973_def, output3973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3971_eq]
  try dsimp only
  rw [node3972_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value725 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 397 [2])).val
theorem input3974_def : input3974 = (Flapjack.WordLangProgHOL.return 397 [2]) := by
  unfold input3974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 397 [2])).val
theorem output3974_def : output3974 = (Flapjack.WordLangProgHOL.return 397 [2]) := by
  unfold output3974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3974_skip : Flapjack.WordAlloc.isSkip output3974 = false := by
  rw [output3974_def]
  conv => lhs; cbv
  try rfl
theorem node3974_eq : Flapjack.WordAlloc.removeDeadStructural input3974 value724 value1 value2 = (output3974, value725, value1) := by
  rw [input3974_def, output3974_def]
  try (conv => lhs; cbv)
  try rfl

def value726 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 417)])).val
theorem input3975_def : input3975 = (Flapjack.WordLangProgHOL.move 0 [(2, 417)]) := by
  unfold input3975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 417)])).val
theorem output3975_def : output3975 = (Flapjack.WordLangProgHOL.move 0 [(2, 417)]) := by
  unfold output3975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3975_skip : Flapjack.WordAlloc.isSkip output3975 = false := by
  rw [output3975_def]
  conv => lhs; cbv
  try rfl
theorem node3975_eq : Flapjack.WordAlloc.removeDeadStructural input3975 value725 value1 value2 = (output3975, value726, value1) := by
  rw [input3975_def, output3975_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3975 input3974)).val
theorem input3976_def : input3976 = (.seq input3975 input3974) := by
  unfold input3976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3975 output3974)).val
theorem output3976_def : output3976 = (.seq output3975 output3974) := by
  unfold output3976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3976_skip : Flapjack.WordAlloc.isSkip output3976 = false := by
  rw [output3976_def]
  conv => lhs; cbv
  try rfl
theorem node3976_eq : Flapjack.WordAlloc.removeDeadStructural input3976 value724 value1 value2 = (output3976, value726, value1) := by
  rw [input3976_def, output3976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3974_eq]
  try dsimp only
  rw [node3975_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 417 0#64))).val
theorem input3977_def : input3977 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 417 0#64)) := by
  unfold input3977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 417 0#64))).val
theorem output3977_def : output3977 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 417 0#64)) := by
  unfold output3977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3977_skip : Flapjack.WordAlloc.isSkip output3977 = false := by
  rw [output3977_def]
  conv => lhs; cbv
  try rfl
theorem node3977_eq : Flapjack.WordAlloc.removeDeadStructural input3977 value726 value1 value2 = (output3977, value724, value1) := by
  rw [input3977_def, output3977_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3978_def : input3978 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3978_def : output3978 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3978_skip : Flapjack.WordAlloc.isSkip output3978 = false := by
  rw [output3978_def]
  conv => lhs; cbv
  try rfl
theorem node3978_eq : Flapjack.WordAlloc.removeDeadStructural input3978 value724 value1 value2 = (output3978, value724, value1) := by
  rw [input3978_def, output3978_def]
  try (conv => lhs; cbv)
  try rfl

def value727 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        Flapjack.Spt.ln)))

@[irreducible, cbv_opaque] def input3979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(397, 391)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(401, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(409, 401)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 0#64)))),
      597, 10))
  (some 502) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(397, 391)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(405, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 405)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(413, 405)]))),
      597, 11)))).val
theorem input3979_def : input3979 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(397, 391)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(401, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(409, 401)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 0#64)))),
      597, 10))
  (some 502) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(397, 391)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(405, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 405)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(413, 405)]))),
      597, 11))) := by
  unfold input3979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(397, 391)], 597, 10))
  (some 502) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(397, 391)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(405, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 405)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 11)))).val
theorem output3979_def : output3979 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(397, 391)], 597, 10))
  (some 502) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(397, 391)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(405, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 405)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 11))) := by
  unfold output3979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3979_skip : Flapjack.WordAlloc.isSkip output3979 = false := by
  rw [output3979_def]
  conv => lhs; cbv
  try rfl
theorem node3979_eq : Flapjack.WordAlloc.removeDeadStructural input3979 value724 value1 value2 = (output3979, value727, value1) := by
  rw [input3979_def, output3979_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input3980_def : input3980 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input3980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3980_def : output3980 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3980_skip : Flapjack.WordAlloc.isSkip output3980 = true := by
  rw [output3980_def]
  conv => lhs; cbv
  try rfl
theorem node3980_eq : Flapjack.WordAlloc.removeDeadStructural input3980 value727 value1 value2 = (output3980, value727, value1) := by
  rw [input3980_def, output3980_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3980 input3979)).val
theorem input3981_def : input3981 = (.seq input3980 input3979) := by
  unfold input3981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3979)).val
theorem output3981_def : output3981 = (output3979) := by
  unfold output3981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3981_skip : Flapjack.WordAlloc.isSkip output3981 = false := by
  rw [output3981_def]
  conv => lhs; cbv
  try rfl
theorem node3981_eq : Flapjack.WordAlloc.removeDeadStructural input3981 value724 value1 value2 = (output3981, value727, value1) := by
  rw [input3981_def, output3981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3979_eq]
  try dsimp only
  rw [node3980_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value728 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(391, 349)])).val
theorem input3982_def : input3982 = (Flapjack.WordLangProgHOL.move 0 [(391, 349)]) := by
  unfold input3982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(391, 349)])).val
theorem output3982_def : output3982 = (Flapjack.WordLangProgHOL.move 0 [(391, 349)]) := by
  unfold output3982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3982_skip : Flapjack.WordAlloc.isSkip output3982 = false := by
  rw [output3982_def]
  conv => lhs; cbv
  try rfl
theorem node3982_eq : Flapjack.WordAlloc.removeDeadStructural input3982 value727 value1 value2 = (output3982, value728, value1) := by
  rw [input3982_def, output3982_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3982 input3981)).val
theorem input3983_def : input3983 = (.seq input3982 input3981) := by
  unfold input3983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3982 output3981)).val
theorem output3983_def : output3983 = (.seq output3982 output3981) := by
  unfold output3983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3983_skip : Flapjack.WordAlloc.isSkip output3983 = false := by
  rw [output3983_def]
  conv => lhs; cbv
  try rfl
theorem node3983_eq : Flapjack.WordAlloc.removeDeadStructural input3983 value724 value1 value2 = (output3983, value728, value1) := by
  rw [input3983_def, output3983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3981_eq]
  try dsimp only
  rw [node3982_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 385 1#64))).val
theorem input3984_def : input3984 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 385 1#64)) := by
  unfold input3984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3984_def : output3984 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3984_skip : Flapjack.WordAlloc.isSkip output3984 = true := by
  rw [output3984_def]
  conv => lhs; cbv
  try rfl
theorem node3984_eq : Flapjack.WordAlloc.removeDeadStructural input3984 value728 value1 value2 = (output3984, value728, value1) := by
  rw [input3984_def, output3984_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3985_def : input3985 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3985_def : output3985 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3985_skip : Flapjack.WordAlloc.isSkip output3985 = false := by
  rw [output3985_def]
  conv => lhs; cbv
  try rfl
theorem node3985_eq : Flapjack.WordAlloc.removeDeadStructural input3985 value728 value1 value2 = (output3985, value728, value1) := by
  rw [input3985_def, output3985_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 381 1#64))).val
theorem input3986_def : input3986 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 381 1#64)) := by
  unfold input3986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3986_def : output3986 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3986_skip : Flapjack.WordAlloc.isSkip output3986 = true := by
  rw [output3986_def]
  conv => lhs; cbv
  try rfl
theorem node3986_eq : Flapjack.WordAlloc.removeDeadStructural input3986 value728 value1 value2 = (output3986, value728, value1) := by
  rw [input3986_def, output3986_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3986 input3985)).val
theorem input3987_def : input3987 = (.seq input3986 input3985) := by
  unfold input3987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3985)).val
theorem output3987_def : output3987 = (output3985) := by
  unfold output3987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3987_skip : Flapjack.WordAlloc.isSkip output3987 = false := by
  rw [output3987_def]
  conv => lhs; cbv
  try rfl
theorem node3987_eq : Flapjack.WordAlloc.removeDeadStructural input3987 value728 value1 value2 = (output3987, value728, value1) := by
  rw [input3987_def, output3987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3985_eq]
  try dsimp only
  rw [node3986_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3987 input3984)).val
theorem input3988_def : input3988 = (.seq input3987 input3984) := by
  unfold input3988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3987)).val
theorem output3988_def : output3988 = (output3987) := by
  unfold output3988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3988_skip : Flapjack.WordAlloc.isSkip output3988 = false := by
  rw [output3988_def]
  conv => lhs; cbv
  try rfl
theorem node3988_eq : Flapjack.WordAlloc.removeDeadStructural input3988 value728 value1 value2 = (output3988, value728, value1) := by
  rw [input3988_def, output3988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3984_eq]
  try dsimp only
  rw [node3987_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3988 input3983)).val
theorem input3989_def : input3989 = (.seq input3988 input3983) := by
  unfold input3989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3988 output3983)).val
theorem output3989_def : output3989 = (.seq output3988 output3983) := by
  unfold output3989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3989_skip : Flapjack.WordAlloc.isSkip output3989 = false := by
  rw [output3989_def]
  conv => lhs; cbv
  try rfl
theorem node3989_eq : Flapjack.WordAlloc.removeDeadStructural input3989 value724 value1 value2 = (output3989, value728, value1) := by
  rw [input3989_def, output3989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3983_eq]
  try dsimp only
  rw [node3988_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3989 input3978)).val
theorem input3990_def : input3990 = (.seq input3989 input3978) := by
  unfold input3990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3989 output3978)).val
theorem output3990_def : output3990 = (.seq output3989 output3978) := by
  unfold output3990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3990_skip : Flapjack.WordAlloc.isSkip output3990 = false := by
  rw [output3990_def]
  conv => lhs; cbv
  try rfl
theorem node3990_eq : Flapjack.WordAlloc.removeDeadStructural input3990 value724 value1 value2 = (output3990, value728, value1) := by
  rw [input3990_def, output3990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3978_eq]
  try dsimp only
  rw [node3989_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3990 input3977)).val
theorem input3991_def : input3991 = (.seq input3990 input3977) := by
  unfold input3991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3990 output3977)).val
theorem output3991_def : output3991 = (.seq output3990 output3977) := by
  unfold output3991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3991_skip : Flapjack.WordAlloc.isSkip output3991 = false := by
  rw [output3991_def]
  conv => lhs; cbv
  try rfl
theorem node3991_eq : Flapjack.WordAlloc.removeDeadStructural input3991 value726 value1 value2 = (output3991, value728, value1) := by
  rw [input3991_def, output3991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3977_eq]
  try dsimp only
  rw [node3990_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3991 input3976)).val
theorem input3992_def : input3992 = (.seq input3991 input3976) := by
  unfold input3992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3991 output3976)).val
theorem output3992_def : output3992 = (.seq output3991 output3976) := by
  unfold output3992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3992_skip : Flapjack.WordAlloc.isSkip output3992 = false := by
  rw [output3992_def]
  conv => lhs; cbv
  try rfl
theorem node3992_eq : Flapjack.WordAlloc.removeDeadStructural input3992 value724 value1 value2 = (output3992, value728, value1) := by
  rw [input3992_def, output3992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3976_eq]
  try dsimp only
  rw [node3991_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3992 input3973)).val
theorem input3993_def : input3993 = (.seq input3992 input3973) := by
  unfold input3993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3992 output3973)).val
theorem output3993_def : output3993 = (.seq output3992 output3973) := by
  unfold output3993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3993_skip : Flapjack.WordAlloc.isSkip output3993 = false := by
  rw [output3993_def]
  conv => lhs; cbv
  try rfl
theorem node3993_eq : Flapjack.WordAlloc.removeDeadStructural input3993 value723 value1 value2 = (output3993, value728, value1) := by
  rw [input3993_def, output3993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3973_eq]
  try dsimp only
  rw [node3992_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(441, 369)])).val
theorem input3994_def : input3994 = (Flapjack.WordLangProgHOL.move 2 [(441, 369)]) := by
  unfold input3994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3994_def : output3994 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3994_skip : Flapjack.WordAlloc.isSkip output3994 = true := by
  rw [output3994_def]
  conv => lhs; cbv
  try rfl
theorem node3994_eq : Flapjack.WordAlloc.removeDeadStructural input3994 value723 value1 value2 = (output3994, value723, value1) := by
  rw [input3994_def, output3994_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(437, 377)])).val
theorem input3995_def : input3995 = (Flapjack.WordLangProgHOL.move 2 [(437, 377)]) := by
  unfold input3995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3995_def : output3995 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3995_skip : Flapjack.WordAlloc.isSkip output3995 = true := by
  rw [output3995_def]
  conv => lhs; cbv
  try rfl
theorem node3995_eq : Flapjack.WordAlloc.removeDeadStructural input3995 value723 value1 value2 = (output3995, value723, value1) := by
  rw [input3995_def, output3995_def]
  try (conv => lhs; cbv)
  try rfl

def value729 : Flapjack.NumSet :=
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
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(433, 373)])).val
theorem input3996_def : input3996 = (Flapjack.WordLangProgHOL.move 2 [(433, 373)]) := by
  unfold input3996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(433, 373)])).val
theorem output3996_def : output3996 = (Flapjack.WordLangProgHOL.move 2 [(433, 373)]) := by
  unfold output3996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3996_skip : Flapjack.WordAlloc.isSkip output3996 = false := by
  rw [output3996_def]
  conv => lhs; cbv
  try rfl
theorem node3996_eq : Flapjack.WordAlloc.removeDeadStructural input3996 value723 value1 value2 = (output3996, value729, value1) := by
  rw [input3996_def, output3996_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3997_def : input3997 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3997_def : output3997 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3997_skip : Flapjack.WordAlloc.isSkip output3997 = true := by
  rw [output3997_def]
  conv => lhs; cbv
  try rfl
theorem node3997_eq : Flapjack.WordAlloc.removeDeadStructural input3997 value729 value1 value2 = (output3997, value729, value1) := by
  rw [input3997_def, output3997_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3997 input3996)).val
theorem input3998_def : input3998 = (.seq input3997 input3996) := by
  unfold input3998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3996)).val
theorem output3998_def : output3998 = (output3996) := by
  unfold output3998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3998_skip : Flapjack.WordAlloc.isSkip output3998 = false := by
  rw [output3998_def]
  conv => lhs; cbv
  try rfl
theorem node3998_eq : Flapjack.WordAlloc.removeDeadStructural input3998 value723 value1 value2 = (output3998, value729, value1) := by
  rw [input3998_def, output3998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3996_eq]
  try dsimp only
  rw [node3997_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3998 input3995)).val
theorem input3999_def : input3999 = (.seq input3998 input3995) := by
  unfold input3999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3998)).val
theorem output3999_def : output3999 = (output3998) := by
  unfold output3999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3999_skip : Flapjack.WordAlloc.isSkip output3999 = false := by
  rw [output3999_def]
  conv => lhs; cbv
  try rfl
theorem node3999_eq : Flapjack.WordAlloc.removeDeadStructural input3999 value723 value1 value2 = (output3999, value729, value1) := by
  rw [input3999_def, output3999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3995_eq]
  try dsimp only
  rw [node3998_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3999 input3994)).val
theorem input4000_def : input4000 = (.seq input3999 input3994) := by
  unfold input4000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3999)).val
theorem output4000_def : output4000 = (output3999) := by
  unfold output4000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4000_skip : Flapjack.WordAlloc.isSkip output4000 = false := by
  rw [output4000_def]
  conv => lhs; cbv
  try rfl
theorem node4000_eq : Flapjack.WordAlloc.removeDeadStructural input4000 value723 value1 value2 = (output4000, value729, value1) := by
  rw [input4000_def, output4000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3994_eq]
  try dsimp only
  rw [node3999_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value730 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(429, 349), (425, 373), (421, 341)])).val
theorem input4001_def : input4001 = (Flapjack.WordLangProgHOL.move 2 [(429, 349), (425, 373), (421, 341)]) := by
  unfold input4001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(429, 349)])).val
theorem output4001_def : output4001 = (Flapjack.WordLangProgHOL.move 2 [(429, 349)]) := by
  unfold output4001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4001_skip : Flapjack.WordAlloc.isSkip output4001 = false := by
  rw [output4001_def]
  conv => lhs; cbv
  try rfl
theorem node4001_eq : Flapjack.WordAlloc.removeDeadStructural input4001 value729 value1 value2 = (output4001, value730, value1) := by
  rw [input4001_def, output4001_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4001 input4000)).val
theorem input4002_def : input4002 = (.seq input4001 input4000) := by
  unfold input4002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4001 output4000)).val
theorem output4002_def : output4002 = (.seq output4001 output4000) := by
  unfold output4002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4002_skip : Flapjack.WordAlloc.isSkip output4002 = false := by
  rw [output4002_def]
  conv => lhs; cbv
  try rfl
theorem node4002_eq : Flapjack.WordAlloc.removeDeadStructural input4002 value723 value1 value2 = (output4002, value730, value1) := by
  rw [input4002_def, output4002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4000_eq]
  try dsimp only
  rw [node4001_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4003_def : input4003 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4003_def : output4003 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4003_skip : Flapjack.WordAlloc.isSkip output4003 = true := by
  rw [output4003_def]
  conv => lhs; cbv
  try rfl
theorem node4003_eq : Flapjack.WordAlloc.removeDeadStructural input4003 value730 value1 value2 = (output4003, value730, value1) := by
  rw [input4003_def, output4003_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4003 input4002)).val
theorem input4004_def : input4004 = (.seq input4003 input4002) := by
  unfold input4004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4002)).val
theorem output4004_def : output4004 = (output4002) := by
  unfold output4004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4004_skip : Flapjack.WordAlloc.isSkip output4004 = false := by
  rw [output4004_def]
  conv => lhs; cbv
  try rfl
theorem node4004_eq : Flapjack.WordAlloc.removeDeadStructural input4004 value723 value1 value2 = (output4004, value730, value1) := by
  rw [input4004_def, output4004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4002_eq]
  try dsimp only
  rw [node4003_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value731 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 377

def value732 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 373 value731 input3993 input4004)).val
theorem input4005_def : input4005 = (.ite value15 373 value731 input3993 input4004) := by
  unfold input4005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 373 value731 output3993 output4004)).val
theorem output4005_def : output4005 = (.ite value15 373 value731 output3993 output4004) := by
  unfold output4005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4005_skip : Flapjack.WordAlloc.isSkip output4005 = false := by
  rw [output4005_def]
  conv => lhs; cbv
  try rfl
theorem node4005_eq : Flapjack.WordAlloc.removeDeadStructural input4005 value723 value1 value2 = (output4005, value732, value1) := by
  rw [input4005_def, output4005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node3993_eq]
  try dsimp only
  rw [node4004_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4005 input3964)).val
theorem input4006_def : input4006 = (.seq input4005 input3964) := by
  unfold input4006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4005 output3964)).val
theorem output4006_def : output4006 = (.seq output4005 output3964) := by
  unfold output4006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4006_skip : Flapjack.WordAlloc.isSkip output4006 = false := by
  rw [output4006_def]
  conv => lhs; cbv
  try rfl
theorem node4006_eq : Flapjack.WordAlloc.removeDeadStructural input4006 value723 value1 value2 = (output4006, value732, value1) := by
  rw [input4006_def, output4006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3964_eq]
  try dsimp only
  rw [node4005_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 377 4#64))).val
theorem input4007_def : input4007 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 377 4#64)) := by
  unfold input4007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 377 4#64))).val
theorem output4007_def : output4007 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 377 4#64)) := by
  unfold output4007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4007_skip : Flapjack.WordAlloc.isSkip output4007 = false := by
  rw [output4007_def]
  conv => lhs; cbv
  try rfl
theorem node4007_eq : Flapjack.WordAlloc.removeDeadStructural input4007 value732 value1 value2 = (output4007, value730, value1) := by
  rw [input4007_def, output4007_def]
  try (conv => lhs; cbv)
  try rfl

def value733 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(373, 353)])).val
theorem input4008_def : input4008 = (Flapjack.WordLangProgHOL.move 0 [(373, 353)]) := by
  unfold input4008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(373, 353)])).val
theorem output4008_def : output4008 = (Flapjack.WordLangProgHOL.move 0 [(373, 353)]) := by
  unfold output4008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4008_skip : Flapjack.WordAlloc.isSkip output4008 = false := by
  rw [output4008_def]
  conv => lhs; cbv
  try rfl
theorem node4008_eq : Flapjack.WordAlloc.removeDeadStructural input4008 value730 value1 value2 = (output4008, value733, value1) := by
  rw [input4008_def, output4008_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4009_def : input4009 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4009_def : output4009 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4009_skip : Flapjack.WordAlloc.isSkip output4009 = false := by
  rw [output4009_def]
  conv => lhs; cbv
  try rfl
theorem node4009_eq : Flapjack.WordAlloc.removeDeadStructural input4009 value733 value1 value2 = (output4009, value733, value1) := by
  rw [input4009_def, output4009_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 0#64))).val
theorem input4010_def : input4010 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 0#64)) := by
  unfold input4010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4010_def : output4010 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4010_skip : Flapjack.WordAlloc.isSkip output4010 = true := by
  rw [output4010_def]
  conv => lhs; cbv
  try rfl
theorem node4010_eq : Flapjack.WordAlloc.removeDeadStructural input4010 value733 value1 value2 = (output4010, value733, value1) := by
  rw [input4010_def, output4010_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4011_def : input4011 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4011_def : output4011 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4011_skip : Flapjack.WordAlloc.isSkip output4011 = false := by
  rw [output4011_def]
  conv => lhs; cbv
  try rfl
theorem node4011_eq : Flapjack.WordAlloc.removeDeadStructural input4011 value733 value1 value2 = (output4011, value733, value1) := by
  rw [input4011_def, output4011_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 365 0#64))).val
theorem input4012_def : input4012 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 365 0#64)) := by
  unfold input4012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4012_def : output4012 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4012_skip : Flapjack.WordAlloc.isSkip output4012 = true := by
  rw [output4012_def]
  conv => lhs; cbv
  try rfl
theorem node4012_eq : Flapjack.WordAlloc.removeDeadStructural input4012 value733 value1 value2 = (output4012, value733, value1) := by
  rw [input4012_def, output4012_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4012 input4011)).val
theorem input4013_def : input4013 = (.seq input4012 input4011) := by
  unfold input4013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4011)).val
theorem output4013_def : output4013 = (output4011) := by
  unfold output4013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4013_skip : Flapjack.WordAlloc.isSkip output4013 = false := by
  rw [output4013_def]
  conv => lhs; cbv
  try rfl
theorem node4013_eq : Flapjack.WordAlloc.removeDeadStructural input4013 value733 value1 value2 = (output4013, value733, value1) := by
  rw [input4013_def, output4013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4011_eq]
  try dsimp only
  rw [node4012_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4013 input4010)).val
theorem input4014_def : input4014 = (.seq input4013 input4010) := by
  unfold input4014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4013)).val
theorem output4014_def : output4014 = (output4013) := by
  unfold output4014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4014_skip : Flapjack.WordAlloc.isSkip output4014 = false := by
  rw [output4014_def]
  conv => lhs; cbv
  try rfl
theorem node4014_eq : Flapjack.WordAlloc.removeDeadStructural input4014 value733 value1 value2 = (output4014, value733, value1) := by
  rw [input4014_def, output4014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4010_eq]
  try dsimp only
  rw [node4013_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 361 0#64))).val
theorem input4015_def : input4015 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 361 0#64)) := by
  unfold input4015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4015_def : output4015 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4015_skip : Flapjack.WordAlloc.isSkip output4015 = true := by
  rw [output4015_def]
  conv => lhs; cbv
  try rfl
theorem node4015_eq : Flapjack.WordAlloc.removeDeadStructural input4015 value733 value1 value2 = (output4015, value733, value1) := by
  rw [input4015_def, output4015_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 357 0#64))).val
theorem input4016_def : input4016 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 357 0#64)) := by
  unfold input4016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4016_def : output4016 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4016_skip : Flapjack.WordAlloc.isSkip output4016 = true := by
  rw [output4016_def]
  conv => lhs; cbv
  try rfl
theorem node4016_eq : Flapjack.WordAlloc.removeDeadStructural input4016 value733 value1 value2 = (output4016, value733, value1) := by
  rw [input4016_def, output4016_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 353 0#64))).val
theorem input4017_def : input4017 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 353 0#64)) := by
  unfold input4017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 353 0#64))).val
theorem output4017_def : output4017 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 353 0#64)) := by
  unfold output4017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4017_skip : Flapjack.WordAlloc.isSkip output4017 = false := by
  rw [output4017_def]
  conv => lhs; cbv
  try rfl
theorem node4017_eq : Flapjack.WordAlloc.removeDeadStructural input4017 value733 value1 value2 = (output4017, value728, value1) := by
  rw [input4017_def, output4017_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4018_def : input4018 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4018_def : output4018 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4018_skip : Flapjack.WordAlloc.isSkip output4018 = true := by
  rw [output4018_def]
  conv => lhs; cbv
  try rfl
theorem node4018_eq : Flapjack.WordAlloc.removeDeadStructural input4018 value728 value1 value2 = (output4018, value728, value1) := by
  rw [input4018_def, output4018_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4018 input4017)).val
theorem input4019_def : input4019 = (.seq input4018 input4017) := by
  unfold input4019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4017)).val
theorem output4019_def : output4019 = (output4017) := by
  unfold output4019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4019_skip : Flapjack.WordAlloc.isSkip output4019 = false := by
  rw [output4019_def]
  conv => lhs; cbv
  try rfl
theorem node4019_eq : Flapjack.WordAlloc.removeDeadStructural input4019 value733 value1 value2 = (output4019, value728, value1) := by
  rw [input4019_def, output4019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4017_eq]
  try dsimp only
  rw [node4018_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4019 input4016)).val
theorem input4020_def : input4020 = (.seq input4019 input4016) := by
  unfold input4020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4019)).val
theorem output4020_def : output4020 = (output4019) := by
  unfold output4020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4020_skip : Flapjack.WordAlloc.isSkip output4020 = false := by
  rw [output4020_def]
  conv => lhs; cbv
  try rfl
theorem node4020_eq : Flapjack.WordAlloc.removeDeadStructural input4020 value733 value1 value2 = (output4020, value728, value1) := by
  rw [input4020_def, output4020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4016_eq]
  try dsimp only
  rw [node4019_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4020 input4015)).val
theorem input4021_def : input4021 = (.seq input4020 input4015) := by
  unfold input4021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4020)).val
theorem output4021_def : output4021 = (output4020) := by
  unfold output4021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4021_skip : Flapjack.WordAlloc.isSkip output4021 = false := by
  rw [output4021_def]
  conv => lhs; cbv
  try rfl
theorem node4021_eq : Flapjack.WordAlloc.removeDeadStructural input4021 value733 value1 value2 = (output4021, value728, value1) := by
  rw [input4021_def, output4021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4015_eq]
  try dsimp only
  rw [node4020_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value734 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(349, 317), (345, 333), (341, 337)])).val
theorem input4022_def : input4022 = (Flapjack.WordLangProgHOL.move 1 [(349, 317), (345, 333), (341, 337)]) := by
  unfold input4022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(349, 317)])).val
theorem output4022_def : output4022 = (Flapjack.WordLangProgHOL.move 1 [(349, 317)]) := by
  unfold output4022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4022_skip : Flapjack.WordAlloc.isSkip output4022 = false := by
  rw [output4022_def]
  conv => lhs; cbv
  try rfl
theorem node4022_eq : Flapjack.WordAlloc.removeDeadStructural input4022 value728 value1 value2 = (output4022, value734, value1) := by
  rw [input4022_def, output4022_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4022 input4021)).val
theorem input4023_def : input4023 = (.seq input4022 input4021) := by
  unfold input4023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4022 output4021)).val
theorem output4023_def : output4023 = (.seq output4022 output4021) := by
  unfold output4023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4023_skip : Flapjack.WordAlloc.isSkip output4023 = false := by
  rw [output4023_def]
  conv => lhs; cbv
  try rfl
theorem node4023_eq : Flapjack.WordAlloc.removeDeadStructural input4023 value733 value1 value2 = (output4023, value734, value1) := by
  rw [input4023_def, output4023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4021_eq]
  try dsimp only
  rw [node4022_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value735 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 317 [2])).val
theorem input4024_def : input4024 = (Flapjack.WordLangProgHOL.return 317 [2]) := by
  unfold input4024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 317 [2])).val
theorem output4024_def : output4024 = (Flapjack.WordLangProgHOL.return 317 [2]) := by
  unfold output4024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4024_skip : Flapjack.WordAlloc.isSkip output4024 = false := by
  rw [output4024_def]
  conv => lhs; cbv
  try rfl
theorem node4024_eq : Flapjack.WordAlloc.removeDeadStructural input4024 value734 value1 value2 = (output4024, value735, value1) := by
  rw [input4024_def, output4024_def]
  try (conv => lhs; cbv)
  try rfl

def value736 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 337)])).val
theorem input4025_def : input4025 = (Flapjack.WordLangProgHOL.move 0 [(2, 337)]) := by
  unfold input4025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 337)])).val
theorem output4025_def : output4025 = (Flapjack.WordLangProgHOL.move 0 [(2, 337)]) := by
  unfold output4025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4025_skip : Flapjack.WordAlloc.isSkip output4025 = false := by
  rw [output4025_def]
  conv => lhs; cbv
  try rfl
theorem node4025_eq : Flapjack.WordAlloc.removeDeadStructural input4025 value735 value1 value2 = (output4025, value736, value1) := by
  rw [input4025_def, output4025_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4025 input4024)).val
theorem input4026_def : input4026 = (.seq input4025 input4024) := by
  unfold input4026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4025 output4024)).val
theorem output4026_def : output4026 = (.seq output4025 output4024) := by
  unfold output4026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4026_skip : Flapjack.WordAlloc.isSkip output4026 = false := by
  rw [output4026_def]
  conv => lhs; cbv
  try rfl
theorem node4026_eq : Flapjack.WordAlloc.removeDeadStructural input4026 value734 value1 value2 = (output4026, value736, value1) := by
  rw [input4026_def, output4026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4024_eq]
  try dsimp only
  rw [node4025_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 337 0#64))).val
theorem input4027_def : input4027 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 337 0#64)) := by
  unfold input4027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 337 0#64))).val
theorem output4027_def : output4027 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 337 0#64)) := by
  unfold output4027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4027_skip : Flapjack.WordAlloc.isSkip output4027 = false := by
  rw [output4027_def]
  conv => lhs; cbv
  try rfl
theorem node4027_eq : Flapjack.WordAlloc.removeDeadStructural input4027 value736 value1 value2 = (output4027, value734, value1) := by
  rw [input4027_def, output4027_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4028_def : input4028 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4028_def : output4028 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4028_skip : Flapjack.WordAlloc.isSkip output4028 = false := by
  rw [output4028_def]
  conv => lhs; cbv
  try rfl
theorem node4028_eq : Flapjack.WordAlloc.removeDeadStructural input4028 value734 value1 value2 = (output4028, value734, value1) := by
  rw [input4028_def, output4028_def]
  try (conv => lhs; cbv)
  try rfl

def value737 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)))

@[irreducible, cbv_opaque] def input4029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(317, 311)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(321, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(329, 321)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)))),
      597, 8))
  (some 501) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(317, 311)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(325, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 325)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 329 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(333, 325)]))),
      597, 9)))).val
theorem input4029_def : input4029 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(317, 311)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(321, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(329, 321)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)))),
      597, 8))
  (some 501) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(317, 311)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(325, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 325)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 329 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(333, 325)]))),
      597, 9))) := by
  unfold input4029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(317, 311)], 597, 8))
  (some 501) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(317, 311)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(325, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 325)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 9)))).val
theorem output4029_def : output4029 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(317, 311)], 597, 8))
  (some 501) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(317, 311)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(325, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 325)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 9))) := by
  unfold output4029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4029_skip : Flapjack.WordAlloc.isSkip output4029 = false := by
  rw [output4029_def]
  conv => lhs; cbv
  try rfl
theorem node4029_eq : Flapjack.WordAlloc.removeDeadStructural input4029 value734 value1 value2 = (output4029, value737, value1) := by
  rw [input4029_def, output4029_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input4030_def : input4030 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input4030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4030_def : output4030 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4030_skip : Flapjack.WordAlloc.isSkip output4030 = true := by
  rw [output4030_def]
  conv => lhs; cbv
  try rfl
theorem node4030_eq : Flapjack.WordAlloc.removeDeadStructural input4030 value737 value1 value2 = (output4030, value737, value1) := by
  rw [input4030_def, output4030_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4030 input4029)).val
theorem input4031_def : input4031 = (.seq input4030 input4029) := by
  unfold input4031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4029)).val
theorem output4031_def : output4031 = (output4029) := by
  unfold output4031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4031_skip : Flapjack.WordAlloc.isSkip output4031 = false := by
  rw [output4031_def]
  conv => lhs; cbv
  try rfl
theorem node4031_eq : Flapjack.WordAlloc.removeDeadStructural input4031 value734 value1 value2 = (output4031, value737, value1) := by
  rw [input4031_def, output4031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4029_eq]
  try dsimp only
  rw [node4030_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value738 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(311, 269)])).val
theorem input4032_def : input4032 = (Flapjack.WordLangProgHOL.move 0 [(311, 269)]) := by
  unfold input4032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(311, 269)])).val
theorem output4032_def : output4032 = (Flapjack.WordLangProgHOL.move 0 [(311, 269)]) := by
  unfold output4032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4032_skip : Flapjack.WordAlloc.isSkip output4032 = false := by
  rw [output4032_def]
  conv => lhs; cbv
  try rfl
theorem node4032_eq : Flapjack.WordAlloc.removeDeadStructural input4032 value737 value1 value2 = (output4032, value738, value1) := by
  rw [input4032_def, output4032_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4032 input4031)).val
theorem input4033_def : input4033 = (.seq input4032 input4031) := by
  unfold input4033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4032 output4031)).val
theorem output4033_def : output4033 = (.seq output4032 output4031) := by
  unfold output4033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4033_skip : Flapjack.WordAlloc.isSkip output4033 = false := by
  rw [output4033_def]
  conv => lhs; cbv
  try rfl
theorem node4033_eq : Flapjack.WordAlloc.removeDeadStructural input4033 value734 value1 value2 = (output4033, value738, value1) := by
  rw [input4033_def, output4033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4031_eq]
  try dsimp only
  rw [node4032_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 305 1#64))).val
theorem input4034_def : input4034 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 305 1#64)) := by
  unfold input4034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4034_def : output4034 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4034_skip : Flapjack.WordAlloc.isSkip output4034 = true := by
  rw [output4034_def]
  conv => lhs; cbv
  try rfl
theorem node4034_eq : Flapjack.WordAlloc.removeDeadStructural input4034 value738 value1 value2 = (output4034, value738, value1) := by
  rw [input4034_def, output4034_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4035_def : input4035 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4035_def : output4035 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4035_skip : Flapjack.WordAlloc.isSkip output4035 = false := by
  rw [output4035_def]
  conv => lhs; cbv
  try rfl
theorem node4035_eq : Flapjack.WordAlloc.removeDeadStructural input4035 value738 value1 value2 = (output4035, value738, value1) := by
  rw [input4035_def, output4035_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 301 1#64))).val
theorem input4036_def : input4036 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 301 1#64)) := by
  unfold input4036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4036_def : output4036 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4036_skip : Flapjack.WordAlloc.isSkip output4036 = true := by
  rw [output4036_def]
  conv => lhs; cbv
  try rfl
theorem node4036_eq : Flapjack.WordAlloc.removeDeadStructural input4036 value738 value1 value2 = (output4036, value738, value1) := by
  rw [input4036_def, output4036_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4036 input4035)).val
theorem input4037_def : input4037 = (.seq input4036 input4035) := by
  unfold input4037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4035)).val
theorem output4037_def : output4037 = (output4035) := by
  unfold output4037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4037_skip : Flapjack.WordAlloc.isSkip output4037 = false := by
  rw [output4037_def]
  conv => lhs; cbv
  try rfl
theorem node4037_eq : Flapjack.WordAlloc.removeDeadStructural input4037 value738 value1 value2 = (output4037, value738, value1) := by
  rw [input4037_def, output4037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4035_eq]
  try dsimp only
  rw [node4036_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4037 input4034)).val
theorem input4038_def : input4038 = (.seq input4037 input4034) := by
  unfold input4038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4037)).val
theorem output4038_def : output4038 = (output4037) := by
  unfold output4038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4038_skip : Flapjack.WordAlloc.isSkip output4038 = false := by
  rw [output4038_def]
  conv => lhs; cbv
  try rfl
theorem node4038_eq : Flapjack.WordAlloc.removeDeadStructural input4038 value738 value1 value2 = (output4038, value738, value1) := by
  rw [input4038_def, output4038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4034_eq]
  try dsimp only
  rw [node4037_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4038 input4033)).val
theorem input4039_def : input4039 = (.seq input4038 input4033) := by
  unfold input4039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4038 output4033)).val
theorem output4039_def : output4039 = (.seq output4038 output4033) := by
  unfold output4039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4039_skip : Flapjack.WordAlloc.isSkip output4039 = false := by
  rw [output4039_def]
  conv => lhs; cbv
  try rfl
theorem node4039_eq : Flapjack.WordAlloc.removeDeadStructural input4039 value734 value1 value2 = (output4039, value738, value1) := by
  rw [input4039_def, output4039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4033_eq]
  try dsimp only
  rw [node4038_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4039 input4028)).val
theorem input4040_def : input4040 = (.seq input4039 input4028) := by
  unfold input4040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4039 output4028)).val
theorem output4040_def : output4040 = (.seq output4039 output4028) := by
  unfold output4040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4040_skip : Flapjack.WordAlloc.isSkip output4040 = false := by
  rw [output4040_def]
  conv => lhs; cbv
  try rfl
theorem node4040_eq : Flapjack.WordAlloc.removeDeadStructural input4040 value734 value1 value2 = (output4040, value738, value1) := by
  rw [input4040_def, output4040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4028_eq]
  try dsimp only
  rw [node4039_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4040 input4027)).val
theorem input4041_def : input4041 = (.seq input4040 input4027) := by
  unfold input4041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4040 output4027)).val
theorem output4041_def : output4041 = (.seq output4040 output4027) := by
  unfold output4041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4041_skip : Flapjack.WordAlloc.isSkip output4041 = false := by
  rw [output4041_def]
  conv => lhs; cbv
  try rfl
theorem node4041_eq : Flapjack.WordAlloc.removeDeadStructural input4041 value736 value1 value2 = (output4041, value738, value1) := by
  rw [input4041_def, output4041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4027_eq]
  try dsimp only
  rw [node4040_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4041 input4026)).val
theorem input4042_def : input4042 = (.seq input4041 input4026) := by
  unfold input4042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4041 output4026)).val
theorem output4042_def : output4042 = (.seq output4041 output4026) := by
  unfold output4042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4042_skip : Flapjack.WordAlloc.isSkip output4042 = false := by
  rw [output4042_def]
  conv => lhs; cbv
  try rfl
theorem node4042_eq : Flapjack.WordAlloc.removeDeadStructural input4042 value734 value1 value2 = (output4042, value738, value1) := by
  rw [input4042_def, output4042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4026_eq]
  try dsimp only
  rw [node4041_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4042 input4023)).val
theorem input4043_def : input4043 = (.seq input4042 input4023) := by
  unfold input4043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4042 output4023)).val
theorem output4043_def : output4043 = (.seq output4042 output4023) := by
  unfold output4043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4043_skip : Flapjack.WordAlloc.isSkip output4043 = false := by
  rw [output4043_def]
  conv => lhs; cbv
  try rfl
theorem node4043_eq : Flapjack.WordAlloc.removeDeadStructural input4043 value733 value1 value2 = (output4043, value738, value1) := by
  rw [input4043_def, output4043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4023_eq]
  try dsimp only
  rw [node4042_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(361, 289)])).val
theorem input4044_def : input4044 = (Flapjack.WordLangProgHOL.move 2 [(361, 289)]) := by
  unfold input4044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4044_def : output4044 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4044_skip : Flapjack.WordAlloc.isSkip output4044 = true := by
  rw [output4044_def]
  conv => lhs; cbv
  try rfl
theorem node4044_eq : Flapjack.WordAlloc.removeDeadStructural input4044 value733 value1 value2 = (output4044, value733, value1) := by
  rw [input4044_def, output4044_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(357, 297)])).val
theorem input4045_def : input4045 = (Flapjack.WordLangProgHOL.move 2 [(357, 297)]) := by
  unfold input4045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4045_def : output4045 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4045_skip : Flapjack.WordAlloc.isSkip output4045 = true := by
  rw [output4045_def]
  conv => lhs; cbv
  try rfl
theorem node4045_eq : Flapjack.WordAlloc.removeDeadStructural input4045 value733 value1 value2 = (output4045, value733, value1) := by
  rw [input4045_def, output4045_def]
  try (conv => lhs; cbv)
  try rfl

def value739 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(353, 293)])).val
theorem input4046_def : input4046 = (Flapjack.WordLangProgHOL.move 2 [(353, 293)]) := by
  unfold input4046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(353, 293)])).val
theorem output4046_def : output4046 = (Flapjack.WordLangProgHOL.move 2 [(353, 293)]) := by
  unfold output4046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4046_skip : Flapjack.WordAlloc.isSkip output4046 = false := by
  rw [output4046_def]
  conv => lhs; cbv
  try rfl
theorem node4046_eq : Flapjack.WordAlloc.removeDeadStructural input4046 value733 value1 value2 = (output4046, value739, value1) := by
  rw [input4046_def, output4046_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4047_def : input4047 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4047_def : output4047 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4047_skip : Flapjack.WordAlloc.isSkip output4047 = true := by
  rw [output4047_def]
  conv => lhs; cbv
  try rfl
theorem node4047_eq : Flapjack.WordAlloc.removeDeadStructural input4047 value739 value1 value2 = (output4047, value739, value1) := by
  rw [input4047_def, output4047_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4047 input4046)).val
theorem input4048_def : input4048 = (.seq input4047 input4046) := by
  unfold input4048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4046)).val
theorem output4048_def : output4048 = (output4046) := by
  unfold output4048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4048_skip : Flapjack.WordAlloc.isSkip output4048 = false := by
  rw [output4048_def]
  conv => lhs; cbv
  try rfl
theorem node4048_eq : Flapjack.WordAlloc.removeDeadStructural input4048 value733 value1 value2 = (output4048, value739, value1) := by
  rw [input4048_def, output4048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4046_eq]
  try dsimp only
  rw [node4047_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4048 input4045)).val
theorem input4049_def : input4049 = (.seq input4048 input4045) := by
  unfold input4049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4048)).val
theorem output4049_def : output4049 = (output4048) := by
  unfold output4049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4049_skip : Flapjack.WordAlloc.isSkip output4049 = false := by
  rw [output4049_def]
  conv => lhs; cbv
  try rfl
theorem node4049_eq : Flapjack.WordAlloc.removeDeadStructural input4049 value733 value1 value2 = (output4049, value739, value1) := by
  rw [input4049_def, output4049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4045_eq]
  try dsimp only
  rw [node4048_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4049 input4044)).val
theorem input4050_def : input4050 = (.seq input4049 input4044) := by
  unfold input4050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4049)).val
theorem output4050_def : output4050 = (output4049) := by
  unfold output4050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4050_skip : Flapjack.WordAlloc.isSkip output4050 = false := by
  rw [output4050_def]
  conv => lhs; cbv
  try rfl
theorem node4050_eq : Flapjack.WordAlloc.removeDeadStructural input4050 value733 value1 value2 = (output4050, value739, value1) := by
  rw [input4050_def, output4050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4044_eq]
  try dsimp only
  rw [node4049_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value740 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(349, 269), (345, 293), (341, 261)])).val
theorem input4051_def : input4051 = (Flapjack.WordLangProgHOL.move 2 [(349, 269), (345, 293), (341, 261)]) := by
  unfold input4051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(349, 269)])).val
theorem output4051_def : output4051 = (Flapjack.WordLangProgHOL.move 2 [(349, 269)]) := by
  unfold output4051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4051_skip : Flapjack.WordAlloc.isSkip output4051 = false := by
  rw [output4051_def]
  conv => lhs; cbv
  try rfl
theorem node4051_eq : Flapjack.WordAlloc.removeDeadStructural input4051 value739 value1 value2 = (output4051, value740, value1) := by
  rw [input4051_def, output4051_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4051 input4050)).val
theorem input4052_def : input4052 = (.seq input4051 input4050) := by
  unfold input4052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4051 output4050)).val
theorem output4052_def : output4052 = (.seq output4051 output4050) := by
  unfold output4052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4052_skip : Flapjack.WordAlloc.isSkip output4052 = false := by
  rw [output4052_def]
  conv => lhs; cbv
  try rfl
theorem node4052_eq : Flapjack.WordAlloc.removeDeadStructural input4052 value733 value1 value2 = (output4052, value740, value1) := by
  rw [input4052_def, output4052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4050_eq]
  try dsimp only
  rw [node4051_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4053_def : input4053 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4053_def : output4053 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4053_skip : Flapjack.WordAlloc.isSkip output4053 = true := by
  rw [output4053_def]
  conv => lhs; cbv
  try rfl
theorem node4053_eq : Flapjack.WordAlloc.removeDeadStructural input4053 value740 value1 value2 = (output4053, value740, value1) := by
  rw [input4053_def, output4053_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4053 input4052)).val
theorem input4054_def : input4054 = (.seq input4053 input4052) := by
  unfold input4054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4052)).val
theorem output4054_def : output4054 = (output4052) := by
  unfold output4054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4054_skip : Flapjack.WordAlloc.isSkip output4054 = false := by
  rw [output4054_def]
  conv => lhs; cbv
  try rfl
theorem node4054_eq : Flapjack.WordAlloc.removeDeadStructural input4054 value733 value1 value2 = (output4054, value740, value1) := by
  rw [input4054_def, output4054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4052_eq]
  try dsimp only
  rw [node4053_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value741 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 297

def value742 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 293 value741 input4043 input4054)).val
theorem input4055_def : input4055 = (.ite value15 293 value741 input4043 input4054) := by
  unfold input4055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 293 value741 output4043 output4054)).val
theorem output4055_def : output4055 = (.ite value15 293 value741 output4043 output4054) := by
  unfold output4055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4055_skip : Flapjack.WordAlloc.isSkip output4055 = false := by
  rw [output4055_def]
  conv => lhs; cbv
  try rfl
theorem node4055_eq : Flapjack.WordAlloc.removeDeadStructural input4055 value733 value1 value2 = (output4055, value742, value1) := by
  rw [input4055_def, output4055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node4043_eq]
  try dsimp only
  rw [node4054_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4055 input4014)).val
theorem input4056_def : input4056 = (.seq input4055 input4014) := by
  unfold input4056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4055 output4014)).val
theorem output4056_def : output4056 = (.seq output4055 output4014) := by
  unfold output4056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4056_skip : Flapjack.WordAlloc.isSkip output4056 = false := by
  rw [output4056_def]
  conv => lhs; cbv
  try rfl
theorem node4056_eq : Flapjack.WordAlloc.removeDeadStructural input4056 value733 value1 value2 = (output4056, value742, value1) := by
  rw [input4056_def, output4056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4014_eq]
  try dsimp only
  rw [node4055_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 297 3#64))).val
theorem input4057_def : input4057 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 297 3#64)) := by
  unfold input4057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 297 3#64))).val
theorem output4057_def : output4057 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 297 3#64)) := by
  unfold output4057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4057_skip : Flapjack.WordAlloc.isSkip output4057 = false := by
  rw [output4057_def]
  conv => lhs; cbv
  try rfl
theorem node4057_eq : Flapjack.WordAlloc.removeDeadStructural input4057 value742 value1 value2 = (output4057, value740, value1) := by
  rw [input4057_def, output4057_def]
  try (conv => lhs; cbv)
  try rfl

def value743 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(293, 273)])).val
theorem input4058_def : input4058 = (Flapjack.WordLangProgHOL.move 0 [(293, 273)]) := by
  unfold input4058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(293, 273)])).val
theorem output4058_def : output4058 = (Flapjack.WordLangProgHOL.move 0 [(293, 273)]) := by
  unfold output4058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4058_skip : Flapjack.WordAlloc.isSkip output4058 = false := by
  rw [output4058_def]
  conv => lhs; cbv
  try rfl
theorem node4058_eq : Flapjack.WordAlloc.removeDeadStructural input4058 value740 value1 value2 = (output4058, value743, value1) := by
  rw [input4058_def, output4058_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4059_def : input4059 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4059_def : output4059 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4059_skip : Flapjack.WordAlloc.isSkip output4059 = false := by
  rw [output4059_def]
  conv => lhs; cbv
  try rfl
theorem node4059_eq : Flapjack.WordAlloc.removeDeadStructural input4059 value743 value1 value2 = (output4059, value743, value1) := by
  rw [input4059_def, output4059_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 289 0#64))).val
theorem input4060_def : input4060 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 289 0#64)) := by
  unfold input4060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4060_def : output4060 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4060_skip : Flapjack.WordAlloc.isSkip output4060 = true := by
  rw [output4060_def]
  conv => lhs; cbv
  try rfl
theorem node4060_eq : Flapjack.WordAlloc.removeDeadStructural input4060 value743 value1 value2 = (output4060, value743, value1) := by
  rw [input4060_def, output4060_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4061_def : input4061 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4061_def : output4061 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4061_skip : Flapjack.WordAlloc.isSkip output4061 = false := by
  rw [output4061_def]
  conv => lhs; cbv
  try rfl
theorem node4061_eq : Flapjack.WordAlloc.removeDeadStructural input4061 value743 value1 value2 = (output4061, value743, value1) := by
  rw [input4061_def, output4061_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 285 0#64))).val
theorem input4062_def : input4062 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 285 0#64)) := by
  unfold input4062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4062_def : output4062 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4062_skip : Flapjack.WordAlloc.isSkip output4062 = true := by
  rw [output4062_def]
  conv => lhs; cbv
  try rfl
theorem node4062_eq : Flapjack.WordAlloc.removeDeadStructural input4062 value743 value1 value2 = (output4062, value743, value1) := by
  rw [input4062_def, output4062_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4062 input4061)).val
theorem input4063_def : input4063 = (.seq input4062 input4061) := by
  unfold input4063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4061)).val
theorem output4063_def : output4063 = (output4061) := by
  unfold output4063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4063_skip : Flapjack.WordAlloc.isSkip output4063 = false := by
  rw [output4063_def]
  conv => lhs; cbv
  try rfl
theorem node4063_eq : Flapjack.WordAlloc.removeDeadStructural input4063 value743 value1 value2 = (output4063, value743, value1) := by
  rw [input4063_def, output4063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4061_eq]
  try dsimp only
  rw [node4062_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4063 input4060)).val
theorem input4064_def : input4064 = (.seq input4063 input4060) := by
  unfold input4064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4063)).val
theorem output4064_def : output4064 = (output4063) := by
  unfold output4064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4064_skip : Flapjack.WordAlloc.isSkip output4064 = false := by
  rw [output4064_def]
  conv => lhs; cbv
  try rfl
theorem node4064_eq : Flapjack.WordAlloc.removeDeadStructural input4064 value743 value1 value2 = (output4064, value743, value1) := by
  rw [input4064_def, output4064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4060_eq]
  try dsimp only
  rw [node4063_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 281 0#64))).val
theorem input4065_def : input4065 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 281 0#64)) := by
  unfold input4065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4065_def : output4065 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4065_skip : Flapjack.WordAlloc.isSkip output4065 = true := by
  rw [output4065_def]
  conv => lhs; cbv
  try rfl
theorem node4065_eq : Flapjack.WordAlloc.removeDeadStructural input4065 value743 value1 value2 = (output4065, value743, value1) := by
  rw [input4065_def, output4065_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 277 0#64))).val
theorem input4066_def : input4066 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 277 0#64)) := by
  unfold input4066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4066_def : output4066 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4066_skip : Flapjack.WordAlloc.isSkip output4066 = true := by
  rw [output4066_def]
  conv => lhs; cbv
  try rfl
theorem node4066_eq : Flapjack.WordAlloc.removeDeadStructural input4066 value743 value1 value2 = (output4066, value743, value1) := by
  rw [input4066_def, output4066_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64))).val
theorem input4067_def : input4067 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64)) := by
  unfold input4067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64))).val
theorem output4067_def : output4067 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 273 0#64)) := by
  unfold output4067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4067_skip : Flapjack.WordAlloc.isSkip output4067 = false := by
  rw [output4067_def]
  conv => lhs; cbv
  try rfl
theorem node4067_eq : Flapjack.WordAlloc.removeDeadStructural input4067 value743 value1 value2 = (output4067, value738, value1) := by
  rw [input4067_def, output4067_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4068_def : input4068 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4068_def : output4068 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4068_skip : Flapjack.WordAlloc.isSkip output4068 = true := by
  rw [output4068_def]
  conv => lhs; cbv
  try rfl
theorem node4068_eq : Flapjack.WordAlloc.removeDeadStructural input4068 value738 value1 value2 = (output4068, value738, value1) := by
  rw [input4068_def, output4068_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4068 input4067)).val
theorem input4069_def : input4069 = (.seq input4068 input4067) := by
  unfold input4069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4067)).val
theorem output4069_def : output4069 = (output4067) := by
  unfold output4069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4069_skip : Flapjack.WordAlloc.isSkip output4069 = false := by
  rw [output4069_def]
  conv => lhs; cbv
  try rfl
theorem node4069_eq : Flapjack.WordAlloc.removeDeadStructural input4069 value743 value1 value2 = (output4069, value738, value1) := by
  rw [input4069_def, output4069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4067_eq]
  try dsimp only
  rw [node4068_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4069 input4066)).val
theorem input4070_def : input4070 = (.seq input4069 input4066) := by
  unfold input4070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4069)).val
theorem output4070_def : output4070 = (output4069) := by
  unfold output4070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4070_skip : Flapjack.WordAlloc.isSkip output4070 = false := by
  rw [output4070_def]
  conv => lhs; cbv
  try rfl
theorem node4070_eq : Flapjack.WordAlloc.removeDeadStructural input4070 value743 value1 value2 = (output4070, value738, value1) := by
  rw [input4070_def, output4070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4066_eq]
  try dsimp only
  rw [node4069_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4070 input4065)).val
theorem input4071_def : input4071 = (.seq input4070 input4065) := by
  unfold input4071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4070)).val
theorem output4071_def : output4071 = (output4070) := by
  unfold output4071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4071_skip : Flapjack.WordAlloc.isSkip output4071 = false := by
  rw [output4071_def]
  conv => lhs; cbv
  try rfl
theorem node4071_eq : Flapjack.WordAlloc.removeDeadStructural input4071 value743 value1 value2 = (output4071, value738, value1) := by
  rw [input4071_def, output4071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4065_eq]
  try dsimp only
  rw [node4070_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value744 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(269, 237), (265, 253), (261, 257)])).val
theorem input4072_def : input4072 = (Flapjack.WordLangProgHOL.move 1 [(269, 237), (265, 253), (261, 257)]) := by
  unfold input4072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(269, 237)])).val
theorem output4072_def : output4072 = (Flapjack.WordLangProgHOL.move 1 [(269, 237)]) := by
  unfold output4072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4072_skip : Flapjack.WordAlloc.isSkip output4072 = false := by
  rw [output4072_def]
  conv => lhs; cbv
  try rfl
theorem node4072_eq : Flapjack.WordAlloc.removeDeadStructural input4072 value738 value1 value2 = (output4072, value744, value1) := by
  rw [input4072_def, output4072_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4072 input4071)).val
theorem input4073_def : input4073 = (.seq input4072 input4071) := by
  unfold input4073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4072 output4071)).val
theorem output4073_def : output4073 = (.seq output4072 output4071) := by
  unfold output4073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4073_skip : Flapjack.WordAlloc.isSkip output4073 = false := by
  rw [output4073_def]
  conv => lhs; cbv
  try rfl
theorem node4073_eq : Flapjack.WordAlloc.removeDeadStructural input4073 value743 value1 value2 = (output4073, value744, value1) := by
  rw [input4073_def, output4073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4071_eq]
  try dsimp only
  rw [node4072_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value745 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 237 [2])).val
theorem input4074_def : input4074 = (Flapjack.WordLangProgHOL.return 237 [2]) := by
  unfold input4074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 237 [2])).val
theorem output4074_def : output4074 = (Flapjack.WordLangProgHOL.return 237 [2]) := by
  unfold output4074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4074_skip : Flapjack.WordAlloc.isSkip output4074 = false := by
  rw [output4074_def]
  conv => lhs; cbv
  try rfl
theorem node4074_eq : Flapjack.WordAlloc.removeDeadStructural input4074 value744 value1 value2 = (output4074, value745, value1) := by
  rw [input4074_def, output4074_def]
  try (conv => lhs; cbv)
  try rfl

def value746 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 257)])).val
theorem input4075_def : input4075 = (Flapjack.WordLangProgHOL.move 0 [(2, 257)]) := by
  unfold input4075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 257)])).val
theorem output4075_def : output4075 = (Flapjack.WordLangProgHOL.move 0 [(2, 257)]) := by
  unfold output4075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4075_skip : Flapjack.WordAlloc.isSkip output4075 = false := by
  rw [output4075_def]
  conv => lhs; cbv
  try rfl
theorem node4075_eq : Flapjack.WordAlloc.removeDeadStructural input4075 value745 value1 value2 = (output4075, value746, value1) := by
  rw [input4075_def, output4075_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4075 input4074)).val
theorem input4076_def : input4076 = (.seq input4075 input4074) := by
  unfold input4076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4075 output4074)).val
theorem output4076_def : output4076 = (.seq output4075 output4074) := by
  unfold output4076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4076_skip : Flapjack.WordAlloc.isSkip output4076 = false := by
  rw [output4076_def]
  conv => lhs; cbv
  try rfl
theorem node4076_eq : Flapjack.WordAlloc.removeDeadStructural input4076 value744 value1 value2 = (output4076, value746, value1) := by
  rw [input4076_def, output4076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4074_eq]
  try dsimp only
  rw [node4075_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 257 0#64))).val
theorem input4077_def : input4077 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 257 0#64)) := by
  unfold input4077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 257 0#64))).val
theorem output4077_def : output4077 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 257 0#64)) := by
  unfold output4077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4077_skip : Flapjack.WordAlloc.isSkip output4077 = false := by
  rw [output4077_def]
  conv => lhs; cbv
  try rfl
theorem node4077_eq : Flapjack.WordAlloc.removeDeadStructural input4077 value746 value1 value2 = (output4077, value744, value1) := by
  rw [input4077_def, output4077_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4078_def : input4078 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4078_def : output4078 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4078_skip : Flapjack.WordAlloc.isSkip output4078 = false := by
  rw [output4078_def]
  conv => lhs; cbv
  try rfl
theorem node4078_eq : Flapjack.WordAlloc.removeDeadStructural input4078 value744 value1 value2 = (output4078, value744, value1) := by
  rw [input4078_def, output4078_def]
  try (conv => lhs; cbv)
  try rfl

def value747 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        Flapjack.Spt.ln)))

@[irreducible, cbv_opaque] def input4079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(237, 231)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(241, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(249, 241)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 0#64)))),
      597, 6))
  (some 500) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(237, 231)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(245, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 245)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 249 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(253, 245)]))),
      597, 7)))).val
theorem input4079_def : input4079 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(237, 231)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(241, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(249, 241)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 0#64)))),
      597, 6))
  (some 500) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(237, 231)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(245, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 245)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 249 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(253, 245)]))),
      597, 7))) := by
  unfold input4079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(237, 231)], 597, 6))
  (some 500) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(237, 231)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(245, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 245)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 7)))).val
theorem output4079_def : output4079 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(237, 231)], 597, 6))
  (some 500) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(237, 231)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(245, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 245)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 7))) := by
  unfold output4079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4079_skip : Flapjack.WordAlloc.isSkip output4079 = false := by
  rw [output4079_def]
  conv => lhs; cbv
  try rfl
theorem node4079_eq : Flapjack.WordAlloc.removeDeadStructural input4079 value744 value1 value2 = (output4079, value747, value1) := by
  rw [input4079_def, output4079_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input4080_def : input4080 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input4080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4080_def : output4080 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4080_skip : Flapjack.WordAlloc.isSkip output4080 = true := by
  rw [output4080_def]
  conv => lhs; cbv
  try rfl
theorem node4080_eq : Flapjack.WordAlloc.removeDeadStructural input4080 value747 value1 value2 = (output4080, value747, value1) := by
  rw [input4080_def, output4080_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4080 input4079)).val
theorem input4081_def : input4081 = (.seq input4080 input4079) := by
  unfold input4081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4079)).val
theorem output4081_def : output4081 = (output4079) := by
  unfold output4081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4081_skip : Flapjack.WordAlloc.isSkip output4081 = false := by
  rw [output4081_def]
  conv => lhs; cbv
  try rfl
theorem node4081_eq : Flapjack.WordAlloc.removeDeadStructural input4081 value744 value1 value2 = (output4081, value747, value1) := by
  rw [input4081_def, output4081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4079_eq]
  try dsimp only
  rw [node4080_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value748 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(231, 189)])).val
theorem input4082_def : input4082 = (Flapjack.WordLangProgHOL.move 0 [(231, 189)]) := by
  unfold input4082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(231, 189)])).val
theorem output4082_def : output4082 = (Flapjack.WordLangProgHOL.move 0 [(231, 189)]) := by
  unfold output4082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4082_skip : Flapjack.WordAlloc.isSkip output4082 = false := by
  rw [output4082_def]
  conv => lhs; cbv
  try rfl
theorem node4082_eq : Flapjack.WordAlloc.removeDeadStructural input4082 value747 value1 value2 = (output4082, value748, value1) := by
  rw [input4082_def, output4082_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4082 input4081)).val
theorem input4083_def : input4083 = (.seq input4082 input4081) := by
  unfold input4083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4082 output4081)).val
theorem output4083_def : output4083 = (.seq output4082 output4081) := by
  unfold output4083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4083_skip : Flapjack.WordAlloc.isSkip output4083 = false := by
  rw [output4083_def]
  conv => lhs; cbv
  try rfl
theorem node4083_eq : Flapjack.WordAlloc.removeDeadStructural input4083 value744 value1 value2 = (output4083, value748, value1) := by
  rw [input4083_def, output4083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4081_eq]
  try dsimp only
  rw [node4082_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 1#64))).val
theorem input4084_def : input4084 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 1#64)) := by
  unfold input4084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4084_def : output4084 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4084_skip : Flapjack.WordAlloc.isSkip output4084 = true := by
  rw [output4084_def]
  conv => lhs; cbv
  try rfl
theorem node4084_eq : Flapjack.WordAlloc.removeDeadStructural input4084 value748 value1 value2 = (output4084, value748, value1) := by
  rw [input4084_def, output4084_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4085_def : input4085 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4085_def : output4085 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4085_skip : Flapjack.WordAlloc.isSkip output4085 = false := by
  rw [output4085_def]
  conv => lhs; cbv
  try rfl
theorem node4085_eq : Flapjack.WordAlloc.removeDeadStructural input4085 value748 value1 value2 = (output4085, value748, value1) := by
  rw [input4085_def, output4085_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 221 1#64))).val
theorem input4086_def : input4086 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 221 1#64)) := by
  unfold input4086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4086_def : output4086 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4086_skip : Flapjack.WordAlloc.isSkip output4086 = true := by
  rw [output4086_def]
  conv => lhs; cbv
  try rfl
theorem node4086_eq : Flapjack.WordAlloc.removeDeadStructural input4086 value748 value1 value2 = (output4086, value748, value1) := by
  rw [input4086_def, output4086_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4086 input4085)).val
theorem input4087_def : input4087 = (.seq input4086 input4085) := by
  unfold input4087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4085)).val
theorem output4087_def : output4087 = (output4085) := by
  unfold output4087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4087_skip : Flapjack.WordAlloc.isSkip output4087 = false := by
  rw [output4087_def]
  conv => lhs; cbv
  try rfl
theorem node4087_eq : Flapjack.WordAlloc.removeDeadStructural input4087 value748 value1 value2 = (output4087, value748, value1) := by
  rw [input4087_def, output4087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4085_eq]
  try dsimp only
  rw [node4086_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4087 input4084)).val
theorem input4088_def : input4088 = (.seq input4087 input4084) := by
  unfold input4088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4087)).val
theorem output4088_def : output4088 = (output4087) := by
  unfold output4088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4088_skip : Flapjack.WordAlloc.isSkip output4088 = false := by
  rw [output4088_def]
  conv => lhs; cbv
  try rfl
theorem node4088_eq : Flapjack.WordAlloc.removeDeadStructural input4088 value748 value1 value2 = (output4088, value748, value1) := by
  rw [input4088_def, output4088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4084_eq]
  try dsimp only
  rw [node4087_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4088 input4083)).val
theorem input4089_def : input4089 = (.seq input4088 input4083) := by
  unfold input4089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4088 output4083)).val
theorem output4089_def : output4089 = (.seq output4088 output4083) := by
  unfold output4089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4089_skip : Flapjack.WordAlloc.isSkip output4089 = false := by
  rw [output4089_def]
  conv => lhs; cbv
  try rfl
theorem node4089_eq : Flapjack.WordAlloc.removeDeadStructural input4089 value744 value1 value2 = (output4089, value748, value1) := by
  rw [input4089_def, output4089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4083_eq]
  try dsimp only
  rw [node4088_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4089 input4078)).val
theorem input4090_def : input4090 = (.seq input4089 input4078) := by
  unfold input4090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4089 output4078)).val
theorem output4090_def : output4090 = (.seq output4089 output4078) := by
  unfold output4090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4090_skip : Flapjack.WordAlloc.isSkip output4090 = false := by
  rw [output4090_def]
  conv => lhs; cbv
  try rfl
theorem node4090_eq : Flapjack.WordAlloc.removeDeadStructural input4090 value744 value1 value2 = (output4090, value748, value1) := by
  rw [input4090_def, output4090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4078_eq]
  try dsimp only
  rw [node4089_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4090 input4077)).val
theorem input4091_def : input4091 = (.seq input4090 input4077) := by
  unfold input4091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4090 output4077)).val
theorem output4091_def : output4091 = (.seq output4090 output4077) := by
  unfold output4091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4091_skip : Flapjack.WordAlloc.isSkip output4091 = false := by
  rw [output4091_def]
  conv => lhs; cbv
  try rfl
theorem node4091_eq : Flapjack.WordAlloc.removeDeadStructural input4091 value746 value1 value2 = (output4091, value748, value1) := by
  rw [input4091_def, output4091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4077_eq]
  try dsimp only
  rw [node4090_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4091 input4076)).val
theorem input4092_def : input4092 = (.seq input4091 input4076) := by
  unfold input4092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4091 output4076)).val
theorem output4092_def : output4092 = (.seq output4091 output4076) := by
  unfold output4092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4092_skip : Flapjack.WordAlloc.isSkip output4092 = false := by
  rw [output4092_def]
  conv => lhs; cbv
  try rfl
theorem node4092_eq : Flapjack.WordAlloc.removeDeadStructural input4092 value744 value1 value2 = (output4092, value748, value1) := by
  rw [input4092_def, output4092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4076_eq]
  try dsimp only
  rw [node4091_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4092 input4073)).val
theorem input4093_def : input4093 = (.seq input4092 input4073) := by
  unfold input4093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4092 output4073)).val
theorem output4093_def : output4093 = (.seq output4092 output4073) := by
  unfold output4093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4093_skip : Flapjack.WordAlloc.isSkip output4093 = false := by
  rw [output4093_def]
  conv => lhs; cbv
  try rfl
theorem node4093_eq : Flapjack.WordAlloc.removeDeadStructural input4093 value743 value1 value2 = (output4093, value748, value1) := by
  rw [input4093_def, output4093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4073_eq]
  try dsimp only
  rw [node4092_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(281, 209)])).val
theorem input4094_def : input4094 = (Flapjack.WordLangProgHOL.move 2 [(281, 209)]) := by
  unfold input4094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4094_def : output4094 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4094_skip : Flapjack.WordAlloc.isSkip output4094 = true := by
  rw [output4094_def]
  conv => lhs; cbv
  try rfl
theorem node4094_eq : Flapjack.WordAlloc.removeDeadStructural input4094 value743 value1 value2 = (output4094, value743, value1) := by
  rw [input4094_def, output4094_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(277, 217)])).val
theorem input4095_def : input4095 = (Flapjack.WordLangProgHOL.move 2 [(277, 217)]) := by
  unfold input4095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4095_def : output4095 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4095_skip : Flapjack.WordAlloc.isSkip output4095 = true := by
  rw [output4095_def]
  conv => lhs; cbv
  try rfl
theorem node4095_eq : Flapjack.WordAlloc.removeDeadStructural input4095 value743 value1 value2 = (output4095, value743, value1) := by
  rw [input4095_def, output4095_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node4095_eq
end InitECandidate.Proofs.DeadStages597
