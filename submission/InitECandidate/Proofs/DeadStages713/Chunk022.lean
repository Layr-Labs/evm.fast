import InitECandidate.Proofs.DeadStages713.Chunk021
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input5632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5631 input5630)).val
theorem input5632_def : input5632 = (.seq input5631 input5630) := by
  unfold input5632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5631 output5630)).val
theorem output5632_def : output5632 = (.seq output5631 output5630) := by
  unfold output5632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5632_skip : Flapjack.WordAlloc.isSkip output5632 = false := by
  rw [output5632_def]
  conv => lhs; cbv
  try rfl
theorem node5632_eq : Flapjack.WordAlloc.removeDeadStructural input5632 value2820 value1 value2 = (output5632, value5, value1) := by
  rw [input5632_def, output5632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5630_eq]
  dsimp only
  rw [node5631_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5632 input5629)).val
theorem input5633_def : input5633 = (.seq input5632 input5629) := by
  unfold input5633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5632 output5629)).val
theorem output5633_def : output5633 = (.seq output5632 output5629) := by
  unfold output5633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5633_skip : Flapjack.WordAlloc.isSkip output5633 = false := by
  rw [output5633_def]
  conv => lhs; cbv
  try rfl
theorem node5633_eq : Flapjack.WordAlloc.removeDeadStructural input5633 value2819 value1 value2 = (output5633, value5, value1) := by
  rw [input5633_def, output5633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5629_eq]
  dsimp only
  rw [node5632_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5633 input5628)).val
theorem input5634_def : input5634 = (.seq input5633 input5628) := by
  unfold input5634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5633 output5628)).val
theorem output5634_def : output5634 = (.seq output5633 output5628) := by
  unfold output5634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5634_skip : Flapjack.WordAlloc.isSkip output5634 = false := by
  rw [output5634_def]
  conv => lhs; cbv
  try rfl
theorem node5634_eq : Flapjack.WordAlloc.removeDeadStructural input5634 value2818 value1 value2 = (output5634, value5, value1) := by
  rw [input5634_def, output5634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5628_eq]
  dsimp only
  rw [node5633_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5634 input5627)).val
theorem input5635_def : input5635 = (.seq input5634 input5627) := by
  unfold input5635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5634 output5627)).val
theorem output5635_def : output5635 = (.seq output5634 output5627) := by
  unfold output5635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5635_skip : Flapjack.WordAlloc.isSkip output5635 = false := by
  rw [output5635_def]
  conv => lhs; cbv
  try rfl
theorem node5635_eq : Flapjack.WordAlloc.removeDeadStructural input5635 value2816 value1 value2 = (output5635, value5, value1) := by
  rw [input5635_def, output5635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5627_eq]
  dsimp only
  rw [node5634_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2822 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18537 (Flapjack.WordLangAddr.addr 18541 0#64)))).val
theorem input5636_def : input5636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18537 (Flapjack.WordLangAddr.addr 18541 0#64))) := by
  unfold input5636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18537 (Flapjack.WordLangAddr.addr 18541 0#64)))).val
theorem output5636_def : output5636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18537 (Flapjack.WordLangAddr.addr 18541 0#64))) := by
  unfold output5636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5636_skip : Flapjack.WordAlloc.isSkip output5636 = false := by
  rw [output5636_def]
  conv => lhs; cbv
  try rfl
theorem node5636_eq : Flapjack.WordAlloc.removeDeadStructural input5636 value5 value1 value2 = (output5636, value2822, value1) := by
  rw [input5636_def, output5636_def]
  try (conv => lhs; cbv)
  try rfl

def value2823 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18541, 18529)])).val
theorem input5637_def : input5637 = (Flapjack.WordLangProgHOL.move 0 [(18541, 18529)]) := by
  unfold input5637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18541, 18529)])).val
theorem output5637_def : output5637 = (Flapjack.WordLangProgHOL.move 0 [(18541, 18529)]) := by
  unfold output5637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5637_skip : Flapjack.WordAlloc.isSkip output5637 = false := by
  rw [output5637_def]
  conv => lhs; cbv
  try rfl
theorem node5637_eq : Flapjack.WordAlloc.removeDeadStructural input5637 value2822 value1 value2 = (output5637, value2823, value1) := by
  rw [input5637_def, output5637_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5637 input5636)).val
theorem input5638_def : input5638 = (.seq input5637 input5636) := by
  unfold input5638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5637 output5636)).val
theorem output5638_def : output5638 = (.seq output5637 output5636) := by
  unfold output5638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5638_skip : Flapjack.WordAlloc.isSkip output5638 = false := by
  rw [output5638_def]
  conv => lhs; cbv
  try rfl
theorem node5638_eq : Flapjack.WordAlloc.removeDeadStructural input5638 value5 value1 value2 = (output5638, value2823, value1) := by
  rw [input5638_def, output5638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5636_eq]
  dsimp only
  rw [node5637_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2824 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18537 1655469341950262250#64))).val
theorem input5639_def : input5639 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18537 1655469341950262250#64)) := by
  unfold input5639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18537 1655469341950262250#64))).val
theorem output5639_def : output5639 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18537 1655469341950262250#64)) := by
  unfold output5639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5639_skip : Flapjack.WordAlloc.isSkip output5639 = false := by
  rw [output5639_def]
  conv => lhs; cbv
  try rfl
theorem node5639_eq : Flapjack.WordAlloc.removeDeadStructural input5639 value2823 value1 value2 = (output5639, value2824, value1) := by
  rw [input5639_def, output5639_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18533 1655469341950262250#64))).val
theorem input5640_def : input5640 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18533 1655469341950262250#64)) := by
  unfold input5640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5640_def : output5640 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5640_skip : Flapjack.WordAlloc.isSkip output5640 = true := by
  rw [output5640_def]
  conv => lhs; cbv
  try rfl
theorem node5640_eq : Flapjack.WordAlloc.removeDeadStructural input5640 value2824 value1 value2 = (output5640, value2824, value1) := by
  rw [input5640_def, output5640_def]
  try (conv => lhs; cbv)
  try rfl

def value2825 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18529 18521 (Flapjack.WordRegImm.reg 18525))))).val
theorem input5641_def : input5641 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18529 18521 (Flapjack.WordRegImm.reg 18525)))) := by
  unfold input5641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18529 18521 (Flapjack.WordRegImm.reg 18525))))).val
theorem output5641_def : output5641 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18529 18521 (Flapjack.WordRegImm.reg 18525)))) := by
  unfold output5641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5641_skip : Flapjack.WordAlloc.isSkip output5641 = false := by
  rw [output5641_def]
  conv => lhs; cbv
  try rfl
theorem node5641_eq : Flapjack.WordAlloc.removeDeadStructural input5641 value2824 value1 value2 = (output5641, value2825, value1) := by
  rw [input5641_def, output5641_def]
  try (conv => lhs; cbv)
  try rfl

def value2826 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18525 4312#64))).val
theorem input5642_def : input5642 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18525 4312#64)) := by
  unfold input5642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18525 4312#64))).val
theorem output5642_def : output5642 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18525 4312#64)) := by
  unfold output5642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5642_skip : Flapjack.WordAlloc.isSkip output5642 = false := by
  rw [output5642_def]
  conv => lhs; cbv
  try rfl
theorem node5642_eq : Flapjack.WordAlloc.removeDeadStructural input5642 value2825 value1 value2 = (output5642, value2826, value1) := by
  rw [input5642_def, output5642_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5642 input5641)).val
theorem input5643_def : input5643 = (.seq input5642 input5641) := by
  unfold input5643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5642 output5641)).val
theorem output5643_def : output5643 = (.seq output5642 output5641) := by
  unfold output5643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5643_skip : Flapjack.WordAlloc.isSkip output5643 = false := by
  rw [output5643_def]
  conv => lhs; cbv
  try rfl
theorem node5643_eq : Flapjack.WordAlloc.removeDeadStructural input5643 value2824 value1 value2 = (output5643, value2826, value1) := by
  rw [input5643_def, output5643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5641_eq]
  dsimp only
  rw [node5642_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2827 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18521 (Flapjack.WordLangAddr.addr 18517 18446744073709551104#64)))).val
theorem input5644_def : input5644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18521 (Flapjack.WordLangAddr.addr 18517 18446744073709551104#64))) := by
  unfold input5644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18521 (Flapjack.WordLangAddr.addr 18517 18446744073709551104#64)))).val
theorem output5644_def : output5644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18521 (Flapjack.WordLangAddr.addr 18517 18446744073709551104#64))) := by
  unfold output5644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5644_skip : Flapjack.WordAlloc.isSkip output5644 = false := by
  rw [output5644_def]
  conv => lhs; cbv
  try rfl
theorem node5644_eq : Flapjack.WordAlloc.removeDeadStructural input5644 value2826 value1 value2 = (output5644, value2827, value1) := by
  rw [input5644_def, output5644_def]
  try (conv => lhs; cbv)
  try rfl

def value2828 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18517 18513)).val
theorem input5645_def : input5645 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18517 18513) := by
  unfold input5645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18517 18513)).val
theorem output5645_def : output5645 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18517 18513) := by
  unfold output5645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5645_skip : Flapjack.WordAlloc.isSkip output5645 = false := by
  rw [output5645_def]
  conv => lhs; cbv
  try rfl
theorem node5645_eq : Flapjack.WordAlloc.removeDeadStructural input5645 value2827 value1 value2 = (output5645, value2828, value1) := by
  rw [input5645_def, output5645_def]
  try (conv => lhs; cbv)
  try rfl

def value2829 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18513 18509 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5646_def : input5646 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18513 18509 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18513 18509 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5646_def : output5646 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18513 18509 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5646_skip : Flapjack.WordAlloc.isSkip output5646 = false := by
  rw [output5646_def]
  conv => lhs; cbv
  try rfl
theorem node5646_eq : Flapjack.WordAlloc.removeDeadStructural input5646 value2828 value1 value2 = (output5646, value2829, value1) := by
  rw [input5646_def, output5646_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18509 Flapjack.WordStore.heapLength)).val
theorem input5647_def : input5647 = (Flapjack.WordLangProgHOL.get 18509 Flapjack.WordStore.heapLength) := by
  unfold input5647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18509 Flapjack.WordStore.heapLength)).val
theorem output5647_def : output5647 = (Flapjack.WordLangProgHOL.get 18509 Flapjack.WordStore.heapLength) := by
  unfold output5647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5647_skip : Flapjack.WordAlloc.isSkip output5647 = false := by
  rw [output5647_def]
  conv => lhs; cbv
  try rfl
theorem node5647_eq : Flapjack.WordAlloc.removeDeadStructural input5647 value2829 value1 value2 = (output5647, value5, value1) := by
  rw [input5647_def, output5647_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5647 input5646)).val
theorem input5648_def : input5648 = (.seq input5647 input5646) := by
  unfold input5648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5647 output5646)).val
theorem output5648_def : output5648 = (.seq output5647 output5646) := by
  unfold output5648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5648_skip : Flapjack.WordAlloc.isSkip output5648 = false := by
  rw [output5648_def]
  conv => lhs; cbv
  try rfl
theorem node5648_eq : Flapjack.WordAlloc.removeDeadStructural input5648 value2828 value1 value2 = (output5648, value5, value1) := by
  rw [input5648_def, output5648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5646_eq]
  dsimp only
  rw [node5647_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5648 input5645)).val
theorem input5649_def : input5649 = (.seq input5648 input5645) := by
  unfold input5649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5648 output5645)).val
theorem output5649_def : output5649 = (.seq output5648 output5645) := by
  unfold output5649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5649_skip : Flapjack.WordAlloc.isSkip output5649 = false := by
  rw [output5649_def]
  conv => lhs; cbv
  try rfl
theorem node5649_eq : Flapjack.WordAlloc.removeDeadStructural input5649 value2827 value1 value2 = (output5649, value5, value1) := by
  rw [input5649_def, output5649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5645_eq]
  dsimp only
  rw [node5648_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5649 input5644)).val
theorem input5650_def : input5650 = (.seq input5649 input5644) := by
  unfold input5650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5649 output5644)).val
theorem output5650_def : output5650 = (.seq output5649 output5644) := by
  unfold output5650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5650_skip : Flapjack.WordAlloc.isSkip output5650 = false := by
  rw [output5650_def]
  conv => lhs; cbv
  try rfl
theorem node5650_eq : Flapjack.WordAlloc.removeDeadStructural input5650 value2826 value1 value2 = (output5650, value5, value1) := by
  rw [input5650_def, output5650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5644_eq]
  dsimp only
  rw [node5649_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5650 input5643)).val
theorem input5651_def : input5651 = (.seq input5650 input5643) := by
  unfold input5651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5650 output5643)).val
theorem output5651_def : output5651 = (.seq output5650 output5643) := by
  unfold output5651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5651_skip : Flapjack.WordAlloc.isSkip output5651 = false := by
  rw [output5651_def]
  conv => lhs; cbv
  try rfl
theorem node5651_eq : Flapjack.WordAlloc.removeDeadStructural input5651 value2824 value1 value2 = (output5651, value5, value1) := by
  rw [input5651_def, output5651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5643_eq]
  dsimp only
  rw [node5650_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2830 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18501 (Flapjack.WordLangAddr.addr 18505 0#64)))).val
theorem input5652_def : input5652 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18501 (Flapjack.WordLangAddr.addr 18505 0#64))) := by
  unfold input5652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18501 (Flapjack.WordLangAddr.addr 18505 0#64)))).val
theorem output5652_def : output5652 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18501 (Flapjack.WordLangAddr.addr 18505 0#64))) := by
  unfold output5652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5652_skip : Flapjack.WordAlloc.isSkip output5652 = false := by
  rw [output5652_def]
  conv => lhs; cbv
  try rfl
theorem node5652_eq : Flapjack.WordAlloc.removeDeadStructural input5652 value5 value1 value2 = (output5652, value2830, value1) := by
  rw [input5652_def, output5652_def]
  try (conv => lhs; cbv)
  try rfl

def value2831 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18505, 18493)])).val
theorem input5653_def : input5653 = (Flapjack.WordLangProgHOL.move 0 [(18505, 18493)]) := by
  unfold input5653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18505, 18493)])).val
theorem output5653_def : output5653 = (Flapjack.WordLangProgHOL.move 0 [(18505, 18493)]) := by
  unfold output5653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5653_skip : Flapjack.WordAlloc.isSkip output5653 = false := by
  rw [output5653_def]
  conv => lhs; cbv
  try rfl
theorem node5653_eq : Flapjack.WordAlloc.removeDeadStructural input5653 value2830 value1 value2 = (output5653, value2831, value1) := by
  rw [input5653_def, output5653_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5653 input5652)).val
theorem input5654_def : input5654 = (.seq input5653 input5652) := by
  unfold input5654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5653 output5652)).val
theorem output5654_def : output5654 = (.seq output5653 output5652) := by
  unfold output5654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5654_skip : Flapjack.WordAlloc.isSkip output5654 = false := by
  rw [output5654_def]
  conv => lhs; cbv
  try rfl
theorem node5654_eq : Flapjack.WordAlloc.removeDeadStructural input5654 value5 value1 value2 = (output5654, value2831, value1) := by
  rw [input5654_def, output5654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5652_eq]
  dsimp only
  rw [node5653_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2832 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18501 10845992994110574738#64))).val
theorem input5655_def : input5655 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18501 10845992994110574738#64)) := by
  unfold input5655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18501 10845992994110574738#64))).val
theorem output5655_def : output5655 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18501 10845992994110574738#64)) := by
  unfold output5655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5655_skip : Flapjack.WordAlloc.isSkip output5655 = false := by
  rw [output5655_def]
  conv => lhs; cbv
  try rfl
theorem node5655_eq : Flapjack.WordAlloc.removeDeadStructural input5655 value2831 value1 value2 = (output5655, value2832, value1) := by
  rw [input5655_def, output5655_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18497 10845992994110574738#64))).val
theorem input5656_def : input5656 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18497 10845992994110574738#64)) := by
  unfold input5656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5656_def : output5656 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5656_skip : Flapjack.WordAlloc.isSkip output5656 = true := by
  rw [output5656_def]
  conv => lhs; cbv
  try rfl
theorem node5656_eq : Flapjack.WordAlloc.removeDeadStructural input5656 value2832 value1 value2 = (output5656, value2832, value1) := by
  rw [input5656_def, output5656_def]
  try (conv => lhs; cbv)
  try rfl

def value2833 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18493 18485 (Flapjack.WordRegImm.reg 18489))))).val
theorem input5657_def : input5657 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18493 18485 (Flapjack.WordRegImm.reg 18489)))) := by
  unfold input5657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18493 18485 (Flapjack.WordRegImm.reg 18489))))).val
theorem output5657_def : output5657 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18493 18485 (Flapjack.WordRegImm.reg 18489)))) := by
  unfold output5657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5657_skip : Flapjack.WordAlloc.isSkip output5657 = false := by
  rw [output5657_def]
  conv => lhs; cbv
  try rfl
theorem node5657_eq : Flapjack.WordAlloc.removeDeadStructural input5657 value2832 value1 value2 = (output5657, value2833, value1) := by
  rw [input5657_def, output5657_def]
  try (conv => lhs; cbv)
  try rfl

def value2834 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18489 4304#64))).val
theorem input5658_def : input5658 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18489 4304#64)) := by
  unfold input5658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18489 4304#64))).val
theorem output5658_def : output5658 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18489 4304#64)) := by
  unfold output5658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5658_skip : Flapjack.WordAlloc.isSkip output5658 = false := by
  rw [output5658_def]
  conv => lhs; cbv
  try rfl
theorem node5658_eq : Flapjack.WordAlloc.removeDeadStructural input5658 value2833 value1 value2 = (output5658, value2834, value1) := by
  rw [input5658_def, output5658_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5658 input5657)).val
theorem input5659_def : input5659 = (.seq input5658 input5657) := by
  unfold input5659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5658 output5657)).val
theorem output5659_def : output5659 = (.seq output5658 output5657) := by
  unfold output5659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5659_skip : Flapjack.WordAlloc.isSkip output5659 = false := by
  rw [output5659_def]
  conv => lhs; cbv
  try rfl
theorem node5659_eq : Flapjack.WordAlloc.removeDeadStructural input5659 value2832 value1 value2 = (output5659, value2834, value1) := by
  rw [input5659_def, output5659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5657_eq]
  dsimp only
  rw [node5658_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2835 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18485 (Flapjack.WordLangAddr.addr 18481 18446744073709551104#64)))).val
theorem input5660_def : input5660 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18485 (Flapjack.WordLangAddr.addr 18481 18446744073709551104#64))) := by
  unfold input5660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18485 (Flapjack.WordLangAddr.addr 18481 18446744073709551104#64)))).val
theorem output5660_def : output5660 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18485 (Flapjack.WordLangAddr.addr 18481 18446744073709551104#64))) := by
  unfold output5660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5660_skip : Flapjack.WordAlloc.isSkip output5660 = false := by
  rw [output5660_def]
  conv => lhs; cbv
  try rfl
theorem node5660_eq : Flapjack.WordAlloc.removeDeadStructural input5660 value2834 value1 value2 = (output5660, value2835, value1) := by
  rw [input5660_def, output5660_def]
  try (conv => lhs; cbv)
  try rfl

def value2836 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18481 18477)).val
theorem input5661_def : input5661 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18481 18477) := by
  unfold input5661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18481 18477)).val
theorem output5661_def : output5661 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18481 18477) := by
  unfold output5661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5661_skip : Flapjack.WordAlloc.isSkip output5661 = false := by
  rw [output5661_def]
  conv => lhs; cbv
  try rfl
theorem node5661_eq : Flapjack.WordAlloc.removeDeadStructural input5661 value2835 value1 value2 = (output5661, value2836, value1) := by
  rw [input5661_def, output5661_def]
  try (conv => lhs; cbv)
  try rfl

def value2837 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18477 18473 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5662_def : input5662 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18477 18473 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18477 18473 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5662_def : output5662 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18477 18473 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5662_skip : Flapjack.WordAlloc.isSkip output5662 = false := by
  rw [output5662_def]
  conv => lhs; cbv
  try rfl
theorem node5662_eq : Flapjack.WordAlloc.removeDeadStructural input5662 value2836 value1 value2 = (output5662, value2837, value1) := by
  rw [input5662_def, output5662_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18473 Flapjack.WordStore.heapLength)).val
theorem input5663_def : input5663 = (Flapjack.WordLangProgHOL.get 18473 Flapjack.WordStore.heapLength) := by
  unfold input5663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18473 Flapjack.WordStore.heapLength)).val
theorem output5663_def : output5663 = (Flapjack.WordLangProgHOL.get 18473 Flapjack.WordStore.heapLength) := by
  unfold output5663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5663_skip : Flapjack.WordAlloc.isSkip output5663 = false := by
  rw [output5663_def]
  conv => lhs; cbv
  try rfl
