import InitECandidate.Proofs.DeadStages64.Chunk022
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages64
def value372 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(905, 893)])).val
theorem input736_def : input736 = (Flapjack.WordLangProgHOL.move 0 [(905, 893)]) := by
  unfold input736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(905, 893)])).val
theorem output736_def : output736 = (Flapjack.WordLangProgHOL.move 0 [(905, 893)]) := by
  unfold output736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output736_skip : Flapjack.WordAlloc.isSkip output736 = false := by
  rw [output736_def]
  conv => lhs; cbv
  try rfl
theorem node736_eq : Flapjack.WordAlloc.removeDeadStructural input736 value371 value1 value2 = (output736, value372, value1) := by
  rw [input736_def, output736_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input736 input735)).val
theorem input737_def : input737 = (.seq input736 input735) := by
  unfold input737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output736 output735)).val
theorem output737_def : output737 = (.seq output736 output735) := by
  unfold output737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output737_skip : Flapjack.WordAlloc.isSkip output737 = false := by
  rw [output737_def]
  conv => lhs; cbv
  try rfl
theorem node737_eq : Flapjack.WordAlloc.removeDeadStructural input737 value4 value1 value2 = (output737, value372, value1) := by
  rw [input737_def, output737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node735_eq]
  dsimp only
  rw [node736_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value373 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 901 0#64))).val
theorem input738_def : input738 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 901 0#64)) := by
  unfold input738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 901 0#64))).val
theorem output738_def : output738 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 901 0#64)) := by
  unfold output738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output738_skip : Flapjack.WordAlloc.isSkip output738 = false := by
  rw [output738_def]
  conv => lhs; cbv
  try rfl
theorem node738_eq : Flapjack.WordAlloc.removeDeadStructural input738 value372 value1 value2 = (output738, value373, value1) := by
  rw [input738_def, output738_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 897 0#64))).val
theorem input739_def : input739 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 897 0#64)) := by
  unfold input739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output739_def : output739 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output739_skip : Flapjack.WordAlloc.isSkip output739 = true := by
  rw [output739_def]
  conv => lhs; cbv
  try rfl
theorem node739_eq : Flapjack.WordAlloc.removeDeadStructural input739 value373 value1 value2 = (output739, value373, value1) := by
  rw [input739_def, output739_def]
  try (conv => lhs; cbv)
  try rfl

def value374 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 893 889 (Flapjack.WordRegImm.imm 18446744073709551360#64))))).val
theorem input740_def : input740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 893 889 (Flapjack.WordRegImm.imm 18446744073709551360#64)))) := by
  unfold input740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 893 889 (Flapjack.WordRegImm.imm 18446744073709551360#64))))).val
theorem output740_def : output740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 893 889 (Flapjack.WordRegImm.imm 18446744073709551360#64)))) := by
  unfold output740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output740_skip : Flapjack.WordAlloc.isSkip output740 = false := by
  rw [output740_def]
  conv => lhs; cbv
  try rfl
theorem node740_eq : Flapjack.WordAlloc.removeDeadStructural input740 value373 value1 value2 = (output740, value374, value1) := by
  rw [input740_def, output740_def]
  try (conv => lhs; cbv)
  try rfl

def value375 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 889 885)).val
theorem input741_def : input741 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 889 885) := by
  unfold input741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 889 885)).val
theorem output741_def : output741 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 889 885) := by
  unfold output741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output741_skip : Flapjack.WordAlloc.isSkip output741 = false := by
  rw [output741_def]
  conv => lhs; cbv
  try rfl
theorem node741_eq : Flapjack.WordAlloc.removeDeadStructural input741 value374 value1 value2 = (output741, value375, value1) := by
  rw [input741_def, output741_def]
  try (conv => lhs; cbv)
  try rfl

def value376 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 885 881 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input742_def : input742 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 885 881 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 885 881 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output742_def : output742 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 885 881 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output742_skip : Flapjack.WordAlloc.isSkip output742 = false := by
  rw [output742_def]
  conv => lhs; cbv
  try rfl