theorem node5663_eq : Flapjack.WordAlloc.removeDeadStructural input5663 value2837 value1 value2 = (output5663, value5, value1) := by
  rw [input5663_def, output5663_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5663 input5662)).val
theorem input5664_def : input5664 = (.seq input5663 input5662) := by
  unfold input5664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5663 output5662)).val
theorem output5664_def : output5664 = (.seq output5663 output5662) := by
  unfold output5664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5664_skip : Flapjack.WordAlloc.isSkip output5664 = false := by
  rw [output5664_def]
  conv => lhs; cbv
  try rfl
theorem node5664_eq : Flapjack.WordAlloc.removeDeadStructural input5664 value2836 value1 value2 = (output5664, value5, value1) := by
  rw [input5664_def, output5664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5662_eq]
  dsimp only
  rw [node5663_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5664 input5661)).val
theorem input5665_def : input5665 = (.seq input5664 input5661) := by
  unfold input5665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5664 output5661)).val
theorem output5665_def : output5665 = (.seq output5664 output5661) := by
  unfold output5665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5665_skip : Flapjack.WordAlloc.isSkip output5665 = false := by
  rw [output5665_def]
  conv => lhs; cbv
  try rfl
theorem node5665_eq : Flapjack.WordAlloc.removeDeadStructural input5665 value2835 value1 value2 = (output5665, value5, value1) := by
  rw [input5665_def, output5665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5661_eq]
  dsimp only
  rw [node5664_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5665 input5660)).val
theorem input5666_def : input5666 = (.seq input5665 input5660) := by
  unfold input5666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5665 output5660)).val
theorem output5666_def : output5666 = (.seq output5665 output5660) := by
  unfold output5666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5666_skip : Flapjack.WordAlloc.isSkip output5666 = false := by
  rw [output5666_def]
  conv => lhs; cbv
  try rfl
theorem node5666_eq : Flapjack.WordAlloc.removeDeadStructural input5666 value2834 value1 value2 = (output5666, value5, value1) := by
  rw [input5666_def, output5666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5660_eq]
  dsimp only
  rw [node5665_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5666 input5659)).val
theorem input5667_def : input5667 = (.seq input5666 input5659) := by
  unfold input5667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5666 output5659)).val
theorem output5667_def : output5667 = (.seq output5666 output5659) := by
  unfold output5667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5667_skip : Flapjack.WordAlloc.isSkip output5667 = false := by
  rw [output5667_def]
  conv => lhs; cbv
  try rfl
theorem node5667_eq : Flapjack.WordAlloc.removeDeadStructural input5667 value2832 value1 value2 = (output5667, value5, value1) := by
  rw [input5667_def, output5667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5659_eq]
  dsimp only
  rw [node5666_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2838 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18465 (Flapjack.WordLangAddr.addr 18469 0#64)))).val
theorem input5668_def : input5668 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18465 (Flapjack.WordLangAddr.addr 18469 0#64))) := by
  unfold input5668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18465 (Flapjack.WordLangAddr.addr 18469 0#64)))).val
theorem output5668_def : output5668 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18465 (Flapjack.WordLangAddr.addr 18469 0#64))) := by
  unfold output5668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5668_skip : Flapjack.WordAlloc.isSkip output5668 = false := by
  rw [output5668_def]
  conv => lhs; cbv
  try rfl
theorem node5668_eq : Flapjack.WordAlloc.removeDeadStructural input5668 value5 value1 value2 = (output5668, value2838, value1) := by
  rw [input5668_def, output5668_def]
  try (conv => lhs; cbv)
  try rfl

def value2839 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18469, 18457)])).val
theorem input5669_def : input5669 = (Flapjack.WordLangProgHOL.move 0 [(18469, 18457)]) := by
  unfold input5669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18469, 18457)])).val
theorem output5669_def : output5669 = (Flapjack.WordLangProgHOL.move 0 [(18469, 18457)]) := by
  unfold output5669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5669_skip : Flapjack.WordAlloc.isSkip output5669 = false := by
  rw [output5669_def]
  conv => lhs; cbv
  try rfl
theorem node5669_eq : Flapjack.WordAlloc.removeDeadStructural input5669 value2838 value1 value2 = (output5669, value2839, value1) := by
  rw [input5669_def, output5669_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5669 input5668)).val
theorem input5670_def : input5670 = (.seq input5669 input5668) := by
  unfold input5670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5669 output5668)).val
theorem output5670_def : output5670 = (.seq output5669 output5668) := by
  unfold output5670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5670_skip : Flapjack.WordAlloc.isSkip output5670 = false := by
  rw [output5670_def]
  conv => lhs; cbv
  try rfl
theorem node5670_eq : Flapjack.WordAlloc.removeDeadStructural input5670 value5 value1 value2 = (output5670, value2839, value1) := by
  rw [input5670_def, output5670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5668_eq]
  dsimp only
  rw [node5669_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2840 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18465 347606589330687421#64))).val
theorem input5671_def : input5671 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18465 347606589330687421#64)) := by
  unfold input5671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18465 347606589330687421#64))).val
theorem output5671_def : output5671 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18465 347606589330687421#64)) := by
  unfold output5671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5671_skip : Flapjack.WordAlloc.isSkip output5671 = false := by
  rw [output5671_def]
  conv => lhs; cbv
  try rfl
theorem node5671_eq : Flapjack.WordAlloc.removeDeadStructural input5671 value2839 value1 value2 = (output5671, value2840, value1) := by
  rw [input5671_def, output5671_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18461 347606589330687421#64))).val
theorem input5672_def : input5672 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18461 347606589330687421#64)) := by
  unfold input5672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5672_def : output5672 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5672_skip : Flapjack.WordAlloc.isSkip output5672 = true := by
  rw [output5672_def]
  conv => lhs; cbv
  try rfl
theorem node5672_eq : Flapjack.WordAlloc.removeDeadStructural input5672 value2840 value1 value2 = (output5672, value2840, value1) := by
  rw [input5672_def, output5672_def]
  try (conv => lhs; cbv)
  try rfl

def value2841 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18457 18449 (Flapjack.WordRegImm.reg 18453))))).val
theorem input5673_def : input5673 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18457 18449 (Flapjack.WordRegImm.reg 18453)))) := by
  unfold input5673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18457 18449 (Flapjack.WordRegImm.reg 18453))))).val
theorem output5673_def : output5673 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18457 18449 (Flapjack.WordRegImm.reg 18453)))) := by
  unfold output5673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5673_skip : Flapjack.WordAlloc.isSkip output5673 = false := by
  rw [output5673_def]
  conv => lhs; cbv
  try rfl
theorem node5673_eq : Flapjack.WordAlloc.removeDeadStructural input5673 value2840 value1 value2 = (output5673, value2841, value1) := by
  rw [input5673_def, output5673_def]
  try (conv => lhs; cbv)
  try rfl

def value2842 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18453 4296#64))).val
theorem input5674_def : input5674 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18453 4296#64)) := by
  unfold input5674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18453 4296#64))).val
theorem output5674_def : output5674 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18453 4296#64)) := by
  unfold output5674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5674_skip : Flapjack.WordAlloc.isSkip output5674 = false := by
  rw [output5674_def]
  conv => lhs; cbv
  try rfl
theorem node5674_eq : Flapjack.WordAlloc.removeDeadStructural input5674 value2841 value1 value2 = (output5674, value2842, value1) := by
  rw [input5674_def, output5674_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5674 input5673)).val
theorem input5675_def : input5675 = (.seq input5674 input5673) := by
  unfold input5675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5674 output5673)).val
theorem output5675_def : output5675 = (.seq output5674 output5673) := by
  unfold output5675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5675_skip : Flapjack.WordAlloc.isSkip output5675 = false := by
  rw [output5675_def]
  conv => lhs; cbv
  try rfl
theorem node5675_eq : Flapjack.WordAlloc.removeDeadStructural input5675 value2840 value1 value2 = (output5675, value2842, value1) := by
  rw [input5675_def, output5675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5673_eq]
  dsimp only
  rw [node5674_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2843 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18449 (Flapjack.WordLangAddr.addr 18445 18446744073709551104#64)))).val
theorem input5676_def : input5676 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18449 (Flapjack.WordLangAddr.addr 18445 18446744073709551104#64))) := by
  unfold input5676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18449 (Flapjack.WordLangAddr.addr 18445 18446744073709551104#64)))).val
theorem output5676_def : output5676 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18449 (Flapjack.WordLangAddr.addr 18445 18446744073709551104#64))) := by
  unfold output5676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5676_skip : Flapjack.WordAlloc.isSkip output5676 = false := by
  rw [output5676_def]
  conv => lhs; cbv
  try rfl
theorem node5676_eq : Flapjack.WordAlloc.removeDeadStructural input5676 value2842 value1 value2 = (output5676, value2843, value1) := by
  rw [input5676_def, output5676_def]
  try (conv => lhs; cbv)
  try rfl

def value2844 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18445 18441)).val
theorem input5677_def : input5677 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18445 18441) := by
  unfold input5677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18445 18441)).val
theorem output5677_def : output5677 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18445 18441) := by
  unfold output5677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5677_skip : Flapjack.WordAlloc.isSkip output5677 = false := by
  rw [output5677_def]
  conv => lhs; cbv
  try rfl
theorem node5677_eq : Flapjack.WordAlloc.removeDeadStructural input5677 value2843 value1 value2 = (output5677, value2844, value1) := by
  rw [input5677_def, output5677_def]
  try (conv => lhs; cbv)
  try rfl

def value2845 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18441 18437 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5678_def : input5678 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18441 18437 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18441 18437 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5678_def : output5678 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18441 18437 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5678_skip : Flapjack.WordAlloc.isSkip output5678 = false := by
  rw [output5678_def]
  conv => lhs; cbv
  try rfl
theorem node5678_eq : Flapjack.WordAlloc.removeDeadStructural input5678 value2844 value1 value2 = (output5678, value2845, value1) := by
  rw [input5678_def, output5678_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18437 Flapjack.WordStore.heapLength)).val
theorem input5679_def : input5679 = (Flapjack.WordLangProgHOL.get 18437 Flapjack.WordStore.heapLength) := by
  unfold input5679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18437 Flapjack.WordStore.heapLength)).val
theorem output5679_def : output5679 = (Flapjack.WordLangProgHOL.get 18437 Flapjack.WordStore.heapLength) := by
  unfold output5679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5679_skip : Flapjack.WordAlloc.isSkip output5679 = false := by
  rw [output5679_def]
  conv => lhs; cbv
  try rfl
theorem node5679_eq : Flapjack.WordAlloc.removeDeadStructural input5679 value2845 value1 value2 = (output5679, value5, value1) := by
  rw [input5679_def, output5679_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5679 input5678)).val
theorem input5680_def : input5680 = (.seq input5679 input5678) := by
  unfold input5680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5679 output5678)).val
theorem output5680_def : output5680 = (.seq output5679 output5678) := by
  unfold output5680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5680_skip : Flapjack.WordAlloc.isSkip output5680 = false := by
  rw [output5680_def]
  conv => lhs; cbv
  try rfl
theorem node5680_eq : Flapjack.WordAlloc.removeDeadStructural input5680 value2844 value1 value2 = (output5680, value5, value1) := by
  rw [input5680_def, output5680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5678_eq]
  dsimp only
  rw [node5679_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5680 input5677)).val
theorem input5681_def : input5681 = (.seq input5680 input5677) := by
  unfold input5681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5680 output5677)).val
theorem output5681_def : output5681 = (.seq output5680 output5677) := by
  unfold output5681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5681_skip : Flapjack.WordAlloc.isSkip output5681 = false := by
  rw [output5681_def]
  conv => lhs; cbv
  try rfl
theorem node5681_eq : Flapjack.WordAlloc.removeDeadStructural input5681 value2843 value1 value2 = (output5681, value5, value1) := by
  rw [input5681_def, output5681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5677_eq]
  dsimp only
  rw [node5680_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5681 input5676)).val
theorem input5682_def : input5682 = (.seq input5681 input5676) := by
  unfold input5682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5681 output5676)).val
theorem output5682_def : output5682 = (.seq output5681 output5676) := by
  unfold output5682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5682_skip : Flapjack.WordAlloc.isSkip output5682 = false := by
  rw [output5682_def]
  conv => lhs; cbv
  try rfl
theorem node5682_eq : Flapjack.WordAlloc.removeDeadStructural input5682 value2842 value1 value2 = (output5682, value5, value1) := by
  rw [input5682_def, output5682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5676_eq]
  dsimp only
  rw [node5681_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5682 input5675)).val
theorem input5683_def : input5683 = (.seq input5682 input5675) := by
  unfold input5683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5682 output5675)).val
theorem output5683_def : output5683 = (.seq output5682 output5675) := by
  unfold output5683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5683_skip : Flapjack.WordAlloc.isSkip output5683 = false := by
  rw [output5683_def]
  conv => lhs; cbv
  try rfl
theorem node5683_eq : Flapjack.WordAlloc.removeDeadStructural input5683 value2840 value1 value2 = (output5683, value5, value1) := by
  rw [input5683_def, output5683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5675_eq]
  dsimp only
  rw [node5682_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2846 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18429 (Flapjack.WordLangAddr.addr 18433 0#64)))).val
theorem input5684_def : input5684 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18429 (Flapjack.WordLangAddr.addr 18433 0#64))) := by
  unfold input5684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18429 (Flapjack.WordLangAddr.addr 18433 0#64)))).val
theorem output5684_def : output5684 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18429 (Flapjack.WordLangAddr.addr 18433 0#64))) := by
  unfold output5684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5684_skip : Flapjack.WordAlloc.isSkip output5684 = false := by
  rw [output5684_def]
  conv => lhs; cbv
  try rfl
theorem node5684_eq : Flapjack.WordAlloc.removeDeadStructural input5684 value5 value1 value2 = (output5684, value2846, value1) := by
  rw [input5684_def, output5684_def]
  try (conv => lhs; cbv)
  try rfl

def value2847 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18433, 18421)])).val
theorem input5685_def : input5685 = (Flapjack.WordLangProgHOL.move 0 [(18433, 18421)]) := by
  unfold input5685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18433, 18421)])).val
theorem output5685_def : output5685 = (Flapjack.WordLangProgHOL.move 0 [(18433, 18421)]) := by
  unfold output5685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5685_skip : Flapjack.WordAlloc.isSkip output5685 = false := by
  rw [output5685_def]
  conv => lhs; cbv
  try rfl
theorem node5685_eq : Flapjack.WordAlloc.removeDeadStructural input5685 value2846 value1 value2 = (output5685, value2847, value1) := by
  rw [input5685_def, output5685_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5685 input5684)).val
theorem input5686_def : input5686 = (.seq input5685 input5684) := by
  unfold input5686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5685 output5684)).val
theorem output5686_def : output5686 = (.seq output5685 output5684) := by
  unfold output5686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5686_skip : Flapjack.WordAlloc.isSkip output5686 = false := by
  rw [output5686_def]
  conv => lhs; cbv
  try rfl
theorem node5686_eq : Flapjack.WordAlloc.removeDeadStructural input5686 value5 value1 value2 = (output5686, value2847, value1) := by
  rw [input5686_def, output5686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5684_eq]
  dsimp only
  rw [node5685_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2848 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18429 5255719044972187933#64))).val
theorem input5687_def : input5687 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18429 5255719044972187933#64)) := by
  unfold input5687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18429 5255719044972187933#64))).val
theorem output5687_def : output5687 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18429 5255719044972187933#64)) := by
  unfold output5687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5687_skip : Flapjack.WordAlloc.isSkip output5687 = false := by
  rw [output5687_def]
  conv => lhs; cbv
  try rfl
theorem node5687_eq : Flapjack.WordAlloc.removeDeadStructural input5687 value2847 value1 value2 = (output5687, value2848, value1) := by
  rw [input5687_def, output5687_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18425 5255719044972187933#64))).val
theorem input5688_def : input5688 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18425 5255719044972187933#64)) := by
  unfold input5688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5688_def : output5688 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5688_skip : Flapjack.WordAlloc.isSkip output5688 = true := by
  rw [output5688_def]
  conv => lhs; cbv
  try rfl
theorem node5688_eq : Flapjack.WordAlloc.removeDeadStructural input5688 value2848 value1 value2 = (output5688, value2848, value1) := by
  rw [input5688_def, output5688_def]
  try (conv => lhs; cbv)
  try rfl

def value2849 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18421 18413 (Flapjack.WordRegImm.reg 18417))))).val
theorem input5689_def : input5689 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18421 18413 (Flapjack.WordRegImm.reg 18417)))) := by
  unfold input5689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18421 18413 (Flapjack.WordRegImm.reg 18417))))).val
theorem output5689_def : output5689 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18421 18413 (Flapjack.WordRegImm.reg 18417)))) := by
  unfold output5689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5689_skip : Flapjack.WordAlloc.isSkip output5689 = false := by
  rw [output5689_def]
  conv => lhs; cbv
  try rfl
theorem node5689_eq : Flapjack.WordAlloc.removeDeadStructural input5689 value2848 value1 value2 = (output5689, value2849, value1) := by
  rw [input5689_def, output5689_def]
  try (conv => lhs; cbv)
  try rfl

def value2850 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18417 4288#64))).val
theorem input5690_def : input5690 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18417 4288#64)) := by
  unfold input5690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18417 4288#64))).val
theorem output5690_def : output5690 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18417 4288#64)) := by
  unfold output5690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5690_skip : Flapjack.WordAlloc.isSkip output5690 = false := by
  rw [output5690_def]
  conv => lhs; cbv
  try rfl
theorem node5690_eq : Flapjack.WordAlloc.removeDeadStructural input5690 value2849 value1 value2 = (output5690, value2850, value1) := by
  rw [input5690_def, output5690_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5690 input5689)).val
theorem input5691_def : input5691 = (.seq input5690 input5689) := by
  unfold input5691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5690 output5689)).val
theorem output5691_def : output5691 = (.seq output5690 output5689) := by
  unfold output5691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5691_skip : Flapjack.WordAlloc.isSkip output5691 = false := by
  rw [output5691_def]
  conv => lhs; cbv
  try rfl
theorem node5691_eq : Flapjack.WordAlloc.removeDeadStructural input5691 value2848 value1 value2 = (output5691, value2850, value1) := by
  rw [input5691_def, output5691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5689_eq]
  dsimp only
  rw [node5690_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2851 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18413 (Flapjack.WordLangAddr.addr 18409 18446744073709551104#64)))).val
theorem input5692_def : input5692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18413 (Flapjack.WordLangAddr.addr 18409 18446744073709551104#64))) := by
  unfold input5692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18413 (Flapjack.WordLangAddr.addr 18409 18446744073709551104#64)))).val
theorem output5692_def : output5692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18413 (Flapjack.WordLangAddr.addr 18409 18446744073709551104#64))) := by
  unfold output5692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5692_skip : Flapjack.WordAlloc.isSkip output5692 = false := by
  rw [output5692_def]
  conv => lhs; cbv
  try rfl
theorem node5692_eq : Flapjack.WordAlloc.removeDeadStructural input5692 value2850 value1 value2 = (output5692, value2851, value1) := by
  rw [input5692_def, output5692_def]
  try (conv => lhs; cbv)
  try rfl

def value2852 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18409 18405)).val
theorem input5693_def : input5693 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18409 18405) := by
  unfold input5693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18409 18405)).val
theorem output5693_def : output5693 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18409 18405) := by
  unfold output5693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5693_skip : Flapjack.WordAlloc.isSkip output5693 = false := by
  rw [output5693_def]
  conv => lhs; cbv
  try rfl
theorem node5693_eq : Flapjack.WordAlloc.removeDeadStructural input5693 value2851 value1 value2 = (output5693, value2852, value1) := by
  rw [input5693_def, output5693_def]
  try (conv => lhs; cbv)
  try rfl

def value2853 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18405 18401 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5694_def : input5694 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18405 18401 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18405 18401 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5694_def : output5694 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18405 18401 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5694_skip : Flapjack.WordAlloc.isSkip output5694 = false := by
  rw [output5694_def]
  conv => lhs; cbv
  try rfl
theorem node5694_eq : Flapjack.WordAlloc.removeDeadStructural input5694 value2852 value1 value2 = (output5694, value2853, value1) := by
  rw [input5694_def, output5694_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18401 Flapjack.WordStore.heapLength)).val
theorem input5695_def : input5695 = (Flapjack.WordLangProgHOL.get 18401 Flapjack.WordStore.heapLength) := by
  unfold input5695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18401 Flapjack.WordStore.heapLength)).val
theorem output5695_def : output5695 = (Flapjack.WordLangProgHOL.get 18401 Flapjack.WordStore.heapLength) := by
  unfold output5695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5695_skip : Flapjack.WordAlloc.isSkip output5695 = false := by
  rw [output5695_def]
  conv => lhs; cbv
  try rfl