theorem node742_eq : Flapjack.WordAlloc.removeDeadStructural input742 value375 value1 value2 = (output742, value376, value1) := by
  rw [input742_def, output742_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 881 Flapjack.WordStore.heapLength)).val
theorem input743_def : input743 = (Flapjack.WordLangProgHOL.get 881 Flapjack.WordStore.heapLength) := by
  unfold input743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 881 Flapjack.WordStore.heapLength)).val
theorem output743_def : output743 = (Flapjack.WordLangProgHOL.get 881 Flapjack.WordStore.heapLength) := by
  unfold output743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output743_skip : Flapjack.WordAlloc.isSkip output743 = false := by
  rw [output743_def]
  conv => lhs; cbv
  try rfl
theorem node743_eq : Flapjack.WordAlloc.removeDeadStructural input743 value376 value1 value2 = (output743, value4, value1) := by
  rw [input743_def, output743_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input743 input742)).val
theorem input744_def : input744 = (.seq input743 input742) := by
  unfold input744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output743 output742)).val
theorem output744_def : output744 = (.seq output743 output742) := by
  unfold output744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output744_skip : Flapjack.WordAlloc.isSkip output744 = false := by
  rw [output744_def]
  conv => lhs; cbv
  try rfl
theorem node744_eq : Flapjack.WordAlloc.removeDeadStructural input744 value375 value1 value2 = (output744, value4, value1) := by
  rw [input744_def, output744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node742_eq]
  dsimp only
  rw [node743_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input744 input741)).val
theorem input745_def : input745 = (.seq input744 input741) := by
  unfold input745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output744 output741)).val
theorem output745_def : output745 = (.seq output744 output741) := by
  unfold output745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output745_skip : Flapjack.WordAlloc.isSkip output745 = false := by
  rw [output745_def]
  conv => lhs; cbv
  try rfl
theorem node745_eq : Flapjack.WordAlloc.removeDeadStructural input745 value374 value1 value2 = (output745, value4, value1) := by
  rw [input745_def, output745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node741_eq]
  dsimp only
  rw [node744_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input745 input740)).val
theorem input746_def : input746 = (.seq input745 input740) := by
  unfold input746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output745 output740)).val
theorem output746_def : output746 = (.seq output745 output740) := by
  unfold output746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output746_skip : Flapjack.WordAlloc.isSkip output746 = false := by
  rw [output746_def]
  conv => lhs; cbv
  try rfl
theorem node746_eq : Flapjack.WordAlloc.removeDeadStructural input746 value373 value1 value2 = (output746, value4, value1) := by
  rw [input746_def, output746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node740_eq]
  dsimp only
  rw [node745_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value377 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 873 (Flapjack.WordLangAddr.addr 877 0#64)))).val
theorem input747_def : input747 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 873 (Flapjack.WordLangAddr.addr 877 0#64))) := by
  unfold input747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 873 (Flapjack.WordLangAddr.addr 877 0#64)))).val
theorem output747_def : output747 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 873 (Flapjack.WordLangAddr.addr 877 0#64))) := by
  unfold output747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output747_skip : Flapjack.WordAlloc.isSkip output747 = false := by
  rw [output747_def]
  conv => lhs; cbv
  try rfl
theorem node747_eq : Flapjack.WordAlloc.removeDeadStructural input747 value4 value1 value2 = (output747, value377, value1) := by
  rw [input747_def, output747_def]
  try (conv => lhs; cbv)
  try rfl

def value378 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(877, 865)])).val
theorem input748_def : input748 = (Flapjack.WordLangProgHOL.move 0 [(877, 865)]) := by
  unfold input748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(877, 865)])).val
theorem output748_def : output748 = (Flapjack.WordLangProgHOL.move 0 [(877, 865)]) := by
  unfold output748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output748_skip : Flapjack.WordAlloc.isSkip output748 = false := by
  rw [output748_def]
  conv => lhs; cbv
  try rfl