theorem node5695_eq : Flapjack.WordAlloc.removeDeadStructural input5695 value2853 value1 value2 = (output5695, value5, value1) := by
  rw [input5695_def, output5695_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5695 input5694)).val
theorem input5696_def : input5696 = (.seq input5695 input5694) := by
  unfold input5696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5695 output5694)).val
theorem output5696_def : output5696 = (.seq output5695 output5694) := by
  unfold output5696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5696_skip : Flapjack.WordAlloc.isSkip output5696 = false := by
  rw [output5696_def]
  conv => lhs; cbv
  try rfl
theorem node5696_eq : Flapjack.WordAlloc.removeDeadStructural input5696 value2852 value1 value2 = (output5696, value5, value1) := by
  rw [input5696_def, output5696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5694_eq]
  dsimp only
  rw [node5695_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5696 input5693)).val
theorem input5697_def : input5697 = (.seq input5696 input5693) := by
  unfold input5697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5696 output5693)).val
theorem output5697_def : output5697 = (.seq output5696 output5693) := by
  unfold output5697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5697_skip : Flapjack.WordAlloc.isSkip output5697 = false := by
  rw [output5697_def]
  conv => lhs; cbv
  try rfl
theorem node5697_eq : Flapjack.WordAlloc.removeDeadStructural input5697 value2851 value1 value2 = (output5697, value5, value1) := by
  rw [input5697_def, output5697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5693_eq]
  dsimp only
  rw [node5696_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5697 input5692)).val
theorem input5698_def : input5698 = (.seq input5697 input5692) := by
  unfold input5698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5697 output5692)).val
theorem output5698_def : output5698 = (.seq output5697 output5692) := by
  unfold output5698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5698_skip : Flapjack.WordAlloc.isSkip output5698 = false := by
  rw [output5698_def]
  conv => lhs; cbv
  try rfl
theorem node5698_eq : Flapjack.WordAlloc.removeDeadStructural input5698 value2850 value1 value2 = (output5698, value5, value1) := by
  rw [input5698_def, output5698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5692_eq]
  dsimp only
  rw [node5697_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5698 input5691)).val
theorem input5699_def : input5699 = (.seq input5698 input5691) := by
  unfold input5699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5698 output5691)).val
theorem output5699_def : output5699 = (.seq output5698 output5691) := by
  unfold output5699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5699_skip : Flapjack.WordAlloc.isSkip output5699 = false := by
  rw [output5699_def]
  conv => lhs; cbv
  try rfl
theorem node5699_eq : Flapjack.WordAlloc.removeDeadStructural input5699 value2848 value1 value2 = (output5699, value5, value1) := by
  rw [input5699_def, output5699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5691_eq]
  dsimp only
  rw [node5698_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2854 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18393 (Flapjack.WordLangAddr.addr 18397 0#64)))).val
theorem input5700_def : input5700 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18393 (Flapjack.WordLangAddr.addr 18397 0#64))) := by
  unfold input5700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18393 (Flapjack.WordLangAddr.addr 18397 0#64)))).val
theorem output5700_def : output5700 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18393 (Flapjack.WordLangAddr.addr 18397 0#64))) := by
  unfold output5700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5700_skip : Flapjack.WordAlloc.isSkip output5700 = false := by
  rw [output5700_def]
  conv => lhs; cbv
  try rfl
theorem node5700_eq : Flapjack.WordAlloc.removeDeadStructural input5700 value5 value1 value2 = (output5700, value2854, value1) := by
  rw [input5700_def, output5700_def]
  try (conv => lhs; cbv)
  try rfl

def value2855 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18397, 18385)])).val
theorem input5701_def : input5701 = (Flapjack.WordLangProgHOL.move 0 [(18397, 18385)]) := by
  unfold input5701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18397, 18385)])).val
theorem output5701_def : output5701 = (Flapjack.WordLangProgHOL.move 0 [(18397, 18385)]) := by
  unfold output5701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5701_skip : Flapjack.WordAlloc.isSkip output5701 = false := by
  rw [output5701_def]
  conv => lhs; cbv
  try rfl
theorem node5701_eq : Flapjack.WordAlloc.removeDeadStructural input5701 value2854 value1 value2 = (output5701, value2855, value1) := by
  rw [input5701_def, output5701_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5701 input5700)).val
theorem input5702_def : input5702 = (.seq input5701 input5700) := by
  unfold input5702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5701 output5700)).val
theorem output5702_def : output5702 = (.seq output5701 output5700) := by
  unfold output5702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5702_skip : Flapjack.WordAlloc.isSkip output5702 = false := by
  rw [output5702_def]
  conv => lhs; cbv
  try rfl
theorem node5702_eq : Flapjack.WordAlloc.removeDeadStructural input5702 value5 value1 value2 = (output5702, value2855, value1) := by
  rw [input5702_def, output5702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5700_eq]
  dsimp only
  rw [node5701_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2856 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18393 11271894388753671721#64))).val
theorem input5703_def : input5703 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18393 11271894388753671721#64)) := by
  unfold input5703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18393 11271894388753671721#64))).val
theorem output5703_def : output5703 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18393 11271894388753671721#64)) := by
  unfold output5703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5703_skip : Flapjack.WordAlloc.isSkip output5703 = false := by
  rw [output5703_def]
  conv => lhs; cbv
  try rfl
theorem node5703_eq : Flapjack.WordAlloc.removeDeadStructural input5703 value2855 value1 value2 = (output5703, value2856, value1) := by
  rw [input5703_def, output5703_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18389 11271894388753671721#64))).val
theorem input5704_def : input5704 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18389 11271894388753671721#64)) := by
  unfold input5704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5704_def : output5704 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5704_skip : Flapjack.WordAlloc.isSkip output5704 = true := by
  rw [output5704_def]
  conv => lhs; cbv
  try rfl
theorem node5704_eq : Flapjack.WordAlloc.removeDeadStructural input5704 value2856 value1 value2 = (output5704, value2856, value1) := by
  rw [input5704_def, output5704_def]
  try (conv => lhs; cbv)
  try rfl

def value2857 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18385 18377 (Flapjack.WordRegImm.reg 18381))))).val
theorem input5705_def : input5705 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18385 18377 (Flapjack.WordRegImm.reg 18381)))) := by
  unfold input5705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18385 18377 (Flapjack.WordRegImm.reg 18381))))).val
theorem output5705_def : output5705 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18385 18377 (Flapjack.WordRegImm.reg 18381)))) := by
  unfold output5705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5705_skip : Flapjack.WordAlloc.isSkip output5705 = false := by
  rw [output5705_def]
  conv => lhs; cbv
  try rfl
theorem node5705_eq : Flapjack.WordAlloc.removeDeadStructural input5705 value2856 value1 value2 = (output5705, value2857, value1) := by
  rw [input5705_def, output5705_def]
  try (conv => lhs; cbv)
  try rfl

def value2858 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18381 4280#64))).val
theorem input5706_def : input5706 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18381 4280#64)) := by
  unfold input5706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18381 4280#64))).val
theorem output5706_def : output5706 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18381 4280#64)) := by
  unfold output5706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5706_skip : Flapjack.WordAlloc.isSkip output5706 = false := by
  rw [output5706_def]
  conv => lhs; cbv
  try rfl
theorem node5706_eq : Flapjack.WordAlloc.removeDeadStructural input5706 value2857 value1 value2 = (output5706, value2858, value1) := by
  rw [input5706_def, output5706_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5706 input5705)).val
theorem input5707_def : input5707 = (.seq input5706 input5705) := by
  unfold input5707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5706 output5705)).val
theorem output5707_def : output5707 = (.seq output5706 output5705) := by
  unfold output5707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5707_skip : Flapjack.WordAlloc.isSkip output5707 = false := by
  rw [output5707_def]
  conv => lhs; cbv
  try rfl
theorem node5707_eq : Flapjack.WordAlloc.removeDeadStructural input5707 value2856 value1 value2 = (output5707, value2858, value1) := by
  rw [input5707_def, output5707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5705_eq]
  dsimp only
  rw [node5706_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2859 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18377 (Flapjack.WordLangAddr.addr 18373 18446744073709551104#64)))).val
theorem input5708_def : input5708 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18377 (Flapjack.WordLangAddr.addr 18373 18446744073709551104#64))) := by
  unfold input5708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18377 (Flapjack.WordLangAddr.addr 18373 18446744073709551104#64)))).val
theorem output5708_def : output5708 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18377 (Flapjack.WordLangAddr.addr 18373 18446744073709551104#64))) := by
  unfold output5708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5708_skip : Flapjack.WordAlloc.isSkip output5708 = false := by
  rw [output5708_def]
  conv => lhs; cbv
  try rfl
theorem node5708_eq : Flapjack.WordAlloc.removeDeadStructural input5708 value2858 value1 value2 = (output5708, value2859, value1) := by
  rw [input5708_def, output5708_def]
  try (conv => lhs; cbv)
  try rfl

def value2860 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18373 18369)).val
theorem input5709_def : input5709 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18373 18369) := by
  unfold input5709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18373 18369)).val
theorem output5709_def : output5709 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18373 18369) := by
  unfold output5709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5709_skip : Flapjack.WordAlloc.isSkip output5709 = false := by
  rw [output5709_def]
  conv => lhs; cbv
  try rfl
theorem node5709_eq : Flapjack.WordAlloc.removeDeadStructural input5709 value2859 value1 value2 = (output5709, value2860, value1) := by
  rw [input5709_def, output5709_def]
  try (conv => lhs; cbv)
  try rfl

def value2861 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18369 18365 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5710_def : input5710 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18369 18365 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18369 18365 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5710_def : output5710 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18369 18365 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5710_skip : Flapjack.WordAlloc.isSkip output5710 = false := by
  rw [output5710_def]
  conv => lhs; cbv
  try rfl
theorem node5710_eq : Flapjack.WordAlloc.removeDeadStructural input5710 value2860 value1 value2 = (output5710, value2861, value1) := by
  rw [input5710_def, output5710_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18365 Flapjack.WordStore.heapLength)).val
theorem input5711_def : input5711 = (Flapjack.WordLangProgHOL.get 18365 Flapjack.WordStore.heapLength) := by
  unfold input5711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18365 Flapjack.WordStore.heapLength)).val
theorem output5711_def : output5711 = (Flapjack.WordLangProgHOL.get 18365 Flapjack.WordStore.heapLength) := by
  unfold output5711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5711_skip : Flapjack.WordAlloc.isSkip output5711 = false := by
  rw [output5711_def]
  conv => lhs; cbv
  try rfl
theorem node5711_eq : Flapjack.WordAlloc.removeDeadStructural input5711 value2861 value1 value2 = (output5711, value5, value1) := by
  rw [input5711_def, output5711_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5711 input5710)).val
theorem input5712_def : input5712 = (.seq input5711 input5710) := by
  unfold input5712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5711 output5710)).val
theorem output5712_def : output5712 = (.seq output5711 output5710) := by
  unfold output5712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5712_skip : Flapjack.WordAlloc.isSkip output5712 = false := by
  rw [output5712_def]
  conv => lhs; cbv
  try rfl
theorem node5712_eq : Flapjack.WordAlloc.removeDeadStructural input5712 value2860 value1 value2 = (output5712, value5, value1) := by
  rw [input5712_def, output5712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5710_eq]
  dsimp only
  rw [node5711_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5712 input5709)).val
theorem input5713_def : input5713 = (.seq input5712 input5709) := by
  unfold input5713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5712 output5709)).val
theorem output5713_def : output5713 = (.seq output5712 output5709) := by
  unfold output5713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5713_skip : Flapjack.WordAlloc.isSkip output5713 = false := by
  rw [output5713_def]
  conv => lhs; cbv
  try rfl
theorem node5713_eq : Flapjack.WordAlloc.removeDeadStructural input5713 value2859 value1 value2 = (output5713, value5, value1) := by
  rw [input5713_def, output5713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5709_eq]
  dsimp only
  rw [node5712_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5713 input5708)).val
theorem input5714_def : input5714 = (.seq input5713 input5708) := by
  unfold input5714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5713 output5708)).val
theorem output5714_def : output5714 = (.seq output5713 output5708) := by
  unfold output5714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5714_skip : Flapjack.WordAlloc.isSkip output5714 = false := by
  rw [output5714_def]
  conv => lhs; cbv
  try rfl
theorem node5714_eq : Flapjack.WordAlloc.removeDeadStructural input5714 value2858 value1 value2 = (output5714, value5, value1) := by
  rw [input5714_def, output5714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5708_eq]
  dsimp only
  rw [node5713_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5714 input5707)).val
theorem input5715_def : input5715 = (.seq input5714 input5707) := by
  unfold input5715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5714 output5707)).val
theorem output5715_def : output5715 = (.seq output5714 output5707) := by
  unfold output5715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5715_skip : Flapjack.WordAlloc.isSkip output5715 = false := by
  rw [output5715_def]
  conv => lhs; cbv
  try rfl
theorem node5715_eq : Flapjack.WordAlloc.removeDeadStructural input5715 value2856 value1 value2 = (output5715, value5, value1) := by
  rw [input5715_def, output5715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5707_eq]
  dsimp only
  rw [node5714_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2862 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18357 (Flapjack.WordLangAddr.addr 18361 0#64)))).val
theorem input5716_def : input5716 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18357 (Flapjack.WordLangAddr.addr 18361 0#64))) := by
  unfold input5716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18357 (Flapjack.WordLangAddr.addr 18361 0#64)))).val
theorem output5716_def : output5716 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18357 (Flapjack.WordLangAddr.addr 18361 0#64))) := by
  unfold output5716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5716_skip : Flapjack.WordAlloc.isSkip output5716 = false := by
  rw [output5716_def]
  conv => lhs; cbv
  try rfl
theorem node5716_eq : Flapjack.WordAlloc.removeDeadStructural input5716 value5 value1 value2 = (output5716, value2862, value1) := by
  rw [input5716_def, output5716_def]
  try (conv => lhs; cbv)
  try rfl

def value2863 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18361, 18349)])).val
theorem input5717_def : input5717 = (Flapjack.WordLangProgHOL.move 0 [(18361, 18349)]) := by
  unfold input5717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18361, 18349)])).val
theorem output5717_def : output5717 = (Flapjack.WordLangProgHOL.move 0 [(18361, 18349)]) := by
  unfold output5717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5717_skip : Flapjack.WordAlloc.isSkip output5717 = false := by
  rw [output5717_def]
  conv => lhs; cbv
  try rfl
theorem node5717_eq : Flapjack.WordAlloc.removeDeadStructural input5717 value2862 value1 value2 = (output5717, value2863, value1) := by
  rw [input5717_def, output5717_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5717 input5716)).val
theorem input5718_def : input5718 = (.seq input5717 input5716) := by
  unfold input5718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5717 output5716)).val
theorem output5718_def : output5718 = (.seq output5717 output5716) := by
  unfold output5718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5718_skip : Flapjack.WordAlloc.isSkip output5718 = false := by
  rw [output5718_def]
  conv => lhs; cbv
  try rfl
theorem node5718_eq : Flapjack.WordAlloc.removeDeadStructural input5718 value5 value1 value2 = (output5718, value2863, value1) := by
  rw [input5718_def, output5718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5716_eq]
  dsimp only
  rw [node5717_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2864 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18357 1033887512062764488#64))).val
theorem input5719_def : input5719 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18357 1033887512062764488#64)) := by
  unfold input5719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18357 1033887512062764488#64))).val
theorem output5719_def : output5719 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18357 1033887512062764488#64)) := by
  unfold output5719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5719_skip : Flapjack.WordAlloc.isSkip output5719 = false := by
  rw [output5719_def]
  conv => lhs; cbv
  try rfl
theorem node5719_eq : Flapjack.WordAlloc.removeDeadStructural input5719 value2863 value1 value2 = (output5719, value2864, value1) := by
  rw [input5719_def, output5719_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18353 1033887512062764488#64))).val
theorem input5720_def : input5720 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18353 1033887512062764488#64)) := by
  unfold input5720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5720_def : output5720 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5720_skip : Flapjack.WordAlloc.isSkip output5720 = true := by
  rw [output5720_def]
  conv => lhs; cbv
  try rfl
theorem node5720_eq : Flapjack.WordAlloc.removeDeadStructural input5720 value2864 value1 value2 = (output5720, value2864, value1) := by
  rw [input5720_def, output5720_def]
  try (conv => lhs; cbv)
  try rfl

def value2865 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18349 18341 (Flapjack.WordRegImm.reg 18345))))).val
theorem input5721_def : input5721 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18349 18341 (Flapjack.WordRegImm.reg 18345)))) := by
  unfold input5721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18349 18341 (Flapjack.WordRegImm.reg 18345))))).val
theorem output5721_def : output5721 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18349 18341 (Flapjack.WordRegImm.reg 18345)))) := by
  unfold output5721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5721_skip : Flapjack.WordAlloc.isSkip output5721 = false := by
  rw [output5721_def]
  conv => lhs; cbv
  try rfl
theorem node5721_eq : Flapjack.WordAlloc.removeDeadStructural input5721 value2864 value1 value2 = (output5721, value2865, value1) := by
  rw [input5721_def, output5721_def]
  try (conv => lhs; cbv)
  try rfl

def value2866 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18345 4272#64))).val
theorem input5722_def : input5722 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18345 4272#64)) := by
  unfold input5722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18345 4272#64))).val
theorem output5722_def : output5722 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18345 4272#64)) := by
  unfold output5722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5722_skip : Flapjack.WordAlloc.isSkip output5722 = false := by
  rw [output5722_def]
  conv => lhs; cbv
  try rfl
theorem node5722_eq : Flapjack.WordAlloc.removeDeadStructural input5722 value2865 value1 value2 = (output5722, value2866, value1) := by
  rw [input5722_def, output5722_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5722 input5721)).val
theorem input5723_def : input5723 = (.seq input5722 input5721) := by
  unfold input5723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5722 output5721)).val
theorem output5723_def : output5723 = (.seq output5722 output5721) := by
  unfold output5723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5723_skip : Flapjack.WordAlloc.isSkip output5723 = false := by
  rw [output5723_def]
  conv => lhs; cbv
  try rfl
theorem node5723_eq : Flapjack.WordAlloc.removeDeadStructural input5723 value2864 value1 value2 = (output5723, value2866, value1) := by
  rw [input5723_def, output5723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5721_eq]
  dsimp only
  rw [node5722_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2867 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18341 (Flapjack.WordLangAddr.addr 18337 18446744073709551104#64)))).val
theorem input5724_def : input5724 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18341 (Flapjack.WordLangAddr.addr 18337 18446744073709551104#64))) := by
  unfold input5724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18341 (Flapjack.WordLangAddr.addr 18337 18446744073709551104#64)))).val
theorem output5724_def : output5724 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18341 (Flapjack.WordLangAddr.addr 18337 18446744073709551104#64))) := by
  unfold output5724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5724_skip : Flapjack.WordAlloc.isSkip output5724 = false := by
  rw [output5724_def]
  conv => lhs; cbv
  try rfl
theorem node5724_eq : Flapjack.WordAlloc.removeDeadStructural input5724 value2866 value1 value2 = (output5724, value2867, value1) := by
  rw [input5724_def, output5724_def]
  try (conv => lhs; cbv)
  try rfl

def value2868 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18337 18333)).val
theorem input5725_def : input5725 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18337 18333) := by
  unfold input5725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18337 18333)).val
theorem output5725_def : output5725 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18337 18333) := by
  unfold output5725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5725_skip : Flapjack.WordAlloc.isSkip output5725 = false := by
  rw [output5725_def]
  conv => lhs; cbv
  try rfl
theorem node5725_eq : Flapjack.WordAlloc.removeDeadStructural input5725 value2867 value1 value2 = (output5725, value2868, value1) := by
  rw [input5725_def, output5725_def]
  try (conv => lhs; cbv)
  try rfl

def value2869 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18333 18329 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5726_def : input5726 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18333 18329 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18333 18329 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5726_def : output5726 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18333 18329 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5726_skip : Flapjack.WordAlloc.isSkip output5726 = false := by
  rw [output5726_def]
  conv => lhs; cbv
  try rfl
theorem node5726_eq : Flapjack.WordAlloc.removeDeadStructural input5726 value2868 value1 value2 = (output5726, value2869, value1) := by
  rw [input5726_def, output5726_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18329 Flapjack.WordStore.heapLength)).val
theorem input5727_def : input5727 = (Flapjack.WordLangProgHOL.get 18329 Flapjack.WordStore.heapLength) := by
  unfold input5727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18329 Flapjack.WordStore.heapLength)).val
theorem output5727_def : output5727 = (Flapjack.WordLangProgHOL.get 18329 Flapjack.WordStore.heapLength) := by
  unfold output5727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5727_skip : Flapjack.WordAlloc.isSkip output5727 = false := by
  rw [output5727_def]
  conv => lhs; cbv
  try rfl