theorem node748_eq : Flapjack.WordAlloc.removeDeadStructural input748 value377 value1 value2 = (output748, value378, value1) := by
  rw [input748_def, output748_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input748 input747)).val
theorem input749_def : input749 = (.seq input748 input747) := by
  unfold input749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output748 output747)).val
theorem output749_def : output749 = (.seq output748 output747) := by
  unfold output749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output749_skip : Flapjack.WordAlloc.isSkip output749 = false := by
  rw [output749_def]
  conv => lhs; cbv
  try rfl
theorem node749_eq : Flapjack.WordAlloc.removeDeadStructural input749 value4 value1 value2 = (output749, value378, value1) := by
  rw [input749_def, output749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node747_eq]
  dsimp only
  rw [node748_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value379 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 873 0#64))).val
theorem input750_def : input750 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 873 0#64)) := by
  unfold input750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 873 0#64))).val
theorem output750_def : output750 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 873 0#64)) := by
  unfold output750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output750_skip : Flapjack.WordAlloc.isSkip output750 = false := by
  rw [output750_def]
  conv => lhs; cbv
  try rfl
theorem node750_eq : Flapjack.WordAlloc.removeDeadStructural input750 value378 value1 value2 = (output750, value379, value1) := by
  rw [input750_def, output750_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 869 0#64))).val
theorem input751_def : input751 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 869 0#64)) := by
  unfold input751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output751_def : output751 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output751_skip : Flapjack.WordAlloc.isSkip output751 = true := by
  rw [output751_def]
  conv => lhs; cbv
  try rfl
theorem node751_eq : Flapjack.WordAlloc.removeDeadStructural input751 value379 value1 value2 = (output751, value379, value1) := by
  rw [input751_def, output751_def]
  try (conv => lhs; cbv)
  try rfl

def value380 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 865 861 (Flapjack.WordRegImm.imm 18446744073709551368#64))))).val
theorem input752_def : input752 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 865 861 (Flapjack.WordRegImm.imm 18446744073709551368#64)))) := by
  unfold input752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 865 861 (Flapjack.WordRegImm.imm 18446744073709551368#64))))).val
theorem output752_def : output752 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 865 861 (Flapjack.WordRegImm.imm 18446744073709551368#64)))) := by
  unfold output752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output752_skip : Flapjack.WordAlloc.isSkip output752 = false := by
  rw [output752_def]
  conv => lhs; cbv
  try rfl
theorem node752_eq : Flapjack.WordAlloc.removeDeadStructural input752 value379 value1 value2 = (output752, value380, value1) := by
  rw [input752_def, output752_def]
  try (conv => lhs; cbv)
  try rfl

def value381 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 861 857)).val
theorem input753_def : input753 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 861 857) := by
  unfold input753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 861 857)).val
theorem output753_def : output753 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 861 857) := by
  unfold output753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output753_skip : Flapjack.WordAlloc.isSkip output753 = false := by
  rw [output753_def]
  conv => lhs; cbv
  try rfl
theorem node753_eq : Flapjack.WordAlloc.removeDeadStructural input753 value380 value1 value2 = (output753, value381, value1) := by
  rw [input753_def, output753_def]
  try (conv => lhs; cbv)
  try rfl

def value382 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 857 853 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input754_def : input754 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 857 853 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 857 853 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output754_def : output754 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 857 853 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output754_skip : Flapjack.WordAlloc.isSkip output754 = false := by
  rw [output754_def]
  conv => lhs; cbv
  try rfl
theorem node754_eq : Flapjack.WordAlloc.removeDeadStructural input754 value381 value1 value2 = (output754, value382, value1) := by
  rw [input754_def, output754_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 853 Flapjack.WordStore.heapLength)).val
theorem input755_def : input755 = (Flapjack.WordLangProgHOL.get 853 Flapjack.WordStore.heapLength) := by
  unfold input755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 853 Flapjack.WordStore.heapLength)).val