theorem node5727_eq : Flapjack.WordAlloc.removeDeadStructural input5727 value2869 value1 value2 = (output5727, value5, value1) := by
  rw [input5727_def, output5727_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5727 input5726)).val
theorem input5728_def : input5728 = (.seq input5727 input5726) := by
  unfold input5728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5727 output5726)).val
theorem output5728_def : output5728 = (.seq output5727 output5726) := by
  unfold output5728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5728_skip : Flapjack.WordAlloc.isSkip output5728 = false := by
  rw [output5728_def]
  conv => lhs; cbv
  try rfl
theorem node5728_eq : Flapjack.WordAlloc.removeDeadStructural input5728 value2868 value1 value2 = (output5728, value5, value1) := by
  rw [input5728_def, output5728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5726_eq]
  dsimp only
  rw [node5727_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5728 input5725)).val
theorem input5729_def : input5729 = (.seq input5728 input5725) := by
  unfold input5729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5728 output5725)).val
theorem output5729_def : output5729 = (.seq output5728 output5725) := by
  unfold output5729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5729_skip : Flapjack.WordAlloc.isSkip output5729 = false := by
  rw [output5729_def]
  conv => lhs; cbv
  try rfl
theorem node5729_eq : Flapjack.WordAlloc.removeDeadStructural input5729 value2867 value1 value2 = (output5729, value5, value1) := by
  rw [input5729_def, output5729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5725_eq]
  dsimp only
  rw [node5728_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5729 input5724)).val
theorem input5730_def : input5730 = (.seq input5729 input5724) := by
  unfold input5730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5729 output5724)).val
theorem output5730_def : output5730 = (.seq output5729 output5724) := by
  unfold output5730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5730_skip : Flapjack.WordAlloc.isSkip output5730 = false := by
  rw [output5730_def]
  conv => lhs; cbv
  try rfl
theorem node5730_eq : Flapjack.WordAlloc.removeDeadStructural input5730 value2866 value1 value2 = (output5730, value5, value1) := by
  rw [input5730_def, output5730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5724_eq]
  dsimp only
  rw [node5729_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5730 input5723)).val
theorem input5731_def : input5731 = (.seq input5730 input5723) := by
  unfold input5731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5730 output5723)).val
theorem output5731_def : output5731 = (.seq output5730 output5723) := by
  unfold output5731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5731_skip : Flapjack.WordAlloc.isSkip output5731 = false := by
  rw [output5731_def]
  conv => lhs; cbv
  try rfl
theorem node5731_eq : Flapjack.WordAlloc.removeDeadStructural input5731 value2864 value1 value2 = (output5731, value5, value1) := by
  rw [input5731_def, output5731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5723_eq]
  dsimp only
  rw [node5730_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2870 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18321 (Flapjack.WordLangAddr.addr 18325 0#64)))).val
theorem input5732_def : input5732 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18321 (Flapjack.WordLangAddr.addr 18325 0#64))) := by
  unfold input5732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18321 (Flapjack.WordLangAddr.addr 18325 0#64)))).val
theorem output5732_def : output5732 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18321 (Flapjack.WordLangAddr.addr 18325 0#64))) := by
  unfold output5732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5732_skip : Flapjack.WordAlloc.isSkip output5732 = false := by
  rw [output5732_def]
  conv => lhs; cbv
  try rfl
theorem node5732_eq : Flapjack.WordAlloc.removeDeadStructural input5732 value5 value1 value2 = (output5732, value2870, value1) := by
  rw [input5732_def, output5732_def]
  try (conv => lhs; cbv)
  try rfl

def value2871 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18325, 18313)])).val
theorem input5733_def : input5733 = (Flapjack.WordLangProgHOL.move 0 [(18325, 18313)]) := by
  unfold input5733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18325, 18313)])).val
theorem output5733_def : output5733 = (Flapjack.WordLangProgHOL.move 0 [(18325, 18313)]) := by
  unfold output5733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5733_skip : Flapjack.WordAlloc.isSkip output5733 = false := by
  rw [output5733_def]
  conv => lhs; cbv
  try rfl
theorem node5733_eq : Flapjack.WordAlloc.removeDeadStructural input5733 value2870 value1 value2 = (output5733, value2871, value1) := by
  rw [input5733_def, output5733_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5733 input5732)).val
theorem input5734_def : input5734 = (.seq input5733 input5732) := by
  unfold input5734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5733 output5732)).val
theorem output5734_def : output5734 = (.seq output5733 output5732) := by
  unfold output5734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5734_skip : Flapjack.WordAlloc.isSkip output5734 = false := by
  rw [output5734_def]
  conv => lhs; cbv
  try rfl
theorem node5734_eq : Flapjack.WordAlloc.removeDeadStructural input5734 value5 value1 value2 = (output5734, value2871, value1) := by
  rw [input5734_def, output5734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5732_eq]
  dsimp only
  rw [node5733_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2872 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18321 8189165486932690436#64))).val
theorem input5735_def : input5735 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18321 8189165486932690436#64)) := by
  unfold input5735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18321 8189165486932690436#64))).val
theorem output5735_def : output5735 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18321 8189165486932690436#64)) := by
  unfold output5735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5735_skip : Flapjack.WordAlloc.isSkip output5735 = false := by
  rw [output5735_def]
  conv => lhs; cbv
  try rfl
theorem node5735_eq : Flapjack.WordAlloc.removeDeadStructural input5735 value2871 value1 value2 = (output5735, value2872, value1) := by
  rw [input5735_def, output5735_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18317 8189165486932690436#64))).val
theorem input5736_def : input5736 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18317 8189165486932690436#64)) := by
  unfold input5736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5736_def : output5736 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5736_skip : Flapjack.WordAlloc.isSkip output5736 = true := by
  rw [output5736_def]
  conv => lhs; cbv
  try rfl
theorem node5736_eq : Flapjack.WordAlloc.removeDeadStructural input5736 value2872 value1 value2 = (output5736, value2872, value1) := by
  rw [input5736_def, output5736_def]
  try (conv => lhs; cbv)
  try rfl

def value2873 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18313 18305 (Flapjack.WordRegImm.reg 18309))))).val
theorem input5737_def : input5737 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18313 18305 (Flapjack.WordRegImm.reg 18309)))) := by
  unfold input5737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18313 18305 (Flapjack.WordRegImm.reg 18309))))).val
theorem output5737_def : output5737 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18313 18305 (Flapjack.WordRegImm.reg 18309)))) := by
  unfold output5737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5737_skip : Flapjack.WordAlloc.isSkip output5737 = false := by
  rw [output5737_def]
  conv => lhs; cbv
  try rfl
theorem node5737_eq : Flapjack.WordAlloc.removeDeadStructural input5737 value2872 value1 value2 = (output5737, value2873, value1) := by
  rw [input5737_def, output5737_def]
  try (conv => lhs; cbv)
  try rfl

def value2874 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18309 4264#64))).val
theorem input5738_def : input5738 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18309 4264#64)) := by
  unfold input5738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18309 4264#64))).val
theorem output5738_def : output5738 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18309 4264#64)) := by
  unfold output5738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5738_skip : Flapjack.WordAlloc.isSkip output5738 = false := by
  rw [output5738_def]
  conv => lhs; cbv
  try rfl
theorem node5738_eq : Flapjack.WordAlloc.removeDeadStructural input5738 value2873 value1 value2 = (output5738, value2874, value1) := by
  rw [input5738_def, output5738_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5738 input5737)).val
theorem input5739_def : input5739 = (.seq input5738 input5737) := by
  unfold input5739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5738 output5737)).val
theorem output5739_def : output5739 = (.seq output5738 output5737) := by
  unfold output5739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5739_skip : Flapjack.WordAlloc.isSkip output5739 = false := by
  rw [output5739_def]
  conv => lhs; cbv
  try rfl
theorem node5739_eq : Flapjack.WordAlloc.removeDeadStructural input5739 value2872 value1 value2 = (output5739, value2874, value1) := by
  rw [input5739_def, output5739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5737_eq]
  dsimp only
  rw [node5738_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2875 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18305 (Flapjack.WordLangAddr.addr 18301 18446744073709551104#64)))).val
theorem input5740_def : input5740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18305 (Flapjack.WordLangAddr.addr 18301 18446744073709551104#64))) := by
  unfold input5740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18305 (Flapjack.WordLangAddr.addr 18301 18446744073709551104#64)))).val
theorem output5740_def : output5740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18305 (Flapjack.WordLangAddr.addr 18301 18446744073709551104#64))) := by
  unfold output5740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5740_skip : Flapjack.WordAlloc.isSkip output5740 = false := by
  rw [output5740_def]
  conv => lhs; cbv
  try rfl
theorem node5740_eq : Flapjack.WordAlloc.removeDeadStructural input5740 value2874 value1 value2 = (output5740, value2875, value1) := by
  rw [input5740_def, output5740_def]
  try (conv => lhs; cbv)
  try rfl

def value2876 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18301 18297)).val
theorem input5741_def : input5741 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18301 18297) := by
  unfold input5741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18301 18297)).val
theorem output5741_def : output5741 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18301 18297) := by
  unfold output5741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5741_skip : Flapjack.WordAlloc.isSkip output5741 = false := by
  rw [output5741_def]
  conv => lhs; cbv
  try rfl
theorem node5741_eq : Flapjack.WordAlloc.removeDeadStructural input5741 value2875 value1 value2 = (output5741, value2876, value1) := by
  rw [input5741_def, output5741_def]
  try (conv => lhs; cbv)
  try rfl

def value2877 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18297 18293 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5742_def : input5742 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18297 18293 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18297 18293 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5742_def : output5742 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18297 18293 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5742_skip : Flapjack.WordAlloc.isSkip output5742 = false := by
  rw [output5742_def]
  conv => lhs; cbv
  try rfl
theorem node5742_eq : Flapjack.WordAlloc.removeDeadStructural input5742 value2876 value1 value2 = (output5742, value2877, value1) := by
  rw [input5742_def, output5742_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18293 Flapjack.WordStore.heapLength)).val
theorem input5743_def : input5743 = (Flapjack.WordLangProgHOL.get 18293 Flapjack.WordStore.heapLength) := by
  unfold input5743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18293 Flapjack.WordStore.heapLength)).val
theorem output5743_def : output5743 = (Flapjack.WordLangProgHOL.get 18293 Flapjack.WordStore.heapLength) := by
  unfold output5743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5743_skip : Flapjack.WordAlloc.isSkip output5743 = false := by
  rw [output5743_def]
  conv => lhs; cbv
  try rfl
theorem node5743_eq : Flapjack.WordAlloc.removeDeadStructural input5743 value2877 value1 value2 = (output5743, value5, value1) := by
  rw [input5743_def, output5743_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5743 input5742)).val
theorem input5744_def : input5744 = (.seq input5743 input5742) := by
  unfold input5744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5743 output5742)).val
theorem output5744_def : output5744 = (.seq output5743 output5742) := by
  unfold output5744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5744_skip : Flapjack.WordAlloc.isSkip output5744 = false := by
  rw [output5744_def]
  conv => lhs; cbv
  try rfl
theorem node5744_eq : Flapjack.WordAlloc.removeDeadStructural input5744 value2876 value1 value2 = (output5744, value5, value1) := by
  rw [input5744_def, output5744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5742_eq]
  dsimp only
  rw [node5743_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5744 input5741)).val
theorem input5745_def : input5745 = (.seq input5744 input5741) := by
  unfold input5745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5744 output5741)).val
theorem output5745_def : output5745 = (.seq output5744 output5741) := by
  unfold output5745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5745_skip : Flapjack.WordAlloc.isSkip output5745 = false := by
  rw [output5745_def]
  conv => lhs; cbv
  try rfl
theorem node5745_eq : Flapjack.WordAlloc.removeDeadStructural input5745 value2875 value1 value2 = (output5745, value5, value1) := by
  rw [input5745_def, output5745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5741_eq]
  dsimp only
  rw [node5744_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5745 input5740)).val
theorem input5746_def : input5746 = (.seq input5745 input5740) := by
  unfold input5746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5745 output5740)).val
theorem output5746_def : output5746 = (.seq output5745 output5740) := by
  unfold output5746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5746_skip : Flapjack.WordAlloc.isSkip output5746 = false := by
  rw [output5746_def]
  conv => lhs; cbv
  try rfl
theorem node5746_eq : Flapjack.WordAlloc.removeDeadStructural input5746 value2874 value1 value2 = (output5746, value5, value1) := by
  rw [input5746_def, output5746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5740_eq]
  dsimp only
  rw [node5745_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5746 input5739)).val
theorem input5747_def : input5747 = (.seq input5746 input5739) := by
  unfold input5747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5746 output5739)).val
theorem output5747_def : output5747 = (.seq output5746 output5739) := by
  unfold output5747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5747_skip : Flapjack.WordAlloc.isSkip output5747 = false := by
  rw [output5747_def]
  conv => lhs; cbv
  try rfl
theorem node5747_eq : Flapjack.WordAlloc.removeDeadStructural input5747 value2872 value1 value2 = (output5747, value5, value1) := by
  rw [input5747_def, output5747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5739_eq]
  dsimp only
  rw [node5746_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2878 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18285 (Flapjack.WordLangAddr.addr 18289 0#64)))).val
theorem input5748_def : input5748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18285 (Flapjack.WordLangAddr.addr 18289 0#64))) := by
  unfold input5748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18285 (Flapjack.WordLangAddr.addr 18289 0#64)))).val
theorem output5748_def : output5748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18285 (Flapjack.WordLangAddr.addr 18289 0#64))) := by
  unfold output5748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5748_skip : Flapjack.WordAlloc.isSkip output5748 = false := by
  rw [output5748_def]
  conv => lhs; cbv
  try rfl
theorem node5748_eq : Flapjack.WordAlloc.removeDeadStructural input5748 value5 value1 value2 = (output5748, value2878, value1) := by
  rw [input5748_def, output5748_def]
  try (conv => lhs; cbv)
  try rfl

def value2879 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18289, 18277)])).val
theorem input5749_def : input5749 = (Flapjack.WordLangProgHOL.move 0 [(18289, 18277)]) := by
  unfold input5749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18289, 18277)])).val
theorem output5749_def : output5749 = (Flapjack.WordLangProgHOL.move 0 [(18289, 18277)]) := by
  unfold output5749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5749_skip : Flapjack.WordAlloc.isSkip output5749 = false := by
  rw [output5749_def]
  conv => lhs; cbv
  try rfl
theorem node5749_eq : Flapjack.WordAlloc.removeDeadStructural input5749 value2878 value1 value2 = (output5749, value2879, value1) := by
  rw [input5749_def, output5749_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5749 input5748)).val
theorem input5750_def : input5750 = (.seq input5749 input5748) := by
  unfold input5750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5749 output5748)).val
theorem output5750_def : output5750 = (.seq output5749 output5748) := by
  unfold output5750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5750_skip : Flapjack.WordAlloc.isSkip output5750 = false := by
  rw [output5750_def]
  conv => lhs; cbv
  try rfl
theorem node5750_eq : Flapjack.WordAlloc.removeDeadStructural input5750 value5 value1 value2 = (output5750, value2879, value1) := by
  rw [input5750_def, output5750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5748_eq]
  dsimp only
  rw [node5749_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2880 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18285 70004379462101672#64))).val
theorem input5751_def : input5751 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18285 70004379462101672#64)) := by
  unfold input5751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18285 70004379462101672#64))).val
theorem output5751_def : output5751 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18285 70004379462101672#64)) := by
  unfold output5751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5751_skip : Flapjack.WordAlloc.isSkip output5751 = false := by
  rw [output5751_def]
  conv => lhs; cbv
  try rfl
theorem node5751_eq : Flapjack.WordAlloc.removeDeadStructural input5751 value2879 value1 value2 = (output5751, value2880, value1) := by
  rw [input5751_def, output5751_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18281 70004379462101672#64))).val
theorem input5752_def : input5752 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18281 70004379462101672#64)) := by
  unfold input5752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5752_def : output5752 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5752_skip : Flapjack.WordAlloc.isSkip output5752 = true := by
  rw [output5752_def]
  conv => lhs; cbv
  try rfl
theorem node5752_eq : Flapjack.WordAlloc.removeDeadStructural input5752 value2880 value1 value2 = (output5752, value2880, value1) := by
  rw [input5752_def, output5752_def]
  try (conv => lhs; cbv)
  try rfl

def value2881 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18277 18269 (Flapjack.WordRegImm.reg 18273))))).val
theorem input5753_def : input5753 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18277 18269 (Flapjack.WordRegImm.reg 18273)))) := by
  unfold input5753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18277 18269 (Flapjack.WordRegImm.reg 18273))))).val
theorem output5753_def : output5753 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18277 18269 (Flapjack.WordRegImm.reg 18273)))) := by
  unfold output5753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5753_skip : Flapjack.WordAlloc.isSkip output5753 = false := by
  rw [output5753_def]
  conv => lhs; cbv
  try rfl
theorem node5753_eq : Flapjack.WordAlloc.removeDeadStructural input5753 value2880 value1 value2 = (output5753, value2881, value1) := by
  rw [input5753_def, output5753_def]
  try (conv => lhs; cbv)
  try rfl

def value2882 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18273 4256#64))).val
theorem input5754_def : input5754 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18273 4256#64)) := by
  unfold input5754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18273 4256#64))).val
theorem output5754_def : output5754 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18273 4256#64)) := by
  unfold output5754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5754_skip : Flapjack.WordAlloc.isSkip output5754 = false := by
  rw [output5754_def]
  conv => lhs; cbv
  try rfl
theorem node5754_eq : Flapjack.WordAlloc.removeDeadStructural input5754 value2881 value1 value2 = (output5754, value2882, value1) := by
  rw [input5754_def, output5754_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5754 input5753)).val
theorem input5755_def : input5755 = (.seq input5754 input5753) := by
  unfold input5755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5754 output5753)).val
theorem output5755_def : output5755 = (.seq output5754 output5753) := by
  unfold output5755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5755_skip : Flapjack.WordAlloc.isSkip output5755 = false := by
  rw [output5755_def]
  conv => lhs; cbv
  try rfl
theorem node5755_eq : Flapjack.WordAlloc.removeDeadStructural input5755 value2880 value1 value2 = (output5755, value2882, value1) := by
  rw [input5755_def, output5755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5753_eq]
  dsimp only
  rw [node5754_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2883 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18269 (Flapjack.WordLangAddr.addr 18265 18446744073709551104#64)))).val
theorem input5756_def : input5756 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18269 (Flapjack.WordLangAddr.addr 18265 18446744073709551104#64))) := by
  unfold input5756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18269 (Flapjack.WordLangAddr.addr 18265 18446744073709551104#64)))).val
theorem output5756_def : output5756 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18269 (Flapjack.WordLangAddr.addr 18265 18446744073709551104#64))) := by
  unfold output5756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5756_skip : Flapjack.WordAlloc.isSkip output5756 = false := by
  rw [output5756_def]
  conv => lhs; cbv
  try rfl
theorem node5756_eq : Flapjack.WordAlloc.removeDeadStructural input5756 value2882 value1 value2 = (output5756, value2883, value1) := by
  rw [input5756_def, output5756_def]
  try (conv => lhs; cbv)
  try rfl

def value2884 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18265 18261)).val
theorem input5757_def : input5757 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18265 18261) := by
  unfold input5757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18265 18261)).val
theorem output5757_def : output5757 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18265 18261) := by
  unfold output5757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5757_skip : Flapjack.WordAlloc.isSkip output5757 = false := by
  rw [output5757_def]
  conv => lhs; cbv
  try rfl
theorem node5757_eq : Flapjack.WordAlloc.removeDeadStructural input5757 value2883 value1 value2 = (output5757, value2884, value1) := by
  rw [input5757_def, output5757_def]
  try (conv => lhs; cbv)
  try rfl

def value2885 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18261 18257 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5758_def : input5758 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18261 18257 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18261 18257 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5758_def : output5758 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18261 18257 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5758_skip : Flapjack.WordAlloc.isSkip output5758 = false := by
  rw [output5758_def]
  conv => lhs; cbv
  try rfl
theorem node5758_eq : Flapjack.WordAlloc.removeDeadStructural input5758 value2884 value1 value2 = (output5758, value2885, value1) := by
  rw [input5758_def, output5758_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18257 Flapjack.WordStore.heapLength)).val
theorem input5759_def : input5759 = (Flapjack.WordLangProgHOL.get 18257 Flapjack.WordStore.heapLength) := by
  unfold input5759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18257 Flapjack.WordStore.heapLength)).val
theorem output5759_def : output5759 = (Flapjack.WordLangProgHOL.get 18257 Flapjack.WordStore.heapLength) := by
  unfold output5759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5759_skip : Flapjack.WordAlloc.isSkip output5759 = false := by
  rw [output5759_def]
  conv => lhs; cbv
  try rfl
theorem node5759_eq : Flapjack.WordAlloc.removeDeadStructural input5759 value2885 value1 value2 = (output5759, value5, value1) := by
  rw [input5759_def, output5759_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5759 input5758)).val
theorem input5760_def : input5760 = (.seq input5759 input5758) := by
  unfold input5760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5759 output5758)).val
theorem output5760_def : output5760 = (.seq output5759 output5758) := by
  unfold output5760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5760_skip : Flapjack.WordAlloc.isSkip output5760 = false := by
  rw [output5760_def]
  conv => lhs; cbv
  try rfl
theorem node5760_eq : Flapjack.WordAlloc.removeDeadStructural input5760 value2884 value1 value2 = (output5760, value5, value1) := by
  rw [input5760_def, output5760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5758_eq]
  dsimp only
  rw [node5759_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5760 input5757)).val
theorem input5761_def : input5761 = (.seq input5760 input5757) := by
  unfold input5761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5760 output5757)).val
theorem output5761_def : output5761 = (.seq output5760 output5757) := by
  unfold output5761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5761_skip : Flapjack.WordAlloc.isSkip output5761 = false := by
  rw [output5761_def]
  conv => lhs; cbv
  try rfl
theorem node5761_eq : Flapjack.WordAlloc.removeDeadStructural input5761 value2883 value1 value2 = (output5761, value5, value1) := by
  rw [input5761_def, output5761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5757_eq]
  dsimp only
  rw [node5760_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5761 input5756)).val
theorem input5762_def : input5762 = (.seq input5761 input5756) := by
  unfold input5762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5761 output5756)).val
theorem output5762_def : output5762 = (.seq output5761 output5756) := by
  unfold output5762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5762_skip : Flapjack.WordAlloc.isSkip output5762 = false := by
  rw [output5762_def]
  conv => lhs; cbv
  try rfl
theorem node5762_eq : Flapjack.WordAlloc.removeDeadStructural input5762 value2882 value1 value2 = (output5762, value5, value1) := by
  rw [input5762_def, output5762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5756_eq]
  dsimp only
  rw [node5761_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5762 input5755)).val
theorem input5763_def : input5763 = (.seq input5762 input5755) := by
  unfold input5763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5762 output5755)).val
theorem output5763_def : output5763 = (.seq output5762 output5755) := by
  unfold output5763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5763_skip : Flapjack.WordAlloc.isSkip output5763 = false := by
  rw [output5763_def]
  conv => lhs; cbv
  try rfl
theorem node5763_eq : Flapjack.WordAlloc.removeDeadStructural input5763 value2880 value1 value2 = (output5763, value5, value1) := by
  rw [input5763_def, output5763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5755_eq]
  dsimp only
  rw [node5762_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2886 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18249 (Flapjack.WordLangAddr.addr 18253 0#64)))).val
theorem input5764_def : input5764 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18249 (Flapjack.WordLangAddr.addr 18253 0#64))) := by
  unfold input5764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18249 (Flapjack.WordLangAddr.addr 18253 0#64)))).val
theorem output5764_def : output5764 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18249 (Flapjack.WordLangAddr.addr 18253 0#64))) := by
  unfold output5764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5764_skip : Flapjack.WordAlloc.isSkip output5764 = false := by
  rw [output5764_def]
  conv => lhs; cbv
  try rfl
theorem node5764_eq : Flapjack.WordAlloc.removeDeadStructural input5764 value5 value1 value2 = (output5764, value2886, value1) := by
  rw [input5764_def, output5764_def]
  try (conv => lhs; cbv)
  try rfl

def value2887 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18253, 18241)])).val
theorem input5765_def : input5765 = (Flapjack.WordLangProgHOL.move 0 [(18253, 18241)]) := by
  unfold input5765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18253, 18241)])).val
theorem output5765_def : output5765 = (Flapjack.WordLangProgHOL.move 0 [(18253, 18241)]) := by
  unfold output5765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5765_skip : Flapjack.WordAlloc.isSkip output5765 = false := by
  rw [output5765_def]
  conv => lhs; cbv
  try rfl
theorem node5765_eq : Flapjack.WordAlloc.removeDeadStructural input5765 value2886 value1 value2 = (output5765, value2887, value1) := by
  rw [input5765_def, output5765_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5765 input5764)).val
theorem input5766_def : input5766 = (.seq input5765 input5764) := by
  unfold input5766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5765 output5764)).val
theorem output5766_def : output5766 = (.seq output5765 output5764) := by
  unfold output5766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5766_skip : Flapjack.WordAlloc.isSkip output5766 = false := by
  rw [output5766_def]
  conv => lhs; cbv
  try rfl
theorem node5766_eq : Flapjack.WordAlloc.removeDeadStructural input5766 value5 value1 value2 = (output5766, value2887, value1) := by
  rw [input5766_def, output5766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5764_eq]
  dsimp only
  rw [node5765_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2888 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18249 1619701357752249884#64))).val
theorem input5767_def : input5767 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18249 1619701357752249884#64)) := by
  unfold input5767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18249 1619701357752249884#64))).val
theorem output5767_def : output5767 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18249 1619701357752249884#64)) := by
  unfold output5767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5767_skip : Flapjack.WordAlloc.isSkip output5767 = false := by
  rw [output5767_def]
  conv => lhs; cbv
  try rfl
theorem node5767_eq : Flapjack.WordAlloc.removeDeadStructural input5767 value2887 value1 value2 = (output5767, value2888, value1) := by
  rw [input5767_def, output5767_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18245 1619701357752249884#64))).val
theorem input5768_def : input5768 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18245 1619701357752249884#64)) := by
  unfold input5768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5768_def : output5768 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5768_skip : Flapjack.WordAlloc.isSkip output5768 = true := by
  rw [output5768_def]
  conv => lhs; cbv
  try rfl
theorem node5768_eq : Flapjack.WordAlloc.removeDeadStructural input5768 value2888 value1 value2 = (output5768, value2888, value1) := by
  rw [input5768_def, output5768_def]
  try (conv => lhs; cbv)
  try rfl

def value2889 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18241 18233 (Flapjack.WordRegImm.reg 18237))))).val
theorem input5769_def : input5769 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18241 18233 (Flapjack.WordRegImm.reg 18237)))) := by
  unfold input5769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18241 18233 (Flapjack.WordRegImm.reg 18237))))).val
theorem output5769_def : output5769 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18241 18233 (Flapjack.WordRegImm.reg 18237)))) := by
  unfold output5769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5769_skip : Flapjack.WordAlloc.isSkip output5769 = false := by
  rw [output5769_def]
  conv => lhs; cbv
  try rfl
theorem node5769_eq : Flapjack.WordAlloc.removeDeadStructural input5769 value2888 value1 value2 = (output5769, value2889, value1) := by
  rw [input5769_def, output5769_def]
  try (conv => lhs; cbv)
  try rfl

def value2890 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18237 4248#64))).val
theorem input5770_def : input5770 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18237 4248#64)) := by
  unfold input5770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18237 4248#64))).val
theorem output5770_def : output5770 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18237 4248#64)) := by
  unfold output5770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5770_skip : Flapjack.WordAlloc.isSkip output5770 = false := by
  rw [output5770_def]
  conv => lhs; cbv
  try rfl
theorem node5770_eq : Flapjack.WordAlloc.removeDeadStructural input5770 value2889 value1 value2 = (output5770, value2890, value1) := by
  rw [input5770_def, output5770_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5770 input5769)).val
theorem input5771_def : input5771 = (.seq input5770 input5769) := by
  unfold input5771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5770 output5769)).val
theorem output5771_def : output5771 = (.seq output5770 output5769) := by
  unfold output5771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5771_skip : Flapjack.WordAlloc.isSkip output5771 = false := by
  rw [output5771_def]
  conv => lhs; cbv
  try rfl
theorem node5771_eq : Flapjack.WordAlloc.removeDeadStructural input5771 value2888 value1 value2 = (output5771, value2890, value1) := by
  rw [input5771_def, output5771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5769_eq]
  dsimp only
  rw [node5770_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2891 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18233 (Flapjack.WordLangAddr.addr 18229 18446744073709551104#64)))).val
theorem input5772_def : input5772 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18233 (Flapjack.WordLangAddr.addr 18229 18446744073709551104#64))) := by
  unfold input5772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18233 (Flapjack.WordLangAddr.addr 18229 18446744073709551104#64)))).val
theorem output5772_def : output5772 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18233 (Flapjack.WordLangAddr.addr 18229 18446744073709551104#64))) := by
  unfold output5772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5772_skip : Flapjack.WordAlloc.isSkip output5772 = false := by
  rw [output5772_def]
  conv => lhs; cbv
  try rfl
theorem node5772_eq : Flapjack.WordAlloc.removeDeadStructural input5772 value2890 value1 value2 = (output5772, value2891, value1) := by
  rw [input5772_def, output5772_def]
  try (conv => lhs; cbv)
  try rfl

def value2892 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18229 18225)).val
theorem input5773_def : input5773 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18229 18225) := by
  unfold input5773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18229 18225)).val
theorem output5773_def : output5773 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18229 18225) := by
  unfold output5773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5773_skip : Flapjack.WordAlloc.isSkip output5773 = false := by
  rw [output5773_def]
  conv => lhs; cbv
  try rfl
theorem node5773_eq : Flapjack.WordAlloc.removeDeadStructural input5773 value2891 value1 value2 = (output5773, value2892, value1) := by
  rw [input5773_def, output5773_def]
  try (conv => lhs; cbv)
  try rfl

def value2893 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18225 18221 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5774_def : input5774 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18225 18221 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18225 18221 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5774_def : output5774 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18225 18221 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5774_skip : Flapjack.WordAlloc.isSkip output5774 = false := by
  rw [output5774_def]
  conv => lhs; cbv
  try rfl
theorem node5774_eq : Flapjack.WordAlloc.removeDeadStructural input5774 value2892 value1 value2 = (output5774, value2893, value1) := by
  rw [input5774_def, output5774_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18221 Flapjack.WordStore.heapLength)).val
theorem input5775_def : input5775 = (Flapjack.WordLangProgHOL.get 18221 Flapjack.WordStore.heapLength) := by
  unfold input5775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18221 Flapjack.WordStore.heapLength)).val
theorem output5775_def : output5775 = (Flapjack.WordLangProgHOL.get 18221 Flapjack.WordStore.heapLength) := by
  unfold output5775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5775_skip : Flapjack.WordAlloc.isSkip output5775 = false := by
  rw [output5775_def]
  conv => lhs; cbv
  try rfl
theorem node5775_eq : Flapjack.WordAlloc.removeDeadStructural input5775 value2893 value1 value2 = (output5775, value5, value1) := by
  rw [input5775_def, output5775_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5775 input5774)).val
theorem input5776_def : input5776 = (.seq input5775 input5774) := by
  unfold input5776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5775 output5774)).val
theorem output5776_def : output5776 = (.seq output5775 output5774) := by
  unfold output5776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5776_skip : Flapjack.WordAlloc.isSkip output5776 = false := by
  rw [output5776_def]
  conv => lhs; cbv
  try rfl
theorem node5776_eq : Flapjack.WordAlloc.removeDeadStructural input5776 value2892 value1 value2 = (output5776, value5, value1) := by
  rw [input5776_def, output5776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5774_eq]
  dsimp only
  rw [node5775_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5776 input5773)).val
theorem input5777_def : input5777 = (.seq input5776 input5773) := by
  unfold input5777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5776 output5773)).val
theorem output5777_def : output5777 = (.seq output5776 output5773) := by
  unfold output5777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5777_skip : Flapjack.WordAlloc.isSkip output5777 = false := by
  rw [output5777_def]
  conv => lhs; cbv
  try rfl
theorem node5777_eq : Flapjack.WordAlloc.removeDeadStructural input5777 value2891 value1 value2 = (output5777, value5, value1) := by
  rw [input5777_def, output5777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5773_eq]
  dsimp only
  rw [node5776_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5777 input5772)).val
theorem input5778_def : input5778 = (.seq input5777 input5772) := by
  unfold input5778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5777 output5772)).val
theorem output5778_def : output5778 = (.seq output5777 output5772) := by
  unfold output5778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5778_skip : Flapjack.WordAlloc.isSkip output5778 = false := by
  rw [output5778_def]
  conv => lhs; cbv
  try rfl
theorem node5778_eq : Flapjack.WordAlloc.removeDeadStructural input5778 value2890 value1 value2 = (output5778, value5, value1) := by
  rw [input5778_def, output5778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5772_eq]
  dsimp only
  rw [node5777_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5778 input5771)).val
theorem input5779_def : input5779 = (.seq input5778 input5771) := by
  unfold input5779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5778 output5771)).val
theorem output5779_def : output5779 = (.seq output5778 output5771) := by
  unfold output5779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5779_skip : Flapjack.WordAlloc.isSkip output5779 = false := by
  rw [output5779_def]
  conv => lhs; cbv
  try rfl
theorem node5779_eq : Flapjack.WordAlloc.removeDeadStructural input5779 value2888 value1 value2 = (output5779, value5, value1) := by
  rw [input5779_def, output5779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5771_eq]
  dsimp only
  rw [node5778_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2894 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18213 (Flapjack.WordLangAddr.addr 18217 0#64)))).val
theorem input5780_def : input5780 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18213 (Flapjack.WordLangAddr.addr 18217 0#64))) := by
  unfold input5780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18213 (Flapjack.WordLangAddr.addr 18217 0#64)))).val
theorem output5780_def : output5780 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18213 (Flapjack.WordLangAddr.addr 18217 0#64))) := by
  unfold output5780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5780_skip : Flapjack.WordAlloc.isSkip output5780 = false := by
  rw [output5780_def]
  conv => lhs; cbv
  try rfl
theorem node5780_eq : Flapjack.WordAlloc.removeDeadStructural input5780 value5 value1 value2 = (output5780, value2894, value1) := by
  rw [input5780_def, output5780_def]
  try (conv => lhs; cbv)
  try rfl

def value2895 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18217, 18205)])).val
theorem input5781_def : input5781 = (Flapjack.WordLangProgHOL.move 0 [(18217, 18205)]) := by
  unfold input5781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18217, 18205)])).val
theorem output5781_def : output5781 = (Flapjack.WordLangProgHOL.move 0 [(18217, 18205)]) := by
  unfold output5781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5781_skip : Flapjack.WordAlloc.isSkip output5781 = false := by
  rw [output5781_def]
  conv => lhs; cbv
  try rfl
theorem node5781_eq : Flapjack.WordAlloc.removeDeadStructural input5781 value2894 value1 value2 = (output5781, value2895, value1) := by
  rw [input5781_def, output5781_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5781 input5780)).val
theorem input5782_def : input5782 = (.seq input5781 input5780) := by
  unfold input5782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5781 output5780)).val
theorem output5782_def : output5782 = (.seq output5781 output5780) := by
  unfold output5782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5782_skip : Flapjack.WordAlloc.isSkip output5782 = false := by
  rw [output5782_def]
  conv => lhs; cbv
  try rfl
theorem node5782_eq : Flapjack.WordAlloc.removeDeadStructural input5782 value5 value1 value2 = (output5782, value2895, value1) := by
  rw [input5782_def, output5782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5780_eq]
  dsimp only
  rw [node5781_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2896 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18213 16898074901591262352#64))).val
theorem input5783_def : input5783 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18213 16898074901591262352#64)) := by
  unfold input5783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18213 16898074901591262352#64))).val
theorem output5783_def : output5783 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18213 16898074901591262352#64)) := by
  unfold output5783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5783_skip : Flapjack.WordAlloc.isSkip output5783 = false := by
  rw [output5783_def]
  conv => lhs; cbv
  try rfl
theorem node5783_eq : Flapjack.WordAlloc.removeDeadStructural input5783 value2895 value1 value2 = (output5783, value2896, value1) := by
  rw [input5783_def, output5783_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18209 16898074901591262352#64))).val
theorem input5784_def : input5784 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18209 16898074901591262352#64)) := by
  unfold input5784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5784_def : output5784 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5784_skip : Flapjack.WordAlloc.isSkip output5784 = true := by
  rw [output5784_def]
  conv => lhs; cbv
  try rfl
theorem node5784_eq : Flapjack.WordAlloc.removeDeadStructural input5784 value2896 value1 value2 = (output5784, value2896, value1) := by
  rw [input5784_def, output5784_def]
  try (conv => lhs; cbv)
  try rfl

def value2897 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18205 18197 (Flapjack.WordRegImm.reg 18201))))).val
theorem input5785_def : input5785 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18205 18197 (Flapjack.WordRegImm.reg 18201)))) := by
  unfold input5785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18205 18197 (Flapjack.WordRegImm.reg 18201))))).val
theorem output5785_def : output5785 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18205 18197 (Flapjack.WordRegImm.reg 18201)))) := by
  unfold output5785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5785_skip : Flapjack.WordAlloc.isSkip output5785 = false := by
  rw [output5785_def]
  conv => lhs; cbv
  try rfl
theorem node5785_eq : Flapjack.WordAlloc.removeDeadStructural input5785 value2896 value1 value2 = (output5785, value2897, value1) := by
  rw [input5785_def, output5785_def]
  try (conv => lhs; cbv)
  try rfl

def value2898 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18201 4240#64))).val
theorem input5786_def : input5786 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18201 4240#64)) := by
  unfold input5786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18201 4240#64))).val
theorem output5786_def : output5786 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18201 4240#64)) := by
  unfold output5786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5786_skip : Flapjack.WordAlloc.isSkip output5786 = false := by
  rw [output5786_def]
  conv => lhs; cbv
  try rfl
theorem node5786_eq : Flapjack.WordAlloc.removeDeadStructural input5786 value2897 value1 value2 = (output5786, value2898, value1) := by
  rw [input5786_def, output5786_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5786 input5785)).val
theorem input5787_def : input5787 = (.seq input5786 input5785) := by
  unfold input5787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5786 output5785)).val
theorem output5787_def : output5787 = (.seq output5786 output5785) := by
  unfold output5787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5787_skip : Flapjack.WordAlloc.isSkip output5787 = false := by
  rw [output5787_def]
  conv => lhs; cbv
  try rfl
theorem node5787_eq : Flapjack.WordAlloc.removeDeadStructural input5787 value2896 value1 value2 = (output5787, value2898, value1) := by
  rw [input5787_def, output5787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5785_eq]
  dsimp only
  rw [node5786_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2899 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18197 (Flapjack.WordLangAddr.addr 18193 18446744073709551104#64)))).val
theorem input5788_def : input5788 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18197 (Flapjack.WordLangAddr.addr 18193 18446744073709551104#64))) := by
  unfold input5788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18197 (Flapjack.WordLangAddr.addr 18193 18446744073709551104#64)))).val
theorem output5788_def : output5788 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18197 (Flapjack.WordLangAddr.addr 18193 18446744073709551104#64))) := by
  unfold output5788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5788_skip : Flapjack.WordAlloc.isSkip output5788 = false := by
  rw [output5788_def]
  conv => lhs; cbv
  try rfl
theorem node5788_eq : Flapjack.WordAlloc.removeDeadStructural input5788 value2898 value1 value2 = (output5788, value2899, value1) := by
  rw [input5788_def, output5788_def]
  try (conv => lhs; cbv)
  try rfl

def value2900 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18193 18189)).val
theorem input5789_def : input5789 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18193 18189) := by
  unfold input5789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18193 18189)).val
theorem output5789_def : output5789 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18193 18189) := by
  unfold output5789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5789_skip : Flapjack.WordAlloc.isSkip output5789 = false := by
  rw [output5789_def]
  conv => lhs; cbv
  try rfl
theorem node5789_eq : Flapjack.WordAlloc.removeDeadStructural input5789 value2899 value1 value2 = (output5789, value2900, value1) := by
  rw [input5789_def, output5789_def]
  try (conv => lhs; cbv)
  try rfl

def value2901 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18189 18185 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5790_def : input5790 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18189 18185 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18189 18185 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5790_def : output5790 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18189 18185 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5790_skip : Flapjack.WordAlloc.isSkip output5790 = false := by
  rw [output5790_def]
  conv => lhs; cbv
  try rfl
theorem node5790_eq : Flapjack.WordAlloc.removeDeadStructural input5790 value2900 value1 value2 = (output5790, value2901, value1) := by
  rw [input5790_def, output5790_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18185 Flapjack.WordStore.heapLength)).val
theorem input5791_def : input5791 = (Flapjack.WordLangProgHOL.get 18185 Flapjack.WordStore.heapLength) := by
  unfold input5791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18185 Flapjack.WordStore.heapLength)).val
theorem output5791_def : output5791 = (Flapjack.WordLangProgHOL.get 18185 Flapjack.WordStore.heapLength) := by
  unfold output5791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5791_skip : Flapjack.WordAlloc.isSkip output5791 = false := by
  rw [output5791_def]
  conv => lhs; cbv
  try rfl
theorem node5791_eq : Flapjack.WordAlloc.removeDeadStructural input5791 value2901 value1 value2 = (output5791, value5, value1) := by
  rw [input5791_def, output5791_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5791 input5790)).val