theorem output755_def : output755 = (Flapjack.WordLangProgHOL.get 853 Flapjack.WordStore.heapLength) := by
  unfold output755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output755_skip : Flapjack.WordAlloc.isSkip output755 = false := by
  rw [output755_def]
  conv => lhs; cbv
  try rfl
theorem node755_eq : Flapjack.WordAlloc.removeDeadStructural input755 value382 value1 value2 = (output755, value4, value1) := by
  rw [input755_def, output755_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input755 input754)).val
theorem input756_def : input756 = (.seq input755 input754) := by
  unfold input756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output755 output754)).val
theorem output756_def : output756 = (.seq output755 output754) := by
  unfold output756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output756_skip : Flapjack.WordAlloc.isSkip output756 = false := by
  rw [output756_def]
  conv => lhs; cbv
  try rfl
theorem node756_eq : Flapjack.WordAlloc.removeDeadStructural input756 value381 value1 value2 = (output756, value4, value1) := by
  rw [input756_def, output756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node754_eq]
  dsimp only
  rw [node755_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input756 input753)).val
theorem input757_def : input757 = (.seq input756 input753) := by
  unfold input757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output756 output753)).val
theorem output757_def : output757 = (.seq output756 output753) := by
  unfold output757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output757_skip : Flapjack.WordAlloc.isSkip output757 = false := by
  rw [output757_def]
  conv => lhs; cbv
  try rfl
theorem node757_eq : Flapjack.WordAlloc.removeDeadStructural input757 value380 value1 value2 = (output757, value4, value1) := by
  rw [input757_def, output757_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node753_eq]
  dsimp only
  rw [node756_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input757 input752)).val
theorem input758_def : input758 = (.seq input757 input752) := by
  unfold input758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output757 output752)).val
theorem output758_def : output758 = (.seq output757 output752) := by
  unfold output758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output758_skip : Flapjack.WordAlloc.isSkip output758 = false := by
  rw [output758_def]
  conv => lhs; cbv
  try rfl
theorem node758_eq : Flapjack.WordAlloc.removeDeadStructural input758 value379 value1 value2 = (output758, value4, value1) := by
  rw [input758_def, output758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node752_eq]
  dsimp only
  rw [node757_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value383 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 845 (Flapjack.WordLangAddr.addr 849 0#64)))).val
theorem input759_def : input759 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 845 (Flapjack.WordLangAddr.addr 849 0#64))) := by
  unfold input759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 845 (Flapjack.WordLangAddr.addr 849 0#64)))).val
theorem output759_def : output759 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 845 (Flapjack.WordLangAddr.addr 849 0#64))) := by
  unfold output759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output759_skip : Flapjack.WordAlloc.isSkip output759 = false := by
  rw [output759_def]
  conv => lhs; cbv
  try rfl
theorem node759_eq : Flapjack.WordAlloc.removeDeadStructural input759 value4 value1 value2 = (output759, value383, value1) := by
  rw [input759_def, output759_def]
  try (conv => lhs; cbv)
  try rfl

def value384 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(849, 837)])).val
theorem input760_def : input760 = (Flapjack.WordLangProgHOL.move 0 [(849, 837)]) := by
  unfold input760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(849, 837)])).val
theorem output760_def : output760 = (Flapjack.WordLangProgHOL.move 0 [(849, 837)]) := by
  unfold output760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output760_skip : Flapjack.WordAlloc.isSkip output760 = false := by
  rw [output760_def]
  conv => lhs; cbv
  try rfl
theorem node760_eq : Flapjack.WordAlloc.removeDeadStructural input760 value383 value1 value2 = (output760, value384, value1) := by
  rw [input760_def, output760_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input760 input759)).val
theorem input761_def : input761 = (.seq input760 input759) := by
  unfold input761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output760 output759)).val
theorem output761_def : output761 = (.seq output760 output759) := by
  unfold output761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output761_skip : Flapjack.WordAlloc.isSkip output761 = false := by
  rw [output761_def]
  conv => lhs; cbv
  try rfl
theorem node761_eq : Flapjack.WordAlloc.removeDeadStructural input761 value4 value1 value2 = (output761, value384, value1) := by
  rw [input761_def, output761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node759_eq]
  dsimp only
  rw [node760_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value385 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 845 0#64))).val
theorem input762_def : input762 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 845 0#64)) := by
  unfold input762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 845 0#64))).val
theorem output762_def : output762 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 845 0#64)) := by
  unfold output762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output762_skip : Flapjack.WordAlloc.isSkip output762 = false := by
  rw [output762_def]
  conv => lhs; cbv
  try rfl
theorem node762_eq : Flapjack.WordAlloc.removeDeadStructural input762 value384 value1 value2 = (output762, value385, value1) := by
  rw [input762_def, output762_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 841 0#64))).val
theorem input763_def : input763 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 841 0#64)) := by
  unfold input763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output763_def : output763 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output763_skip : Flapjack.WordAlloc.isSkip output763 = true := by
  rw [output763_def]
  conv => lhs; cbv
  try rfl
theorem node763_eq : Flapjack.WordAlloc.removeDeadStructural input763 value385 value1 value2 = (output763, value385, value1) := by
  rw [input763_def, output763_def]
  try (conv => lhs; cbv)
  try rfl

def value386 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 837 833 (Flapjack.WordRegImm.imm 18446744073709551376#64))))).val
theorem input764_def : input764 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 837 833 (Flapjack.WordRegImm.imm 18446744073709551376#64)))) := by
  unfold input764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 837 833 (Flapjack.WordRegImm.imm 18446744073709551376#64))))).val
theorem output764_def : output764 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 837 833 (Flapjack.WordRegImm.imm 18446744073709551376#64)))) := by
  unfold output764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output764_skip : Flapjack.WordAlloc.isSkip output764 = false := by
  rw [output764_def]
  conv => lhs; cbv
  try rfl
theorem node764_eq : Flapjack.WordAlloc.removeDeadStructural input764 value385 value1 value2 = (output764, value386, value1) := by
  rw [input764_def, output764_def]
  try (conv => lhs; cbv)
  try rfl

def value387 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 833 829)).val
theorem input765_def : input765 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 833 829) := by
  unfold input765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 833 829)).val
theorem output765_def : output765 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 833 829) := by
  unfold output765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output765_skip : Flapjack.WordAlloc.isSkip output765 = false := by
  rw [output765_def]
  conv => lhs; cbv
  try rfl
theorem node765_eq : Flapjack.WordAlloc.removeDeadStructural input765 value386 value1 value2 = (output765, value387, value1) := by
  rw [input765_def, output765_def]
  try (conv => lhs; cbv)
  try rfl

def value388 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 829 825 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input766_def : input766 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 829 825 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 829 825 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output766_def : output766 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 829 825 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output766_skip : Flapjack.WordAlloc.isSkip output766 = false := by
  rw [output766_def]
  conv => lhs; cbv
  try rfl
theorem node766_eq : Flapjack.WordAlloc.removeDeadStructural input766 value387 value1 value2 = (output766, value388, value1) := by
  rw [input766_def, output766_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 825 Flapjack.WordStore.heapLength)).val
theorem input767_def : input767 = (Flapjack.WordLangProgHOL.get 825 Flapjack.WordStore.heapLength) := by
  unfold input767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 825 Flapjack.WordStore.heapLength)).val
theorem output767_def : output767 = (Flapjack.WordLangProgHOL.get 825 Flapjack.WordStore.heapLength) := by
  unfold output767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output767_skip : Flapjack.WordAlloc.isSkip output767 = false := by
  rw [output767_def]
  conv => lhs; cbv
  try rfl
theorem node767_eq : Flapjack.WordAlloc.removeDeadStructural input767 value388 value1 value2 = (output767, value4, value1) := by
  rw [input767_def, output767_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node767_eq
end InitECandidate.Proofs.DeadStages64