theorem input5792_def : input5792 = (.seq input5791 input5790) := by
  unfold input5792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5791 output5790)).val
theorem output5792_def : output5792 = (.seq output5791 output5790) := by
  unfold output5792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5792_skip : Flapjack.WordAlloc.isSkip output5792 = false := by
  rw [output5792_def]
  conv => lhs; cbv
  try rfl
theorem node5792_eq : Flapjack.WordAlloc.removeDeadStructural input5792 value2900 value1 value2 = (output5792, value5, value1) := by
  rw [input5792_def, output5792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5790_eq]
  dsimp only
  rw [node5791_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5792 input5789)).val
theorem input5793_def : input5793 = (.seq input5792 input5789) := by
  unfold input5793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5792 output5789)).val
theorem output5793_def : output5793 = (.seq output5792 output5789) := by
  unfold output5793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5793_skip : Flapjack.WordAlloc.isSkip output5793 = false := by
  rw [output5793_def]
  conv => lhs; cbv
  try rfl
theorem node5793_eq : Flapjack.WordAlloc.removeDeadStructural input5793 value2899 value1 value2 = (output5793, value5, value1) := by
  rw [input5793_def, output5793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5789_eq]
  dsimp only
  rw [node5792_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5793 input5788)).val
theorem input5794_def : input5794 = (.seq input5793 input5788) := by
  unfold input5794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5793 output5788)).val
theorem output5794_def : output5794 = (.seq output5793 output5788) := by
  unfold output5794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5794_skip : Flapjack.WordAlloc.isSkip output5794 = false := by
  rw [output5794_def]
  conv => lhs; cbv
  try rfl
theorem node5794_eq : Flapjack.WordAlloc.removeDeadStructural input5794 value2898 value1 value2 = (output5794, value5, value1) := by
  rw [input5794_def, output5794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5788_eq]
  dsimp only
  rw [node5793_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5794 input5787)).val
theorem input5795_def : input5795 = (.seq input5794 input5787) := by
  unfold input5795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5794 output5787)).val
theorem output5795_def : output5795 = (.seq output5794 output5787) := by
  unfold output5795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5795_skip : Flapjack.WordAlloc.isSkip output5795 = false := by
  rw [output5795_def]
  conv => lhs; cbv
  try rfl
theorem node5795_eq : Flapjack.WordAlloc.removeDeadStructural input5795 value2896 value1 value2 = (output5795, value5, value1) := by
  rw [input5795_def, output5795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5787_eq]
  dsimp only
  rw [node5794_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2902 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18177 (Flapjack.WordLangAddr.addr 18181 0#64)))).val
theorem input5796_def : input5796 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18177 (Flapjack.WordLangAddr.addr 18181 0#64))) := by
  unfold input5796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18177 (Flapjack.WordLangAddr.addr 18181 0#64)))).val
theorem output5796_def : output5796 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18177 (Flapjack.WordLangAddr.addr 18181 0#64))) := by
  unfold output5796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5796_skip : Flapjack.WordAlloc.isSkip output5796 = false := by
  rw [output5796_def]
  conv => lhs; cbv
  try rfl
theorem node5796_eq : Flapjack.WordAlloc.removeDeadStructural input5796 value5 value1 value2 = (output5796, value2902, value1) := by
  rw [input5796_def, output5796_def]
  try (conv => lhs; cbv)
  try rfl

def value2903 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18181, 18169)])).val
theorem input5797_def : input5797 = (Flapjack.WordLangProgHOL.move 0 [(18181, 18169)]) := by
  unfold input5797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18181, 18169)])).val
theorem output5797_def : output5797 = (Flapjack.WordLangProgHOL.move 0 [(18181, 18169)]) := by
  unfold output5797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5797_skip : Flapjack.WordAlloc.isSkip output5797 = false := by
  rw [output5797_def]
  conv => lhs; cbv
  try rfl
theorem node5797_eq : Flapjack.WordAlloc.removeDeadStructural input5797 value2902 value1 value2 = (output5797, value2903, value1) := by
  rw [input5797_def, output5797_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5797 input5796)).val
theorem input5798_def : input5798 = (.seq input5797 input5796) := by
  unfold input5798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5797 output5796)).val
theorem output5798_def : output5798 = (.seq output5797 output5796) := by
  unfold output5798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5798_skip : Flapjack.WordAlloc.isSkip output5798 = false := by
  rw [output5798_def]
  conv => lhs; cbv
  try rfl
theorem node5798_eq : Flapjack.WordAlloc.removeDeadStructural input5798 value5 value1 value2 = (output5798, value2903, value1) := by
  rw [input5798_def, output5798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5796_eq]
  dsimp only
  rw [node5797_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2904 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18177 3609344159736760251#64))).val
theorem input5799_def : input5799 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18177 3609344159736760251#64)) := by
  unfold input5799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18177 3609344159736760251#64))).val
theorem output5799_def : output5799 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18177 3609344159736760251#64)) := by
  unfold output5799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5799_skip : Flapjack.WordAlloc.isSkip output5799 = false := by
  rw [output5799_def]
  conv => lhs; cbv
  try rfl
theorem node5799_eq : Flapjack.WordAlloc.removeDeadStructural input5799 value2903 value1 value2 = (output5799, value2904, value1) := by
  rw [input5799_def, output5799_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18173 3609344159736760251#64))).val
theorem input5800_def : input5800 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18173 3609344159736760251#64)) := by
  unfold input5800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5800_def : output5800 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5800_skip : Flapjack.WordAlloc.isSkip output5800 = true := by
  rw [output5800_def]
  conv => lhs; cbv
  try rfl
theorem node5800_eq : Flapjack.WordAlloc.removeDeadStructural input5800 value2904 value1 value2 = (output5800, value2904, value1) := by
  rw [input5800_def, output5800_def]
  try (conv => lhs; cbv)
  try rfl

def value2905 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18169 18161 (Flapjack.WordRegImm.reg 18165))))).val
theorem input5801_def : input5801 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18169 18161 (Flapjack.WordRegImm.reg 18165)))) := by
  unfold input5801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18169 18161 (Flapjack.WordRegImm.reg 18165))))).val
theorem output5801_def : output5801 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18169 18161 (Flapjack.WordRegImm.reg 18165)))) := by
  unfold output5801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5801_skip : Flapjack.WordAlloc.isSkip output5801 = false := by
  rw [output5801_def]
  conv => lhs; cbv
  try rfl
theorem node5801_eq : Flapjack.WordAlloc.removeDeadStructural input5801 value2904 value1 value2 = (output5801, value2905, value1) := by
  rw [input5801_def, output5801_def]
  try (conv => lhs; cbv)
  try rfl

def value2906 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18165 4232#64))).val
theorem input5802_def : input5802 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18165 4232#64)) := by
  unfold input5802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18165 4232#64))).val
theorem output5802_def : output5802 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18165 4232#64)) := by
  unfold output5802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5802_skip : Flapjack.WordAlloc.isSkip output5802 = false := by
  rw [output5802_def]
  conv => lhs; cbv
  try rfl
theorem node5802_eq : Flapjack.WordAlloc.removeDeadStructural input5802 value2905 value1 value2 = (output5802, value2906, value1) := by
  rw [input5802_def, output5802_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5802 input5801)).val
theorem input5803_def : input5803 = (.seq input5802 input5801) := by
  unfold input5803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5802 output5801)).val
theorem output5803_def : output5803 = (.seq output5802 output5801) := by
  unfold output5803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5803_skip : Flapjack.WordAlloc.isSkip output5803 = false := by
  rw [output5803_def]
  conv => lhs; cbv
  try rfl
theorem node5803_eq : Flapjack.WordAlloc.removeDeadStructural input5803 value2904 value1 value2 = (output5803, value2906, value1) := by
  rw [input5803_def, output5803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5801_eq]
  dsimp only
  rw [node5802_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2907 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18161 (Flapjack.WordLangAddr.addr 18157 18446744073709551104#64)))).val
theorem input5804_def : input5804 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18161 (Flapjack.WordLangAddr.addr 18157 18446744073709551104#64))) := by
  unfold input5804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18161 (Flapjack.WordLangAddr.addr 18157 18446744073709551104#64)))).val
theorem output5804_def : output5804 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18161 (Flapjack.WordLangAddr.addr 18157 18446744073709551104#64))) := by
  unfold output5804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5804_skip : Flapjack.WordAlloc.isSkip output5804 = false := by
  rw [output5804_def]
  conv => lhs; cbv
  try rfl
theorem node5804_eq : Flapjack.WordAlloc.removeDeadStructural input5804 value2906 value1 value2 = (output5804, value2907, value1) := by
  rw [input5804_def, output5804_def]
  try (conv => lhs; cbv)
  try rfl

def value2908 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18157 18153)).val
theorem input5805_def : input5805 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18157 18153) := by
  unfold input5805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18157 18153)).val
theorem output5805_def : output5805 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18157 18153) := by
  unfold output5805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5805_skip : Flapjack.WordAlloc.isSkip output5805 = false := by
  rw [output5805_def]
  conv => lhs; cbv
  try rfl
theorem node5805_eq : Flapjack.WordAlloc.removeDeadStructural input5805 value2907 value1 value2 = (output5805, value2908, value1) := by
  rw [input5805_def, output5805_def]
  try (conv => lhs; cbv)
  try rfl

def value2909 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18153 18149 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5806_def : input5806 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18153 18149 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18153 18149 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5806_def : output5806 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18153 18149 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5806_skip : Flapjack.WordAlloc.isSkip output5806 = false := by
  rw [output5806_def]
  conv => lhs; cbv
  try rfl
theorem node5806_eq : Flapjack.WordAlloc.removeDeadStructural input5806 value2908 value1 value2 = (output5806, value2909, value1) := by
  rw [input5806_def, output5806_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18149 Flapjack.WordStore.heapLength)).val
theorem input5807_def : input5807 = (Flapjack.WordLangProgHOL.get 18149 Flapjack.WordStore.heapLength) := by
  unfold input5807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18149 Flapjack.WordStore.heapLength)).val
theorem output5807_def : output5807 = (Flapjack.WordLangProgHOL.get 18149 Flapjack.WordStore.heapLength) := by
  unfold output5807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5807_skip : Flapjack.WordAlloc.isSkip output5807 = false := by
  rw [output5807_def]
  conv => lhs; cbv
  try rfl
theorem node5807_eq : Flapjack.WordAlloc.removeDeadStructural input5807 value2909 value1 value2 = (output5807, value5, value1) := by
  rw [input5807_def, output5807_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5807 input5806)).val
theorem input5808_def : input5808 = (.seq input5807 input5806) := by
  unfold input5808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5807 output5806)).val
theorem output5808_def : output5808 = (.seq output5807 output5806) := by
  unfold output5808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5808_skip : Flapjack.WordAlloc.isSkip output5808 = false := by
  rw [output5808_def]
  conv => lhs; cbv
  try rfl
theorem node5808_eq : Flapjack.WordAlloc.removeDeadStructural input5808 value2908 value1 value2 = (output5808, value5, value1) := by
  rw [input5808_def, output5808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5806_eq]
  dsimp only
  rw [node5807_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5808 input5805)).val
theorem input5809_def : input5809 = (.seq input5808 input5805) := by
  unfold input5809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5808 output5805)).val
theorem output5809_def : output5809 = (.seq output5808 output5805) := by
  unfold output5809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5809_skip : Flapjack.WordAlloc.isSkip output5809 = false := by
  rw [output5809_def]
  conv => lhs; cbv
  try rfl
theorem node5809_eq : Flapjack.WordAlloc.removeDeadStructural input5809 value2907 value1 value2 = (output5809, value5, value1) := by
  rw [input5809_def, output5809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5805_eq]
  dsimp only
  rw [node5808_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5809 input5804)).val
theorem input5810_def : input5810 = (.seq input5809 input5804) := by
  unfold input5810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5809 output5804)).val
theorem output5810_def : output5810 = (.seq output5809 output5804) := by
  unfold output5810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5810_skip : Flapjack.WordAlloc.isSkip output5810 = false := by
  rw [output5810_def]
  conv => lhs; cbv
  try rfl
theorem node5810_eq : Flapjack.WordAlloc.removeDeadStructural input5810 value2906 value1 value2 = (output5810, value5, value1) := by
  rw [input5810_def, output5810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5804_eq]
  dsimp only
  rw [node5809_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5810 input5803)).val
theorem input5811_def : input5811 = (.seq input5810 input5803) := by
  unfold input5811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5810 output5803)).val
theorem output5811_def : output5811 = (.seq output5810 output5803) := by
  unfold output5811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5811_skip : Flapjack.WordAlloc.isSkip output5811 = false := by
  rw [output5811_def]
  conv => lhs; cbv
  try rfl
theorem node5811_eq : Flapjack.WordAlloc.removeDeadStructural input5811 value2904 value1 value2 = (output5811, value5, value1) := by
  rw [input5811_def, output5811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5803_eq]
  dsimp only
  rw [node5810_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2910 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18141 (Flapjack.WordLangAddr.addr 18145 0#64)))).val
theorem input5812_def : input5812 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18141 (Flapjack.WordLangAddr.addr 18145 0#64))) := by
  unfold input5812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18141 (Flapjack.WordLangAddr.addr 18145 0#64)))).val
theorem output5812_def : output5812 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18141 (Flapjack.WordLangAddr.addr 18145 0#64))) := by
  unfold output5812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5812_skip : Flapjack.WordAlloc.isSkip output5812 = false := by
  rw [output5812_def]
  conv => lhs; cbv
  try rfl
theorem node5812_eq : Flapjack.WordAlloc.removeDeadStructural input5812 value5 value1 value2 = (output5812, value2910, value1) := by
  rw [input5812_def, output5812_def]
  try (conv => lhs; cbv)
  try rfl

def value2911 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18145, 18133)])).val
theorem input5813_def : input5813 = (Flapjack.WordLangProgHOL.move 0 [(18145, 18133)]) := by
  unfold input5813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18145, 18133)])).val
theorem output5813_def : output5813 = (Flapjack.WordLangProgHOL.move 0 [(18145, 18133)]) := by
  unfold output5813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5813_skip : Flapjack.WordAlloc.isSkip output5813 = false := by
  rw [output5813_def]
  conv => lhs; cbv
  try rfl
theorem node5813_eq : Flapjack.WordAlloc.removeDeadStructural input5813 value2910 value1 value2 = (output5813, value2911, value1) := by
  rw [input5813_def, output5813_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5813 input5812)).val
theorem input5814_def : input5814 = (.seq input5813 input5812) := by
  unfold input5814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5813 output5812)).val
theorem output5814_def : output5814 = (.seq output5813 output5812) := by
  unfold output5814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5814_skip : Flapjack.WordAlloc.isSkip output5814 = false := by
  rw [output5814_def]
  conv => lhs; cbv
  try rfl
theorem node5814_eq : Flapjack.WordAlloc.removeDeadStructural input5814 value5 value1 value2 = (output5814, value2911, value1) := by
  rw [input5814_def, output5814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5812_eq]
  dsimp only
  rw [node5813_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2912 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18141 5983130161189999867#64))).val
theorem input5815_def : input5815 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18141 5983130161189999867#64)) := by
  unfold input5815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18141 5983130161189999867#64))).val
theorem output5815_def : output5815 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18141 5983130161189999867#64)) := by
  unfold output5815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5815_skip : Flapjack.WordAlloc.isSkip output5815 = false := by
  rw [output5815_def]
  conv => lhs; cbv
  try rfl
theorem node5815_eq : Flapjack.WordAlloc.removeDeadStructural input5815 value2911 value1 value2 = (output5815, value2912, value1) := by
  rw [input5815_def, output5815_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18137 5983130161189999867#64))).val
theorem input5816_def : input5816 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18137 5983130161189999867#64)) := by
  unfold input5816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5816_def : output5816 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5816_skip : Flapjack.WordAlloc.isSkip output5816 = true := by
  rw [output5816_def]
  conv => lhs; cbv
  try rfl
theorem node5816_eq : Flapjack.WordAlloc.removeDeadStructural input5816 value2912 value1 value2 = (output5816, value2912, value1) := by
  rw [input5816_def, output5816_def]
  try (conv => lhs; cbv)
  try rfl

def value2913 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18133 18125 (Flapjack.WordRegImm.reg 18129))))).val
theorem input5817_def : input5817 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18133 18125 (Flapjack.WordRegImm.reg 18129)))) := by
  unfold input5817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18133 18125 (Flapjack.WordRegImm.reg 18129))))).val
theorem output5817_def : output5817 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18133 18125 (Flapjack.WordRegImm.reg 18129)))) := by
  unfold output5817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5817_skip : Flapjack.WordAlloc.isSkip output5817 = false := by
  rw [output5817_def]
  conv => lhs; cbv
  try rfl
theorem node5817_eq : Flapjack.WordAlloc.removeDeadStructural input5817 value2912 value1 value2 = (output5817, value2913, value1) := by
  rw [input5817_def, output5817_def]
  try (conv => lhs; cbv)
  try rfl

def value2914 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18129 4224#64))).val
theorem input5818_def : input5818 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18129 4224#64)) := by
  unfold input5818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18129 4224#64))).val
theorem output5818_def : output5818 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18129 4224#64)) := by
  unfold output5818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5818_skip : Flapjack.WordAlloc.isSkip output5818 = false := by
  rw [output5818_def]
  conv => lhs; cbv
  try rfl
theorem node5818_eq : Flapjack.WordAlloc.removeDeadStructural input5818 value2913 value1 value2 = (output5818, value2914, value1) := by
  rw [input5818_def, output5818_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5818 input5817)).val
theorem input5819_def : input5819 = (.seq input5818 input5817) := by
  unfold input5819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5818 output5817)).val
theorem output5819_def : output5819 = (.seq output5818 output5817) := by
  unfold output5819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5819_skip : Flapjack.WordAlloc.isSkip output5819 = false := by
  rw [output5819_def]
  conv => lhs; cbv
  try rfl
theorem node5819_eq : Flapjack.WordAlloc.removeDeadStructural input5819 value2912 value1 value2 = (output5819, value2914, value1) := by
  rw [input5819_def, output5819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5817_eq]
  dsimp only
  rw [node5818_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2915 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18125 (Flapjack.WordLangAddr.addr 18121 18446744073709551104#64)))).val
theorem input5820_def : input5820 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18125 (Flapjack.WordLangAddr.addr 18121 18446744073709551104#64))) := by
  unfold input5820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18125 (Flapjack.WordLangAddr.addr 18121 18446744073709551104#64)))).val
theorem output5820_def : output5820 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18125 (Flapjack.WordLangAddr.addr 18121 18446744073709551104#64))) := by
  unfold output5820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5820_skip : Flapjack.WordAlloc.isSkip output5820 = false := by
  rw [output5820_def]
  conv => lhs; cbv
  try rfl
theorem node5820_eq : Flapjack.WordAlloc.removeDeadStructural input5820 value2914 value1 value2 = (output5820, value2915, value1) := by
  rw [input5820_def, output5820_def]
  try (conv => lhs; cbv)
  try rfl

def value2916 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18121 18117)).val
theorem input5821_def : input5821 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18121 18117) := by
  unfold input5821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18121 18117)).val
theorem output5821_def : output5821 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18121 18117) := by
  unfold output5821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5821_skip : Flapjack.WordAlloc.isSkip output5821 = false := by
  rw [output5821_def]
  conv => lhs; cbv
  try rfl
theorem node5821_eq : Flapjack.WordAlloc.removeDeadStructural input5821 value2915 value1 value2 = (output5821, value2916, value1) := by
  rw [input5821_def, output5821_def]
  try (conv => lhs; cbv)
  try rfl

def value2917 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18117 18113 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5822_def : input5822 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18117 18113 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18117 18113 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5822_def : output5822 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18117 18113 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5822_skip : Flapjack.WordAlloc.isSkip output5822 = false := by
  rw [output5822_def]
  conv => lhs; cbv
  try rfl
theorem node5822_eq : Flapjack.WordAlloc.removeDeadStructural input5822 value2916 value1 value2 = (output5822, value2917, value1) := by
  rw [input5822_def, output5822_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18113 Flapjack.WordStore.heapLength)).val
theorem input5823_def : input5823 = (Flapjack.WordLangProgHOL.get 18113 Flapjack.WordStore.heapLength) := by
  unfold input5823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18113 Flapjack.WordStore.heapLength)).val
theorem output5823_def : output5823 = (Flapjack.WordLangProgHOL.get 18113 Flapjack.WordStore.heapLength) := by
  unfold output5823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5823_skip : Flapjack.WordAlloc.isSkip output5823 = false := by
  rw [output5823_def]
  conv => lhs; cbv
  try rfl
theorem node5823_eq : Flapjack.WordAlloc.removeDeadStructural input5823 value2917 value1 value2 = (output5823, value5, value1) := by
  rw [input5823_def, output5823_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5823 input5822)).val
theorem input5824_def : input5824 = (.seq input5823 input5822) := by
  unfold input5824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5823 output5822)).val
theorem output5824_def : output5824 = (.seq output5823 output5822) := by
  unfold output5824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5824_skip : Flapjack.WordAlloc.isSkip output5824 = false := by
  rw [output5824_def]
  conv => lhs; cbv
  try rfl
theorem node5824_eq : Flapjack.WordAlloc.removeDeadStructural input5824 value2916 value1 value2 = (output5824, value5, value1) := by
  rw [input5824_def, output5824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5822_eq]
  dsimp only
  rw [node5823_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5824 input5821)).val
theorem input5825_def : input5825 = (.seq input5824 input5821) := by
  unfold input5825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5824 output5821)).val
theorem output5825_def : output5825 = (.seq output5824 output5821) := by
  unfold output5825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5825_skip : Flapjack.WordAlloc.isSkip output5825 = false := by
  rw [output5825_def]
  conv => lhs; cbv
  try rfl
theorem node5825_eq : Flapjack.WordAlloc.removeDeadStructural input5825 value2915 value1 value2 = (output5825, value5, value1) := by
  rw [input5825_def, output5825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5821_eq]
  dsimp only
  rw [node5824_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5825 input5820)).val
theorem input5826_def : input5826 = (.seq input5825 input5820) := by
  unfold input5826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5825 output5820)).val
theorem output5826_def : output5826 = (.seq output5825 output5820) := by
  unfold output5826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5826_skip : Flapjack.WordAlloc.isSkip output5826 = false := by
  rw [output5826_def]
  conv => lhs; cbv
  try rfl
theorem node5826_eq : Flapjack.WordAlloc.removeDeadStructural input5826 value2914 value1 value2 = (output5826, value5, value1) := by
  rw [input5826_def, output5826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5820_eq]
  dsimp only
  rw [node5825_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5826 input5819)).val
theorem input5827_def : input5827 = (.seq input5826 input5819) := by
  unfold input5827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5826 output5819)).val
theorem output5827_def : output5827 = (.seq output5826 output5819) := by
  unfold output5827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5827_skip : Flapjack.WordAlloc.isSkip output5827 = false := by
  rw [output5827_def]
  conv => lhs; cbv
  try rfl
theorem node5827_eq : Flapjack.WordAlloc.removeDeadStructural input5827 value2912 value1 value2 = (output5827, value5, value1) := by
  rw [input5827_def, output5827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5819_eq]
  dsimp only
  rw [node5826_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2918 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18105 (Flapjack.WordLangAddr.addr 18109 0#64)))).val
theorem input5828_def : input5828 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18105 (Flapjack.WordLangAddr.addr 18109 0#64))) := by
  unfold input5828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18105 (Flapjack.WordLangAddr.addr 18109 0#64)))).val
theorem output5828_def : output5828 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18105 (Flapjack.WordLangAddr.addr 18109 0#64))) := by
  unfold output5828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5828_skip : Flapjack.WordAlloc.isSkip output5828 = false := by
  rw [output5828_def]
  conv => lhs; cbv
  try rfl
theorem node5828_eq : Flapjack.WordAlloc.removeDeadStructural input5828 value5 value1 value2 = (output5828, value2918, value1) := by
  rw [input5828_def, output5828_def]
  try (conv => lhs; cbv)
  try rfl

def value2919 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18109, 18097)])).val
theorem input5829_def : input5829 = (Flapjack.WordLangProgHOL.move 0 [(18109, 18097)]) := by
  unfold input5829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18109, 18097)])).val
theorem output5829_def : output5829 = (Flapjack.WordLangProgHOL.move 0 [(18109, 18097)]) := by
  unfold output5829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5829_skip : Flapjack.WordAlloc.isSkip output5829 = false := by
  rw [output5829_def]
  conv => lhs; cbv
  try rfl
theorem node5829_eq : Flapjack.WordAlloc.removeDeadStructural input5829 value2918 value1 value2 = (output5829, value2919, value1) := by
  rw [input5829_def, output5829_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5829 input5828)).val
theorem input5830_def : input5830 = (.seq input5829 input5828) := by
  unfold input5830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5829 output5828)).val
theorem output5830_def : output5830 = (.seq output5829 output5828) := by
  unfold output5830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5830_skip : Flapjack.WordAlloc.isSkip output5830 = false := by
  rw [output5830_def]
  conv => lhs; cbv
  try rfl
theorem node5830_eq : Flapjack.WordAlloc.removeDeadStructural input5830 value5 value1 value2 = (output5830, value2919, value1) := by
  rw [input5830_def, output5830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5828_eq]
  dsimp only
  rw [node5829_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2920 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18105 14355327869992416094#64))).val
theorem input5831_def : input5831 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18105 14355327869992416094#64)) := by
  unfold input5831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18105 14355327869992416094#64))).val
theorem output5831_def : output5831 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18105 14355327869992416094#64)) := by
  unfold output5831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5831_skip : Flapjack.WordAlloc.isSkip output5831 = false := by
  rw [output5831_def]
  conv => lhs; cbv
  try rfl
theorem node5831_eq : Flapjack.WordAlloc.removeDeadStructural input5831 value2919 value1 value2 = (output5831, value2920, value1) := by
  rw [input5831_def, output5831_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18101 14355327869992416094#64))).val
theorem input5832_def : input5832 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18101 14355327869992416094#64)) := by
  unfold input5832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5832_def : output5832 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5832_skip : Flapjack.WordAlloc.isSkip output5832 = true := by
  rw [output5832_def]
  conv => lhs; cbv
  try rfl
theorem node5832_eq : Flapjack.WordAlloc.removeDeadStructural input5832 value2920 value1 value2 = (output5832, value2920, value1) := by
  rw [input5832_def, output5832_def]
  try (conv => lhs; cbv)
  try rfl

def value2921 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18097 18089 (Flapjack.WordRegImm.reg 18093))))).val
theorem input5833_def : input5833 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18097 18089 (Flapjack.WordRegImm.reg 18093)))) := by
  unfold input5833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18097 18089 (Flapjack.WordRegImm.reg 18093))))).val
theorem output5833_def : output5833 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18097 18089 (Flapjack.WordRegImm.reg 18093)))) := by
  unfold output5833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5833_skip : Flapjack.WordAlloc.isSkip output5833 = false := by
  rw [output5833_def]
  conv => lhs; cbv
  try rfl
theorem node5833_eq : Flapjack.WordAlloc.removeDeadStructural input5833 value2920 value1 value2 = (output5833, value2921, value1) := by
  rw [input5833_def, output5833_def]
  try (conv => lhs; cbv)
  try rfl

def value2922 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18093 4216#64))).val
theorem input5834_def : input5834 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18093 4216#64)) := by
  unfold input5834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18093 4216#64))).val
theorem output5834_def : output5834 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18093 4216#64)) := by
  unfold output5834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5834_skip : Flapjack.WordAlloc.isSkip output5834 = false := by
  rw [output5834_def]
  conv => lhs; cbv
  try rfl
theorem node5834_eq : Flapjack.WordAlloc.removeDeadStructural input5834 value2921 value1 value2 = (output5834, value2922, value1) := by
  rw [input5834_def, output5834_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5834 input5833)).val
theorem input5835_def : input5835 = (.seq input5834 input5833) := by
  unfold input5835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5834 output5833)).val
theorem output5835_def : output5835 = (.seq output5834 output5833) := by
  unfold output5835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5835_skip : Flapjack.WordAlloc.isSkip output5835 = false := by
  rw [output5835_def]
  conv => lhs; cbv
  try rfl
theorem node5835_eq : Flapjack.WordAlloc.removeDeadStructural input5835 value2920 value1 value2 = (output5835, value2922, value1) := by
  rw [input5835_def, output5835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5833_eq]
  dsimp only
  rw [node5834_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2923 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18089 (Flapjack.WordLangAddr.addr 18085 18446744073709551104#64)))).val
theorem input5836_def : input5836 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18089 (Flapjack.WordLangAddr.addr 18085 18446744073709551104#64))) := by
  unfold input5836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18089 (Flapjack.WordLangAddr.addr 18085 18446744073709551104#64)))).val
theorem output5836_def : output5836 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18089 (Flapjack.WordLangAddr.addr 18085 18446744073709551104#64))) := by
  unfold output5836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5836_skip : Flapjack.WordAlloc.isSkip output5836 = false := by
  rw [output5836_def]
  conv => lhs; cbv
  try rfl
theorem node5836_eq : Flapjack.WordAlloc.removeDeadStructural input5836 value2922 value1 value2 = (output5836, value2923, value1) := by
  rw [input5836_def, output5836_def]
  try (conv => lhs; cbv)
  try rfl

def value2924 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18085 18081)).val
theorem input5837_def : input5837 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18085 18081) := by
  unfold input5837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18085 18081)).val
theorem output5837_def : output5837 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18085 18081) := by
  unfold output5837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5837_skip : Flapjack.WordAlloc.isSkip output5837 = false := by
  rw [output5837_def]
  conv => lhs; cbv
  try rfl
theorem node5837_eq : Flapjack.WordAlloc.removeDeadStructural input5837 value2923 value1 value2 = (output5837, value2924, value1) := by
  rw [input5837_def, output5837_def]
  try (conv => lhs; cbv)
  try rfl

def value2925 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18081 18077 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5838_def : input5838 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18081 18077 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18081 18077 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5838_def : output5838 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18081 18077 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5838_skip : Flapjack.WordAlloc.isSkip output5838 = false := by
  rw [output5838_def]
  conv => lhs; cbv
  try rfl
theorem node5838_eq : Flapjack.WordAlloc.removeDeadStructural input5838 value2924 value1 value2 = (output5838, value2925, value1) := by
  rw [input5838_def, output5838_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18077 Flapjack.WordStore.heapLength)).val
theorem input5839_def : input5839 = (Flapjack.WordLangProgHOL.get 18077 Flapjack.WordStore.heapLength) := by
  unfold input5839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18077 Flapjack.WordStore.heapLength)).val
theorem output5839_def : output5839 = (Flapjack.WordLangProgHOL.get 18077 Flapjack.WordStore.heapLength) := by
  unfold output5839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5839_skip : Flapjack.WordAlloc.isSkip output5839 = false := by
  rw [output5839_def]
  conv => lhs; cbv
  try rfl
theorem node5839_eq : Flapjack.WordAlloc.removeDeadStructural input5839 value2925 value1 value2 = (output5839, value5, value1) := by
  rw [input5839_def, output5839_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5839 input5838)).val
theorem input5840_def : input5840 = (.seq input5839 input5838) := by
  unfold input5840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5839 output5838)).val
theorem output5840_def : output5840 = (.seq output5839 output5838) := by
  unfold output5840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5840_skip : Flapjack.WordAlloc.isSkip output5840 = false := by
  rw [output5840_def]
  conv => lhs; cbv
  try rfl
theorem node5840_eq : Flapjack.WordAlloc.removeDeadStructural input5840 value2924 value1 value2 = (output5840, value5, value1) := by
  rw [input5840_def, output5840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5838_eq]
  dsimp only
  rw [node5839_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5840 input5837)).val
theorem input5841_def : input5841 = (.seq input5840 input5837) := by
  unfold input5841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5840 output5837)).val
theorem output5841_def : output5841 = (.seq output5840 output5837) := by
  unfold output5841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5841_skip : Flapjack.WordAlloc.isSkip output5841 = false := by
  rw [output5841_def]
  conv => lhs; cbv
  try rfl
theorem node5841_eq : Flapjack.WordAlloc.removeDeadStructural input5841 value2923 value1 value2 = (output5841, value5, value1) := by
  rw [input5841_def, output5841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5837_eq]
  dsimp only
  rw [node5840_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5841 input5836)).val
theorem input5842_def : input5842 = (.seq input5841 input5836) := by
  unfold input5842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5841 output5836)).val
theorem output5842_def : output5842 = (.seq output5841 output5836) := by
  unfold output5842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5842_skip : Flapjack.WordAlloc.isSkip output5842 = false := by
  rw [output5842_def]
  conv => lhs; cbv
  try rfl
theorem node5842_eq : Flapjack.WordAlloc.removeDeadStructural input5842 value2922 value1 value2 = (output5842, value5, value1) := by
  rw [input5842_def, output5842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5836_eq]
  dsimp only
  rw [node5841_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5842 input5835)).val
theorem input5843_def : input5843 = (.seq input5842 input5835) := by
  unfold input5843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5842 output5835)).val
theorem output5843_def : output5843 = (.seq output5842 output5835) := by
  unfold output5843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5843_skip : Flapjack.WordAlloc.isSkip output5843 = false := by
  rw [output5843_def]
  conv => lhs; cbv
  try rfl
theorem node5843_eq : Flapjack.WordAlloc.removeDeadStructural input5843 value2920 value1 value2 = (output5843, value5, value1) := by
  rw [input5843_def, output5843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5835_eq]
  dsimp only
  rw [node5842_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2926 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18069 (Flapjack.WordLangAddr.addr 18073 0#64)))).val
theorem input5844_def : input5844 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18069 (Flapjack.WordLangAddr.addr 18073 0#64))) := by
  unfold input5844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18069 (Flapjack.WordLangAddr.addr 18073 0#64)))).val
theorem output5844_def : output5844 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18069 (Flapjack.WordLangAddr.addr 18073 0#64))) := by
  unfold output5844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5844_skip : Flapjack.WordAlloc.isSkip output5844 = false := by
  rw [output5844_def]
  conv => lhs; cbv
  try rfl
theorem node5844_eq : Flapjack.WordAlloc.removeDeadStructural input5844 value5 value1 value2 = (output5844, value2926, value1) := by
  rw [input5844_def, output5844_def]
  try (conv => lhs; cbv)
  try rfl

def value2927 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18073, 18061)])).val
theorem input5845_def : input5845 = (Flapjack.WordLangProgHOL.move 0 [(18073, 18061)]) := by
  unfold input5845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18073, 18061)])).val
theorem output5845_def : output5845 = (Flapjack.WordLangProgHOL.move 0 [(18073, 18061)]) := by
  unfold output5845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5845_skip : Flapjack.WordAlloc.isSkip output5845 = false := by
  rw [output5845_def]
  conv => lhs; cbv
  try rfl
theorem node5845_eq : Flapjack.WordAlloc.removeDeadStructural input5845 value2926 value1 value2 = (output5845, value2927, value1) := by
  rw [input5845_def, output5845_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5845 input5844)).val
theorem input5846_def : input5846 = (.seq input5845 input5844) := by
  unfold input5846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5845 output5844)).val
theorem output5846_def : output5846 = (.seq output5845 output5844) := by
  unfold output5846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5846_skip : Flapjack.WordAlloc.isSkip output5846 = false := by
  rw [output5846_def]
  conv => lhs; cbv
  try rfl
theorem node5846_eq : Flapjack.WordAlloc.removeDeadStructural input5846 value5 value1 value2 = (output5846, value2927, value1) := by
  rw [input5846_def, output5846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5844_eq]
  dsimp only
  rw [node5845_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2928 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18069 3778226018344582997#64))).val
theorem input5847_def : input5847 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18069 3778226018344582997#64)) := by
  unfold input5847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18069 3778226018344582997#64))).val
theorem output5847_def : output5847 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18069 3778226018344582997#64)) := by
  unfold output5847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5847_skip : Flapjack.WordAlloc.isSkip output5847 = false := by
  rw [output5847_def]
  conv => lhs; cbv
  try rfl
theorem node5847_eq : Flapjack.WordAlloc.removeDeadStructural input5847 value2927 value1 value2 = (output5847, value2928, value1) := by
  rw [input5847_def, output5847_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18065 3778226018344582997#64))).val
theorem input5848_def : input5848 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18065 3778226018344582997#64)) := by
  unfold input5848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5848_def : output5848 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5848_skip : Flapjack.WordAlloc.isSkip output5848 = true := by
  rw [output5848_def]
  conv => lhs; cbv
  try rfl
theorem node5848_eq : Flapjack.WordAlloc.removeDeadStructural input5848 value2928 value1 value2 = (output5848, value2928, value1) := by
  rw [input5848_def, output5848_def]
  try (conv => lhs; cbv)
  try rfl

def value2929 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18061 18053 (Flapjack.WordRegImm.reg 18057))))).val
theorem input5849_def : input5849 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18061 18053 (Flapjack.WordRegImm.reg 18057)))) := by
  unfold input5849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18061 18053 (Flapjack.WordRegImm.reg 18057))))).val
theorem output5849_def : output5849 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18061 18053 (Flapjack.WordRegImm.reg 18057)))) := by
  unfold output5849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5849_skip : Flapjack.WordAlloc.isSkip output5849 = false := by
  rw [output5849_def]
  conv => lhs; cbv
  try rfl
theorem node5849_eq : Flapjack.WordAlloc.removeDeadStructural input5849 value2928 value1 value2 = (output5849, value2929, value1) := by
  rw [input5849_def, output5849_def]
  try (conv => lhs; cbv)
  try rfl

def value2930 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18057 4208#64))).val
theorem input5850_def : input5850 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18057 4208#64)) := by
  unfold input5850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18057 4208#64))).val
theorem output5850_def : output5850 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18057 4208#64)) := by
  unfold output5850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5850_skip : Flapjack.WordAlloc.isSkip output5850 = false := by
  rw [output5850_def]
  conv => lhs; cbv
  try rfl
theorem node5850_eq : Flapjack.WordAlloc.removeDeadStructural input5850 value2929 value1 value2 = (output5850, value2930, value1) := by
  rw [input5850_def, output5850_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5850 input5849)).val
theorem input5851_def : input5851 = (.seq input5850 input5849) := by
  unfold input5851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5850 output5849)).val
theorem output5851_def : output5851 = (.seq output5850 output5849) := by
  unfold output5851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5851_skip : Flapjack.WordAlloc.isSkip output5851 = false := by
  rw [output5851_def]
  conv => lhs; cbv
  try rfl
theorem node5851_eq : Flapjack.WordAlloc.removeDeadStructural input5851 value2928 value1 value2 = (output5851, value2930, value1) := by
  rw [input5851_def, output5851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5849_eq]
  dsimp only
  rw [node5850_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2931 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18053 (Flapjack.WordLangAddr.addr 18049 18446744073709551104#64)))).val
theorem input5852_def : input5852 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18053 (Flapjack.WordLangAddr.addr 18049 18446744073709551104#64))) := by
  unfold input5852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18053 (Flapjack.WordLangAddr.addr 18049 18446744073709551104#64)))).val
theorem output5852_def : output5852 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18053 (Flapjack.WordLangAddr.addr 18049 18446744073709551104#64))) := by
  unfold output5852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5852_skip : Flapjack.WordAlloc.isSkip output5852 = false := by
  rw [output5852_def]
  conv => lhs; cbv
  try rfl
theorem node5852_eq : Flapjack.WordAlloc.removeDeadStructural input5852 value2930 value1 value2 = (output5852, value2931, value1) := by
  rw [input5852_def, output5852_def]
  try (conv => lhs; cbv)
  try rfl

def value2932 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18049 18045)).val
theorem input5853_def : input5853 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18049 18045) := by
  unfold input5853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18049 18045)).val
theorem output5853_def : output5853 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18049 18045) := by
  unfold output5853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5853_skip : Flapjack.WordAlloc.isSkip output5853 = false := by
  rw [output5853_def]
  conv => lhs; cbv
  try rfl
theorem node5853_eq : Flapjack.WordAlloc.removeDeadStructural input5853 value2931 value1 value2 = (output5853, value2932, value1) := by
  rw [input5853_def, output5853_def]
  try (conv => lhs; cbv)
  try rfl

def value2933 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18045 18041 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5854_def : input5854 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18045 18041 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18045 18041 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5854_def : output5854 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18045 18041 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5854_skip : Flapjack.WordAlloc.isSkip output5854 = false := by
  rw [output5854_def]
  conv => lhs; cbv
  try rfl
theorem node5854_eq : Flapjack.WordAlloc.removeDeadStructural input5854 value2932 value1 value2 = (output5854, value2933, value1) := by
  rw [input5854_def, output5854_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18041 Flapjack.WordStore.heapLength)).val
theorem input5855_def : input5855 = (Flapjack.WordLangProgHOL.get 18041 Flapjack.WordStore.heapLength) := by
  unfold input5855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18041 Flapjack.WordStore.heapLength)).val
theorem output5855_def : output5855 = (Flapjack.WordLangProgHOL.get 18041 Flapjack.WordStore.heapLength) := by
  unfold output5855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5855_skip : Flapjack.WordAlloc.isSkip output5855 = false := by
  rw [output5855_def]
  conv => lhs; cbv
  try rfl
theorem node5855_eq : Flapjack.WordAlloc.removeDeadStructural input5855 value2933 value1 value2 = (output5855, value5, value1) := by
  rw [input5855_def, output5855_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5855 input5854)).val
theorem input5856_def : input5856 = (.seq input5855 input5854) := by
  unfold input5856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5855 output5854)).val
theorem output5856_def : output5856 = (.seq output5855 output5854) := by
  unfold output5856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5856_skip : Flapjack.WordAlloc.isSkip output5856 = false := by
  rw [output5856_def]
  conv => lhs; cbv
  try rfl
theorem node5856_eq : Flapjack.WordAlloc.removeDeadStructural input5856 value2932 value1 value2 = (output5856, value5, value1) := by
  rw [input5856_def, output5856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5854_eq]
  dsimp only
  rw [node5855_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5856 input5853)).val
theorem input5857_def : input5857 = (.seq input5856 input5853) := by
  unfold input5857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5856 output5853)).val
theorem output5857_def : output5857 = (.seq output5856 output5853) := by
  unfold output5857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5857_skip : Flapjack.WordAlloc.isSkip output5857 = false := by
  rw [output5857_def]
  conv => lhs; cbv
  try rfl
theorem node5857_eq : Flapjack.WordAlloc.removeDeadStructural input5857 value2931 value1 value2 = (output5857, value5, value1) := by
  rw [input5857_def, output5857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5853_eq]
  dsimp only
  rw [node5856_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5857 input5852)).val
theorem input5858_def : input5858 = (.seq input5857 input5852) := by
  unfold input5858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5857 output5852)).val
theorem output5858_def : output5858 = (.seq output5857 output5852) := by
  unfold output5858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5858_skip : Flapjack.WordAlloc.isSkip output5858 = false := by
  rw [output5858_def]
  conv => lhs; cbv
  try rfl
theorem node5858_eq : Flapjack.WordAlloc.removeDeadStructural input5858 value2930 value1 value2 = (output5858, value5, value1) := by
  rw [input5858_def, output5858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5852_eq]
  dsimp only
  rw [node5857_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5858 input5851)).val
theorem input5859_def : input5859 = (.seq input5858 input5851) := by
  unfold input5859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5858 output5851)).val
theorem output5859_def : output5859 = (.seq output5858 output5851) := by
  unfold output5859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5859_skip : Flapjack.WordAlloc.isSkip output5859 = false := by
  rw [output5859_def]
  conv => lhs; cbv
  try rfl
theorem node5859_eq : Flapjack.WordAlloc.removeDeadStructural input5859 value2928 value1 value2 = (output5859, value5, value1) := by
  rw [input5859_def, output5859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5851_eq]
  dsimp only
  rw [node5858_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2934 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18033 (Flapjack.WordLangAddr.addr 18037 0#64)))).val
theorem input5860_def : input5860 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18033 (Flapjack.WordLangAddr.addr 18037 0#64))) := by
  unfold input5860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18033 (Flapjack.WordLangAddr.addr 18037 0#64)))).val
theorem output5860_def : output5860 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18033 (Flapjack.WordLangAddr.addr 18037 0#64))) := by
  unfold output5860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5860_skip : Flapjack.WordAlloc.isSkip output5860 = false := by
  rw [output5860_def]
  conv => lhs; cbv
  try rfl
theorem node5860_eq : Flapjack.WordAlloc.removeDeadStructural input5860 value5 value1 value2 = (output5860, value2934, value1) := by
  rw [input5860_def, output5860_def]
  try (conv => lhs; cbv)
  try rfl

def value2935 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18037, 18025)])).val
theorem input5861_def : input5861 = (Flapjack.WordLangProgHOL.move 0 [(18037, 18025)]) := by
  unfold input5861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18037, 18025)])).val
theorem output5861_def : output5861 = (Flapjack.WordLangProgHOL.move 0 [(18037, 18025)]) := by
  unfold output5861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5861_skip : Flapjack.WordAlloc.isSkip output5861 = false := by
  rw [output5861_def]
  conv => lhs; cbv
  try rfl
theorem node5861_eq : Flapjack.WordAlloc.removeDeadStructural input5861 value2934 value1 value2 = (output5861, value2935, value1) := by
  rw [input5861_def, output5861_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5861 input5860)).val
theorem input5862_def : input5862 = (.seq input5861 input5860) := by
  unfold input5862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5861 output5860)).val
theorem output5862_def : output5862 = (.seq output5861 output5860) := by
  unfold output5862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5862_skip : Flapjack.WordAlloc.isSkip output5862 = false := by
  rw [output5862_def]
  conv => lhs; cbv
  try rfl
theorem node5862_eq : Flapjack.WordAlloc.removeDeadStructural input5862 value5 value1 value2 = (output5862, value2935, value1) := by
  rw [input5862_def, output5862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5860_eq]
  dsimp only
  rw [node5861_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2936 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18033 1758313625630302499#64))).val
theorem input5863_def : input5863 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18033 1758313625630302499#64)) := by
  unfold input5863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18033 1758313625630302499#64))).val
theorem output5863_def : output5863 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18033 1758313625630302499#64)) := by
  unfold output5863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5863_skip : Flapjack.WordAlloc.isSkip output5863 = false := by
  rw [output5863_def]
  conv => lhs; cbv
  try rfl
theorem node5863_eq : Flapjack.WordAlloc.removeDeadStructural input5863 value2935 value1 value2 = (output5863, value2936, value1) := by
  rw [input5863_def, output5863_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18029 1758313625630302499#64))).val
theorem input5864_def : input5864 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18029 1758313625630302499#64)) := by
  unfold input5864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5864_def : output5864 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5864_skip : Flapjack.WordAlloc.isSkip output5864 = true := by
  rw [output5864_def]
  conv => lhs; cbv
  try rfl
theorem node5864_eq : Flapjack.WordAlloc.removeDeadStructural input5864 value2936 value1 value2 = (output5864, value2936, value1) := by
  rw [input5864_def, output5864_def]
  try (conv => lhs; cbv)
  try rfl

def value2937 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18025 18017 (Flapjack.WordRegImm.reg 18021))))).val
theorem input5865_def : input5865 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18025 18017 (Flapjack.WordRegImm.reg 18021)))) := by
  unfold input5865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18025 18017 (Flapjack.WordRegImm.reg 18021))))).val
theorem output5865_def : output5865 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18025 18017 (Flapjack.WordRegImm.reg 18021)))) := by
  unfold output5865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5865_skip : Flapjack.WordAlloc.isSkip output5865 = false := by
  rw [output5865_def]
  conv => lhs; cbv
  try rfl
theorem node5865_eq : Flapjack.WordAlloc.removeDeadStructural input5865 value2936 value1 value2 = (output5865, value2937, value1) := by
  rw [input5865_def, output5865_def]
  try (conv => lhs; cbv)
  try rfl

def value2938 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18021 4200#64))).val
theorem input5866_def : input5866 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18021 4200#64)) := by
  unfold input5866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18021 4200#64))).val
theorem output5866_def : output5866 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18021 4200#64)) := by
  unfold output5866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5866_skip : Flapjack.WordAlloc.isSkip output5866 = false := by
  rw [output5866_def]
  conv => lhs; cbv
  try rfl
theorem node5866_eq : Flapjack.WordAlloc.removeDeadStructural input5866 value2937 value1 value2 = (output5866, value2938, value1) := by
  rw [input5866_def, output5866_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5866 input5865)).val
theorem input5867_def : input5867 = (.seq input5866 input5865) := by
  unfold input5867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5866 output5865)).val
theorem output5867_def : output5867 = (.seq output5866 output5865) := by
  unfold output5867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5867_skip : Flapjack.WordAlloc.isSkip output5867 = false := by
  rw [output5867_def]
  conv => lhs; cbv
  try rfl
theorem node5867_eq : Flapjack.WordAlloc.removeDeadStructural input5867 value2936 value1 value2 = (output5867, value2938, value1) := by
  rw [input5867_def, output5867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5865_eq]
  dsimp only
  rw [node5866_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2939 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18017 (Flapjack.WordLangAddr.addr 18013 18446744073709551104#64)))).val
theorem input5868_def : input5868 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18017 (Flapjack.WordLangAddr.addr 18013 18446744073709551104#64))) := by
  unfold input5868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18017 (Flapjack.WordLangAddr.addr 18013 18446744073709551104#64)))).val
theorem output5868_def : output5868 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18017 (Flapjack.WordLangAddr.addr 18013 18446744073709551104#64))) := by
  unfold output5868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5868_skip : Flapjack.WordAlloc.isSkip output5868 = false := by
  rw [output5868_def]
  conv => lhs; cbv
  try rfl
theorem node5868_eq : Flapjack.WordAlloc.removeDeadStructural input5868 value2938 value1 value2 = (output5868, value2939, value1) := by
  rw [input5868_def, output5868_def]
  try (conv => lhs; cbv)
  try rfl

def value2940 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18013 18009)).val
theorem input5869_def : input5869 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18013 18009) := by
  unfold input5869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18013 18009)).val
theorem output5869_def : output5869 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18013 18009) := by
  unfold output5869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5869_skip : Flapjack.WordAlloc.isSkip output5869 = false := by
  rw [output5869_def]
  conv => lhs; cbv
  try rfl
theorem node5869_eq : Flapjack.WordAlloc.removeDeadStructural input5869 value2939 value1 value2 = (output5869, value2940, value1) := by
  rw [input5869_def, output5869_def]
  try (conv => lhs; cbv)
  try rfl

def value2941 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18009 18005 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5870_def : input5870 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18009 18005 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18009 18005 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5870_def : output5870 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18009 18005 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5870_skip : Flapjack.WordAlloc.isSkip output5870 = false := by
  rw [output5870_def]
  conv => lhs; cbv
  try rfl
theorem node5870_eq : Flapjack.WordAlloc.removeDeadStructural input5870 value2940 value1 value2 = (output5870, value2941, value1) := by
  rw [input5870_def, output5870_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18005 Flapjack.WordStore.heapLength)).val
theorem input5871_def : input5871 = (Flapjack.WordLangProgHOL.get 18005 Flapjack.WordStore.heapLength) := by
  unfold input5871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18005 Flapjack.WordStore.heapLength)).val
theorem output5871_def : output5871 = (Flapjack.WordLangProgHOL.get 18005 Flapjack.WordStore.heapLength) := by
  unfold output5871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5871_skip : Flapjack.WordAlloc.isSkip output5871 = false := by
  rw [output5871_def]
  conv => lhs; cbv
  try rfl
theorem node5871_eq : Flapjack.WordAlloc.removeDeadStructural input5871 value2941 value1 value2 = (output5871, value5, value1) := by
  rw [input5871_def, output5871_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5871 input5870)).val
theorem input5872_def : input5872 = (.seq input5871 input5870) := by
  unfold input5872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5871 output5870)).val
theorem output5872_def : output5872 = (.seq output5871 output5870) := by
  unfold output5872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5872_skip : Flapjack.WordAlloc.isSkip output5872 = false := by
  rw [output5872_def]
  conv => lhs; cbv
  try rfl
theorem node5872_eq : Flapjack.WordAlloc.removeDeadStructural input5872 value2940 value1 value2 = (output5872, value5, value1) := by
  rw [input5872_def, output5872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5870_eq]
  dsimp only
  rw [node5871_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5872 input5869)).val
theorem input5873_def : input5873 = (.seq input5872 input5869) := by
  unfold input5873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5872 output5869)).val
theorem output5873_def : output5873 = (.seq output5872 output5869) := by
  unfold output5873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5873_skip : Flapjack.WordAlloc.isSkip output5873 = false := by
  rw [output5873_def]
  conv => lhs; cbv
  try rfl
theorem node5873_eq : Flapjack.WordAlloc.removeDeadStructural input5873 value2939 value1 value2 = (output5873, value5, value1) := by
  rw [input5873_def, output5873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5869_eq]
  dsimp only
  rw [node5872_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5873 input5868)).val
theorem input5874_def : input5874 = (.seq input5873 input5868) := by
  unfold input5874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5873 output5868)).val
theorem output5874_def : output5874 = (.seq output5873 output5868) := by
  unfold output5874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5874_skip : Flapjack.WordAlloc.isSkip output5874 = false := by
  rw [output5874_def]
  conv => lhs; cbv
  try rfl
theorem node5874_eq : Flapjack.WordAlloc.removeDeadStructural input5874 value2938 value1 value2 = (output5874, value5, value1) := by
  rw [input5874_def, output5874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5868_eq]
  dsimp only
  rw [node5873_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5874 input5867)).val
theorem input5875_def : input5875 = (.seq input5874 input5867) := by
  unfold input5875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5874 output5867)).val
theorem output5875_def : output5875 = (.seq output5874 output5867) := by
  unfold output5875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5875_skip : Flapjack.WordAlloc.isSkip output5875 = false := by
  rw [output5875_def]
  conv => lhs; cbv
  try rfl
theorem node5875_eq : Flapjack.WordAlloc.removeDeadStructural input5875 value2936 value1 value2 = (output5875, value5, value1) := by
  rw [input5875_def, output5875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5867_eq]
  dsimp only
  rw [node5874_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2942 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17997 (Flapjack.WordLangAddr.addr 18001 0#64)))).val
theorem input5876_def : input5876 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17997 (Flapjack.WordLangAddr.addr 18001 0#64))) := by
  unfold input5876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17997 (Flapjack.WordLangAddr.addr 18001 0#64)))).val
theorem output5876_def : output5876 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17997 (Flapjack.WordLangAddr.addr 18001 0#64))) := by
  unfold output5876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5876_skip : Flapjack.WordAlloc.isSkip output5876 = false := by
  rw [output5876_def]
  conv => lhs; cbv
  try rfl
theorem node5876_eq : Flapjack.WordAlloc.removeDeadStructural input5876 value5 value1 value2 = (output5876, value2942, value1) := by
  rw [input5876_def, output5876_def]
  try (conv => lhs; cbv)
  try rfl

def value2943 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18001, 17989)])).val
theorem input5877_def : input5877 = (Flapjack.WordLangProgHOL.move 0 [(18001, 17989)]) := by
  unfold input5877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18001, 17989)])).val
theorem output5877_def : output5877 = (Flapjack.WordLangProgHOL.move 0 [(18001, 17989)]) := by
  unfold output5877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5877_skip : Flapjack.WordAlloc.isSkip output5877 = false := by
  rw [output5877_def]
  conv => lhs; cbv
  try rfl
theorem node5877_eq : Flapjack.WordAlloc.removeDeadStructural input5877 value2942 value1 value2 = (output5877, value2943, value1) := by
  rw [input5877_def, output5877_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5877 input5876)).val
theorem input5878_def : input5878 = (.seq input5877 input5876) := by
  unfold input5878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5877 output5876)).val
theorem output5878_def : output5878 = (.seq output5877 output5876) := by
  unfold output5878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5878_skip : Flapjack.WordAlloc.isSkip output5878 = false := by
  rw [output5878_def]
  conv => lhs; cbv
  try rfl
theorem node5878_eq : Flapjack.WordAlloc.removeDeadStructural input5878 value5 value1 value2 = (output5878, value2943, value1) := by
  rw [input5878_def, output5878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5876_eq]
  dsimp only
  rw [node5877_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2944 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17997 1881349400343039172#64))).val
theorem input5879_def : input5879 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17997 1881349400343039172#64)) := by
  unfold input5879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17997 1881349400343039172#64))).val
theorem output5879_def : output5879 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17997 1881349400343039172#64)) := by
  unfold output5879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5879_skip : Flapjack.WordAlloc.isSkip output5879 = false := by
  rw [output5879_def]
  conv => lhs; cbv
  try rfl
theorem node5879_eq : Flapjack.WordAlloc.removeDeadStructural input5879 value2943 value1 value2 = (output5879, value2944, value1) := by
  rw [input5879_def, output5879_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17993 1881349400343039172#64))).val
theorem input5880_def : input5880 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17993 1881349400343039172#64)) := by
  unfold input5880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5880_def : output5880 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5880_skip : Flapjack.WordAlloc.isSkip output5880 = true := by
  rw [output5880_def]
  conv => lhs; cbv
  try rfl
theorem node5880_eq : Flapjack.WordAlloc.removeDeadStructural input5880 value2944 value1 value2 = (output5880, value2944, value1) := by
  rw [input5880_def, output5880_def]
  try (conv => lhs; cbv)
  try rfl

def value2945 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17989 17981 (Flapjack.WordRegImm.reg 17985))))).val
theorem input5881_def : input5881 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17989 17981 (Flapjack.WordRegImm.reg 17985)))) := by
  unfold input5881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17989 17981 (Flapjack.WordRegImm.reg 17985))))).val
theorem output5881_def : output5881 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17989 17981 (Flapjack.WordRegImm.reg 17985)))) := by
  unfold output5881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5881_skip : Flapjack.WordAlloc.isSkip output5881 = false := by
  rw [output5881_def]
  conv => lhs; cbv
  try rfl
theorem node5881_eq : Flapjack.WordAlloc.removeDeadStructural input5881 value2944 value1 value2 = (output5881, value2945, value1) := by
  rw [input5881_def, output5881_def]
  try (conv => lhs; cbv)
  try rfl

def value2946 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17985 4192#64))).val
theorem input5882_def : input5882 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17985 4192#64)) := by
  unfold input5882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17985 4192#64))).val
theorem output5882_def : output5882 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17985 4192#64)) := by
  unfold output5882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5882_skip : Flapjack.WordAlloc.isSkip output5882 = false := by
  rw [output5882_def]
  conv => lhs; cbv
  try rfl
theorem node5882_eq : Flapjack.WordAlloc.removeDeadStructural input5882 value2945 value1 value2 = (output5882, value2946, value1) := by
  rw [input5882_def, output5882_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5882 input5881)).val
theorem input5883_def : input5883 = (.seq input5882 input5881) := by
  unfold input5883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5882 output5881)).val
theorem output5883_def : output5883 = (.seq output5882 output5881) := by
  unfold output5883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5883_skip : Flapjack.WordAlloc.isSkip output5883 = false := by
  rw [output5883_def]
  conv => lhs; cbv
  try rfl
theorem node5883_eq : Flapjack.WordAlloc.removeDeadStructural input5883 value2944 value1 value2 = (output5883, value2946, value1) := by
  rw [input5883_def, output5883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5881_eq]
  dsimp only
  rw [node5882_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2947 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17981 (Flapjack.WordLangAddr.addr 17977 18446744073709551104#64)))).val
theorem input5884_def : input5884 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17981 (Flapjack.WordLangAddr.addr 17977 18446744073709551104#64))) := by
  unfold input5884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17981 (Flapjack.WordLangAddr.addr 17977 18446744073709551104#64)))).val
theorem output5884_def : output5884 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17981 (Flapjack.WordLangAddr.addr 17977 18446744073709551104#64))) := by
  unfold output5884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5884_skip : Flapjack.WordAlloc.isSkip output5884 = false := by
  rw [output5884_def]
  conv => lhs; cbv
  try rfl
theorem node5884_eq : Flapjack.WordAlloc.removeDeadStructural input5884 value2946 value1 value2 = (output5884, value2947, value1) := by
  rw [input5884_def, output5884_def]
  try (conv => lhs; cbv)
  try rfl

def value2948 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17977 17973)).val
theorem input5885_def : input5885 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17977 17973) := by
  unfold input5885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17977 17973)).val
theorem output5885_def : output5885 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17977 17973) := by
  unfold output5885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5885_skip : Flapjack.WordAlloc.isSkip output5885 = false := by
  rw [output5885_def]
  conv => lhs; cbv
  try rfl
theorem node5885_eq : Flapjack.WordAlloc.removeDeadStructural input5885 value2947 value1 value2 = (output5885, value2948, value1) := by
  rw [input5885_def, output5885_def]
  try (conv => lhs; cbv)
  try rfl

def value2949 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17973 17969 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5886_def : input5886 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17973 17969 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17973 17969 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5886_def : output5886 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17973 17969 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5886_skip : Flapjack.WordAlloc.isSkip output5886 = false := by
  rw [output5886_def]
  conv => lhs; cbv
  try rfl
theorem node5886_eq : Flapjack.WordAlloc.removeDeadStructural input5886 value2948 value1 value2 = (output5886, value2949, value1) := by
  rw [input5886_def, output5886_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17969 Flapjack.WordStore.heapLength)).val
theorem input5887_def : input5887 = (Flapjack.WordLangProgHOL.get 17969 Flapjack.WordStore.heapLength) := by
  unfold input5887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17969 Flapjack.WordStore.heapLength)).val
theorem output5887_def : output5887 = (Flapjack.WordLangProgHOL.get 17969 Flapjack.WordStore.heapLength) := by
  unfold output5887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5887_skip : Flapjack.WordAlloc.isSkip output5887 = false := by
  rw [output5887_def]
  conv => lhs; cbv
  try rfl
theorem node5887_eq : Flapjack.WordAlloc.removeDeadStructural input5887 value2949 value1 value2 = (output5887, value5, value1) := by
  rw [input5887_def, output5887_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node5887_eq
end InitECandidate.Proofs.DeadStages713
